package com.adjust.sdk;

import com.adjust.sdk.AdjustInstance;
/* loaded from: classes2.dex */
class g1 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ String f4306a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ AdjustInstance.k f4307b;

    public g1(AdjustInstance.k kVar, String str) {
        this.f4307b = kVar;
        this.f4306a = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4307b.f4209b.onAdidRead(this.f4306a);
    }
}
