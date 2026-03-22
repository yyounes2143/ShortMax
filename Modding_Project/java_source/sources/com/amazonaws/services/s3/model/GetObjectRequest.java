package com.amazonaws.services.s3.model;

import com.amazonaws.AmazonWebServiceRequest;
import com.amazonaws.event.ProgressListener;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
/* loaded from: classes2.dex */
public class GetObjectRequest extends AmazonWebServiceRequest implements Serializable {

    /* renamed from: f  reason: collision with root package name */
    private S3ObjectIdBuilder f6048f;

    /* renamed from: g  reason: collision with root package name */
    private long[] f6049g;

    /* renamed from: h  reason: collision with root package name */
    private List<String> f6050h;

    /* renamed from: i  reason: collision with root package name */
    private List<String> f6051i;

    /* renamed from: j  reason: collision with root package name */
    private Date f6052j;

    /* renamed from: k  reason: collision with root package name */
    private Date f6053k;

    /* renamed from: l  reason: collision with root package name */
    private ProgressListener f6054l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f6055m;

    public GetObjectRequest(String str, String str2) {
        this(str, str2, null);
    }

    public SSECustomerKey A() {
        return null;
    }

    public Date B() {
        return this.f6052j;
    }

    public String C() {
        return this.f6048f.e();
    }

    public boolean D() {
        return this.f6055m;
    }

    public void E(String str) {
        this.f6048f.f(str);
    }

    public void F(String str) {
        this.f6048f.g(str);
    }

    public void G(long j10, long j11) {
        this.f6049g = new long[]{j10, j11};
    }

    public void H(String str) {
        this.f6048f.h(str);
    }

    @Override // com.amazonaws.AmazonWebServiceRequest
    public ProgressListener f() {
        return this.f6054l;
    }

    @Override // com.amazonaws.AmazonWebServiceRequest
    public void n(ProgressListener progressListener) {
        this.f6054l = progressListener;
    }

    public String r() {
        return this.f6048f.b();
    }

    public String s() {
        return this.f6048f.d();
    }

    public List<String> t() {
        return this.f6050h;
    }

    public Date u() {
        return this.f6053k;
    }

    public List<String> v() {
        return this.f6051i;
    }

    public long[] y() {
        long[] jArr = this.f6049g;
        if (jArr == null) {
            return null;
        }
        return (long[]) jArr.clone();
    }

    public ResponseHeaderOverrides z() {
        return null;
    }

    public GetObjectRequest(String str, String str2, String str3) {
        this.f6048f = new S3ObjectIdBuilder();
        this.f6050h = new ArrayList();
        this.f6051i = new ArrayList();
        E(str);
        F(str2);
        H(str3);
    }
}
