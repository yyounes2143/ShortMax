package com.applovin.impl.sdk;

import com.applovin.impl.v2;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class p {

    /* renamed from: a  reason: collision with root package name */
    private final o f9941a;

    /* renamed from: b  reason: collision with root package name */
    private final Map f9942b = new HashMap(5);

    /* renamed from: c  reason: collision with root package name */
    private final Object f9943c = new Object();

    /* renamed from: d  reason: collision with root package name */
    private final Map f9944d = Collections.synchronizedMap(new HashMap(5));

    /* renamed from: e  reason: collision with root package name */
    private final Map f9945e = Collections.synchronizedMap(new HashMap(5));

    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private final String f9946a;

        /* renamed from: b  reason: collision with root package name */
        private final String f9947b;

        /* renamed from: c  reason: collision with root package name */
        private final String f9948c;

        public a(String str, String str2, String str3) {
            this.f9946a = str;
            this.f9947b = str2;
            this.f9948c = str3;
        }

        protected boolean a(Object obj) {
            return obj instanceof a;
        }

        public String b() {
            return this.f9946a;
        }

        public String c() {
            return this.f9948c;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (!aVar.a(this)) {
                return false;
            }
            String b10 = b();
            String b11 = aVar.b();
            if (b10 != null ? !b10.equals(b11) : b11 != null) {
                return false;
            }
            String a10 = a();
            String a11 = aVar.a();
            if (a10 != null ? !a10.equals(a11) : a11 != null) {
                return false;
            }
            String c10 = c();
            String c11 = aVar.c();
            if (c10 != null ? c10.equals(c11) : c11 == null) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2;
            String b10 = b();
            int i10 = 43;
            if (b10 == null) {
                hashCode = 43;
            } else {
                hashCode = b10.hashCode();
            }
            String a10 = a();
            int i11 = (hashCode + 59) * 59;
            if (a10 == null) {
                hashCode2 = 43;
            } else {
                hashCode2 = a10.hashCode();
            }
            int i12 = i11 + hashCode2;
            String c10 = c();
            int i13 = i12 * 59;
            if (c10 != null) {
                i10 = c10.hashCode();
            }
            return i13 + i10;
        }

        public String toString() {
            return "MediationWaterfallWinnerTracker.WinningAd(bCode=" + b() + ", adapterName=" + a() + ", networkName=" + c() + ")";
        }

        public String a() {
            return this.f9947b;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(k kVar) {
        this.f9941a = kVar.O();
    }

    public String a(String str) {
        return (String) this.f9945e.get(str);
    }

    public void b(v2 v2Var) {
        this.f9944d.put(v2Var.getAdUnitId(), v2Var.P());
    }

    public void c(v2 v2Var) {
        synchronized (this.f9943c) {
            try {
                if (o.a()) {
                    o oVar = this.f9941a;
                    oVar.a("MediationWaterfallWinnerTracker", "Tracking winning ad: " + v2Var);
                }
                this.f9942b.put(v2Var.getAdUnitId(), new a(v2Var.C(), v2Var.c(), v2Var.getNetworkName()));
            } catch (Throwable th2) {
                throw th2;
            }
        }
        this.f9945e.put(v2Var.getAdUnitId(), v2Var.P());
    }

    public void a(v2 v2Var) {
        synchronized (this.f9943c) {
            try {
                String adUnitId = v2Var.getAdUnitId();
                a aVar = (a) this.f9942b.get(adUnitId);
                if (aVar == null) {
                    if (o.a()) {
                        this.f9941a.a("MediationWaterfallWinnerTracker", "No previous winner to clear.");
                    }
                    return;
                }
                if (v2Var.C().equals(aVar.b())) {
                    if (o.a()) {
                        o oVar = this.f9941a;
                        oVar.a("MediationWaterfallWinnerTracker", "Clearing previous winning ad: " + aVar);
                    }
                    this.f9942b.remove(adUnitId);
                } else if (o.a()) {
                    o oVar2 = this.f9941a;
                    oVar2.a("MediationWaterfallWinnerTracker", "Previous winner not cleared for ad: " + v2Var + " , since it could have already been updated with a new ad: " + aVar);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public String b(String str) {
        return (String) this.f9944d.get(str);
    }

    public a c(String str) {
        a aVar;
        synchronized (this.f9943c) {
            aVar = (a) this.f9942b.get(str);
        }
        return aVar;
    }
}
