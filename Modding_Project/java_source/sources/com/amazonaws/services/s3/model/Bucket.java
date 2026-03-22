package com.amazonaws.services.s3.model;

import java.io.Serializable;
import java.util.Date;
/* loaded from: classes2.dex */
public class Bucket implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private String f5982a = null;

    /* renamed from: b  reason: collision with root package name */
    private Owner f5983b = null;

    /* renamed from: c  reason: collision with root package name */
    private Date f5984c = null;

    public Date b() {
        return this.f5984c;
    }

    public String d() {
        return this.f5982a;
    }

    public Owner e() {
        return this.f5983b;
    }

    public void f(Date date) {
        this.f5984c = date;
    }

    public void g(String str) {
        this.f5982a = str;
    }

    public void h(Owner owner) {
        this.f5983b = owner;
    }

    public String toString() {
        return "S3Bucket [name=" + d() + ", creationDate=" + b() + ", owner=" + e() + "]";
    }
}
