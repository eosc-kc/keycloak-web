<#macro download category label file tar=true zip=true>
<#if zip> 
<a onclick="dl('${category}', '${label}');" href="https://github.com/keycloak/keycloak/releases/download/${version.version}/${file}.zip" target="_blank">
    <i class="fa fa-download" aria-hidden="true"></i>
    ZIP
</a>
(<a href="https://github.com/keycloak/keycloak/releases/download/${version.version}/${file}.zip.sha1" target="_blank">sha1</a>)
<span class="space"></span>
</#if>
<#if tar>
<a onclick="dl('${category}', '${label}');" href="https://github.com/keycloak/keycloak/releases/download/${version.version}/${file}.tar.gz" target="_blank">
    <i class="fa fa-download" aria-hidden="true"></i>
    TAR.GZ
</a>
(<a href="https://github.com/keycloak/keycloak/releases/download/${version.version}/${file}.tar.gz.sha1" target="_blank">sha1</a>)
</#if>
</#macro>

<h2>Server</h2>

<table class="table table-bordered table-striped">
    <tbody>
    <tr>
        <td>Keycloak</td>
        <td>Distribution powered by WildFly</td>
        <td style="width: 300px;">
            <@download category="server" label="standalone" file="keycloak-${version.version}" />
        </td>
    </tr>
    <tr>
        <td>Keycloak.X Preview</td>
        <td>Distribution powered by Quarkus (Preview)</td>
        <td style="width: 300px;">
            <@download category="server" label="standalone" file="keycloak.x-preview-${version.version}" />
        </td>
    </tr>
    <tr>
        <td>Container image</td>
        <td>For Docker, Podman, Kubernetes and OpenShift</td>
        <td>
            <a href="https://quay.io/repository/keycloak/keycloak" target="_blank">
                <i class="fa fa-link"></i>
                Quay
            </a>
        </td>
    </tr>
    <tr>
        <td>Operator</td>
        <td>For Kubernetes and OpenShift</td>
        <td>
            <a href="https://operatorhub.io/operator/keycloak-operator" target="_blank">
                <i class="fa fa-link"></i>
                OperatorHub
            </a>
        </td>
    </tr>
    </tbody>
</table>

<h2>Quickstarts</h2>

<table class="table table-bordered table-striped">
    <tbody>

    <tr>
        <td>Quickstarts distribution</td>
        <td style="width: 300px;">
            <a onclick="dl('examples', 'quickstarts');" href="https://github.com/keycloak/keycloak-quickstarts" target="_blank">
                <i class="fa fa-github" aria-hidden="true"></i>
                GitHub
            </a>
            <span class="space"></span>
            <a onclick="dl('examples', 'quickstarts');" href="https://github.com/keycloak/keycloak-quickstarts/archive/latest.zip" target="_blank">
                <i class="fa fa-download" aria-hidden="true"></i>
                ZIP
            </a>
        </td>
    </tr>
    </tbody>
</table>


<h2>Client Adapters</h2>

<div>
    <ul class="nav nav-tabs" role="tablist">
        <li role="presentation" class="active"><a href="#oidc" aria-controls="oidc" role="tab" data-toggle="tab">OpenID Connect</a></li>
        <li role="presentation"><a href="#saml" aria-controls="saml" role="tab" data-toggle="tab">SAML 2.0</a></li>
    </ul>

    <div class="tab-content">

        <div role="tabpanel" class="tab-pane active margin-top" id="oidc">
            <table class="table table-bordered table-striped">
                <tr>
                    <td>WildFly</td>
                    <td>
                        <table class="table-downloads-inner">
                            <tr>
                                <td>
                                    ${version.wildflyVersionAdapter}<br />
                                    ${version.wildflyVersionAdapterDeprecated} <b>*DEPRECATED*</b>
                                </td>
                                <td>
                                    <@download category="adapter" label="wildfly" file="keycloak-oidc-wildfly-adapter-${version.version}" tar=true />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>JBoss EAP</td>
                    <td>
                        <table class="table-downloads-inner">
                            <tr>
                                <td>7</td>
                                <td>
                                    <@download category="adapter" label="eap7" file="keycloak-oidc-wildfly-adapter-${version.version}" tar=true />
                                </td>
                            </tr>
                            <tr>
                                <td>6</td>
                                <td>
                                    <@download category="adapter" label="eap6" file="keycloak-oidc-eap6-adapter-${version.version}" tar=true />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>JBoss Fuse</td>
                    <td>
                        <table class="table-downloads-inner">
                            <tr>
                                <td>6.2, 6.3</td>
                                <td>
                                    <@download category="adapter" label="fuse" file="keycloak-oidc-fuse-adapter-${version.version}" tar=true />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>JavaScript</td>
                    <td>
                        <table class="table-downloads-inner">
                            <tr>
                                <td></td>
                                <td>
                                    <a href="https://www.npmjs.com/package/keycloak-js/v/${version.version}" target="_blank">
                                        <i class="fa fa-link"></i> NPM
                                    </a>
                                    <span class="space"></span>
                                    <@download category="adapter" label="js" file="keycloak-oidc-js-adapter-${version.version}" tar=true />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>Node.js</td>
                    <td>
                        <table class="table-downloads-inner">
                            <tr>
                                <td></td>
                                <td>
                                    <a href="https://www.npmjs.com/package/keycloak-connect/v/${version.version}" target="_blank">
                                        <i class="fa fa-link"></i> NPM
                                    </a>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>Jetty</td>
                    <td>
                        <table class="table-downloads-inner">
                            <tr>
                                <td>9.4</td>
                                <td>
                                    <@download category="adapter" label="jetty9.4" file="keycloak-oidc-jetty94-adapter-${version.version}" tar=true />
                                </td>
                            </tr>
                            <tr>
                                <td>9.3</td>
                                <td>
                                    <@download category="adapter" label="jetty9.3" file="keycloak-oidc-jetty93-adapter-${version.version}" tar=true />
                                </td>
                            </tr>
                            <tr>
                                <td>9.2</td>
                                <td>
                                    <@download category="adapter" label="jetty9.2" file="keycloak-oidc-jetty92-adapter-${version.version}" tar=true />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>Tomcat</td>
                    <td>
                        <table class="table-downloads-inner">
                            <tr>
                                <td>8, 9</td>
                                <td>
                                    <@download category="adapter" label="tomcat" file="keycloak-oidc-tomcat-adapter-${version.version}" tar=true />
                                </td>
                            </tr>
                            <tr>
                                <td>7</td>
                                <td>
                                    <@download category="adapter" label="tomcat7" file="keycloak-oidc-tomcat7-adapter-${version.version}" tar=true />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>

        <div role="tabpanel" class="tab-pane margin-top" id="saml">
            <table class="table table-bordered table-striped">
                <tbody>
                <tr>
                    <td>WildFly</td>
                    <td>
                        <table class="table-downloads-inner">
                            <tr>
                                <td>
                                    ${version.wildflyVersionAdapter}<br />
                                    ${version.wildflyVersionAdapterDeprecated} <b>*DEPRECATED*</b>
                                </td>
                                <td>
                                    <@download category="adapter-saml" label="wildfly" file="keycloak-saml-wildfly-adapter-${version.version}" tar=true />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>JBoss EAP</td>
                    <td>
                        <table class="table-downloads-inner">
                            <tr>
                                <td>7</td>
                                <td>
                                    <@download category="adapter-saml" label="eap7" file="keycloak-saml-wildfly-adapter-${version.version}" tar=true />
                                </td>
                            </tr>
                            <tr>
                                <td>6</td>
                                <td>
                                    <@download category="adapter-saml" label="eap6" file="keycloak-saml-eap6-adapter-${version.version}" tar=true />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>Jetty</td>
                    <td>
                        <table class="table-downloads-inner">
                            <tr>
                                <td>9.4</td>
                                <td>
                                    <@download category="adapter-saml" label="jetty9.4" file="keycloak-saml-jetty94-adapter-${version.version}" tar=true />
                                </td>
                            </tr>
                            <tr>
                                <td>9.3</td>
                                <td>
                                    <@download category="adapter-saml" label="jetty9.3" file="keycloak-saml-jetty93-adapter-${version.version}" tar=true />
                                </td>
                            </tr>
                            <tr>
                                <td>9.2</td>
                                <td>
                                    <@download category="adapter-saml" label="jetty9.2" file="keycloak-saml-jetty92-adapter-${version.version}" tar=true />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>Tomcat</td>
                    <td>
                        <table class="table-downloads-inner">
                            <tr>
                                <td>8, 9</td>
                                <td>
                                    <@download category="adapter-saml" label="tomcat" file="keycloak-saml-tomcat-adapter-${version.version}" tar=true />
                                </td>
                            </tr>
                            <tr>
                                <td>7</td>
                                <td>
                                    <@download category="adapter-saml" label="tomcat7" file="keycloak-saml-tomcat7-adapter-${version.version}" tar=true />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>
