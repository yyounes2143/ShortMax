package com.amazonaws.services.s3.model;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class MultipartUploadListing {

    /* renamed from: a  reason: collision with root package name */
    private String f6097a;

    /* renamed from: b  reason: collision with root package name */
    private String f6098b;

    /* renamed from: c  reason: collision with root package name */
    private String f6099c;

    /* renamed from: d  reason: collision with root package name */
    private String f6100d;

    /* renamed from: e  reason: collision with root package name */
    private String f6101e;

    /* renamed from: f  reason: collision with root package name */
    private int f6102f;

    /* renamed from: g  reason: collision with root package name */
    private String f6103g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f6104h;

    /* renamed from: i  reason: collision with root package name */
    private String f6105i;

    /* renamed from: j  reason: collision with root package name */
    private String f6106j;

    /* renamed from: k  reason: collision with root package name */
    private List<MultipartUpload> f6107k;

    /* renamed from: l  reason: collision with root package name */
    private List<String> f6108l = new ArrayList();

    public List<String> a() {
        return this.f6108l;
    }

    public List<MultipartUpload> b() {
        if (this.f6107k == null) {
            this.f6107k = new ArrayList();
        }
        return this.f6107k;
    }

    public void c(String str) {
        this.f6097a = str;
    }

    public void d(String str) {
        this.f6099c = str;
    }

    public void e(String str) {
        this.f6103g = str;
    }

    public void f(String str) {
        this.f6098b = str;
    }

    public void g(int i10) {
        this.f6102f = i10;
    }

    public void h(String str) {
        this.f6105i = str;
    }

    public void i(String str) {
        this.f6106j = str;
    }

    public void j(String str) {
        this.f6100d = str;
    }

    public void k(boolean z10) {
        this.f6104h = z10;
    }

    public void l(String str) {
        this.f6101e = str;
    }
}
