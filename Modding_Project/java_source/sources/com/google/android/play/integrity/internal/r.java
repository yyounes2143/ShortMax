package com.google.android.play.integrity.internal;
/* compiled from: com.google.android.play:integrity@@1.4.0 */
/* loaded from: classes5.dex */
public final class r implements w {

    /* renamed from: c  reason: collision with root package name */
    private static final Object f20014c = new Object();

    /* renamed from: a  reason: collision with root package name */
    private volatile w f20015a;

    /* renamed from: b  reason: collision with root package name */
    private volatile Object f20016b = f20014c;

    private r(w wVar) {
        this.f20015a = wVar;
    }

    public static w b(w wVar) {
        if (wVar instanceof r) {
            return wVar;
        }
        return new r(wVar);
    }

    @Override // com.google.android.play.integrity.internal.x
    public final Object a() {
        Object obj = this.f20016b;
        Object obj2 = f20014c;
        if (obj == obj2) {
            synchronized (this) {
                try {
                    obj = this.f20016b;
                    if (obj == obj2) {
                        obj = this.f20015a.a();
                        Object obj3 = this.f20016b;
                        if (obj3 != obj2 && obj3 != obj) {
                            throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj3 + " & " + obj + ". This is likely due to a circular dependency.");
                        }
                        this.f20016b = obj;
                        this.f20015a = null;
                    }
                } finally {
                }
            }
        }
        return obj;
    }
}
