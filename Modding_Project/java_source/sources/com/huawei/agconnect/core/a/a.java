package com.huawei.agconnect.core.a;

import android.content.Context;
import android.util.Log;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import oa.d;
import oa.f;
/* loaded from: classes5.dex */
public class a extends oa.c {

    /* renamed from: d  reason: collision with root package name */
    private static List<ra.a> f21747d;

    /* renamed from: e  reason: collision with root package name */
    private static final Map<String, oa.c> f21748e = new HashMap();

    /* renamed from: f  reason: collision with root package name */
    private static String f21749f;

    /* renamed from: a  reason: collision with root package name */
    private final d f21750a;

    /* renamed from: b  reason: collision with root package name */
    private final com.huawei.agconnect.core.a.b f21751b;

    /* renamed from: c  reason: collision with root package name */
    private final com.huawei.agconnect.core.a.b f21752c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.huawei.agconnect.core.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public static class C0314a implements f.a {
        C0314a() {
        }

        @Override // oa.f.a
        public String a(d dVar) {
            String str;
            if (dVar.a().equals(oa.b.f63156c)) {
                str = "/agcgw_all/CN";
            } else if (dVar.a().equals(oa.b.f63158e)) {
                str = "/agcgw_all/RU";
            } else if (dVar.a().equals(oa.b.f63157d)) {
                str = "/agcgw_all/DE";
            } else if (dVar.a().equals(oa.b.f63159f)) {
                str = "/agcgw_all/SG";
            } else {
                return null;
            }
            return dVar.getString(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static class b implements f.a {
        b() {
        }

        @Override // oa.f.a
        public String a(d dVar) {
            String str;
            if (dVar.a().equals(oa.b.f63156c)) {
                str = "/agcgw_all/CN_back";
            } else if (dVar.a().equals(oa.b.f63158e)) {
                str = "/agcgw_all/RU_back";
            } else if (dVar.a().equals(oa.b.f63157d)) {
                str = "/agcgw_all/DE_back";
            } else if (dVar.a().equals(oa.b.f63159f)) {
                str = "/agcgw_all/SG_back";
            } else {
                return null;
            }
            return dVar.getString(str);
        }
    }

    public a(d dVar) {
        Log.d("AGC_Instance", "AGConnectInstanceImpl init");
        this.f21750a = dVar;
        if (f21747d == null) {
            Log.e("AGC_Instance", "please call `initialize()` first");
        }
        this.f21751b = new com.huawei.agconnect.core.a.b(f21747d, dVar.getContext());
        com.huawei.agconnect.core.a.b bVar = new com.huawei.agconnect.core.a.b(null, dVar.getContext());
        this.f21752c = bVar;
        if (dVar instanceof qa.c) {
            bVar.c(((qa.c) dVar).c(), dVar.getContext());
        }
        Log.d("AGC_Instance", "AGConnectInstanceImpl init end");
    }

    public static oa.c f() {
        String str = f21749f;
        if (str == null) {
            str = "DEFAULT_INSTANCE";
        }
        return g(str);
    }

    public static synchronized oa.c g(String str) {
        oa.c cVar;
        synchronized (a.class) {
            try {
                cVar = f21748e.get(str);
                if (cVar == null) {
                    if ("DEFAULT_INSTANCE".equals(str)) {
                        Log.w("AGC_Instance", "please call `initialize()` first");
                    } else {
                        Log.w("AGC_Instance", "not find instance for : " + str);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return cVar;
    }

    public static oa.c h(d dVar) {
        return i(dVar, false);
    }

    private static synchronized oa.c i(d dVar, boolean z10) {
        oa.c cVar;
        synchronized (a.class) {
            Map<String, oa.c> map = f21748e;
            cVar = map.get(dVar.getIdentifier());
            if (cVar == null || z10) {
                cVar = new a(dVar);
                map.put(dVar.getIdentifier(), cVar);
            }
        }
        return cVar;
    }

    public static synchronized void j(Context context) {
        synchronized (a.class) {
            Log.w("AGC_Instance", "agc sdk initialize");
            if (f21748e.size() > 0) {
                Log.w("AGC_Instance", "Repeated invoking initialize");
            } else {
                k(context, pa.a.b(context));
            }
        }
    }

    private static synchronized void k(Context context, d dVar) {
        synchronized (a.class) {
            try {
                Context applicationContext = context.getApplicationContext();
                if (applicationContext == null) {
                    Log.w("AGC_Instance", "context.getApplicationContext null");
                } else {
                    context = applicationContext;
                }
                l();
                if (f21747d == null) {
                    f21747d = new c(context).a();
                }
                i(dVar, true);
                f21749f = dVar.getIdentifier();
                Log.i("AGC_Instance", "initFinish callback start");
                sa.a.a();
                Log.i("AGC_Instance", "AGC SDK initialize end");
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private static void l() {
        f.b("/agcgw/url", new C0314a());
        f.b("/agcgw/backurl", new b());
    }

    @Override // oa.c
    public Context b() {
        return this.f21750a.getContext();
    }

    @Override // oa.c
    public d d() {
        return this.f21750a;
    }
}
