#!/usr/bin/env bash

#
# The contents of this file are subject to the terms of the Common Development and
# Distribution License (the License). You may not use this file except in compliance with the
# License.
#
# You can obtain a copy of the License at legal/CDDLv1.0.txt. See the License for the
# specific language governing permission and limitations under the License.
# 
# When distributing Covered Software, include this CDDL Header Notice in each file and include
# the License file at legal/CDDLv1.0.txt. If applicable, add the following below the CDDL
# Header, with the fields enclosed by brackets [] replaced by your own identifying
# information: "Portions copyright [year] [name of copyright owner]".
#
# Portions copyright 2017 Jasper Siepkes
# Portions copyright 2017 Orchitech Solutions s.r.o.
#

# This script installs all the dependencies required to successfully build
# wren:am 13 (sustaining/13 branch) in the users local Maven repo.

#Include the commands
DIR="${BASH_SOURCE%/*}"
if [[ ! -d "$DIR" ]]; then DIR="$PWD"; fi
. "$DIR/install_commands.sh"

# Various
install_artifact_plain "org/forgerock/cddl-license/1.0.0/cddl-license-1.0.0.txt" "org.forgerock" "cddl-license" "1.0.0" "txt"

# POM's
install_pom "org/forgerock/commons/forgerock-selfservice/1.0.3/forgerock-selfservice-1.0.3.pom"
install_pom "org/forgerock/commons/forgerock-authz-filter-parent/3.1.5/forgerock-authz-filter-parent-3.1.5.pom"
install_pom "org/forgerock/commons/forgerock-auth-filters/3.1.5/forgerock-auth-filters-3.1.5.pom"
install_pom "org/forgerock/commons/forgerock-persistit/4.3.1/forgerock-persistit-4.3.1.pom"
install_pom "org/forgerock/commons/forgerock-bloomfilter/1.0.1/forgerock-bloomfilter-1.0.1.pom"
install_pom "org/forgerock/forgerock-parent/1.2.0/forgerock-parent-1.2.0.pom"
install_pom "org/forgerock/forgerock-parent/2.0.3/forgerock-parent-2.0.3.pom"
install_pom "org/forgerock/forgerock-parent/2.0.4/forgerock-parent-2.0.4.pom"
install_pom "org/forgerock/forgerock-parent/2.0.6/forgerock-parent-2.0.6.pom"
install_pom "org/forgerock/forgerock-parent/1.2.1/forgerock-parent-1.2.1.pom"
install_pom "org/forgerock/forgerock-parent/1.2.9/forgerock-parent-1.2.9.pom"
install_pom "org/forgerock/commons/forgerock-bom/3.0.0/forgerock-bom-3.0.0.pom"
install_pom "org/forgerock/commons/forgerock-bom/4.0.0/forgerock-bom-4.0.0.pom"
install_pom "org/forgerock/commons/forgerock-bom/4.1.1/forgerock-bom-4.1.1.pom"
install_pom "org/forgerock/commons/forgerock-utilities/3.0.1/forgerock-utilities-3.0.1.pom"
install_pom "org/forgerock/commons/forgerock-utilities/3.0.2/forgerock-utilities-3.0.2.pom"
install_pom "org/forgerock/commons/forgerock-audit/4.1.1/forgerock-audit-4.1.1.pom"
install_pom "org/forgerock/commons/forgerock-rest/4.0.3/forgerock-rest-4.0.3.pom"
install_pom "org/forgerock/commons/i18n-framework/1.4.1/i18n-framework-1.4.1.pom"
install_pom "org/forgerock/http/forgerock-http-framework-parent/3.0.1/forgerock-http-framework-parent-3.0.1.pom"
install_pom "org/forgerock/http/forgerock-http-framework/3.0.0/forgerock-http-framework-3.0.0.pom"
install_pom "org/forgerock/commons/forgerock-guice/1.1.0/forgerock-guice-1.1.0.pom"
install_pom "org/forgerock/commons/forgerock-bom/1.0.0/forgerock-bom-1.0.0.pom"
install_pom "org/forgerock/commons/i18n-framework/1.4.2/i18n-framework-1.4.2.pom"
install_pom "org/forgerock/commons/forgerock-authn-filter/3.1.5/forgerock-authn-filter-3.1.5.pom"
install_pom "org/forgerock/commons/forgerock-jaspi-modules/3.1.5/forgerock-jaspi-modules-3.1.5.pom"
install_pom "org/forgerock/commons/ui/forgerock-ui/11.0.13/forgerock-ui-11.0.13.pom"
install_pom "org/forgerock/commons/ui/forgerock-ui-mock/11.0.13/forgerock-ui-mock-11.0.13.pom"

# No source JAR
install_artifact "org/forgerock/forgerock-build-tools/1.0.3/forgerock-build-tools-1.0.3"
install_artifact "org/forgerock/commons/forgerock-test-utils/3.0.1/forgerock-test-utils-3.0.1"
install_artifact "org/forgerock/commons/forgerock-test-utils/3.0.2/forgerock-test-utils-3.0.2"
install_artifact "org/forgerock/commons/json-web-token/3.0.2/json-web-token-3.0.2"
install_artifact "org/forgerock/commons/forgerock-jaspi-openid-connect-module/3.1.5/forgerock-jaspi-openid-connect-module-3.1.5"
install_artifact "org/forgerock/commons/forgerock-selfservice-core/1.0.3/forgerock-selfservice-core-1.0.3"
install_artifact "org/forgerock/commons/forgerock-selfservice-stages/1.0.3/forgerock-selfservice-stages-1.0.3"
install_artifact "external/jdmkrt/2007-01-10/jdmkrt-2007-01-10"
install_artifact "external/jdmktk/2007-01-10/jdmktk-2007-01-10"

# Source JAR included 

# There is a special 'tests' artifact of 'json-resource'. For version 4.0.3 I didn't have this artifact so I
# copied the one of 20.0.0-alpha5 (which is actually older). I doubt this JAR actually contains anything different from
# 4.0.3 since it only contains some assertj classes (it doesn't contain ForgeRock code, just repackaged code).
install_artifact "org/forgerock/commons/json-resource/4.0.3/json-resource-4.0.3"

install_artifact "org/forgerock/commons/authz-framework/3.1.5/authz-framework-3.1.5"
install_artifact "org/forgerock/commons/authz-framework-api/3.1.5/authz-framework-api-3.1.5"
install_artifact "org/forgerock/commons/forgerock-persistit-core/4.3.1/forgerock-persistit-core-4.3.1"
install_artifact "org/forgerock/commons/forgerock-bloomfilter-core/1.0.1/forgerock-bloomfilter-core-1.0.1"
install_artifact "org/forgerock/commons/forgerock-bloomfilter-monitoring/1.0.1/forgerock-bloomfilter-monitoring-1.0.1"
install_artifact "org/forgerock/commons/forgerock-util/3.0.1/forgerock-util-3.0.1"
install_artifact "org/forgerock/commons/forgerock-util/3.0.2/forgerock-util-3.0.2"
install_artifact "org/forgerock/commons/forgerock-audit-core/4.1.1/forgerock-audit-core-4.1.1"
install_artifact "org/forgerock/commons/i18n-core/1.4.1/i18n-core-1.4.1" # No source of 1.4.1 but 1.4.2 does have source JAR.
install_artifact "org/forgerock/http/chf-http-core/3.0.0/chf-http-core-3.0.0"
install_artifact "org/forgerock/http/chf-http-core/3.0.1/chf-http-core-3.0.1"
install_artifact "org/forgerock/http/chf-http-servlet/3.0.1/chf-http-servlet-3.0.1"
install_artifact "org/forgerock/http/chf-client-apache-sync/3.0.1/chf-client-apache-sync-3.0.1"
install_artifact "org/forgerock/http/chf-client-apache-common/3.0.1/chf-client-apache-common-3.0.1"
install_artifact "org/forgerock/commons/forgerock-guice-core/1.1.0/forgerock-guice-core-1.1.0"
install_artifact "org/forgerock/commons/forgerock-guice-servlet/1.1.0/forgerock-guice-servlet-1.1.0"
install_artifact "org/forgerock/commons/json-resource-http/4.0.3/json-resource-http-4.0.3" 
install_artifact "org/forgerock/commons/i18n-core/1.4.2/i18n-core-1.4.2"
install_artifact "org/forgerock/commons/i18n-slf4j/1.4.2/i18n-slf4j-1.4.2"
install_artifact "org/forgerock/commons/forgerock-guice-test/1.1.0/forgerock-guice-test-1.1.0"
install_artifact "org/forgerock/commons/forgerock-audit-handler-csv/4.1.1/forgerock-audit-handler-csv-4.1.1"
install_artifact "org/forgerock/commons/forgerock-audit-json/4.1.1/forgerock-audit-json-4.1.1"
install_artifact "org/forgerock/commons/forgerock-audit-handler-syslog/4.1.1/forgerock-audit-handler-syslog-4.1.1"
install_artifact "org/forgerock/commons/forgerock-audit-handler-jdbc/4.1.1/forgerock-audit-handler-jdbc-4.1.1"
install_artifact "org/forgerock/commons/forgerock-jaspi-runtime/3.1.5/forgerock-jaspi-runtime-3.1.5"
install_artifact "org/forgerock/commons/forgerock-jaspi-jwt-session-module/3.1.5/forgerock-jaspi-jwt-session-module-3.1.5"

# OpenDJ depedencies. Sources and artifacts can be supplied by the wren:ds project.
install_pom "org/forgerock/opendj/opendj-server-parent/3.0.0/opendj-server-parent-3.0.0.pom"
install_pom "org/forgerock/opendj/opendj-sdk-bom/3.0.0/opendj-sdk-bom-3.0.0.pom"
install_pom "org/forgerock/opendj/opendj-sdk-parent/3.0.0/opendj-sdk-parent-3.0.0.pom"

install_artifact "org/forgerock/opendj/opendj-core/3.0.0/opendj-core-3.0.0"
install_artifact "org/forgerock/opendj/opendj-grizzly/3.0.0/opendj-grizzly-3.0.0"
install_artifact "org/forgerock/opendj/opendj-server/3.0.0/opendj-server-3.0.0"
install_artifact "org/forgerock/opendj/opendj-config/3.0.0/opendj-config-3.0.0"
install_artifact "org/forgerock/opendj/opendj-cli/3.0.0/opendj-cli-3.0.0"
install_artifact "org/forgerock/opendj/opendj-server-legacy/3.0.0/opendj-server-legacy-3.0.0"
install_artifact "org/forgerock/opendj/opendj-rest2ldap/3.0.0/opendj-rest2ldap-3.0.0"
install_artifact "org/forgerock/opendj/opendj-server-legacy/3.0.0/opendj-server-legacy-3.0.0" "zip"

# Since Google Guava is fully opensource it hasn't been checked which of the Guava modules are really used by the built.
# They were all just added. Also it hasn't been checked which have their sources attached (since Guava is open
# source anyway). The script to create them is in the 'forgerock-guavarepo'
install_pom "org/forgerock/commons/guava/forgerock-guava/18.0.3/forgerock-guava-18.0.3.pom"
install_artifact "org/forgerock/commons/guava/forgerock-guava-annotations/18.0.3/forgerock-guava-annotations-18.0.3"
install_artifact "org/forgerock/commons/guava/forgerock-guava-base/18.0.3/forgerock-guava-base-18.0.3"
install_artifact "org/forgerock/commons/guava/forgerock-guava-cache/18.0.3/forgerock-guava-cache-18.0.3"
install_artifact "org/forgerock/commons/guava/forgerock-guava-collect/18.0.3/forgerock-guava-collect-18.0.3"
install_artifact "org/forgerock/commons/guava/forgerock-guava-concurrent/18.0.3/forgerock-guava-concurrent-18.0.3"
install_artifact "org/forgerock/commons/guava/forgerock-guava-escape/18.0.3/forgerock-guava-escape-18.0.3"
install_artifact "org/forgerock/commons/guava/forgerock-guava-eventbus/18.0.3/forgerock-guava-eventbus-18.0.3"
install_artifact "org/forgerock/commons/guava/forgerock-guava-hash/18.0.3/forgerock-guava-hash-18.0.3"
install_artifact "org/forgerock/commons/guava/forgerock-guava-io/18.0.3/forgerock-guava-io-18.0.3"
install_artifact "org/forgerock/commons/guava/forgerock-guava-math/18.0.3/forgerock-guava-math-18.0.3"
install_artifact "org/forgerock/commons/guava/forgerock-guava-net/18.0.3/forgerock-guava-net-18.0.3"
install_artifact "org/forgerock/commons/guava/forgerock-guava-primitives/18.0.3/forgerock-guava-primitives-18.0.3"
install_artifact "org/forgerock/commons/guava/forgerock-guava-reflect/18.0.3/forgerock-guava-reflect-18.0.3"


# Zip files
install_artifact "org/forgerock/commons/ui/forgerock-ui-commons/11.0.13/forgerock-ui-commons-11.0.13" "zip" "www"
install_artifact "org/forgerock/commons/ui/forgerock-ui-user/11.0.13/forgerock-ui-user-11.0.13" "zip" "www"
