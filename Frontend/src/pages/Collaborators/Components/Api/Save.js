import axios from 'axios'
import { toast } from 'react-toastify';
import Swal from 'sweetalert2';
export const save = async (items, saveResult) => {
    console.log('entro save');
    try {
        const result = await axios.post('api/add-collaborator', {
            identification: items.identification,
            name: items.name,
            last_name: items.last_name,
            email: items.email,
            status: 1,
            password: items.password,
            birthdate: items.birthdate,
            address: items.address,
            phone: items.phone,
            vaccination_status: items.vaccination_status || 1,
            type_vaccine: items.type_vaccine || 1,
        })

        saveResult(result);
        Swal.fire({
            position: 'top-end',
            icon: 'success',
            title: 'Guardado con exito',
            showConfirmButton: false,
            timer: 1500
        })

        if (result.status == "error") {
            Swal.fire({
                icon: 'error',
                title: 'Oops...',
                text: result.mensage,

            })
            toast.error(result.message, { autoClose: 3000 });
        }
    } catch (e) {
        Swal.fire({
            icon: 'error',
            title: 'Oops...',
            text: e,

        })
        toast.error(e, { autoClose: 3000 });

    }

}

