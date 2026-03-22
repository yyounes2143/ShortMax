package com.amazonaws.services.s3.model;

import com.amazonaws.services.s3.internal.ObjectExpirationResult;
import com.amazonaws.services.s3.internal.S3RequesterChargedResult;
import com.amazonaws.services.s3.internal.SSEResultBase;
import java.io.Serializable;
import java.util.Date;
/* loaded from: classes2.dex */
public class CompleteMultipartUploadResult extends SSEResultBase implements ObjectExpirationResult, S3RequesterChargedResult, Serializable {

    /* renamed from: d  reason: collision with root package name */
    private String f6028d;

    /* renamed from: e  reason: collision with root package name */
    private String f6029e;

    /* renamed from: f  reason: collision with root package name */
    private String f6030f;

    /* renamed from: g  reason: collision with root package name */
    private String f6031g;

    /* renamed from: h  reason: collision with root package name */
    private String f6032h;

    /* renamed from: i  reason: collision with root package name */
    private Date f6033i;

    /* renamed from: j  reason: collision with root package name */
    private String f6034j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f6035k;

    @Override // com.amazonaws.services.s3.internal.S3RequesterChargedResult
    public void b(boolean z10) {
        this.f6035k = z10;
    }

    public void d(String str) {
        this.f6032h = str;
    }

    public void f(String str) {
        this.f6028d = str;
    }

    public void g(String str) {
        this.f6031g = str;
    }

    @Override // com.amazonaws.services.s3.internal.ObjectExpirationResult
    public void i(String str) {
        this.f6034j = str;
    }

    @Override // com.amazonaws.services.s3.internal.ObjectExpirationResult
    public void j(Date date) {
        this.f6033i = date;
    }

    public void n(String str) {
        this.f6029e = str;
    }

    public void q(String str) {
        this.f6030f = str;
    }
}
