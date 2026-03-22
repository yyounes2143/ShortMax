package com.adjust.sdk;

import com.adjust.sdk.AdjustInstance;
/* loaded from: classes2.dex */
class h1 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ AdjustAttribution f4315a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ AdjustInstance.l f4316b;

    public h1(AdjustInstance.l lVar, AdjustAttribution adjustAttribution) {
        this.f4316b = lVar;
        this.f4315a = adjustAttribution;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4316b.f4213b.onAttributionRead(this.f4315a);
    }
}
