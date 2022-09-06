import * as React from 'react'
import { useState, useEffect } from 'react'
import * as ReactDOM from 'react-dom'

const ServerSideError = (props) => {
  return(
    <>
      <p className="lead fw-bold">Please fix the errors below</p>
      { props.errors.map((error, index) => (
        <p className="text-danger" key={index}>{error}</p>
      )) }
    </>
  )
}

export default ServerSideError;
