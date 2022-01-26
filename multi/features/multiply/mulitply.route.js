const multiplyRoute = (request, reply) => {
    console.log(request.body.input);

    //return request.body.input.num1 * request.body.input.num2

    if (request.body.input.num1 === 5)    {
        reply.status(400).send({
            message: 'We  do not like n.5',            
        });
    }


    let resultado = 0;
    if (request.body.input.operacion =="/") {
        resultado = parseInt(request.body.input.num1) / parseInt(request.body.input.num2);
    } else if (request.body.input.operacion == "*") {
        resultado = parseInt(request.body.input.num1) * parseInt(request.body.input.num2);
    } else if (request.body.input.operacion == "-") {
        resultado = parseInt(request.body.input.num1) - parseInt(request.body.input.num2);
    } else {
        resultado = parseInt(request.body.input.num1) + parseInt(request.body.input.num2);
    }        

    reply.send ({resultado});    

    
};

module.exports = multiplyRoute;