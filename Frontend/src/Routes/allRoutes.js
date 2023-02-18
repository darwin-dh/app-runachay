import React from "react";
import { Redirect } from "react-router-dom";

//Dashboard
import Dashboard from "../pages/Dashboard";
//collaborators
import Collaborators from "../pages/Collaborators";
//login
import Login from "../pages/Authentication/Login";
const authProtectedRoutes = [
  
  { path: "/dashboard", component: Dashboard },
  { path: "/index", component: Dashboard },
  { path: "/Colaborador", component: Collaborators},
  {
    path: "/",
    exact: true,
    component: () => <Redirect to="/dashboard" />,
  },
];

const publicRoutes = [
  // Authentication Page

  { path: "/login", component: Login },

];

export { authProtectedRoutes, publicRoutes };