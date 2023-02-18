import React, { useEffect, useState } from 'react';
import { Card, CardBody, Col, Container, Input, Label, Row, Button, Form, FormFeedback, Alert } from 'reactstrap';
import axios from 'axios';
import { withRouter, useHistory } from "react-router-dom";
import * as Yup from "yup";
import { useFormik } from "formik";
import Swal from 'sweetalert2';
const Login = () => {
    const history = useHistory()
    const loginUser = async (values) => {
        try {
            const response = await axios.post('/api/login', {
                email: values.email,
                password: values.password
            })
            if (response.status === "success") {
                sessionStorage.setItem("authUser", JSON.stringify(response.token));
                sessionStorage.setItem("authUserData", JSON.stringify(response.data));
                history.push("/Colaborador");
            } else {
                setError(response.mensage)
            }
        } catch (e) {
            Swal.fire({
                icon: 'error',
                title: 'Oops...',
                text: e,

            })
        }

    }


    const [userLogin, setUserLogin] = useState([]);
    const [error, setError] = useState(false);
    const validation = useFormik({
        enableReinitialize: true,

        initialValues: {
            email: userLogin.email || "" || '',
            password: userLogin.password || "" || '',
        },
        validationSchema: Yup.object({
            email: Yup.string().required("Por favor introduzca su correo electrónico"),
            password: Yup.string().required("Por favor introduzca su correo Contraseña"),
        }),
        onSubmit: (values) => {
            loginUser(values)
        }
    });

    useEffect(() => {
        setTimeout(() => {
            setError(false);
        }, 3500);
    }, [error]);

    document.title = "Login";
    return (
        <React.Fragment>
            <div className="auth-page-content">
                <Container>
                    <Row className="d-flex mt-5 justify-content-center align-items-center">
                        <Col md={8} lg={6} xl={5}>
                            <Card className="mt-4">
                                <CardBody className="p-4">
                                    <div className="text-center mt-2">
                                        <h5 className="text-primary">Bienvenido !</h5>
                                    </div>
                                    {error && error ? (<Alert color="danger"> {error} </Alert>) : null}
                                    <div className="p-2 mt-4">
                                        <Form
                                            onSubmit={(e) => {
                                                e.preventDefault();
                                                validation.handleSubmit();
                                                return false;
                                            }}
                                        >

                                            <div className="mb-3">
                                                <Label htmlFor="email" className="form-label">Correo</Label>
                                                <Input
                                                    name="email"
                                                    className="form-control"
                                                    type="email"
                                                    onChange={validation.handleChange}
                                                    onBlur={validation.handleBlur}
                                                    value={validation.values.email || ""}
                                                    invalid={
                                                        validation.touched.email && validation.errors.email ? true : false
                                                    }
                                                />
                                                {validation.touched.email && validation.errors.email ? (
                                                    <FormFeedback type="invalid">{validation.errors.email}</FormFeedback>
                                                ) : null}
                                            </div>

                                            <div className="mb-3">
                                                <Label className="form-label" htmlFor="password-input">Contraseña</Label>
                                                <div className="position-relative auth-pass-inputgroup mb-3">
                                                    <Input
                                                        name="password"
                                                        value={validation.values.password || ""}
                                                        type="password"
                                                        className="form-control pe-5"
                                                        onChange={validation.handleChange}
                                                        onBlur={validation.handleBlur}
                                                        invalid={
                                                            validation.touched.password && validation.errors.password ? true : false
                                                        }
                                                    />
                                                    {validation.touched.password && validation.errors.password ? (
                                                        <FormFeedback type="invalid">{validation.errors.password}</FormFeedback>
                                                    ) : null}
                                                    <button className="btn btn-link position-absolute end-0 top-0 text-decoration-none text-muted" type="button" id="password-addon"><i className="ri-eye-fill align-middle"></i></button>
                                                </div>
                                            </div>

                                            <div className="mt-4">
                                                <Button color="success" className="btn btn-success w-100" type="submit">
                                                    Iniciar sesión
                                                </Button>
                                            </div>

                                        </Form>
                                    </div>
                                </CardBody>
                            </Card>
                        </Col>
                    </Row>
                </Container>
            </div>

        </React.Fragment>
    );
};

export default withRouter(Login);