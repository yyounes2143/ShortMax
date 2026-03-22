package com.pgl.ssdk;

import android.os.HandlerThread;
import com.pgl.ssdk.e1;
/* loaded from: classes6.dex */
public class a1 {

    /* renamed from: a  reason: collision with root package name */
    private final d1<b1> f36696a;

    /* renamed from: b  reason: collision with root package name */
    private e1 f36697b;

    /* loaded from: classes6.dex */
    private static class b {

        /* renamed from: a  reason: collision with root package name */
        private static final a1 f36698a = new a1();
    }

    public static a1 a() {
        return b.f36698a;
    }

    public e1 b() {
        if (this.f36697b == null) {
            synchronized (a1.class) {
                try {
                    if (this.f36697b == null) {
                        this.f36697b = a("ssdk_net_handler");
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return this.f36697b;
    }

    public e1 c() {
        if (this.f36697b == null) {
            synchronized (a1.class) {
                try {
                    if (this.f36697b == null) {
                        this.f36697b = a("ssdk_handler");
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return this.f36697b;
    }

    private a1() {
        this.f36696a = d1.a(2);
    }

    public e1 a(String str) {
        return b(null, str);
    }

    private b1 a(e1.a aVar, String str) {
        try {
            HandlerThread handlerThread = new HandlerThread(str);
            handlerThread.start();
            return new b1(handlerThread, aVar);
        } catch (Throwable unused) {
            return null;
        }
    }

    public e1 b(e1.a aVar, String str) {
        b1 a10 = this.f36696a.a();
        if (a10 != null) {
            a10.a(aVar);
            a10.a(str);
            return a10;
        }
        return a(aVar, str);
    }
}
