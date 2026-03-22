package com.amazonaws.services.s3.model;

import java.util.Date;
/* loaded from: classes2.dex */
public class S3ObjectSummary {

    /* renamed from: a  reason: collision with root package name */
    protected String f6173a;

    /* renamed from: b  reason: collision with root package name */
    protected String f6174b;

    /* renamed from: c  reason: collision with root package name */
    protected String f6175c;

    /* renamed from: d  reason: collision with root package name */
    protected long f6176d;

    /* renamed from: e  reason: collision with root package name */
    protected Date f6177e;

    /* renamed from: f  reason: collision with root package name */
    protected String f6178f;

    /* renamed from: g  reason: collision with root package name */
    protected Owner f6179g;

    public void a(String str) {
        this.f6175c = str;
    }

    public void b(String str) {
        this.f6174b = str;
    }

    public void c(Date date) {
        this.f6177e = date;
    }

    public void d(Owner owner) {
        this.f6179g = owner;
    }

    public void e(long j10) {
        this.f6176d = j10;
    }

    public void f(String str) {
        this.f6178f = str;
    }

    public String toString() {
        return "S3ObjectSummary{bucketName='" + this.f6173a + "', key='" + this.f6174b + "', eTag='" + this.f6175c + "', size=" + this.f6176d + ", lastModified=" + this.f6177e + ", storageClass='" + this.f6178f + "', owner=" + this.f6179g + '}';
    }
}
