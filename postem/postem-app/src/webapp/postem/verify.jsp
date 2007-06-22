<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<%@ taglib uri="http://sakaiproject.org/jsf/sakai" prefix="sakai" %>

<jsp:useBean id="msgs" class="org.sakaiproject.util.ResourceLoader" scope="session"> 
<jsp:setProperty name="msgs" property="baseName" value="org.sakaiproject.tool.postem.bundle.Messages"/> 
</jsp:useBean>
<f:view>
	<sakai:view title="#{msgs.title_verify}">
		<sakai:view_content>
			<h:form>
			
		 <sakai:tool_bar_message value="#{msgs.title_verify}" />
			
			<h:messages globalOnly="true" />
				

		  	<h:outputText value="#{msgs.just_uploaded}"/>
		  	<br />
		  	<br />
		  	<h:outputText value="#{msgs.first_record}"/>
		  	<br />
		  	<h:outputText value="#{msgs.if_not_correct}"/>
		  	<br />
		  	<hr />
		  	<br />
		  	
       		  	<h:outputText value="#{PostemTool.firstStudentGrades}" escape="false" rendered="#{PostemTool.editable}"/>
		  	
				<sakai:button_bar>					
					<sakai:button_bar_item
						action="#{PostemTool.processCreateOk}"
						value="#{msgs.bar_save}" />
					<sakai:button_bar_item
						action="#{PostemTool.processCreateBack}"
						value="#{msgs.back}" />
				</sakai:button_bar>		  	

			</h:form>
		</sakai:view_content>
	</sakai:view>
</f:view>