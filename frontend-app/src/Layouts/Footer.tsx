import React from 'react'
import { Col, Container, Row } from 'reactstrap'

const Footer = () => {
    return (
        <footer className="footer">
            <Container fluid>
                <Row>
                    <Col sm={6}>
                        {new Date().getFullYear()} © Darwin Quihspe.
                    </Col>
                    <Col sm={6}>
                        <div className="text-sm-end d-none d-sm-block">
                            Desarrollado por Darwin Quihspe.
                        </div>
                    </Col>
                </Row>
            </Container>
        </footer>
    )
}

export default Footer