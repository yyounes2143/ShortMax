package com.facebook.soloader;

import android.annotation.SuppressLint;
/* compiled from: InstrumentedSoFileLoader.java */
/* loaded from: classes2.dex */
public class n implements t {

    /* renamed from: a  reason: collision with root package name */
    private final t f16868a;

    public n(t tVar) {
        this.f16868a = tVar;
    }

    @Override // com.facebook.soloader.t
    @SuppressLint({"CatchGeneralException", "EmptyCatchBlock"})
    public void a(String str, int i10) {
        x4.b.j(this.f16868a, "load", i10);
        try {
            this.f16868a.a(str, i10);
            x4.b.i(null);
        } finally {
        }
    }
}
