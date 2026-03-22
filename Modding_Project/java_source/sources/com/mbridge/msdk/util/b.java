package com.mbridge.msdk.util;

import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.out.MBConfiguration;
/* compiled from: CommonUtils.java */
/* loaded from: classes6.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static volatile Boolean f30460a;

    /* renamed from: b  reason: collision with root package name */
    private static volatile Boolean f30461b;

    public static boolean a() {
        boolean z10;
        if (f30460a == null) {
            try {
                if (Integer.parseInt(String.valueOf(MBConfiguration.SDK_VERSION.charAt(10))) == 2) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                f30460a = Boolean.valueOf(z10);
                return z10;
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    p0.b("CommonUtils", "isChina", e10);
                }
            }
        }
        if (f30460a == null || !f30460a.booleanValue()) {
            return false;
        }
        return true;
    }

    public static boolean b() {
        boolean z10;
        if (f30461b == null) {
            try {
                if (Integer.parseInt(String.valueOf(MBConfiguration.SDK_VERSION.charAt(10))) == 1) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                f30461b = Boolean.valueOf(z10);
                return z10;
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    p0.b("CommonUtils", "isOversea", e10);
                }
            }
        }
        if (f30461b == null || !f30461b.booleanValue()) {
            return false;
        }
        return true;
    }
}
