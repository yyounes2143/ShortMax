package com.applovin.impl;

import android.os.SystemClock;
import com.applovin.mediation.MaxAdFormat;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class z4 {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.sdk.k f10706a;

    /* renamed from: b  reason: collision with root package name */
    private final Map f10707b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    private final Object f10708c = new Object();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f10709a;

        static {
            int[] iArr = new int[b.values().length];
            f10709a = iArr;
            try {
                iArr[b.AD_FORMAT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f10709a[b.AD_UNIT_ID.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f10709a[b.ALL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* loaded from: classes2.dex */
    public enum b {
        AD_FORMAT,
        AD_UNIT_ID,
        ALL
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        private final a5 f10714a;

        /* renamed from: b  reason: collision with root package name */
        private final long f10715b;

        /* renamed from: c  reason: collision with root package name */
        private final long f10716c;

        /* synthetic */ c(a5 a5Var, long j10, a aVar) {
            this(a5Var, j10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean d() {
            if (SystemClock.elapsedRealtime() - this.f10716c > this.f10715b) {
                return true;
            }
            return false;
        }

        protected boolean a(Object obj) {
            return obj instanceof c;
        }

        public a5 c() {
            return this.f10714a;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            if (!cVar.a((Object) this) || b() != cVar.b() || a() != cVar.a()) {
                return false;
            }
            a5 c10 = c();
            a5 c11 = cVar.c();
            if (c10 != null ? c10.equals(c11) : c11 == null) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            long b10 = b();
            long a10 = a();
            a5 c10 = c();
            int i10 = (((((int) (b10 ^ (b10 >>> 32))) + 59) * 59) + ((int) ((a10 >>> 32) ^ a10))) * 59;
            if (c10 == null) {
                hashCode = 43;
            } else {
                hashCode = c10.hashCode();
            }
            return i10 + hashCode;
        }

        public String toString() {
            return "SignalCacheManager.SignalWrapper(signal=" + c() + ", expirationTimeMillis=" + b() + ", cacheTimestampMillis=" + a() + ")";
        }

        private c(a5 a5Var, long j10) {
            this.f10714a = a5Var;
            this.f10715b = j10;
            this.f10716c = SystemClock.elapsedRealtime();
        }

        public long b() {
            return this.f10715b;
        }

        public long a() {
            return this.f10716c;
        }
    }

    public z4(com.applovin.impl.sdk.k kVar) {
        this.f10706a = kVar;
    }

    public void a(a5 a5Var, b5 b5Var, String str, MaxAdFormat maxAdFormat) {
        if (a5Var == null) {
            return;
        }
        long v10 = b5Var.v();
        if (v10 <= 0) {
            return;
        }
        this.f10706a.O();
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o O = this.f10706a.O();
            O.a("SignalCacheManager", "Caching signal for: " + b5Var);
        }
        String a10 = a(b5Var, str, maxAdFormat);
        c cVar = new c(a5Var, v10, null);
        synchronized (this.f10708c) {
            this.f10707b.put(a10, cVar);
        }
    }

    public a5 b(b5 b5Var, String str, MaxAdFormat maxAdFormat) {
        String a10 = a(b5Var, str, maxAdFormat);
        synchronized (this.f10708c) {
            try {
                c cVar = (c) this.f10707b.get(a10);
                if (cVar == null) {
                    return null;
                }
                if (cVar.d()) {
                    this.f10707b.remove(a10);
                    return null;
                }
                this.f10706a.O();
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o O = this.f10706a.O();
                    O.a("SignalCacheManager", "Returning cached signal for: " + b5Var);
                }
                return cVar.f10714a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private String a(b5 b5Var, String str, MaxAdFormat maxAdFormat) {
        String c10 = b5Var.c();
        int i10 = a.f10709a[b5Var.t().ordinal()];
        if (i10 == 1) {
            return c10 + "_" + maxAdFormat.getLabel();
        } else if (i10 != 2) {
            return c10;
        } else {
            return c10 + "_" + str;
        }
    }
}
