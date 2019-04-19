import Typed from 'typed.js';

const loadDynamicBannerText = () => {
    new Typed('#banner-typed-text', {
        strings: ["It's 🔥 right now", "Are you 🔥 ready?"],
        typeSpeed: 50,
        loop: true
    });
}

export { loadDynamicBannerText };