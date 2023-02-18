import React, { useEffect, useState } from 'react'
import Select from "react-select";
import Flatpickr from "react-flatpickr";
import { Col, Container, Row, Card, CardHeader, CardBody, Button, Label } from "reactstrap";
import Swal from 'sweetalert2';
import axios from 'axios';

const Filters = (props) => {
    const { getCollaborators, setListaColaboradores } = props
    const [dateStart, setDateStart] = useState();
    const [dateEnd, setDateEnd] = useState();
    const [stateVaccine, setStateVaccine] = useState();
    const [error, setError] = useState(false);
    const [vacunation, setVacunationSelect] = useState()
    const [listVacines, setListVacines] = useState([])
    const [typevacuna, setTypeVacuna] = useState([])
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
    useEffect(() => { statusVacCine() }, [])
    useEffect(() => { getVacunation() }, [])
    const getFilter = async () => {
        try {
            const response = await axios.post('/api/filter-collaborators', {
                fechainicio: dateStart,
                fechafin: dateEnd,
                estadovacuna: stateVaccine,
                tipovacuna: typevacuna
            })
            setListaColaboradores(response.data)

        } catch (e) {
            Swal.fire({
                icon: 'error',
                title: 'Oops...',
                text: e,

            })
        }
    }
    const handleInputChange = (e) => {
        console.log(e);
        setStateVaccine(e.Label)

    }
    return (
        <Col lg={12}>
            <Card>
                <CardHeader>
                    <Row>
                        <Col lg={3}>
                            <Label>Filtrar por estado de vacunación</Label>
                            <Select
                                options={vacunation}
                                onChange={(e) => setStateVaccine(e.label)}
                            />
                        </Col>
                        <Col lg={3}>
                            <Label>Filtrar por tipo de vacuna</Label>
                            <Select
                                options={listVacines}
                                onChange={(e) => setTypeVacuna(e.label)}
                            />
                        </Col>
                        <Col lg={3}>
                            <Label>fecha inicio de vacunación</Label>
                            <div className="input-group ">
                                <Flatpickr
                                    onChange={(e) => setDateStart(new Date(e).toISOString().slice(0, 10))}
                                    className="form-control border-2 dash-filter-picker shadow"
                                    options={{
                                        dateFormat: "d M, Y",

                                    }}
                                />
                                <div className="input-group-text bg-primary border-primary text-white"><i className="mdi mdi-calendar-month-outline"></i></div>
                            </div>
                        </Col>
                        <Col lg={3}>
                            <Label>fecha fin de vacunación</Label>
                            <div className="input-group ">
                                <Flatpickr
                                    onChange={(e) => setDateEnd(new Date(e).toISOString().slice(0, 10))}
                                    className="form-control border-2 dash-filter-picker shadow"
                                    options={{
                                        dateFormat: "d M, Y",

                                    }}
                                />
                                <div className="input-group-text bg-primary border-primary text-white"><i className="mdi mdi-calendar-month-outline"></i></div>
                            </div>
                        </Col>

                    </Row>
                    <Row>
                        <Col lg={12} >
                            <Button className="float-end mt-2 w-25" onClick={getFilter} > Consultar </Button>
                        </Col>
                    </Row>
                </CardHeader>
            </Card>
        </Col>
    )
}

export default Filters