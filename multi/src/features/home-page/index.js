const homePageRoute = require("./home-page-route");

const homePage = ({ registerAction }) => {
    console.log('HEllo world');

    registerAction({
        name: 'home',
        hook: '$FASTIFY_GET',
        handler: () => {
            console.log('building...');

            return {
                url:'/',
                handler: homePageRoute
            }
        }
    });
};



module.exports = homePage;