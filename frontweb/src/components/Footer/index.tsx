import './styles.css';
import { ReactComponent as YoutubeIcon } from './youtube.svg'
import { ReactComponent as LinkedinIcon } from './linkedin.svg'
import { ReactComponent as InstagramIcon } from './instagram.svg'

function Footer() {
    return(
        <footer className="main-footer">
            App desenvolvido por Wester Torres usando Java e Spring
            <div className="footer-icons">
                <a href="https://www.youtube.com/c/DevSuperior" target="_new">
                    <YoutubeIcon />
                </a>
                <a href="https://www.linkedin.com/in/nathancarvalho/" target="_new">
                    <LinkedinIcon />
                </a>
                <a href="https://www.instagram.com" target="_new">
                    <InstagramIcon />
                </a>
            </div>
        </footer>
    )
}

export default Footer;