package com.amazonaws.services.s3.model;

import java.io.Serializable;
/* loaded from: classes2.dex */
public class DeleteObjectsResult$DeletedObject implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private String f6043a;

    /* renamed from: b  reason: collision with root package name */
    private String f6044b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f6045c;

    /* renamed from: d  reason: collision with root package name */
    private String f6046d;

    public void b(boolean z10) {
        this.f6045c = z10;
    }

    public void d(String str) {
        this.f6046d = str;
    }

    public void e(String str) {
        this.f6043a = str;
    }

    public void f(String str) {
        this.f6044b = str;
    }
}
