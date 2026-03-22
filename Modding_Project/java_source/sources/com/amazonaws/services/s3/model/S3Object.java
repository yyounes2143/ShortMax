package com.amazonaws.services.s3.model;

import com.amazonaws.services.s3.internal.S3RequesterChargedResult;
import java.io.Closeable;
import java.io.IOException;
import java.io.Serializable;
/* loaded from: classes2.dex */
public class S3Object implements Closeable, Serializable, S3RequesterChargedResult {

    /* renamed from: a  reason: collision with root package name */
    private String f6162a = null;

    /* renamed from: b  reason: collision with root package name */
    private String f6163b = null;

    /* renamed from: c  reason: collision with root package name */
    private ObjectMetadata f6164c = new ObjectMetadata();

    /* renamed from: d  reason: collision with root package name */
    private transient S3ObjectInputStream f6165d;

    /* renamed from: e  reason: collision with root package name */
    private String f6166e;

    /* renamed from: f  reason: collision with root package name */
    private Integer f6167f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f6168g;

    @Override // com.amazonaws.services.s3.internal.S3RequesterChargedResult
    public void b(boolean z10) {
        this.f6168g = z10;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (k() != null) {
            k().close();
        }
    }

    public String d() {
        return this.f6162a;
    }

    public S3ObjectInputStream k() {
        return this.f6165d;
    }

    public ObjectMetadata q() {
        return this.f6164c;
    }

    public void r(String str) {
        this.f6163b = str;
    }

    public void s(String str) {
        this.f6162a = str;
    }

    public void t(S3ObjectInputStream s3ObjectInputStream) {
        this.f6165d = s3ObjectInputStream;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("S3Object [key=");
        sb2.append(d());
        sb2.append(",bucket=");
        String str = this.f6163b;
        if (str == null) {
            str = "<Unknown>";
        }
        sb2.append(str);
        sb2.append("]");
        return sb2.toString();
    }

    public void u(String str) {
        this.f6166e = str;
    }

    public void v(Integer num) {
        this.f6167f = num;
    }
}
