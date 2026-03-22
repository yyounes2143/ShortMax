package com.mbridge.msdk.timer;

import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.setting.g;
import com.mbridge.msdk.setting.h;
/* compiled from: TimerController.java */
/* loaded from: classes6.dex */
public class b {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TimerController.java */
    /* renamed from: com.mbridge.msdk.timer.b$b  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public static class C0437b {

        /* renamed from: a  reason: collision with root package name */
        static b f30195a = new b();
    }

    public static b getInstance() {
        return C0437b.f30195a;
    }

    public void addInterstitialList(String str, String str2) {
        try {
            com.mbridge.msdk.timer.a.a().a(str, str2);
        } catch (Exception e10) {
            p0.b("TimerController", "addInterstitialList error:" + e10.getMessage());
        }
    }

    public void addRewardList(String str, String str2) {
        try {
            com.mbridge.msdk.timer.a.a().b(str, str2);
        } catch (Exception e10) {
            p0.b("TimerController", "addRewardList error:" + e10.getMessage());
        }
    }

    public void start() {
        g d10 = h.b().d(c.m().b());
        if (d10 == null) {
            d10 = h.b().a();
        }
        int h10 = d10.h();
        if (h10 > 0) {
            com.mbridge.msdk.timer.a.a().b(h10 * 1000);
        }
    }

    private b() {
    }
}
