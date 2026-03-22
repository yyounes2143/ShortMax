package com.amazonaws;
/* loaded from: classes2.dex */
public class AmazonServiceException extends AmazonClientException {

    /* renamed from: a  reason: collision with root package name */
    private String f4823a;

    /* renamed from: b  reason: collision with root package name */
    private String f4824b;

    /* renamed from: c  reason: collision with root package name */
    private ErrorType f4825c;

    /* renamed from: d  reason: collision with root package name */
    private String f4826d;

    /* renamed from: e  reason: collision with root package name */
    private int f4827e;

    /* renamed from: f  reason: collision with root package name */
    private String f4828f;

    /* loaded from: classes2.dex */
    public enum ErrorType {
        Client,
        Service,
        Unknown
    }

    public AmazonServiceException(String str) {
        super(str);
        this.f4825c = ErrorType.Unknown;
        this.f4826d = str;
    }

    public String b() {
        return this.f4824b;
    }

    public String d() {
        return this.f4826d;
    }

    public String e() {
        return this.f4823a;
    }

    public String f() {
        return this.f4828f;
    }

    public int g() {
        return this.f4827e;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return d() + " (Service: " + f() + "; Status Code: " + g() + "; Error Code: " + b() + "; Request ID: " + e() + ")";
    }

    public void h(String str) {
        this.f4824b = str;
    }

    public void i(String str) {
        this.f4826d = str;
    }

    public void j(ErrorType errorType) {
        this.f4825c = errorType;
    }

    public void k(String str) {
        this.f4823a = str;
    }

    public void n(String str) {
        this.f4828f = str;
    }

    public void q(int i10) {
        this.f4827e = i10;
    }
}
