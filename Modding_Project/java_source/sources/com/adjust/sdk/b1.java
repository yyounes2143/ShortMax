package com.adjust.sdk;

import com.adjust.sdk.ActivityHandler;
/* loaded from: classes2.dex */
class b1 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ ActivityHandler.l f4283a;

    public b1(ActivityHandler.l lVar) {
        this.f4283a = lVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        OnAdidReadListener onAdidReadListener = this.f4283a.f4153a.getOnAdidReadListener();
        if (onAdidReadListener != null) {
            onAdidReadListener.onAdidRead(null);
        }
        this.f4283a.f4153a.setOnAdidReadListener(null);
    }
}
