package com.mbridge.msdk.foundation.controller.authoritycontroller;

import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.setting.g;
import com.mbridge.msdk.setting.h;
/* compiled from: SDKAuthorityController.java */
/* loaded from: classes5.dex */
public class c extends b {

    /* renamed from: j  reason: collision with root package name */
    private static volatile c f26721j;

    private c() {
        h();
    }

    public static void c(boolean z10) {
    }

    public static boolean l() {
        return true;
    }

    public static c m() {
        if (f26721j == null) {
            synchronized (c.class) {
                try {
                    if (f26721j == null) {
                        f26721j = new c();
                    }
                } finally {
                }
            }
        }
        return f26721j;
    }

    @Override // com.mbridge.msdk.foundation.controller.authoritycontroller.b
    public int a(g gVar, String str) {
        if (gVar == null) {
            gVar = h.b().a();
        }
        if (str.equals(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
            return gVar.t0();
        }
        if (str.equals(MBridgeConstans.AUTHORITY_DEVICE_ID)) {
            return gVar.s0();
        }
        if (str.equals(MBridgeConstans.AUTHORITY_SERIAL_ID)) {
            return gVar.u0();
        }
        return -1;
    }

    public boolean c(String str) {
        boolean z10;
        g d10 = h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
        if (d10 == null) {
            d10 = h.b().a();
            z10 = true;
        } else {
            z10 = false;
        }
        int h02 = d10.h0();
        boolean z11 = h02 != 0 ? h02 == 1 && a(d10, str) == 1 : a(str) == 1 && a(d10, str) == 1;
        if (str.equals(MBridgeConstans.AUTHORITY_OTHER)) {
            z11 = a(str) == 1;
        }
        return (str.equals(MBridgeConstans.AUTHORITY_DEVICE_ID) && m().e() == 2) ? (d10.E0() || z10 || a(str) != 1) ? false : true : z11;
    }
}
