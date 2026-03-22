package com.mbridge.msdk.foundation.tools;

import android.net.ConnectivityManager;
/* compiled from: NetManager.java */
/* loaded from: classes5.dex */
public class g0 {

    /* renamed from: a  reason: collision with root package name */
    private static ConnectivityManager f27438a;

    public static synchronized ConnectivityManager a() {
        ConnectivityManager connectivityManager;
        synchronized (g0.class) {
            try {
                if (f27438a == null && com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                    f27438a = (ConnectivityManager) com.mbridge.msdk.foundation.controller.c.m().d().getSystemService("connectivity");
                }
            } catch (Exception e10) {
                p0.b("NetManager", e10.getMessage());
            }
            connectivityManager = f27438a;
        }
        return connectivityManager;
    }
}
