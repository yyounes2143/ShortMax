package com.mbridge.msdk.mbnative.controller;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.foundation.entity.k;
import com.mbridge.msdk.foundation.same.c;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.u0;
import com.mbridge.msdk.nativex.view.MBMediaView;
import com.mbridge.msdk.out.Campaign;
import com.mbridge.msdk.out.Frame;
import com.mbridge.msdk.setting.h;
import com.mbridge.msdk.setting.j;
import com.mbridge.msdk.setting.l;
import com.mbridge.msdk.tracker.network.g;
import com.unity3d.services.core.fid.Constants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: NativePreloadController.java */
/* loaded from: classes2.dex */
public class d extends com.mbridge.msdk.mbnative.controller.b {

    /* renamed from: r  reason: collision with root package name */
    private static final String f28041r = "d";

    /* renamed from: s  reason: collision with root package name */
    private static Map<String, Map<Long, Object>> f28042s = new HashMap();

    /* renamed from: t  reason: collision with root package name */
    private static Map<String, Boolean> f28043t = new HashMap();

    /* renamed from: u  reason: collision with root package name */
    private static Map<String, k> f28044u = new HashMap();

    /* renamed from: v  reason: collision with root package name */
    private static Map<String, Integer> f28045v = new HashMap();

    /* renamed from: w  reason: collision with root package name */
    private static Map<String, Integer> f28046w = new HashMap();

    /* renamed from: x  reason: collision with root package name */
    private static d f28047x = null;

    /* renamed from: y  reason: collision with root package name */
    private static int f28048y = -1;

    /* renamed from: z  reason: collision with root package name */
    private static int f28049z = -2;

    /* renamed from: b  reason: collision with root package name */
    private j f28050b;

    /* renamed from: c  reason: collision with root package name */
    private com.mbridge.msdk.click.a f28051c;

    /* renamed from: d  reason: collision with root package name */
    private l f28052d;

    /* renamed from: e  reason: collision with root package name */
    private String f28053e;

    /* renamed from: i  reason: collision with root package name */
    private Map<String, Object> f28057i;

    /* renamed from: j  reason: collision with root package name */
    private List<Integer> f28058j;

    /* renamed from: k  reason: collision with root package name */
    protected List<Integer> f28059k;

    /* renamed from: l  reason: collision with root package name */
    private List<Integer> f28060l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f28061m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f28062n;

    /* renamed from: o  reason: collision with root package name */
    private int f28063o;

    /* renamed from: p  reason: collision with root package name */
    private int f28064p;

    /* renamed from: f  reason: collision with root package name */
    Queue<Integer> f28054f = null;

    /* renamed from: g  reason: collision with root package name */
    Queue<Long> f28055g = null;

    /* renamed from: h  reason: collision with root package name */
    private int f28056h = 0;

    /* renamed from: q  reason: collision with root package name */
    private com.mbridge.msdk.foundation.same.task.b f28065q = new com.mbridge.msdk.foundation.same.task.b(com.mbridge.msdk.foundation.controller.c.m().d());

    /* compiled from: NativePreloadController.java */
    /* loaded from: classes2.dex */
    public class b extends com.mbridge.msdk.mbnative.service.net.b implements com.mbridge.msdk.foundation.same.task.d {

        /* renamed from: c  reason: collision with root package name */
        private int f28067c;

        /* renamed from: d  reason: collision with root package name */
        private int f28068d;

        /* renamed from: e  reason: collision with root package name */
        private int f28069e;

        /* renamed from: f  reason: collision with root package name */
        private int f28070f;

        /* renamed from: g  reason: collision with root package name */
        private int f28071g;

        /* renamed from: j  reason: collision with root package name */
        private Runnable f28074j;

        /* renamed from: l  reason: collision with root package name */
        private com.mbridge.msdk.preload.listenter.a f28076l;

        /* renamed from: h  reason: collision with root package name */
        private List<String> f28072h = null;

        /* renamed from: i  reason: collision with root package name */
        private boolean f28073i = false;

        /* renamed from: k  reason: collision with root package name */
        private boolean f28075k = true;

        /* compiled from: NativePreloadController.java */
        /* loaded from: classes2.dex */
        class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ CampaignUnit f28078a;

            a(CampaignUnit campaignUnit) {
                this.f28078a = campaignUnit;
            }

            @Override // java.lang.Runnable
            public void run() {
                boolean z10;
                int i10;
                int i11 = 1;
                if (MBridgeConstans.PRELOAD_RESULT_IN_SUBTHREAD && Looper.myLooper() == null) {
                    Looper.prepare();
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (b.this.f28074j != null) {
                    b bVar = b.this;
                    d.this.f28029a.removeCallbacks(bVar.f28074j);
                }
                if (com.mbridge.msdk.util.b.a()) {
                    d.this.a(this.f28078a);
                }
                if (d.f28042s.containsKey("0_" + b.this.unitId)) {
                    d.f28042s.remove("0_" + b.this.unitId);
                }
                if (b.this.f28071g > 0) {
                    if (this.f28078a.ads.size() <= b.this.f28071g) {
                        b.this.f28068d = this.f28078a.ads.size();
                    } else {
                        b bVar2 = b.this;
                        bVar2.f28068d = bVar2.f28071g;
                    }
                } else if (b.this.f28071g == -1) {
                    b.this.f28068d = 0;
                } else if (b.this.f28071g == -3) {
                    b.this.f28068d = this.f28078a.ads.size();
                } else if (b.this.f28071g == -2) {
                    if (this.f28078a.getTemplate() == 3) {
                        if (b.this.f28070f != 0) {
                            b bVar3 = b.this;
                            bVar3.f28068d = bVar3.f28070f;
                        }
                    } else if (b.this.f28069e != 0) {
                        b bVar4 = b.this;
                        bVar4.f28068d = bVar4.f28069e;
                    }
                    if (b.this.f28068d <= 0) {
                        b.this.f28068d = ((Integer) d.f28045v.get(b.this.unitId)).intValue();
                    }
                }
                if (this.f28078a.ads.size() < b.this.f28068d) {
                    b.this.f28068d = this.f28078a.ads.size();
                }
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a("adtp", 42);
                if (!TextUtils.isEmpty(b.this.b())) {
                    eVar.a(CampaignEx.JSON_KEY_HB, 1);
                } else {
                    eVar.a(CampaignEx.JSON_KEY_HB, 0);
                }
                com.mbridge.msdk.foundation.same.report.metrics.c a10 = com.mbridge.msdk.foundation.same.report.metrics.d.b().a(true, b.this.b(), eVar, this.f28078a.getAds().get(0), b.this.unitId);
                for (int i12 = 0; i12 < this.f28078a.ads.size(); i12++) {
                    CampaignEx campaignEx = this.f28078a.ads.get(i12);
                    campaignEx.setLocalRequestId(a10.o());
                    campaignEx.setCampaignUnitId(b.this.unitId);
                    boolean c10 = u0.c(com.mbridge.msdk.foundation.controller.c.m().d(), campaignEx.getPackageName());
                    d.this.a(com.mbridge.msdk.foundation.controller.c.m().d(), campaignEx);
                    if (arrayList.size() < b.this.f28068d && campaignEx.getOfferType() != 99) {
                        if (u0.c(campaignEx)) {
                            if (c10) {
                                i10 = 1;
                            } else {
                                i10 = 2;
                            }
                            campaignEx.setRtinsType(i10);
                        }
                        if (com.mbridge.msdk.foundation.same.c.b(com.mbridge.msdk.foundation.controller.c.m().d(), campaignEx)) {
                            arrayList.add(campaignEx);
                            if (!TextUtils.isEmpty(campaignEx.getVideoUrlEncode())) {
                                arrayList2.add(campaignEx);
                            }
                        } else {
                            u0.a(b.this.unitId, campaignEx, com.mbridge.msdk.foundation.same.a.f27042x);
                        }
                        b.this.a(campaignEx, null, null);
                    }
                    d dVar = d.this;
                    dVar.a(dVar.f28061m, campaignEx);
                }
                b bVar5 = b.this;
                d.this.a(arrayList2, bVar5.unitId);
                if (this.f28078a.getAds().get(0) != null) {
                    i11 = this.f28078a.getAds().get(0).getType();
                }
                com.mbridge.msdk.mbnative.cache.b<String, List<Campaign>> a11 = com.mbridge.msdk.mbnative.cache.c.a(i11);
                if (a11 != null) {
                    a11.a((com.mbridge.msdk.mbnative.cache.b<String, List<Campaign>>) b.this.unitId, (String) arrayList);
                }
                d.a(b.this.f28067c, b.this.unitId);
                if (Looper.myLooper() != null && z10) {
                    Looper.loop();
                }
                if (this.f28078a.getAds().get(0) != null) {
                    com.mbridge.msdk.click.c.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f28078a.getAds().get(0).getMaitve(), this.f28078a.getAds().get(0).getMaitve_src());
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: NativePreloadController.java */
        /* renamed from: com.mbridge.msdk.mbnative.controller.d$b$b  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public class C0392b extends c.a {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ CampaignEx f28080a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ Context f28081b;

            C0392b(CampaignEx campaignEx, Context context, com.mbridge.msdk.foundation.same.report.metrics.callback.a aVar) {
                this.f28080a = campaignEx;
                this.f28081b = context;
            }

            @Override // com.mbridge.msdk.foundation.same.c.a
            public void a(String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
                com.mbridge.msdk.mbnative.report.a.a(str, cVar, this.f28080a, this.f28081b, (com.mbridge.msdk.foundation.same.report.metrics.callback.a) null);
            }
        }

        /* compiled from: NativePreloadController.java */
        /* loaded from: classes2.dex */
        class c implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ String f28083a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ int f28084b;

            c(String str, int i10) {
                this.f28083a = str;
                this.f28084b = i10;
            }

            @Override // java.lang.Runnable
            public void run() {
                boolean z10;
                if (MBridgeConstans.PRELOAD_RESULT_IN_SUBTHREAD && Looper.myLooper() == null) {
                    Looper.prepare();
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (!b.this.f28073i) {
                    if (b.this.f28074j != null) {
                        b bVar = b.this;
                        d.this.f28029a.removeCallbacks(bVar.f28074j);
                    }
                    if (b.this.a() == 1 || b.this.f28075k) {
                        b bVar2 = b.this;
                        d dVar = d.this;
                        String str = this.f28083a;
                        int a10 = bVar2.a();
                        b bVar3 = b.this;
                        dVar.a(str, a10, bVar3.unitId, bVar3.placementId, bVar3.f28076l);
                    }
                } else if (b.this.f28075k) {
                    b bVar4 = b.this;
                    d dVar2 = d.this;
                    String str2 = this.f28083a;
                    int a11 = bVar4.a();
                    b bVar5 = b.this;
                    dVar2.a(str2, a11, bVar5.unitId, bVar5.placementId, bVar5.f28076l);
                }
                if (this.f28084b == -1) {
                    d.b(b.this.f28067c, b.this.unitId);
                }
                if (Looper.myLooper() != null && z10) {
                    Looper.loop();
                }
            }
        }

        /* compiled from: NativePreloadController.java */
        /* renamed from: com.mbridge.msdk.mbnative.controller.d$b$d  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        class RunnableC0393d implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ List f28086a;

            RunnableC0393d(List list) {
                this.f28086a = list;
            }

            @Override // java.lang.Runnable
            public void run() {
                boolean z10;
                if (MBridgeConstans.PRELOAD_RESULT_IN_SUBTHREAD && Looper.myLooper() == null) {
                    Looper.prepare();
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (!b.this.f28073i && b.this.f28074j != null) {
                    b bVar = b.this;
                    d.this.f28029a.removeCallbacks(bVar.f28074j);
                }
                List list = this.f28086a;
                if (list != null && list.size() > 0) {
                    for (Frame frame : this.f28086a) {
                        for (CampaignEx campaignEx : frame.getCampaigns()) {
                            d dVar = d.this;
                            dVar.a(dVar.f28061m, campaignEx);
                        }
                    }
                    HashMap hashMap = new HashMap();
                    hashMap.put(Long.valueOf(System.currentTimeMillis()), this.f28086a);
                    Map map = d.f28042s;
                    if (map.containsKey("1_" + b.this.unitId)) {
                        Map map2 = d.f28042s;
                        map2.remove("1_" + b.this.unitId);
                    }
                    Map map3 = d.f28042s;
                    map3.put("1_" + b.this.unitId, hashMap);
                }
                if (Looper.myLooper() != null && z10) {
                    Looper.loop();
                }
            }
        }

        public b(int i10) {
            this.f28067c = i10;
        }

        public void b(List<String> list) {
            this.f28072h = list;
        }

        public void c(int i10) {
            this.f28069e = i10;
        }

        public void d(int i10) {
            this.f28068d = i10;
        }

        public void e(int i10) {
            this.f28070f = i10;
        }

        public void b(int i10) {
            this.f28071g = i10;
        }

        public void a(com.mbridge.msdk.preload.listenter.a aVar) {
            this.f28076l = aVar;
        }

        public void b(boolean z10) {
            this.f28075k = z10;
        }

        @Override // com.mbridge.msdk.foundation.same.task.d
        public void a(boolean z10) {
            this.f28073i = z10;
        }

        @Override // com.mbridge.msdk.mbnative.service.net.b
        public void a(List<g> list, CampaignUnit campaignUnit) {
            d.this.f28062n = true;
            d.this.a(true, this.f28076l, (String) null);
            d.this.a(new Thread(new a(campaignUnit)));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(CampaignEx campaignEx, com.mbridge.msdk.foundation.same.report.metrics.c cVar, com.mbridge.msdk.foundation.same.report.metrics.callback.a aVar) {
            try {
                Context d10 = com.mbridge.msdk.foundation.controller.c.m().d();
                com.mbridge.msdk.foundation.same.c.a(campaignEx, d10, cVar, new C0392b(campaignEx, d10, aVar));
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    e10.printStackTrace();
                }
            }
        }

        @Override // com.mbridge.msdk.mbnative.service.net.b
        public void a(int i10, String str) {
            d.this.a(new Thread(new c(str, i10)));
        }

        public void a(Runnable runnable) {
            this.f28074j = runnable;
        }

        @Override // com.mbridge.msdk.mbnative.service.net.b
        public void a(List<Frame> list) {
            d.this.a(new Thread(new RunnableC0393d(list)));
        }
    }

    /* compiled from: NativePreloadController.java */
    /* loaded from: classes2.dex */
    public class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private int f28088a;

        /* renamed from: b  reason: collision with root package name */
        private com.mbridge.msdk.foundation.same.task.d f28089b;

        /* renamed from: c  reason: collision with root package name */
        private int f28090c;

        /* renamed from: d  reason: collision with root package name */
        private String f28091d;

        /* renamed from: e  reason: collision with root package name */
        private String f28092e;

        /* renamed from: f  reason: collision with root package name */
        private com.mbridge.msdk.preload.listenter.a f28093f;

        /* renamed from: g  reason: collision with root package name */
        private boolean f28094g = false;

        public c(int i10, com.mbridge.msdk.foundation.same.task.d dVar, int i11, String str, String str2) {
            this.f28088a = i10;
            this.f28089b = dVar;
            this.f28090c = i11;
            this.f28091d = str;
            this.f28092e = str2;
        }

        public void a(boolean z10) {
            this.f28094g = z10;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f28089b.a(true);
            int i10 = this.f28088a;
            if (i10 == 1) {
                d.this.f28062n = true;
                if (this.f28094g || this.f28090c == 1) {
                    d.this.a("REQUEST_TIMEOUT", this.f28090c, this.f28091d, this.f28092e, this.f28093f);
                }
            } else if (i10 == 2) {
                d.this.a("REQUEST_TIMEOUT", this.f28090c, this.f28091d, this.f28092e, this.f28093f);
            }
        }

        public void a(com.mbridge.msdk.preload.listenter.a aVar) {
            this.f28093f = aVar;
        }

        public void a(String str) {
            this.f28091d = str;
        }
    }

    public d() {
        if (Looper.myLooper() == null) {
            Looper.prepare();
        }
        this.f28029a = new a();
    }

    public static Map<String, Integer> c() {
        return f28045v;
    }

    public static Map<String, Integer> d() {
        return f28046w;
    }

    public static Map<String, k> e() {
        return f28044u;
    }

    public static Map<String, Map<Long, Object>> f() {
        return f28042s;
    }

    public static Map<String, Boolean> g() {
        return f28043t;
    }

    public static void b(int i10, String str) {
        if (f28044u.containsKey(str)) {
            k kVar = f28044u.get(str);
            if (i10 == 1) {
                kVar.a(0);
            } else if (i10 == 2) {
                kVar.b(0);
            }
            f28044u.put(str, kVar);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:78:0x01f2, code lost:
        if (android.text.TextUtils.isEmpty(r1) != false) goto L151;
     */
    /* JADX WARN: Removed duplicated region for block: B:114:0x02d7 A[Catch: Exception -> 0x006b, TryCatch #5 {Exception -> 0x006b, blocks: (B:3:0x001e, B:6:0x002a, B:8:0x0050, B:13:0x006e, B:16:0x0075, B:18:0x007b, B:19:0x0087, B:21:0x008b, B:23:0x009e, B:25:0x00a4, B:26:0x00b0, B:28:0x00b6, B:29:0x00be, B:31:0x00c6, B:33:0x00d4, B:35:0x0102, B:37:0x0108, B:39:0x011c, B:40:0x0124, B:42:0x0135, B:46:0x013d, B:57:0x016e, B:59:0x017f, B:61:0x0185, B:63:0x018f, B:65:0x01a5, B:67:0x01ab, B:69:0x01b3, B:70:0x01c1, B:72:0x01d0, B:73:0x01d6, B:75:0x01de, B:77:0x01e6, B:82:0x01fb, B:84:0x0217, B:86:0x021d, B:87:0x022a, B:89:0x0230, B:90:0x023c, B:92:0x0240, B:94:0x0246, B:95:0x0253, B:97:0x0259, B:98:0x0270, B:112:0x02c6, B:114:0x02d7, B:116:0x02e0, B:141:0x03b3, B:56:0x0167, B:22:0x009b, B:117:0x02eb, B:119:0x0301, B:121:0x031a, B:123:0x0322, B:125:0x0328, B:126:0x032a, B:128:0x0330, B:129:0x0336, B:131:0x033c, B:133:0x034c, B:134:0x034f, B:135:0x0352, B:137:0x0358, B:47:0x0147, B:49:0x014d, B:51:0x015c, B:52:0x015e, B:54:0x0164), top: B:153:0x001e }] */
    /* JADX WARN: Removed duplicated region for block: B:115:0x02df  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0301 A[Catch: all -> 0x03a9, TryCatch #5 {Exception -> 0x006b, blocks: (B:3:0x001e, B:6:0x002a, B:8:0x0050, B:13:0x006e, B:16:0x0075, B:18:0x007b, B:19:0x0087, B:21:0x008b, B:23:0x009e, B:25:0x00a4, B:26:0x00b0, B:28:0x00b6, B:29:0x00be, B:31:0x00c6, B:33:0x00d4, B:35:0x0102, B:37:0x0108, B:39:0x011c, B:40:0x0124, B:42:0x0135, B:46:0x013d, B:57:0x016e, B:59:0x017f, B:61:0x0185, B:63:0x018f, B:65:0x01a5, B:67:0x01ab, B:69:0x01b3, B:70:0x01c1, B:72:0x01d0, B:73:0x01d6, B:75:0x01de, B:77:0x01e6, B:82:0x01fb, B:84:0x0217, B:86:0x021d, B:87:0x022a, B:89:0x0230, B:90:0x023c, B:92:0x0240, B:94:0x0246, B:95:0x0253, B:97:0x0259, B:98:0x0270, B:112:0x02c6, B:114:0x02d7, B:116:0x02e0, B:141:0x03b3, B:56:0x0167, B:22:0x009b, B:117:0x02eb, B:119:0x0301, B:121:0x031a, B:123:0x0322, B:125:0x0328, B:126:0x032a, B:128:0x0330, B:129:0x0336, B:131:0x033c, B:133:0x034c, B:134:0x034f, B:135:0x0352, B:137:0x0358, B:47:0x0147, B:49:0x014d, B:51:0x015c, B:52:0x015e, B:54:0x0164), top: B:153:0x001e }] */
    /* JADX WARN: Removed duplicated region for block: B:160:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(java.util.Map<java.lang.String, java.lang.Object> r21, int r22) {
        /*
            Method dump skipped, instructions count: 963
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.mbnative.controller.d.a(java.util.Map, int):void");
    }

    /* compiled from: NativePreloadController.java */
    /* loaded from: classes2.dex */
    class a extends Handler {
        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
        }
    }

    private int a(String str) {
        if (str == null) {
            return 0;
        }
        try {
            JSONArray jSONArray = new JSONArray(str);
            if (jSONArray.length() > 0) {
                for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                    JSONObject jSONObject = (JSONObject) jSONArray.opt(i10);
                    if (2 == jSONObject.optInt("id", 0)) {
                        return jSONObject.optInt("ad_num");
                    }
                }
            }
        } catch (Exception e10) {
            p0.b(f28041r, com.mbridge.msdk.mbnative.common.a.a(e10));
        }
        return 0;
    }

    public List<Campaign> a(String str, int i10) {
        com.mbridge.msdk.mbnative.cache.b<String, List<Campaign>> a10;
        l e10 = h.b().e("", str);
        this.f28052d = e10;
        if (e10 == null) {
            this.f28052d = l.i(str);
        }
        List<Integer> b10 = this.f28052d.b();
        this.f28058j = b10;
        if (b10 == null || b10.size() <= 0 || !this.f28058j.contains(1) || (a10 = com.mbridge.msdk.mbnative.cache.c.a(1)) == null) {
            return null;
        }
        return a10.a((com.mbridge.msdk.mbnative.cache.b<String, List<Campaign>>) str, i10);
    }

    public void a(int i10, l lVar, String str, String str2, com.mbridge.msdk.preload.listenter.a aVar) {
        Queue<Integer> queue = this.f28054f;
        if (queue == null || queue.size() <= 0) {
            return;
        }
        try {
            int intValue = this.f28054f.poll().intValue();
            long j10 = MBridgeConstans.REQUEST_TIME_OUT;
            Queue<Long> queue2 = this.f28055g;
            if (queue2 != null && queue2.size() > 0) {
                j10 = this.f28055g.poll().longValue();
            }
            p0.c(f28041r, "preload start queue adsource = " + intValue);
            a(intValue, j10, str, str2, this.f28057i, i10, lVar, aVar);
        } catch (Throwable unused) {
            p0.b(f28041r, "queue poll exception");
        }
    }

    public void a(int i10, long j10, String str, String str2, Map<String, Object> map, int i11, l lVar, com.mbridge.msdk.preload.listenter.a aVar) {
        com.mbridge.msdk.mbnative.cache.b<String, List<Campaign>> a10;
        if (i10 != 1 && (a10 = com.mbridge.msdk.mbnative.cache.c.a(i10)) != null) {
            List<Campaign> a11 = a10.a((com.mbridge.msdk.mbnative.cache.b<String, List<Campaign>>) str, this.f28064p);
            if (a11 != null && a11.size() > 0) {
                a(true, aVar, (String) null);
                return;
            }
        }
        if (i10 == 1) {
            a(i10, j10, i11, lVar, str, str2, true, aVar);
        } else if (i10 != 2) {
            a(i10, j10, i11, lVar, str, str2, aVar, false);
        } else {
            a(2, j10, i11, lVar, str, str2, aVar, false);
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Unreachable block: B:103:0x023c
        	at jadx.core.dex.visitors.blocks.BlockProcessor.checkForUnreachableBlocks(BlockProcessor.java:81)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:47)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    @Override // com.mbridge.msdk.mbnative.controller.b
    public void a(int r26, long r27, int r29, com.mbridge.msdk.setting.l r30, java.lang.String r31, java.lang.String r32, com.mbridge.msdk.preload.listenter.a r33, boolean r34) {
        /*
            Method dump skipped, instructions count: 1195
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.mbnative.controller.d.a(int, long, int, com.mbridge.msdk.setting.l, java.lang.String, java.lang.String, com.mbridge.msdk.preload.listenter.a, boolean):void");
    }

    public static void a(int i10, String str) {
        k kVar;
        if (f28044u.containsKey(str)) {
            kVar = f28044u.get(str);
        } else {
            kVar = new k();
        }
        int intValue = f28045v.get(str).intValue();
        int intValue2 = d().containsKey(str) ? d().get(str).intValue() : 1;
        if (i10 == 1) {
            int a10 = intValue + kVar.a();
            kVar.a(a10 <= intValue2 ? a10 : 0);
        } else if (i10 == 2) {
            int b10 = intValue + kVar.b();
            kVar.b(b10 <= intValue2 ? b10 : 0);
        }
        f28044u.put(str, kVar);
    }

    public void a(String str, int i10, String str2, String str3, com.mbridge.msdk.preload.listenter.a aVar) {
        Log.e(f28041r, str);
        try {
            Queue<Integer> queue = this.f28054f;
            if (queue != null) {
                if (queue.size() > 0) {
                }
                a(false, aVar, str);
            }
            if (this.f28054f != null) {
                a(i10, this.f28052d, str2, str3, aVar);
                return;
            }
            a(false, aVar, str);
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
            }
        }
    }

    public void a(String str, String str2, String str3) {
        if (this.f28050b == null) {
            this.f28050b = new j();
        }
        this.f28050b.a(com.mbridge.msdk.foundation.controller.c.m().d(), str, str2, str3);
    }

    public void a(boolean z10, com.mbridge.msdk.preload.listenter.a aVar, String str) {
        if (z10) {
            if (aVar == null || aVar.a()) {
                return;
            }
            aVar.a(true);
            aVar.onPreloadSucceed();
        } else if (aVar == null || aVar.a()) {
        } else {
            aVar.a(true);
            aVar.onPreloadFaild(str);
        }
    }

    public void a(boolean z10, Campaign campaign) {
        if (campaign == null) {
            return;
        }
        if (z10 && campaign.getIconDrawable() == null) {
            campaign.loadIconUrlAsyncWithBlock(null);
        }
        if (z10 && campaign.getBigDrawable() == null) {
            campaign.loadImageUrlAsyncWithBlock(null);
        }
    }

    public void a(Thread thread) {
        if (!MBridgeConstans.PRELOAD_RESULT_IN_SUBTHREAD) {
            thread.run();
        } else {
            thread.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(List<CampaignEx> list, String str) {
        if (list != null) {
            try {
                if (list.size() > 0) {
                    try {
                        int i10 = MBMediaView.f28354p0;
                        Object invoke = com.mbridge.msdk.videocommon.download.b.class.getMethod(Constants.GET_INSTANCE, new Class[0]).invoke(null, new Object[0]);
                        if (invoke != null) {
                            com.mbridge.msdk.videocommon.download.b.class.getMethod("createUnitCache", Context.class, String.class, CopyOnWriteArrayList.class, Integer.TYPE, com.mbridge.msdk.videocommon.listener.a.class).invoke(invoke, com.mbridge.msdk.foundation.controller.c.m().d(), str, new CopyOnWriteArrayList(list), 1, null);
                            com.mbridge.msdk.videocommon.download.b.class.getMethod("load", String.class).invoke(invoke, str);
                        }
                    } catch (Exception unused) {
                        p0.b(f28041r, "please import the videocommon aar");
                    }
                }
            } catch (Exception e10) {
                p0.b(f28041r, com.mbridge.msdk.mbnative.common.a.a(e10));
            }
        }
    }
}
