package com.amazonaws.services.s3.model;
/* loaded from: classes2.dex */
public class MultiObjectDeleteException extends AmazonS3Exception {

    /* loaded from: classes2.dex */
    public static class DeleteError {

        /* renamed from: a  reason: collision with root package name */
        private String f6087a;

        /* renamed from: b  reason: collision with root package name */
        private String f6088b;

        /* renamed from: c  reason: collision with root package name */
        private String f6089c;

        /* renamed from: d  reason: collision with root package name */
        private String f6090d;

        public void a(String str) {
            this.f6089c = str;
        }

        public void b(String str) {
            this.f6087a = str;
        }

        public void c(String str) {
            this.f6090d = str;
        }

        public void d(String str) {
            this.f6088b = str;
        }
    }

    @Override // com.amazonaws.AmazonServiceException
    public String b() {
        return super.b();
    }
}
