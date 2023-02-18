import React, { useState, useEffect } from 'react';
import { Dropdown, DropdownItem, DropdownMenu, DropdownToggle } from 'reactstrap';
import avatar1 from "../../assets/images/users/avatar.jpg";
import { useHistory } from 'react-router-dom';
const ProfileDropdown = () => {
    const history = useHistory()

    const logout = () => {
        sessionStorage.removeItem("authUser");
        history.push("/login");
    }

    const [link, setLink] = useState();

    useEffect(() => {
        const result = JSON.parse(sessionStorage.getItem("authUserData"));
        setLink(result.link);
    }, []);


    //Dropdown Toggle
    const [isProfileDropdown, setIsProfileDropdown] = useState(false);
    const toggleProfileDropdown = () => {
        setIsProfileDropdown(!isProfileDropdown);
    };
    return (
        <React.Fragment>
            <Dropdown isOpen={isProfileDropdown} toggle={toggleProfileDropdown} className="ms-sm-3 header-item topbar-user">
                <DropdownToggle tag="button" type="button" className="btn shadow-none">
                    <span className="d-flex align-items-center">
                        <img className="rounded-circle header-profile-user" src={avatar1}
                            alt="Header Avatar" />
                        <span className="text-start ms-xl-2">
                            <span className="d-none d-xl-inline-block ms-1 fw-medium user-name-text">Usuario</span>
                            <span className="d-none d-xl-block ms-1 fs-12 text-muted user-name-sub-text">{link}</span>
                        </span>
                    </span>
                </DropdownToggle>
                <DropdownMenu className="dropdown-menu-end">

                    <h6 className="dropdown-header">Bienvenido {link}</h6>

                    <DropdownItem onClick={logout}><i
                        className="mdi mdi-logout text-muted fs-16 align-middle me-1"></i> <span
                            className="align-middle" data-key="t-logout">Logout</span></DropdownItem>
                </DropdownMenu>
            </Dropdown>
        </React.Fragment>
    );
};

export default ProfileDropdown;