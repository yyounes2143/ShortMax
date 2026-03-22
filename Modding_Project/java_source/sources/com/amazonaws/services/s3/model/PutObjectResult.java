package com.amazonaws.services.s3.model;

import com.amazonaws.services.s3.internal.ObjectExpirationResult;
import com.amazonaws.services.s3.internal.S3RequesterChargedResult;
import com.amazonaws.services.s3.internal.S3VersionResult;
import com.amazonaws.services.s3.internal.SSEResultBase;
import java.util.Date;
/* loaded from: classes2.dex */
public class PutObjectResult extends SSEResultBase implements ObjectExpirationResult, S3RequesterChargedResult, S3VersionResult {

    /* renamed from: d  reason: collision with root package name */
    private String f6141d;

    /* renamed from: e  reason: collision with root package name */
    private String f6142e;

    /* renamed from: f  reason: collision with root package name */
    private Date f6143f;

    /* renamed from: g  reason: collision with root package name */
    private String f6144g;

    /* renamed from: h  reason: collision with root package name */
    private String f6145h;

    /* renamed from: i  reason: collision with root package name */
    private ObjectMetadata f6146i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f6147j;

    @Override // com.amazonaws.services.s3.internal.S3RequesterChargedResult
    public void b(boolean z10) {
        this.f6147j = z10;
    }

    @Override // com.amazonaws.services.s3.internal.S3VersionResult
    public void d(String str) {
        this.f6141d = str;
    }

    public void f(String str) {
        this.f6145h = str;
    }

    public void g(String str) {
        this.f6142e = str;
    }

    @Override // com.amazonaws.services.s3.internal.ObjectExpirationResult
    public void i(String str) {
        this.f6144g = str;
    }

    @Override // com.amazonaws.services.s3.internal.ObjectExpirationResult
    public void j(Date date) {
        this.f6143f = date;
    }

    public void n(ObjectMetadata objectMetadata) {
        this.f6146i = objectMetadata;
    }
}
