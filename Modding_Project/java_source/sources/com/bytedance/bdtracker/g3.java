package com.bytedance.bdtracker;

import com.bytedance.applog.oneid.IDBindCallback;
import com.bytedance.applog.oneid.IDBindResult;
/* loaded from: classes3.dex */
public final class g3 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ IDBindCallback f12023a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ IDBindResult f12024b;

    public g3(IDBindCallback iDBindCallback, IDBindResult iDBindResult) {
        this.f12023a = iDBindCallback;
        this.f12024b = iDBindResult;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f12023a.onSuccess(this.f12024b);
    }
}
