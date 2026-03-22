package com.mbridge.msdk.foundation.same;
/* compiled from: MBridgeRefactor.java */
/* loaded from: classes5.dex */
public class b {

    /* renamed from: b  reason: collision with root package name */
    private static volatile b f27045b;

    /* renamed from: a  reason: collision with root package name */
    private Boolean f27046a = null;

    private b() {
    }

    public static b b() {
        if (f27045b == null) {
            synchronized (b.class) {
                try {
                    if (f27045b == null) {
                        f27045b = new b();
                    }
                } finally {
                }
            }
        }
        return f27045b;
    }

    public Boolean a() {
        return this.f27046a;
    }
}
