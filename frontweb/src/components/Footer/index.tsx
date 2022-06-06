import './styles.css';
import { ReactComponent as Github } from './github.svg'
import { ReactComponent as LinkedinIcon } from './linkedin.svg'
import { ReactComponent as InstagramIcon } from './instagram.svg'

function Footer() {
    return(
        <footer className="main-footer">
            App desenvolvido por Wester Torres
            <div className="footer-icons">
                <a href="https://github.com/westorres9" target="_new">
                    <Github />
                </a>
                <a href="https://www.linkedin.com/in/wester-torres-83a4b5219/" target="_new">
                    <LinkedinIcon />
                </a>
                <a href="https://www.instagram.com/westorres9" target="_new">
                    <InstagramIcon />
                </a>
            </div>
        </footer>
    )
}

export default Footer;