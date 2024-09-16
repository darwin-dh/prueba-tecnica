import React, { useEffect, useState } from 'react'
import FormBooks from './Components/FormBooks'
import TableGeneric from '../../common/Generics/Table/TableGeneric'
import { Button, Card, Col, Label, Row } from 'reactstrap'
import { deleteBook, useFilterBook, useGetBook } from '../../Hooks/UseBooApi'
import { Edit, Eye, Trash2 } from 'react-feather'
import ModalAlert from '../../common/Generics/Modal/ModalAlert'
import { SwalSuccess } from '../../common/Generics/Swals/SwalsApi'
import SelectGeneric from '../../common/Generics/SelectGeneric'
import { useGetAuthrs } from '../../Hooks/UseAuthrs'

const Books = () => {
    const [isEdit, setIsEdit] = React.useState(false)
    const [showModalAlert, setShowModalAlert] = useState(false)
    const [id_libro, setId_libro] = useState<any>()
    const [itmesForm, setItemsForm] = useState<any>({})
    const [optionFilter, setOptionFilter] = useState()
    const [data, setData] = useState<any>([])
    const [testop, setTestOp] = useState<any>([])
    const [iDAuthrDefault, setIDAuthrDefault] = useState<any>()
    const [optionSelect, setOptionSelect] = useState('titulo')

    const query = useGetBook()
    const quetyAuthr = useGetAuthrs()

    useEffect(() => {
        if (query.data) {
            setData(query.data)
        }
    }, [query.data])
    useEffect(() => {
        if (quetyAuthr.data) {
            const mappedDocs = quetyAuthr?.data.map((item: any) => ({
                label: item?.nombre || '',
                value: item?.id_autor
            }));
            setIDAuthrDefault(mappedDocs[0].value)

            setTestOp(mappedDocs);
        }
    }, [quetyAuthr.data]);
    const columnsCartPro = [
        { Header: 'Id', accessor: 'id_libro' },
        { Header: 'Titulo', accessor: 'titulo' },
        { Header: 'Autor', accessor: 'autor.nombre' },
        { Header: 'Idioma', accessor: 'idioma' },
        { Header: 'Genero', accessor: 'genero' },
        { Header: 'Año', accessor: 'ayer' },
        {
            Header: 'Acciones',
            accessor: 'opciones',
            Cell: ({ row }: any) => {

                return (
                    <div className='d-flex gap-1 justify-content-center'>
                        <Button color='secondary' size='sm' className='' onClick={() => handleEdit(row.original, 'see')}>
                            <Eye size={15} />
                        </Button>
                        <Button color='warning' size='sm' className='' onClick={() => handleEdit(row.original, 'edit')}>
                            <Edit size={15} />
                        </Button>
                        <Button color='danger' size='sm' onClick={() => handleEdit(row.original, 'delete')}>
                            <Trash2 size={15} />

                        </Button>
                    </div>

                )
            }
        }
    ]
    const handleEdit = (item: any, type: string) => {
        if (!item?.id_libro) return
        switch (type) {
            case 'edit':
                setIsEdit(true)
                setId_libro(item?.id_libro)
                setItemsForm(item)
                break;
            case 'see':
                setIsEdit(false)
                setId_libro(item?.id_libro)
                setItemsForm(item)
                break;
            case 'delete':
                setIsEdit(false)
                setId_libro(item?.id_libro)
                setShowModalAlert(true)
                break;
            default:
                break
        }
    }
    const handleClear = () => {
        setItemsForm({})
        setIsEdit(false)
        query.refetch()

    }
    const handleDelete = async () => {
        const res: any = await deleteBook(id_libro)
        if (res) {
            query.refetch()
            setShowModalAlert(false)
            SwalSuccess({ title: 'Eliminado' })
        }
    }
    const handleFilter = async () => {
        const res: any = await useFilterBook(optionSelect)
        setData(res || [])
    }
    return (
        <div>
            {showModalAlert &&
                <ModalAlert
                    onAceptar={() => handleDelete()}
                    onCancelar={() => setShowModalAlert(false)}
                    onCloseClick={() => setShowModalAlert(false)}
                    show={showModalAlert}
                    showAceptar={true}
                    showCancelar={true}
                    text='¿Estas seguro de eliminar el libro?'
                    backdrop={true}
                />}

            <FormBooks
                isEdit={isEdit}
                itmesForm={itmesForm}
                handleClear={handleClear}
                id_libro={id_libro}
                query={query}
                testop={testop}
                iDAuthrDefault={iDAuthrDefault}
            />
            <Row className='my-2'>
                <Col lg='2'>
                    <Label>Consultar por nombre</Label>
                </Col>
                <Col lg='3'>
                    <SelectGeneric
                        btnClear={true}
                        options={testop}
                        optionSelect={(e: any) => setOptionSelect(e)}
                        validationValue={optionSelect}
                    />
                </Col>
                <Col>
                    <Button color='primary' onClick={handleFilter}>Consultar</Button>
                </Col>
            </Row>
            <Card className='mt-3'>
                {query?.data && <TableGeneric
                    showFilter={true}
                    showFooter={true}
                    columns={columnsCartPro || []}
                    data={data || []}
                    divClass='table-responsive text-black bg-light  '
                    tableClass='cursor-pointer w-100'
                    theadClass='position-sticky top-0 bg-back '
                    thClass='fs-11 bg-dark text-white px-2 border'
                    tdClass={'fs-11 fw-light border px-2'}
                    tbodyClass='bg-light'
                    styleHeight='210px'
                    overflowY='scroll'
                                                pageSizeN={10}

                />}
            </Card>
        </div>
    )
}

export default Books