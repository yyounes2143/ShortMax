package com.mbridge.msdk.thrid.okio;

import androidx.annotation.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SegmentPool.java */
/* loaded from: classes6.dex */
public final class p {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    static o f30171a;

    /* renamed from: b  reason: collision with root package name */
    static long f30172b;

    private p() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static o a() {
        synchronized (p.class) {
            try {
                o oVar = f30171a;
                if (oVar != null) {
                    f30171a = oVar.f30169f;
                    oVar.f30169f = null;
                    f30172b -= 8192;
                    return oVar;
                }
                return new o();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(o oVar) {
        if (oVar.f30169f == null && oVar.f30170g == null) {
            if (oVar.f30167d) {
                return;
            }
            synchronized (p.class) {
                try {
                    long j10 = f30172b + 8192;
                    if (j10 > 65536) {
                        return;
                    }
                    f30172b = j10;
                    oVar.f30169f = f30171a;
                    oVar.f30166c = 0;
                    oVar.f30165b = 0;
                    f30171a = oVar;
                    return;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        throw new IllegalArgumentException();
    }
}
