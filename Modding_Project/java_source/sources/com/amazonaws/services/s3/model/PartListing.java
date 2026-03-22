package com.amazonaws.services.s3.model;

import com.amazonaws.services.s3.internal.S3RequesterChargedResult;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class PartListing implements S3RequesterChargedResult {

    /* renamed from: a  reason: collision with root package name */
    private String f6123a;

    /* renamed from: b  reason: collision with root package name */
    private String f6124b;

    /* renamed from: c  reason: collision with root package name */
    private String f6125c;

    /* renamed from: d  reason: collision with root package name */
    private Integer f6126d;

    /* renamed from: e  reason: collision with root package name */
    private Integer f6127e;

    /* renamed from: f  reason: collision with root package name */
    private String f6128f;

    /* renamed from: g  reason: collision with root package name */
    private Owner f6129g;

    /* renamed from: h  reason: collision with root package name */
    private Owner f6130h;

    /* renamed from: i  reason: collision with root package name */
    private String f6131i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f6132j;

    /* renamed from: k  reason: collision with root package name */
    private Integer f6133k;

    /* renamed from: l  reason: collision with root package name */
    private List<PartSummary> f6134l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f6135m;

    public List<PartSummary> a() {
        if (this.f6134l == null) {
            this.f6134l = new ArrayList();
        }
        return this.f6134l;
    }

    @Override // com.amazonaws.services.s3.internal.S3RequesterChargedResult
    public void b(boolean z10) {
        this.f6135m = z10;
    }

    public void c(String str) {
        this.f6123a = str;
    }

    public void d(String str) {
        this.f6128f = str;
    }

    public void e(Owner owner) {
        this.f6130h = owner;
    }

    public void f(String str) {
        this.f6124b = str;
    }

    public void g(int i10) {
        this.f6126d = Integer.valueOf(i10);
    }

    public void h(int i10) {
        this.f6133k = Integer.valueOf(i10);
    }

    public void i(Owner owner) {
        this.f6129g = owner;
    }

    public void j(int i10) {
        this.f6127e = Integer.valueOf(i10);
    }

    public void k(String str) {
        this.f6131i = str;
    }

    public void l(boolean z10) {
        this.f6132j = z10;
    }

    public void m(String str) {
        this.f6125c = str;
    }
}
