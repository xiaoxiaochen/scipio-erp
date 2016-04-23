<#--
Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements.  See the NOTICE file
distributed with this work for additional information
regarding copyright ownership.  The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License.  You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied.  See the License for the
specific language governing permissions and limitations
under the License.
-->
<#include "ordercommon.ftl">

<@script>
function submitForm(form) {
   form.submit();
}
</@script>

<@menu type="button">
    <#-- Cato: TODO: localize -->
    <#assign submitFormOnClick><#if callSubmitForm??>javascript:submitForm(document.${parameters.formNameValue!});</#if></#assign>
    <@menuitem type="link" href=makeOfbizUrl("quickAnonSetCustomer") class="+${styles.action_run_session!} ${styles.action_update!}" onClick=submitFormOnClick text="Personal Info" />
    <@menuitem type="link" href=makeOfbizUrl("quickAnonOrderReview") class="+${styles.action_run_session!} ${styles.action_update!}" onClick=submitFormOnClick text="Review Order" disabled=(!enableShipmentMethod??) />
</@menu>
