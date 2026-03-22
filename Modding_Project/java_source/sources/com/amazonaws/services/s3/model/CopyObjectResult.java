package com.amazonaws.services.s3.model;

import com.amazonaws.services.s3.internal.ObjectExpirationResult;
import com.amazonaws.services.s3.internal.S3RequesterChargedResult;
import com.amazonaws.services.s3.internal.S3VersionResult;
import com.amazonaws.services.s3.internal.SSEResultBase;
import java.io.Serializable;
import java.util.Date;
/* loaded from: classes2.dex */
public class CopyObjectResult extends SSEResultBase implements ObjectExpirationResult, S3RequesterChargedResult, S3VersionResult, Serializable {

    /* renamed from: d  reason: collision with root package name */
    private String f6036d;

    /* renamed from: e  reason: collision with root package name */
    private Date f6037e;

    /* renamed from: f  reason: collision with root package name */
    private String f6038f;

    /* renamed from: g  reason: collision with root package name */
    private Date f6039g;

    /* renamed from: h  reason: collision with root package name */
    private String f6040h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f6041i;

    @Override // com.amazonaws.services.s3.internal.S3RequesterChargedResult
    public void b(boolean z10) {
        this.f6041i = z10;
    }

    @Override // com.amazonaws.services.s3.internal.S3VersionResult
    public void d(String str) {
        this.f6038f = str;
    }

    public void f(String str) {
        this.f6036d = str;
    }

    public void g(Date date) {
        this.f6037e = date;
    }

    @Override // com.amazonaws.services.s3.internal.ObjectExpirationResult
    public void i(String str) {
        this.f6040h = str;
    }

    @Override // com.amazonaws.services.s3.internal.ObjectExpirationResult
    public void j(Date date) {
        this.f6039g = date;
    }
}
