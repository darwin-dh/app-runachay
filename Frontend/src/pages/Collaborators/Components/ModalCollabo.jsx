import Swal from 'sweetalert2';
import PropTypes from "prop-types";
import {
    Form,
    CardBody,
    ModalBody,
    Modal,
    ModalHeader,
    ModalFooter,
    Button,
    Row,
    Col,
    Label,
    Input,
    FormFeedback

} from "reactstrap";
import Flatpickr from "react-flatpickr";
import * as Yup from "yup";
import { useFormik } from "formik";
import { useCallback, useState } from "react";
import Select from "react-select";
import axios from "axios";
import { useEffect } from "react";
import { save } from './Api/Save';
import { Edit } from './Api/Edit';
const ModalCollabo = (props) => {
    const { show, onCloseClick, title, isEdit, getCollaborators, collaborator, idCollaborator,
        nombre,
        cedula,
        apellido,
        email,
        phone,
        address,
        password,
        vaccination_status,
        link

    } = props
    const [inputVacunation, setInputVacunation] = useState(false)
    const [listVacines, setListVacines] = useState([])
    const [inputVacine, setInputVacines] = useState()
    const [typeVacine, setTypeVacines] = useState()
    const [birthdate, setBirthdate] = useState()
    const validation = useFormik({
        initialValues: {
            cedula: (collaborator && collaborator.cedula) || '',
            nombre: (collaborator && collaborator.nombre) || '',
            apellido: (collaborator && collaborator.apellido) || '',
            email: (collaborator && collaborator.email) || '',
            phone: (collaborator && collaborator.phone) || '',
            address: (collaborator && collaborator.address) || '',
            password: (collaborator && collaborator.password) || '',

        },
        validationSchema: Yup.object({
            cedula: Yup.string().required("Por favor ingrese  cedula"),
            nombre: Yup.string().required("Por favor ingrese nombre"),
            apellido: Yup.string().required("Por favor ingrese apellido"),
            email: Yup.string().required("Por favor ingrese email"),
            phone: Yup.string().required("Por favor ingrese Telefono"),
            address: Yup.string().required("Por favor ingrese Dirección"),
            password: Yup.string().required("Por favor ingrese password"),

        }),
        onSubmit: (values) => {
            if (isEdit) {
                const dataUpdate = {
                    idcollaborator: idCollaborator,
                    identification: values.cedula,
                    name: values.nombre,
                    last_name: values.apellido,
                    email: values.email,
                    statu: 1,
                    birthdate: birthdate,
                    address: values.address,
                    phone: values.phone,
                    vaccination_status: inputVacine,
                    type_vaccine: typeVacine,
                }

                Edit(dataUpdate)
                getCollaborators()
                onCloseClick()
            } else {
                const newdata = {
                    identification: values["cedula"],
                    name: values["nombre"],
                    last_name: values["apellido"],
                    email: values["email"],
                    statu: 1,
                    password: "123456",
                    birthdate: birthdate,
                    address: values["address"],
                    phone: values["phone"],
                    vaccination_status: inputVacine,
                    type_vaccine: typeVacine,

                };
                save(newdata, saveResult)
                getCollaborators()
                onCloseClick()
            }

        }
    })
    const [vacunation, setVacunationSelect] = useState()
    const statusVacCine = async () => {
        try {
            const response = await axios.get('api/list-status-vaccine')
            setVacunationSelect(response.data.map((item) => ({ value: item.id_status_vacine, label: item.name })) || [])
        }
        catch (error) {
            Swal.fire({
                icon: 'error',
                title: 'Oops...',
                text: error,

            })
        }
    }
    useEffect(() => { statusVacCine() }, [])


    const getVacunation = async (e) => {
        try {
            const response = await axios.get('api/list-typevaccine')
            if (response.status === "success") setListVacines(response.data.map((item) => ({ value: item.id_type_vaccine, label: item.name_vaccine })) || [])


        } catch (error) {
            Swal.fire({
                icon: 'error',
                title: 'Oops...',
                text: error,

            })

        }
    }
    const handleChangeSeeVacunation = (e) => {

        setInputVacines(e.value)
        if (e.label === 'Vacunado') {
            setInputVacunation(true)
        } else {
            setInputVacunation(false)
        }
    }
    useEffect(() => { getVacunation() }, [])
    const [status, setStatus] = useState();

    const saveResult = (result) => {
        if (result.status === 'error') {
            setStatus(result.status)

        } else {
            onCloseClick()
            validation.resetForm();
            getCollaborators()
            setStatus(result.status)

        }
    }
    const handletypeVaccine = (e) => {
        setTypeVacines(e.label);
    }

    return (
        <Modal isOpen={show} toggle={onCloseClick} size="xl">
            <ModalHeader toggle={onCloseClick}>{title}</ModalHeader>
            <ModalBody >

                <Form onSubmit={(e) => {
                    e.preventDefault();
                    validation.handleSubmit();
                    return false;
                }}
                >
                    <ModalBody>
                        <Row className="g-3">
                            <Col lg={2}>
                                <Label className="form-label">Cédula</Label>
                                <Input
                                    name='cedula'
                                    type='text'
                                    placeholder={cedula || ""}
                                    onChange={validation.handleChange}
                                    value={validation.values.cedula || ""}
                                    invalid={
                                        validation.touched.cedula && validation.errors.cedula ? true : false
                                    }
                                />
                                {validation.touched.cedula && validation.errors.cedula ? (
                                    <FormFeedback type="invalid">{validation.errors.cedula}</FormFeedback>
                                ) : null}
                            </Col>
                            <Col lg={5}>
                                <Label>Nombre</Label>

                                <Input
                                    name='nombre'
                                    placeholder={nombre || ""}
                                    type='text'
                                    onChange={validation.handleChange}
                                    value={validation.values.nombre || ""}
                                    invalid={
                                        validation.touched.nombre && validation.errors.nombre ? true : false
                                    }
                                />
                                {validation.touched.nombre && validation.errors.nombre ? (
                                    <FormFeedback type="invalid">{validation.errors.nombre}</FormFeedback>
                                ) : null}
                            </Col>
                            <Col lg={5}>
                                <Label>Apellido</Label>

                                <Input
                                    name='apellido'
                                    placeholder={apellido || ""}
                                    type='text'
                                    onChange={validation.handleChange}
                                    value={validation.values.apellido || ""}
                                    invalid={
                                        validation.touched.apellido && validation.errors.apellido ? true : false
                                    }

                                />
                                {validation.touched.apellido && validation.errors.apellido ? (
                                    <FormFeedback type="invalid">{validation.errors.apellido}</FormFeedback>
                                ) : null}
                            </Col>
                            <Col lg={12}>
                                <Label> Password</Label>

                                <Input
                                    name='password'
                                    type='password'
                                    placeholder={password || ""}
                                    onChange={validation.handleChange}
                                    value={validation.values.password || ""}
                                    invalid={
                                        validation.touched.password && validation.errors.password ? true : false
                                    }

                                />
                                {validation.touched.password && validation.errors.password ? (
                                    <FormFeedback type="invalid">{validation.errors.password}</FormFeedback>
                                ) : null}
                            </Col>
                            <Col lg={12}>
                                <Label>Correo Electrónico</Label>

                                <Input
                                    name='email'
                                    type='email'
                                    placeholder={email || ""}
                                    onChange={validation.handleChange}
                                    value={validation.values.email || ""}
                                    invalid={
                                        validation.touched.email && validation.errors.email ? true : false
                                    }

                                />
                                {validation.touched.email && validation.errors.email ? (
                                    <FormFeedback type="invalid">{validation.errors.email}</FormFeedback>
                                ) : null}
                            </Col>
                            <Col lg={4}>
                                <Label>Fecha de nacimiento</Label>
                                <div className="input-group ">
                                    <Flatpickr
                                        onChange={(e) => setBirthdate(new Date(e).toISOString().slice(0, 10))}
                                        className="form-control border-2 dash-filter-picker shadow"
                                        options={{
                                            dateFormat: "d M, Y",

                                        }}
                                    />
                                    <div className="input-group-text bg-primary border-primary text-white"><i className="mdi mdi-calendar-month-outline"></i></div>
                                </div>
                            </Col>
                            <Col lg={8}>
                                <Label> Dirección de domicilio</Label>

                                <Input
                                    name='address'
                                    placeholder={address || ""}
                                    type='text'
                                    onChange={validation.handleChange}
                                    value={validation.values.address || ""}
                                    invalid={
                                        validation.touched.address && validation.errors.address ? true : false
                                    }

                                />
                                {validation.touched.address && validation.errors.address ? (
                                    <FormFeedback type="invalid">{validation.errors.address}</FormFeedback>
                                ) : null}
                            </Col>

                        </Row>
                        <Row className="d-flex align-items-center mt-3">
                            <Col lg={3}>
                                <Label>Teléfono móvil</Label>

                                <Input
                                    name='phone'
                                    type='phone'
                                    placeholder={phone || ""}
                                    onChange={validation.handleChange}
                                    value={validation.values.phone || ""}
                                    invalid={
                                        validation.touched.phone && validation.errors.phone ? true : false
                                    }

                                />
                                {validation.touched.phone && validation.errors.phone ? (
                                    <FormFeedback type="invalid">{validation.errors.phone}</FormFeedback>
                                ) : null}
                            </Col>

                            <Col lg={3} >
                                <Label>Estado de vacunación</Label>

                                <Select
                                    options={vacunation}
                                    onChange={handleChangeSeeVacunation}
                                />
                            </Col>
                            {

                                inputVacunation == !false ?
                                    <Col>
                                        <Label>Tipo de vacuna</Label>
                                        <Select
                                            options={listVacines}
                                            onChange={handletypeVaccine}
                                        />
                                    </Col>
                                    : null
                            }
                        </Row>
                    </ModalBody>

                    <ModalFooter>
                        <div className="hstack gap-2 justify-content-end">
                            <Button color="light" onClick={onCloseClick} > Cerrar </Button>
                            <Button type="submit" color="secondary" id="add-btn" >  {!!isEdit ? "Editar" : "Agregar"} </Button>
                        </div>
                    </ModalFooter>
                </Form>


            </ModalBody>

        </Modal>
    )
}
ModalCollabo.propTypes = {
    onCloseClick: PropTypes.func,
    onDeleteClick: PropTypes.func,
    show: PropTypes.any,
    collaborator: PropTypes.any,
};
export default ModalCollabo