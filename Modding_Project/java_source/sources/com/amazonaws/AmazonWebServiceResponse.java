package com.amazonaws;
/* loaded from: classes2.dex */
public class AmazonWebServiceResponse<T> {

    /* renamed from: a  reason: collision with root package name */
    private T f4845a;

    /* renamed from: b  reason: collision with root package name */
    private ResponseMetadata f4846b;

    public String a() {
        ResponseMetadata responseMetadata = this.f4846b;
        if (responseMetadata == null) {
            return null;
        }
        return responseMetadata.a();
    }

    public T b() {
        return this.f4845a;
    }

    public void c(ResponseMetadata responseMetadata) {
        this.f4846b = responseMetadata;
    }

    public void d(T t10) {
        this.f4845a = t10;
    }
}
