const multiplyRoute = require('./mulitply.route')
const multiplySchema = require('./multiply.schema');

const multiplyFeature = {
    name: 'multi',
    hook: '$FASTIFY_POST',
    handler: {
        url:'/multi',
        schema: multiplySchema,
        handler: multiplyRoute
    }
}

module.exports = multiplyFeature;