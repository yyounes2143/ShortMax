package com.mbridge.msdk.mbbanner.common.manager;

import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.same.report.metrics.e;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.out.MBridgeIds;
import com.mbridge.msdk.setting.h;
import com.mbridge.msdk.setting.l;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* compiled from: BannerLoadManager.java */
/* loaded from: classes5.dex */
public class a {

    /* renamed from: g  reason: collision with root package name */
    private static final String f27752g = "a";

    /* renamed from: h  reason: collision with root package name */
    private static volatile a f27753h;

    /* renamed from: a  reason: collision with root package name */
    private Context f27754a = com.mbridge.msdk.foundation.controller.c.m().d();

    /* renamed from: b  reason: collision with root package name */
    private com.mbridge.msdk.mbbanner.common.util.a f27755b = new com.mbridge.msdk.mbbanner.common.util.a();

    /* renamed from: c  reason: collision with root package name */
    private Map<String, com.mbridge.msdk.mbbanner.common.data.b> f27756c = new ConcurrentHashMap();

    /* renamed from: d  reason: collision with root package name */
    private Map<String, Boolean> f27757d = new ConcurrentHashMap();

    /* renamed from: e  reason: collision with root package name */
    private Map<String, Handler> f27758e = new ConcurrentHashMap();

    /* renamed from: f  reason: collision with root package name */
    private Map<String, Integer> f27759f = new ConcurrentHashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BannerLoadManager.java */
    /* renamed from: com.mbridge.msdk.mbbanner.common.manager.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public class C0382a implements com.mbridge.msdk.mbbanner.common.listener.d {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.mbridge.msdk.mbbanner.common.data.a f27760a;

        C0382a(com.mbridge.msdk.mbbanner.common.data.a aVar) {
            this.f27760a = aVar;
        }

        @Override // com.mbridge.msdk.mbbanner.common.listener.d
        public void a(String str) {
            synchronized (a.b()) {
                this.f27760a.a("");
                a.this.f27757d.put(str, Boolean.FALSE);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BannerLoadManager.java */
    /* loaded from: classes5.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f27762a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ MBridgeIds f27763b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ com.mbridge.msdk.mbbanner.common.listener.b f27764c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f27765d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ com.mbridge.msdk.mbbanner.common.data.a f27766e;

        b(String str, MBridgeIds mBridgeIds, com.mbridge.msdk.mbbanner.common.listener.b bVar, String str2, com.mbridge.msdk.mbbanner.common.data.a aVar) {
            this.f27762a = str;
            this.f27763b = mBridgeIds;
            this.f27764c = bVar;
            this.f27765d = str2;
            this.f27766e = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            int i10;
            Boolean bool;
            if (a.this.f27757d != null && a.this.f27757d.containsKey(this.f27762a) && (bool = (Boolean) a.this.f27757d.get(this.f27762a)) != null && bool.booleanValue()) {
                return;
            }
            if (a.this.f27759f.containsKey(this.f27762a)) {
                Integer num = (Integer) a.this.f27759f.get(this.f27762a);
                if (num != null) {
                    i10 = num.intValue();
                } else {
                    i10 = 0;
                }
                if (i10 == 2 || i10 == 4) {
                    String str = a.f27752g;
                    p0.b(str, "doUnitRotation: autoRotationStatus=" + i10 + " && unitId=" + this.f27762a);
                    if (a.this.f27755b != null) {
                        com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880026);
                        bVar.a(this.f27763b);
                        a.this.f27755b.a(this.f27764c, bVar);
                        return;
                    }
                    return;
                }
            }
            a.this.b(this.f27765d, this.f27762a, this.f27766e, this.f27764c);
        }
    }

    private a() {
    }

    public static a b() {
        if (f27753h == null) {
            synchronized (a.class) {
                try {
                    if (f27753h == null) {
                        f27753h = new a();
                    }
                } finally {
                }
            }
        }
        return f27753h;
    }

    public void c() {
        Map<String, com.mbridge.msdk.mbbanner.common.data.b> map = this.f27756c;
        if (map != null) {
            map.clear();
        }
        Map<String, Boolean> map2 = this.f27757d;
        if (map2 != null) {
            map2.clear();
        }
        Map<String, Handler> map3 = this.f27758e;
        if (map3 != null) {
            for (Map.Entry<String, Handler> entry : map3.entrySet()) {
                if (entry.getValue() != null) {
                    entry.getValue().removeCallbacksAndMessages(null);
                }
            }
            this.f27758e.clear();
        }
        Map<String, Integer> map4 = this.f27759f;
        if (map4 != null) {
            map4.clear();
        }
    }

    private com.mbridge.msdk.mbbanner.common.data.b a(String str) {
        if (this.f27756c.containsKey(str)) {
            return this.f27756c.get(str);
        }
        l e10 = h.b().e(com.mbridge.msdk.foundation.controller.c.m().b(), str);
        if (e10 == null) {
            e10 = l.i(str);
        }
        com.mbridge.msdk.mbbanner.common.data.b bVar = new com.mbridge.msdk.mbbanner.common.data.b(str, "", 0, e10.y());
        this.f27756c.put(str, bVar);
        return bVar;
    }

    public void b(String str, String str2, com.mbridge.msdk.mbbanner.common.data.a aVar, com.mbridge.msdk.mbbanner.common.listener.b bVar) {
        Boolean bool;
        MBridgeIds mBridgeIds = new MBridgeIds(str, str2);
        String b10 = aVar.b();
        com.mbridge.msdk.foundation.same.report.metrics.c a10 = com.mbridge.msdk.mbbanner.common.report.a.a(str2, b10);
        a10.h(!TextUtils.isEmpty(aVar.a()) ? "1" : MBridgeConstans.ENDCARD_URL_TYPE_PL);
        a10.g(aVar.a());
        a10.f(aVar.f() ? "1" : "2");
        a10.b(aVar.f() ? 1 : 2);
        a10.c(aVar.d());
        com.mbridge.msdk.mbbanner.common.report.a.a("2000123", a10, (e) null);
        if (this.f27754a == null) {
            com.mbridge.msdk.foundation.error.b bVar2 = new com.mbridge.msdk.foundation.error.b(880025);
            bVar2.a(mBridgeIds);
            bVar2.b(b10);
            this.f27755b.a(bVar, bVar2);
        } else if (bVar == null) {
            com.mbridge.msdk.foundation.error.b bVar3 = new com.mbridge.msdk.foundation.error.b(880001);
            bVar3.a(mBridgeIds);
            bVar3.b(b10);
            this.f27755b.a(bVar, bVar3);
        } else {
            Map<String, Boolean> map = this.f27757d;
            if (map != null && map.containsKey(str2) && (bool = this.f27757d.get(str2)) != null && bool.booleanValue()) {
                com.mbridge.msdk.foundation.error.b bVar4 = new com.mbridge.msdk.foundation.error.b(880016, "Current unit is loading!");
                bVar4.a(mBridgeIds);
                bVar4.b(b10);
                this.f27755b.a(bVar, bVar4);
                return;
            }
            this.f27757d.put(str2, Boolean.TRUE);
            com.mbridge.msdk.mbbanner.common.data.b a11 = a(str2);
            a11.a(b10);
            new com.mbridge.msdk.mbbanner.common.manager.b(this.f27754a, a11, bVar, this.f27755b).a(str, str2, aVar, new C0382a(aVar));
            com.mbridge.msdk.mbbanner.common.report.a.a("2000125", a10, (e) null);
        }
    }

    public void a(String str, String str2, com.mbridge.msdk.mbbanner.common.data.a aVar, com.mbridge.msdk.mbbanner.common.listener.b bVar) {
        Handler handler;
        MBridgeIds mBridgeIds = new MBridgeIds(str, str2);
        if (aVar != null && aVar.d() > 0) {
            if (TextUtils.isEmpty(aVar.b())) {
                aVar.b(com.mbridge.msdk.mbbanner.common.report.a.b(""));
            }
            if (this.f27758e.containsKey(str2)) {
                handler = this.f27758e.get(str2);
            } else {
                handler = new Handler();
                this.f27758e.put(str2, handler);
            }
            Handler handler2 = handler;
            b bVar2 = new b(str2, mBridgeIds, bVar, str, aVar);
            if (handler2 != null) {
                handler2.removeCallbacksAndMessages(null);
                handler2.postDelayed(bVar2, aVar.d());
                return;
            }
            return;
        }
        String str3 = f27752g;
        p0.b(str3, "doUnitRotation: Illegal banner request parameters! && unitId=" + str2);
    }

    public void a(int i10, String str, String str2, com.mbridge.msdk.mbbanner.common.data.a aVar, com.mbridge.msdk.mbbanner.common.listener.b bVar) {
        Handler handler;
        Handler handler2;
        Handler handler3;
        Integer num;
        int intValue = (!this.f27759f.containsKey(str2) || (num = this.f27759f.get(str2)) == null) ? 0 : num.intValue();
        if (i10 == 1) {
            if (this.f27758e.containsKey(str2) && (handler = this.f27758e.get(str2)) != null) {
                handler.removeCallbacksAndMessages(null);
            }
            this.f27759f.put(str2, Integer.valueOf(i10));
        } else if (i10 == 2) {
            if (intValue == 1) {
                if (this.f27758e.containsKey(str2) && (handler2 = this.f27758e.get(str2)) != null) {
                    handler2.removeCallbacksAndMessages(null);
                }
                this.f27759f.put(str2, Integer.valueOf(i10));
            }
        } else if (i10 == 3) {
            if (intValue == 2 || intValue == 4) {
                this.f27759f.put(str2, 1);
                a(str, str2, aVar, bVar);
            }
        } else if (i10 != 4) {
        } else {
            if (intValue == 0) {
                this.f27759f.put(str2, 0);
                return;
            }
            if (this.f27758e.containsKey(str2) && (handler3 = this.f27758e.get(str2)) != null) {
                handler3.removeCallbacksAndMessages(null);
            }
            this.f27759f.put(str2, Integer.valueOf(i10));
        }
    }

    public void b(String str) {
        if (this.f27758e.containsKey(str)) {
            Handler handler = this.f27758e.get(str);
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
            }
            this.f27758e.remove(str);
        }
    }
}
