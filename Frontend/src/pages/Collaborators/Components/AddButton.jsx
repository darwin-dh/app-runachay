import { useState } from "react"
import { Button } from "reactstrap"
import ModalCollabo from "./ModalCollabo"
const AddButton = (props) => {
    const { title, getCollaborators } = props
    const [dataModal, setDataModal] = useState(false)

    return (
        <div>
            <Button className="btn bttn-blue text-white  add-btn" onClick={() => setDataModal(true)}>
                <i className="mdi mdi-plus-thick me-1 align-bottom"></i> Agregar {title || "Colaborador"}
            </Button>
            <ModalCollabo
                show={dataModal}
                title="Agregar Colaborador"
                onCloseClick={() => setDataModal(false)}
                getCollaborators={getCollaborators}

            />
        </div>

    )
}

export default AddButton