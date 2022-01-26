const multiplySchema =  {
    body: {
        type: 'object',
        properties: {
            input: {
                type:'object',
                properties: {
                    num1: {type: 'number'},
                    num2: {type: 'number'},
                    operacion: {type: 'string'}
                },
                required: ['num1', 'num2', 'operacion']
            }
        },
        require: ['input']
    },
    response: {
        200: {
            type: 'object',
            properties: {
                resultado: { type: 'number'}
            }
        }        
    }
};

module.exports = multiplySchema;