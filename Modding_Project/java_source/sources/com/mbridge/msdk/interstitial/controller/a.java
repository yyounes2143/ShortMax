package com.mbridge.msdk.interstitial.controller;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.interstitial.view.MBInterstitialActivity;
import com.mbridge.msdk.out.InterstitialListener;
import com.mbridge.msdk.out.MBridgeIds;
import com.mbridge.msdk.setting.h;
import com.mbridge.msdk.setting.j;
import com.mbridge.msdk.setting.l;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
/* compiled from: InterstitialController.java */
/* loaded from: classes5.dex */
public class a {

    /* renamed from: o  reason: collision with root package name */
    public static String f27615o;

    /* renamed from: p  reason: collision with root package name */
    public static Map<String, Integer> f27616p = new HashMap();

    /* renamed from: q  reason: collision with root package name */
    public static Map<String, Integer> f27617q = new HashMap();

    /* renamed from: r  reason: collision with root package name */
    public static Map<String, d> f27618r = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private Context f27620b;

    /* renamed from: c  reason: collision with root package name */
    private String f27621c;

    /* renamed from: d  reason: collision with root package name */
    private String f27622d;

    /* renamed from: e  reason: collision with root package name */
    private String f27623e;

    /* renamed from: f  reason: collision with root package name */
    private MBridgeIds f27624f;

    /* renamed from: g  reason: collision with root package name */
    private Handler f27625g;

    /* renamed from: h  reason: collision with root package name */
    private l f27626h;

    /* renamed from: i  reason: collision with root package name */
    private InterstitialListener f27627i;

    /* renamed from: a  reason: collision with root package name */
    private String f27619a = "InterstitialController";

    /* renamed from: j  reason: collision with root package name */
    public boolean f27628j = false;

    /* renamed from: k  reason: collision with root package name */
    private String f27629k = "";

    /* renamed from: l  reason: collision with root package name */
    private String f27630l = "";

    /* renamed from: m  reason: collision with root package name */
    private String f27631m = "";

    /* renamed from: n  reason: collision with root package name */
    private boolean f27632n = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: InterstitialController.java */
    /* renamed from: com.mbridge.msdk.interstitial.controller.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public class HandlerC0381a extends Handler {
        HandlerC0381a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message == null) {
                return;
            }
            int i10 = message.what;
            if (i10 != 1) {
                String str = "can't show because unknow error";
                String str2 = "";
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 != 4) {
                            if (i10 != 6) {
                                if (i10 == 7) {
                                    a aVar = a.this;
                                    aVar.f27628j = false;
                                    if (aVar.f27627i != null) {
                                        a.this.f27627i.onInterstitialClosed(a.this.f27624f);
                                        return;
                                    }
                                    return;
                                }
                                return;
                            } else if (a.this.f27627i != null) {
                                a.this.f27627i.onInterstitialAdClick(a.this.f27624f);
                                return;
                            } else {
                                return;
                            }
                        } else if (a.this.f27627i != null) {
                            Object obj = message.obj;
                            if (obj != null && (obj instanceof String)) {
                                str2 = (String) obj;
                            }
                            if (!TextUtils.isEmpty(str2)) {
                                str = str2;
                            }
                            a.this.f27627i.onInterstitialShowFail(a.this.f27624f, str);
                            return;
                        } else {
                            return;
                        }
                    }
                    a aVar2 = a.this;
                    aVar2.f27628j = true;
                    if (aVar2.f27627i != null) {
                        a.this.f27627i.onInterstitialShowSuccess(a.this.f27624f);
                    }
                } else if (a.this.f27627i != null) {
                    Object obj2 = message.obj;
                    if (obj2 != null && (obj2 instanceof String)) {
                        str2 = (String) obj2;
                    }
                    if (!TextUtils.isEmpty(str2)) {
                        str = str2;
                    }
                    a.this.f27627i.onInterstitialLoadFail(a.this.f27624f, str);
                }
            } else if (a.this.f27627i != null) {
                a.this.f27627i.onInterstitialLoadSuccess(a.this.f27624f);
            }
        }
    }

    /* compiled from: InterstitialController.java */
    /* loaded from: classes5.dex */
    public class b {

        /* renamed from: a  reason: collision with root package name */
        private com.mbridge.msdk.interstitial.adapter.a f27634a;

        /* renamed from: b  reason: collision with root package name */
        private c f27635b;

        public b(com.mbridge.msdk.interstitial.adapter.a aVar, c cVar) {
            this.f27634a = aVar;
            this.f27635b = cVar;
        }

        public void a(boolean z10, String str) {
            try {
                com.mbridge.msdk.interstitial.adapter.a aVar = this.f27634a;
                if (aVar != null) {
                    aVar.a((b) null);
                    this.f27634a = null;
                }
                if (this.f27635b != null) {
                    if (a.this.f27625g != null) {
                        a.this.f27625g.removeCallbacks(this.f27635b);
                    }
                    if (z10) {
                        if (a.this.f27627i != null) {
                            a.this.c(str);
                        }
                    } else if (a.this.f27627i != null) {
                        a.this.b(str);
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        public void b(boolean z10, String str) {
            try {
                a.this.f27629k = str;
                try {
                    ArrayList arrayList = new ArrayList();
                    com.mbridge.msdk.interstitial.adapter.a aVar = this.f27634a;
                    if (aVar != null && aVar.d() != null) {
                        arrayList.add(this.f27634a.d());
                    }
                    a.this.f27630l = com.mbridge.msdk.foundation.same.c.b(arrayList);
                } catch (Exception e10) {
                    p0.b(a.this.f27619a, e10.getMessage());
                }
                if (this.f27635b != null) {
                    if (a.this.f27625g != null) {
                        a.this.f27625g.removeCallbacks(this.f27635b);
                    }
                    if (z10) {
                        a.this.b(false);
                    } else if (a.this.f27627i != null) {
                        a.this.h();
                    }
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
    }

    /* compiled from: InterstitialController.java */
    /* loaded from: classes5.dex */
    public class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private com.mbridge.msdk.interstitial.adapter.a f27637a;

        public c(com.mbridge.msdk.interstitial.adapter.a aVar) {
            this.f27637a = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                com.mbridge.msdk.interstitial.adapter.a aVar = this.f27637a;
                if (aVar != null) {
                    if (aVar.f()) {
                        a.this.c("load timeout");
                    } else if (a.this.f27627i != null) {
                        a.this.b("load timeout");
                    }
                    this.f27637a.a((b) null);
                    this.f27637a = null;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public a() {
        try {
            c();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        Handler handler = this.f27625g;
        if (handler != null) {
            handler.sendEmptyMessage(1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        Handler handler = this.f27625g;
        if (handler != null) {
            handler.sendEmptyMessage(3);
        }
    }

    public void g() {
        try {
            new j().a(this.f27620b, (String) null, (String) null, this.f27621c);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void j() {
        try {
            if (this.f27620b == null) {
                c("context is null");
            } else if (TextUtils.isEmpty(this.f27621c)) {
                c("unitid is null");
            } else if (!this.f27632n) {
                c("init error");
            } else {
                e();
                b(true);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            c("can't show because unknow error");
        }
    }

    /* compiled from: InterstitialController.java */
    /* loaded from: classes5.dex */
    public class d {
        public d() {
        }

        public void a(String str) {
            try {
                a.this.c(str);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        public void b() {
            try {
                if (a.this.f27625g != null) {
                    a.this.f27625g.sendEmptyMessage(7);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        public void c() {
            try {
                a.this.i();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        public void a() {
            try {
                if (a.this.f27625g != null) {
                    a.this.f27625g.sendEmptyMessage(6);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    private void e() {
        try {
            g();
            l e10 = h.b().e(com.mbridge.msdk.foundation.controller.c.m().b(), this.f27621c);
            this.f27626h = e10;
            if (e10 == null) {
                this.f27626h = l.h(this.f27621c);
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public void f() {
        try {
            if (this.f27620b == null) {
                b("context is null");
            } else if (TextUtils.isEmpty(this.f27621c)) {
                b("unitid is null");
            } else if (!this.f27632n) {
                b("init error");
            } else {
                e();
                d();
                a(false);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            b("can't show because unknow error");
        }
    }

    private void c() {
        try {
            this.f27625g = new HandlerC0381a(Looper.getMainLooper());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void d() {
        try {
            l lVar = this.f27626h;
            if (lVar != null) {
                int e10 = lVar.e();
                int y10 = this.f27626h.y();
                if (e10 <= 0) {
                    e10 = 1;
                }
                if (y10 <= 0) {
                    y10 = 1;
                }
                int i10 = y10 * e10;
                if (f27617q == null || TextUtils.isEmpty(this.f27621c)) {
                    return;
                }
                f27617q.put(this.f27621c, Integer.valueOf(i10));
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public String b() {
        if (this.f27628j) {
            return this.f27631m;
        }
        return this.f27629k;
    }

    public static void a(String str, int i10) {
        try {
            if (f27616p == null || TextUtils.isEmpty(str)) {
                return;
            }
            f27616p.put(str, Integer.valueOf(i10));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(String str) {
        try {
            if (this.f27625g != null) {
                Message obtain = Message.obtain();
                obtain.obj = str;
                obtain.what = 4;
                this.f27625g.sendMessage(obtain);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(boolean z10) {
        try {
            CampaignEx d10 = new com.mbridge.msdk.interstitial.adapter.a(this.f27620b, this.f27621c, this.f27622d, this.f27623e, true).d();
            if (d10 != null) {
                a(d10);
            } else if (z10) {
                a(true);
            } else {
                c("no ads available can show");
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            if (this.f27627i != null) {
                c("can't show because unknow error");
            }
        }
    }

    public static int a(String str) {
        Map<String, Integer> map;
        Integer num;
        try {
            if (TextUtils.isEmpty(str) || (map = f27616p) == null || !map.containsKey(str) || (num = f27616p.get(str)) == null) {
                return 0;
            }
            return num.intValue();
        } catch (Exception e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public void a(InterstitialListener interstitialListener) {
        this.f27627i = interstitialListener;
    }

    public boolean a(Context context, Map<String, Object> map) {
        try {
            this.f27632n = false;
        } catch (Exception e10) {
            e10.printStackTrace();
            this.f27632n = false;
        }
        if (map != null && context != null && map.containsKey(MBridgeConstans.PROPERTIES_UNIT_ID) && (map.get(MBridgeConstans.PROPERTIES_UNIT_ID) instanceof String)) {
            if (map.containsKey(MBridgeConstans.PROPERTIES_API_REUQEST_CATEGORY) && (map.get(MBridgeConstans.PROPERTIES_API_REUQEST_CATEGORY) instanceof String)) {
                this.f27623e = (String) map.get(MBridgeConstans.PROPERTIES_API_REUQEST_CATEGORY);
            }
            this.f27621c = (String) map.get(MBridgeConstans.PROPERTIES_UNIT_ID);
            this.f27620b = context;
            if (map.containsKey(MBridgeConstans.PLACEMENT_ID) && map.get(MBridgeConstans.PLACEMENT_ID) != null) {
                this.f27622d = (String) map.get(MBridgeConstans.PLACEMENT_ID);
            }
            this.f27624f = new MBridgeIds(this.f27622d, this.f27621c);
            this.f27632n = true;
            return this.f27632n;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str) {
        try {
            if (this.f27625g != null) {
                Message obtain = Message.obtain();
                obtain.obj = str;
                obtain.what = 2;
                this.f27625g.sendMessage(obtain);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public String a() {
        return this.f27630l;
    }

    public void a(boolean z10) {
        try {
            com.mbridge.msdk.interstitial.adapter.a aVar = new com.mbridge.msdk.interstitial.adapter.a(this.f27620b, this.f27621c, this.f27622d, this.f27623e, z10);
            c cVar = new c(aVar);
            aVar.a(new b(aVar, cVar));
            Handler handler = this.f27625g;
            if (handler != null) {
                handler.postDelayed(cVar, 30000L);
            }
            aVar.j();
        } catch (Exception e10) {
            e10.printStackTrace();
            if (z10) {
                return;
            }
            b("can't show because unknow error");
        }
    }

    private void a(CampaignEx campaignEx) {
        d dVar = new d();
        if (f27618r != null && !TextUtils.isEmpty(this.f27621c)) {
            f27618r.put(this.f27621c, dVar);
        }
        Intent intent = new Intent(this.f27620b, MBInterstitialActivity.class);
        intent.addFlags(67108864);
        intent.addFlags(268435456);
        if (!TextUtils.isEmpty(this.f27621c)) {
            intent.putExtra("unitId", this.f27621c);
        }
        if (campaignEx != null) {
            this.f27631m = campaignEx.getRequestId();
            intent.putExtra(MBInterstitialActivity.INTENT_CAMAPIGN, campaignEx);
        }
        Context context = this.f27620b;
        if (context != null) {
            context.startActivity(intent);
        }
    }
}
