import axios from 'axios'
import { toast } from 'react-toastify';
import Swal from 'sweetalert2';
export const Edit = async (items, saveResult) => {
    console.log('items', items);
    try {
        const result = await axios.post('api/update-collaborator', {
            idcollaborator: items.idcollaborator,
            identification: items.identification,
            name: items.name,
            last_name: items.last_name,
            email: items.email,
            status: 1,
            password: items.password,
            birthdate: "2023-05-05",
            address: items.address,
            phone: items.phone,
            vaccination_status: items.vaccination_status || 1,
            type_vaccine: items.type_vaccine || 1,
        })
        console.log('result', result);
/*         Swal.fire({
            position: 'top-end',
            icon: 'success',
            title: 'Guardado con exito',
            showConfirmButton: false,
            timer: 1500
        }) */
    } catch (e) {
        console.log(e);
        /*         Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: e,
        
                }) */
        toast.error(e, { autoClose: 3000 });

    }

}

