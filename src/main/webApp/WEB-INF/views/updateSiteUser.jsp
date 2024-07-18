<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>회원 정보 수정</title>
    <link rel="stylesheet" type="text/css" href="/static/css/updateSiteUser.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <div class="row justify-content-center mt-5">
        <div class="col-md-6">
            <div class="card">
                <div class="card-body">
                    <h2 class="card-title mb-4">회원 정보 수정</h2>
                    <form id="updateForm" enctype="multipart/form-data">
                        <div class="form-group">
                            <label for="nickname">닉네임</label>
                            <input type="text" class="form-control" id="nickname" name="nickname" required>
                        </div>
                        <div class="form-group">
                            <label for="phoneNumber">전화번호</label>
                            <input type="tel" class="form-control" id="phoneNumber" name="phoneNumber" required>
                        </div>
                        <div class="form-group">
                            <label for="address">도로명 주소</label>
                            <div class="input-group">
                                <input class="form-control" id="address" placeholder="도로 주소" name="addr1" type="text" readonly="readonly">
                                <div class="input-group-append">
                                    <button class="btn btn-address-search" type="button" onclick="execPostCode()">주소 찾기</button>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="profilePicture">프로필 사진</label>
                            <div class="input-group">
                                <div class="custom-file">
                                    <input type="file" class="custom-file-input" id="profilePicture" name="profilePicture">
                                    <label class="custom-file-label" id="profilePictureLabel" for="profilePicture">파일 선택...</label>
                                </div>
                                <div class="input-group-append">
                                    <button class="btn btn-outline-secondary" type="button" id="uploadButton">업로드</button>
                                </div>
                            </div>
                            <img id="profilePictureDisplay" class="profile-img-preview mt-2" src="" alt="">
                            <input type="hidden" id="profileLink" name="profileLink">
                        </div>
                        <button type="submit" class="btn btn-primary btn-block btn-custom-color">수정하기</button>
                    </form>
                    <div id="message" class="mt-3"></div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="/static/js/updateSiteUser.js"></script>
</body>
</html>
