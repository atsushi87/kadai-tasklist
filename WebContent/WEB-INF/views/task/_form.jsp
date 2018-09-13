<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${errors != null}">
  <div id="flush_error">
    入力内容にエラーがあります。<br />
    <c:forEach var="error" items="${errors}">
      ・<c:out value="${error}" />
      <br />
    </c:forEach>
  </div>
</c:if>

<label for="content">タスク</label>
<br />
<textarea name="content" cols="50" rows="2" maxlength="100">
${task.content}
</textarea>
<br />
<br />

<input type="hidden" name="_token" value="${_token}" />
<button type="submit">登録</button>