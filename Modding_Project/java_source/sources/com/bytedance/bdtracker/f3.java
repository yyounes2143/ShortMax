package com.bytedance.bdtracker;

import com.bytedance.applog.oneid.IDBindCallback;
/* loaded from: classes3.dex */
public final class f3 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ IDBindCallback f12010a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ int f12011b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ String f12012c;

    public f3(IDBindCallback iDBindCallback, int i10, String str) {
        this.f12010a = iDBindCallback;
        this.f12011b = i10;
        this.f12012c = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f12010a.onFail(this.f12011b, this.f12012c);
    }
}
