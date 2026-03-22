package com.mbridge.msdk.tracker.network;
/* compiled from: MBridgeVolleyManager.java */
/* loaded from: classes6.dex */
public class l {

    /* renamed from: b  reason: collision with root package name */
    private static volatile l f30282b;

    /* renamed from: a  reason: collision with root package name */
    private u f30283a;

    private l() {
    }

    public static l a() {
        if (f30282b == null) {
            synchronized (l.class) {
                try {
                    if (f30282b == null) {
                        f30282b = new l();
                    }
                } finally {
                }
            }
        }
        return f30282b;
    }

    public u b() {
        if (this.f30283a == null) {
            u a10 = com.mbridge.msdk.tracker.network.toolbox.o.a(new com.mbridge.msdk.tracker.network.toolbox.b(new com.mbridge.msdk.tracker.network.toolbox.m()), null, 10, new com.mbridge.msdk.tracker.network.toolbox.l());
            this.f30283a = a10;
            a10.b();
        }
        return this.f30283a;
    }
}
