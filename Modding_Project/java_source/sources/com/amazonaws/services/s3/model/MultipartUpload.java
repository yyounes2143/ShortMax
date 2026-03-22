package com.amazonaws.services.s3.model;

import java.util.Date;
/* loaded from: classes2.dex */
public class MultipartUpload {

    /* renamed from: a  reason: collision with root package name */
    private String f6091a;

    /* renamed from: b  reason: collision with root package name */
    private String f6092b;

    /* renamed from: c  reason: collision with root package name */
    private Owner f6093c;

    /* renamed from: d  reason: collision with root package name */
    private Owner f6094d;

    /* renamed from: e  reason: collision with root package name */
    private String f6095e;

    /* renamed from: f  reason: collision with root package name */
    private Date f6096f;

    public void a(Date date) {
        this.f6096f = date;
    }

    public void b(Owner owner) {
        this.f6094d = owner;
    }

    public void c(String str) {
        this.f6091a = str;
    }

    public void d(Owner owner) {
        this.f6093c = owner;
    }

    public void e(String str) {
        this.f6095e = str;
    }

    public void f(String str) {
        this.f6092b = str;
    }
}
