import React, { useState, Fragment } from 'react'

export default function handleOpen({ children }) {
    const [isOpen, setOpen] = useState(false)

    function handleOpen() {
        setOpen(true)

    }
    function handleClose() {
        setOpen(false)
    }
}
