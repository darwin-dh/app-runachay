import axios from "axios";
import React, { useEffect, useState, useMemo, useCallback } from "react";
import { Col, Container, Row, Card, CardHeader, CardBody, Button, Label } from "reactstrap";
import DeleteModal from "../../Components/Common/DeleteModal";

import { Link } from "react-router-dom";
import BreadCrumb from "../../Components/Common/BreadCrumb";
import TableContainer from "../../Components/Common/TableContainer";
import AddButton from "./Components/AddButton";
import Swal from "sweetalert2";
import ModalCollabo from "./Components/ModalCollabo";
import Filters from "./Components/Filters";
const DashboardEcommerce = () => {
    const [listaColaboradores, setListaColaboradores] = useState([]);
    const [collaborator, setcollaborator] = useState([]);
    const [error, setError] = useState(false);
    const [info, setInfo] = useState(false);
    const [isEdit, setIsEdit] = useState(false);
    const [idCollaborator, setIdCollaborator] = useState();
    const [editModal, setEditModal] = useState(false);
    const getCollaborators = async () => {
        const response = await axios.get("/api/list-collaborator")
        if (response.status === "error") {
            setError(response.mensage)
            setListaColaboradores([])
        } else { setListaColaboradores(response.data) }
    }
    const onDeleteClick = async () => {
        try {
            const response = await axios.post(`/api/delete-collaborator`, { idCollaborator: idCollaborator })
            if (response.status === "success") {
                Swal.fire({
                    icon: 'success',
                    title: 'Borrador con exito',
                    showConfirmButton: false,
                    timer: 1000

                })
                setDeleteModal(false);
                getCollaborators()
            }
        } catch (e) {
            console.log(e)
        }

    }
    const onClickDelete = (collaborData) => {
        setIdCollaborator(collaborData.id_collaborator)
        setDeleteModal(true);
    };
    //form
    const [nombre, setNombre] = useState();
    const [cedula, setcedula] = useState()
    const [apellido, setapellido] = useState()
    const [email, setemail] = useState()
    const [phone, setphone] = useState()
    const [address, setaddress] = useState()
    const [vaccination_status, setVaccination_status] = useState();
    const handleEditClick = useCallback((collaborData) => {
        setVaccination_status(collaborData.details.vaccination_status);
        setNombre(collaborData.name);
        setcedula(collaborData.identification)
        setapellido(collaborData.last_name)
        setemail(collaborData.email)
        setphone(collaborData.details.phone)
        setaddress(collaborData.details.address)
        setIdCollaborator(collaborData.id_collaborator)
        setEditModal(true);
        setIsEdit(true);
    })

    const columns = useMemo(
        () => [
            {
                Header: "Codigo",
                accessor: "id_collaborator",
                filterable: true,
            },
            {
                Header: "Cedula",
                accessor: "identification",
                filterable: true,
            },
            {
                Header: "Nombre",
                accessor: "name",
                filterable: false,
            },
            {
                Header: "Apellido",
                accessor: "last_name",
                filterable: false,
            },
            {
                Header: "Correo",
                accessor: "email",
                filterable: false,
            },
            {
                Header: "Fecha de nacimiento",
                accessor: "details.birthdate",
                filterable: false,
            },
            {
                Header: "Dirección",
                accessor: "details.address",
                filterable: false,

            },
            {
                Header: "Teléfono",
                accessor: "details.phone",
                filterable: false,
            },
            {
                Header: "Tipo vacuna ",
                accessor: "details.type_vaccine",
                filterable: false,
            },
            {
                Header: "Estado de vacunación",
                Cell: (cellProps) => {
                    return (
                        <>
                            {
                                cellProps.row.original.details.vaccination_status === "Vacunado" ?
                                    <span className="badge bg-success text-uppercase">{cellProps.row.original.details.vaccination_status}</span>
                                    : cellProps.row.original.details.vaccination_status === "No Vacunado" ?
                                        <span className="badge bg-danger text-uppercase">{cellProps.row.original.details.vaccination_status}</span>
                                        : null
                            }
                        </>
                    );
                },
                id: '#',
            },
            {
                Header: "Acciones",
                Cell: (cellProps) => {
                    return (
                        <ul className="list-inline hstack gap-2 mb-0">
                            <li className="list-inline-item" title="Ver">
                                <Link to="#"
                                    onClick={() => { const collaborData = cellProps.row.original; handleEditClick(collaborData); }}
                                >
                                    <Button
                                        color="info"
                                        outline
                                        size="sm"
                                        className="mdi mdi-eye-outline fs-5 align-bottom"
                                    />


                                </Link>
                            </li>
                            <li className="list-inline-item" title="Edit">
                                <Link className="edit-item-btn" to="#"
                                    onClick={() => { const collaborData = cellProps.row.original; handleEditClick(collaborData); }}
                                >
                                    <Button
                                        color="warning"
                                        outline
                                        size="sm"
                                        className="mdi mdi-pencil-outline fs-5 align-bottom" />
                                </Link>
                            </li>
                            {link === "Admin" ? <li className="list-inline-item" title="borrar">
                                <Link
                                    className="remove-item-btn"
                                    onClick={() => { const collaborData = cellProps.row.original; onClickDelete(collaborData); }}
                                    to="#"
                                >
                                    <Button
                                        color="danger"
                                        outline
                                        size="sm"
                                        className="mdi mdi-delete-outline fs-5 align-bottom "
                                    />
                                </Link>
                            </li> : null}
                        </ul>
                    );
                },
            },
        ],
        [handleEditClick]
    );
    const [link, setLink] = useState();
    useEffect(() => {
        const result = JSON.parse(sessionStorage.getItem("authUserData"));
        setLink(result.link);
    }, []);
    document.title = "Colaboradores";
    useEffect(() => { getCollaborators() }, [])
    const [deleteModal, setDeleteModal] = useState(false);
    console.log(listaColaboradores);
    return (
        <React.Fragment>
            <DeleteModal
                show={deleteModal}
                onCloseClick={() => setDeleteModal(false)}
                onDeleteClick={onDeleteClick}
            />
            <ModalCollabo
                show={editModal}
                onCloseClick={() => setEditModal(false)}
                collaborator={collaborator}
                idCollaborator={idCollaborator}
                isEdit={isEdit}
                nombre={nombre}
                cedula={cedula}
                apellido={apellido}
                email={email}
                phone={phone}
                address={address}
                vaccination_status={vaccination_status}
                link={link}
            />
            <div className="page-content">
                <Container fluid>
                    <BreadCrumb title="Colaboradores" pageTitle="Colaboradores" />
                    <Row >
                        {link === "Admin" ? <Col lg={12}>
                            <Card>
                                <CardHeader>
                                    <div className="d-flex align-items-center flex-wrap gap-2">
                                        <div className="flex-grow-1">
                                            <AddButton title="Colaborador"
                                                getCollaborators={getCollaborators}

                                            />
                                        </div>

                                    </div>
                                </CardHeader>
                            </Card>
                        </Col> : null}
                        {link === "Admin" ? <Filters getCollaborators={getCollaborators} setListaColaboradores={setListaColaboradores} /> : null}
                        <Col xxl={12}>
                            <Card>
                                <CardBody className="pt-0">
                                    <TableContainer
                                        columns={columns}
                                        data={(listaColaboradores || [])}
                                        isGlobalFilter={true}
                                        customPageSize={10}
                                        className="custom-header-css"
                                        divClass="table-responsive table-card mb-2"
                                        tableClass="align-middle table-nowrap"
                                        theadClass="table-dark"
                                        isCompaniesFilter={true}


                                    />
                                </CardBody>
                            </Card>
                        </Col >
                    </Row>
                </Container>
            </div>
        </React.Fragment>
    );
};

export default DashboardEcommerce;
