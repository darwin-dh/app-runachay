import React, { useState } from 'react'
import { Button } from 'reactstrap'
import ModalCollabo from "./ModalCollabo"

const EditButton = (props) => {
    const { dataEdit, getCollaborators } = props
    const [dataModal, setDataModal] = useState(false)

    return (
        <>
            <Button
                color="warning"
                outline
                size="sm"
                className="mdi mdi-pencil-outline fs-5 align-bottom" />
            <ModalCollabo
                show={dataModal}
                title="Agregar Colaborador"
                onCloseClick={() => setDataModal(false)}
                getCollaborators={getCollaborators}

            />
        </>
    )
}

export default EditButton