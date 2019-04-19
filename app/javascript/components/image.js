const faker = require('faker');

const newImg = () => {
    // TODO: return a random message as an object with two keys, subject and sender

   
    document.querySelectorAll('.card').forEach((x) => {
        let imgUrl = faker.image.nightlife()
        let url = `linear-gradient(rgba(0, 0, 0, 0.3), rgba(0, 0, 0, 0.2)), url(${imgUrl})`
        x.style.backgroundImage = url
    });
};

export { newImg };