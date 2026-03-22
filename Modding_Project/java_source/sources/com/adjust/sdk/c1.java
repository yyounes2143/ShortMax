package com.adjust.sdk;

import com.adjust.sdk.ActivityHandler;
/* loaded from: classes2.dex */
class c1 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ ActivityHandler.m f4286a;

    public c1(ActivityHandler.m mVar) {
        this.f4286a = mVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        OnAttributionReadListener onAttributionReadListener = this.f4286a.f4159a.getOnAttributionReadListener();
        if (onAttributionReadListener != null) {
            onAttributionReadListener.onAttributionRead(null);
        }
        this.f4286a.f4159a.setOnAttributionReadListener(null);
    }
}
