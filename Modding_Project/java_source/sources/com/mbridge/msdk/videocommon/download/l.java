package com.mbridge.msdk.videocommon.download;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.download.H5DownLoadManager;
import com.mbridge.msdk.foundation.download.download.HTMLResourceManager;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.r0;
import com.mbridge.msdk.foundation.tools.u0;
import com.mbridge.msdk.foundation.tools.z0;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
/* compiled from: UnitCacheCtroller.java */
/* loaded from: classes6.dex */
public class l {

    /* renamed from: c  reason: collision with root package name */
    private com.mbridge.msdk.videocommon.listener.a f31637c;

    /* renamed from: e  reason: collision with root package name */
    private ConcurrentHashMap<String, com.mbridge.msdk.videocommon.listener.a> f31639e;

    /* renamed from: h  reason: collision with root package name */
    private Context f31642h;

    /* renamed from: j  reason: collision with root package name */
    private String f31644j;

    /* renamed from: k  reason: collision with root package name */
    private com.mbridge.msdk.videocommon.setting.c f31645k;

    /* renamed from: m  reason: collision with root package name */
    private int f31647m;

    /* renamed from: p  reason: collision with root package name */
    private k f31650p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f31651q;

    /* renamed from: a  reason: collision with root package name */
    private List<CampaignEx> f31635a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private boolean f31636b = true;

    /* renamed from: d  reason: collision with root package name */
    private String f31638d = "";

    /* renamed from: f  reason: collision with root package name */
    private c f31640f = new a();

    /* renamed from: g  reason: collision with root package name */
    private CopyOnWriteArrayList<Map<String, com.mbridge.msdk.videocommon.download.a>> f31641g = new CopyOnWriteArrayList<>();

    /* renamed from: i  reason: collision with root package name */
    private long f31643i = 3600;

    /* renamed from: l  reason: collision with root package name */
    private int f31646l = 1;

    /* renamed from: n  reason: collision with root package name */
    com.mbridge.msdk.setting.l f31648n = null;

    /* renamed from: o  reason: collision with root package name */
    com.mbridge.msdk.setting.l f31649o = null;

    /* compiled from: UnitCacheCtroller.java */
    /* loaded from: classes6.dex */
    class a implements c {
        a() {
        }

        @Override // com.mbridge.msdk.videocommon.download.c
        public void onProgress(long j10, int i10) {
            if (i10 == 5 || i10 == 4) {
                l.this.f31636b = true;
                l.this.d();
            }
            if (i10 == 2) {
                l.this.f31636b = true;
            }
        }
    }

    public l(Context context, List<CampaignEx> list, String str, int i10) {
        this.f31647m = 1;
        try {
            boolean b10 = j.a().b(i10);
            this.f31651q = b10;
            if (b10) {
                this.f31644j = str;
                this.f31647m = i10;
                this.f31650p = new k(list, str, i10);
                return;
            }
        } catch (Exception unused) {
            this.f31650p = null;
            this.f31651q = false;
        }
        this.f31642h = com.mbridge.msdk.foundation.controller.c.m().d();
        List<CampaignEx> list2 = this.f31635a;
        if (list2 != null && list != null) {
            list2.addAll(list);
        }
        this.f31644j = str;
        this.f31647m = i10;
        a(this.f31635a);
    }

    private boolean a(CampaignEx.c cVar) {
        return true;
    }

    public CopyOnWriteArrayList<Map<String, com.mbridge.msdk.videocommon.download.a>> c() {
        k kVar;
        if (this.f31651q && (kVar = this.f31650p) != null) {
            return kVar.e();
        }
        return this.f31641g;
    }

    /* JADX WARN: Removed duplicated region for block: B:165:0x01d8 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:169:0x01e4 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:178:0x0042 A[ADDED_TO_REGION, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:180:0x0042 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00df A[Catch: all -> 0x0022, TryCatch #1 {all -> 0x0022, blocks: (B:11:0x0016, B:13:0x001f, B:16:0x0025, B:17:0x002b, B:19:0x0031, B:22:0x003a, B:23:0x0042, B:25:0x0048, B:28:0x0058, B:31:0x005f, B:33:0x0065, B:34:0x0067, B:37:0x0073, B:38:0x0083, B:40:0x0094, B:42:0x0098, B:43:0x00a0, B:44:0x00a4, B:50:0x00b9, B:52:0x00bd, B:53:0x00d1, B:55:0x00d5, B:57:0x00db, B:59:0x00df, B:61:0x00e3, B:62:0x00f7, B:64:0x00fb, B:76:0x0129, B:78:0x012e, B:80:0x0134, B:84:0x016b, B:85:0x016f, B:87:0x0174, B:91:0x017c, B:95:0x0182, B:97:0x0186, B:98:0x018f, B:100:0x0193, B:104:0x019d, B:105:0x01a1, B:107:0x01c3, B:111:0x01c9, B:113:0x01cd, B:117:0x01db, B:121:0x01e4, B:123:0x01ef, B:125:0x01f3, B:128:0x01f7, B:131:0x01fd, B:133:0x0208, B:137:0x0210, B:138:0x0215, B:144:0x0222, B:143:0x021f, B:65:0x0100, B:67:0x0104, B:71:0x0119, B:72:0x011f, B:74:0x0123, B:145:0x0227), top: B:152:0x0016, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x012e A[Catch: all -> 0x0022, TryCatch #1 {all -> 0x0022, blocks: (B:11:0x0016, B:13:0x001f, B:16:0x0025, B:17:0x002b, B:19:0x0031, B:22:0x003a, B:23:0x0042, B:25:0x0048, B:28:0x0058, B:31:0x005f, B:33:0x0065, B:34:0x0067, B:37:0x0073, B:38:0x0083, B:40:0x0094, B:42:0x0098, B:43:0x00a0, B:44:0x00a4, B:50:0x00b9, B:52:0x00bd, B:53:0x00d1, B:55:0x00d5, B:57:0x00db, B:59:0x00df, B:61:0x00e3, B:62:0x00f7, B:64:0x00fb, B:76:0x0129, B:78:0x012e, B:80:0x0134, B:84:0x016b, B:85:0x016f, B:87:0x0174, B:91:0x017c, B:95:0x0182, B:97:0x0186, B:98:0x018f, B:100:0x0193, B:104:0x019d, B:105:0x01a1, B:107:0x01c3, B:111:0x01c9, B:113:0x01cd, B:117:0x01db, B:121:0x01e4, B:123:0x01ef, B:125:0x01f3, B:128:0x01f7, B:131:0x01fd, B:133:0x0208, B:137:0x0210, B:138:0x0215, B:144:0x0222, B:143:0x021f, B:65:0x0100, B:67:0x0104, B:71:0x0119, B:72:0x011f, B:74:0x0123, B:145:0x0227), top: B:152:0x0016, inners: #0, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0133  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0167  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void d() {
        /*
            Method dump skipped, instructions count: 556
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.videocommon.download.l.d():void");
    }

    public void e() {
        k kVar;
        if (this.f31651q && (kVar = this.f31650p) != null) {
            kVar.k();
            return;
        }
        CopyOnWriteArrayList<Map<String, com.mbridge.msdk.videocommon.download.a>> copyOnWriteArrayList = this.f31641g;
        if (copyOnWriteArrayList != null) {
            try {
                synchronized (copyOnWriteArrayList) {
                    Iterator<Map<String, com.mbridge.msdk.videocommon.download.a>> it = this.f31641g.iterator();
                    while (it.hasNext()) {
                        Map<String, com.mbridge.msdk.videocommon.download.a> next = it.next();
                        if (next != null) {
                            for (Map.Entry<String, com.mbridge.msdk.videocommon.download.a> entry : next.entrySet()) {
                                com.mbridge.msdk.videocommon.download.a value = entry.getValue();
                                if (value != null && value.j() == 1) {
                                    value.c("playing and stop download");
                                    value.b();
                                    this.f31641g.remove(next);
                                    return;
                                }
                            }
                            continue;
                        }
                    }
                }
            } catch (Throwable th2) {
                if (MBridgeConstans.DEBUG) {
                    p0.b("UnitCacheCtroller", th2.getMessage());
                }
            }
        }
    }

    public void f(CampaignEx campaignEx) {
        k kVar;
        if (this.f31651q && (kVar = this.f31650p) != null) {
            kVar.h(campaignEx);
            return;
        }
        List<CampaignEx> list = this.f31635a;
        if (list != null && campaignEx != null) {
            list.add(campaignEx);
        }
        a(this.f31635a);
    }

    public void b(List<CampaignEx> list) {
        k kVar;
        if (this.f31651q && (kVar = this.f31650p) != null) {
            kVar.a(list);
            return;
        }
        List<CampaignEx> list2 = this.f31635a;
        if (list2 != null && list != null) {
            list2.addAll(list);
        }
        a(this.f31635a);
    }

    private int c(CampaignEx campaignEx) {
        try {
            if (campaignEx.getAdType() == 298) {
                if (this.f31649o == null) {
                    this.f31649o = com.mbridge.msdk.setting.h.b().d(com.mbridge.msdk.foundation.controller.c.m().b(), this.f31644j);
                }
                return this.f31649o.C();
            } else if (campaignEx.getAdType() == 42) {
                return a((CampaignEx) null);
            } else {
                if (this.f31645k == null) {
                    this.f31645k = com.mbridge.msdk.videocommon.setting.b.b().a(com.mbridge.msdk.foundation.controller.c.m().b(), this.f31644j, false);
                }
                return this.f31645k.w();
            }
        } catch (Throwable th2) {
            p0.b("UnitCacheCtroller", th2.getMessage(), th2);
            return 100;
        }
    }

    public void a(com.mbridge.msdk.videocommon.listener.a aVar) {
        k kVar;
        if (this.f31651q && (kVar = this.f31650p) != null) {
            kVar.a(aVar);
        } else {
            this.f31637c = aVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: UnitCacheCtroller.java */
    /* loaded from: classes6.dex */
    public class b implements com.mbridge.msdk.videocommon.listener.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CampaignEx f31653a;

        b(CampaignEx campaignEx) {
            this.f31653a = campaignEx;
        }

        @Override // com.mbridge.msdk.videocommon.listener.a
        public void a(String str) {
            if (l.this.f31637c != null) {
                l.this.f31637c.a(str);
            }
            if (l.this.f31639e == null || l.this.f31639e.size() <= 0 || this.f31653a == null) {
                return;
            }
            ConcurrentHashMap concurrentHashMap = l.this.f31639e;
            com.mbridge.msdk.videocommon.listener.a aVar = (com.mbridge.msdk.videocommon.listener.a) concurrentHashMap.get(this.f31653a.getRequestId() + "_" + this.f31653a.getSecondRequestIndex());
            if (aVar != null) {
                aVar.a(str);
                ConcurrentHashMap concurrentHashMap2 = l.this.f31639e;
                concurrentHashMap2.remove(this.f31653a.getRequestId() + "_" + this.f31653a.getSecondRequestIndex());
            }
        }

        @Override // com.mbridge.msdk.videocommon.listener.a
        public void a(String str, String str2) {
            if (l.this.f31637c != null) {
                l.this.f31637c.a(str, str2);
            }
            CampaignEx campaignEx = this.f31653a;
            if (campaignEx == null || campaignEx.getRsIgnoreCheckRule() == null || this.f31653a.getRsIgnoreCheckRule().size() <= 0 || !this.f31653a.getRsIgnoreCheckRule().contains(0)) {
                if (l.this.f31639e == null || l.this.f31639e.size() <= 0 || this.f31653a == null) {
                    return;
                }
                ConcurrentHashMap concurrentHashMap = l.this.f31639e;
                com.mbridge.msdk.videocommon.listener.a aVar = (com.mbridge.msdk.videocommon.listener.a) concurrentHashMap.get(this.f31653a.getRequestId() + "_" + this.f31653a.getSecondRequestIndex());
                if (aVar != null) {
                    aVar.a(str, str2);
                    ConcurrentHashMap concurrentHashMap2 = l.this.f31639e;
                    concurrentHashMap2.remove(this.f31653a.getRequestId() + "_" + this.f31653a.getSecondRequestIndex());
                    return;
                }
                return;
            }
            p0.c("UnitCacheCtroller", "Is not check video download status");
        }
    }

    public void a(String str, com.mbridge.msdk.videocommon.listener.a aVar) {
        k kVar;
        if (this.f31651q && (kVar = this.f31650p) != null) {
            kVar.a(str, aVar);
            return;
        }
        if (this.f31639e == null) {
            this.f31639e = new ConcurrentHashMap<>();
        }
        if (aVar == null || TextUtils.isEmpty(str)) {
            return;
        }
        this.f31639e.put(str, aVar);
    }

    public void b() {
        CopyOnWriteArrayList<Map<String, com.mbridge.msdk.videocommon.download.a>> copyOnWriteArrayList;
        k kVar;
        if (this.f31651q && (kVar = this.f31650p) != null) {
            kVar.a();
        } else if (!r0.a().a("u_n_c_e_d", true) && (copyOnWriteArrayList = this.f31641g) != null) {
            try {
                synchronized (copyOnWriteArrayList) {
                    long currentTimeMillis = System.currentTimeMillis();
                    int i10 = 0;
                    while (i10 < this.f31641g.size()) {
                        Map<String, com.mbridge.msdk.videocommon.download.a> map = this.f31641g.get(i10);
                        for (Map.Entry<String, com.mbridge.msdk.videocommon.download.a> entry : map.entrySet()) {
                            com.mbridge.msdk.videocommon.download.a value = entry.getValue();
                            if (value != null) {
                                if (currentTimeMillis - value.i() > this.f31643i * 1000 && value.j() == 1) {
                                    value.c("download timeout");
                                    value.c(this.f31646l);
                                    value.b();
                                    this.f31641g.remove(map);
                                    i10--;
                                }
                                if (value.j() != 1 && value.j() != 5 && value.j() != 0) {
                                    value.b();
                                    this.f31641g.remove(map);
                                    i10--;
                                }
                            }
                        }
                        i10++;
                    }
                }
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
        }
    }

    private void a(List<CampaignEx> list) {
        CopyOnWriteArrayList<Map<String, com.mbridge.msdk.videocommon.download.a>> copyOnWriteArrayList;
        if (list == null || list.size() == 0) {
            return;
        }
        if (list.get(0) != null) {
            this.f31638d = list.get(0).getCurrentLocalRid();
        }
        a();
        b();
        int i10 = this.f31647m;
        if (i10 != 1) {
            if (i10 != 287) {
                if (i10 == 298) {
                    com.mbridge.msdk.setting.l a10 = com.mbridge.msdk.setting.h.b().a(com.mbridge.msdk.foundation.controller.c.m().b(), this.f31644j);
                    this.f31649o = a10;
                    if (a10 == null) {
                        this.f31649o = com.mbridge.msdk.setting.h.b().c(com.mbridge.msdk.foundation.controller.c.m().b(), this.f31644j);
                    }
                    com.mbridge.msdk.setting.l lVar = this.f31649o;
                    if (lVar != null) {
                        this.f31643i = lVar.p();
                        this.f31646l = this.f31649o.q();
                    }
                } else if (i10 != 94) {
                    if (i10 == 95) {
                        try {
                            if (!TextUtils.isEmpty(this.f31644j)) {
                                com.mbridge.msdk.setting.l e10 = com.mbridge.msdk.setting.h.b().e(com.mbridge.msdk.foundation.controller.c.m().b(), this.f31644j);
                                if (e10 == null) {
                                    e10 = com.mbridge.msdk.setting.l.j(this.f31644j);
                                }
                                if (e10 != null) {
                                    this.f31643i = e10.p();
                                    this.f31646l = e10.q();
                                }
                            }
                        } catch (Exception unused) {
                            p0.b("UnitCacheCtroller", "make sure your had put feeds jar into your project");
                            return;
                        }
                    }
                }
            }
            try {
                com.mbridge.msdk.videocommon.setting.a c10 = com.mbridge.msdk.videocommon.setting.b.b().c();
                if (c10 == null) {
                    com.mbridge.msdk.videocommon.setting.b.b().a();
                }
                if (c10 != null) {
                    this.f31643i = c10.c();
                }
                if (!TextUtils.isEmpty(this.f31644j)) {
                    this.f31645k = com.mbridge.msdk.videocommon.setting.b.b().c(com.mbridge.msdk.foundation.controller.c.m().b(), this.f31644j);
                }
                com.mbridge.msdk.videocommon.setting.c cVar = this.f31645k;
                if (cVar != null) {
                    this.f31646l = cVar.l();
                }
            } catch (Exception unused2) {
                p0.b("UnitCacheCtroller", "make sure your had put reward jar into your project");
                return;
            }
        } else {
            try {
                if (!TextUtils.isEmpty(this.f31644j)) {
                    com.mbridge.msdk.setting.l e11 = com.mbridge.msdk.setting.h.b().e(com.mbridge.msdk.foundation.controller.c.m().b(), this.f31644j);
                    this.f31648n = e11;
                    if (e11 == null) {
                        this.f31648n = com.mbridge.msdk.setting.l.i(this.f31644j);
                    }
                    com.mbridge.msdk.setting.l lVar2 = this.f31648n;
                    if (lVar2 != null) {
                        this.f31643i = lVar2.p();
                        this.f31646l = this.f31648n.q();
                    }
                }
            } catch (Exception unused3) {
                p0.b("UnitCacheCtroller", "make sure your had put native video jar into your project");
                return;
            }
        }
        for (int i11 = 0; i11 < list.size(); i11++) {
            CampaignEx campaignEx = list.get(i11);
            if (campaignEx != null) {
                int i12 = this.f31647m;
                String str = (i12 != 94 && i12 != 287) ? campaignEx.getId() + campaignEx.getVideoUrlEncode() + campaignEx.getBidToken() : campaignEx.getRequestId() + campaignEx.getId() + campaignEx.getVideoUrlEncode();
                if ((d(campaignEx) || !TextUtils.isEmpty(campaignEx.getVideoUrlEncode())) && (copyOnWriteArrayList = this.f31641g) != null) {
                    synchronized (copyOnWriteArrayList) {
                        int i13 = 0;
                        while (true) {
                            try {
                                if (i13 < this.f31641g.size()) {
                                    Map<String, com.mbridge.msdk.videocommon.download.a> map = this.f31641g.get(i13);
                                    if (map == null || !map.containsKey(str)) {
                                        i13++;
                                    } else {
                                        com.mbridge.msdk.videocommon.download.a aVar = map.get(str);
                                        if (aVar != null) {
                                            aVar.e(campaignEx);
                                            aVar.c(this.f31646l);
                                            aVar.b(false);
                                            map.remove(str);
                                            map.put(str, aVar);
                                            this.f31641g.set(i13, map);
                                        }
                                        e(campaignEx);
                                    }
                                } else {
                                    com.mbridge.msdk.videocommon.download.a aVar2 = new com.mbridge.msdk.videocommon.download.a(this.f31642h, campaignEx, this.f31644j, this.f31646l);
                                    aVar2.c(this.f31646l);
                                    aVar2.a(this.f31647m);
                                    HashMap hashMap = new HashMap();
                                    hashMap.put(str, aVar2);
                                    this.f31641g.add(hashMap);
                                    break;
                                }
                            }
                        }
                    }
                }
            }
        }
        List<CampaignEx> list2 = this.f31635a;
        if (list2 == null || list2.size() <= 0) {
            return;
        }
        this.f31635a.clear();
    }

    private void e(CampaignEx campaignEx) {
        if (campaignEx != null) {
            try {
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a("cache", 1);
                eVar.a(CampaignEx.JSON_KEY_READY_RATE, Integer.valueOf(b(campaignEx)));
                if (b(campaignEx) == 100) {
                    eVar.a("resumed_breakpoint", "2");
                } else {
                    eVar.a("resumed_breakpoint", "1");
                }
                eVar.a("resource_type", 4);
                eVar.a("scenes", "1");
                eVar.a("url", campaignEx.getVideoUrlEncode());
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("m_download_start", campaignEx, eVar);
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    e10.printStackTrace();
                }
            }
        }
    }

    public l(Context context, CampaignEx campaignEx, String str, int i10) {
        this.f31647m = 1;
        try {
            boolean b10 = j.a().b(i10);
            this.f31651q = b10;
            if (b10) {
                this.f31644j = str;
                this.f31647m = i10;
                this.f31650p = new k(campaignEx, str, i10);
                return;
            }
        } catch (Exception unused) {
            this.f31650p = null;
            this.f31651q = false;
        }
        this.f31642h = com.mbridge.msdk.foundation.controller.c.m().d();
        List<CampaignEx> list = this.f31635a;
        if (list != null && campaignEx != null) {
            list.add(campaignEx);
        }
        this.f31644j = str;
        this.f31647m = i10;
        a(this.f31635a);
    }

    private int b(CampaignEx campaignEx) {
        if (campaignEx != null) {
            if (campaignEx.getReady_rate() != -1) {
                return campaignEx.getReady_rate();
            }
            return c(campaignEx);
        }
        return -1;
    }

    /* JADX WARN: Removed duplicated region for block: B:137:0x021e A[Catch: all -> 0x0033, Exception -> 0x0036, TRY_ENTER, TryCatch #1 {Exception -> 0x0036, blocks: (B:11:0x0019, B:15:0x0025, B:32:0x0075, B:33:0x007a, B:35:0x0082, B:36:0x0092, B:38:0x0098, B:40:0x00a6, B:44:0x00b2, B:45:0x00bc, B:47:0x00c2, B:54:0x00e4, B:57:0x00ec, B:60:0x00f3, B:62:0x0103, B:63:0x010b, B:91:0x0166, B:93:0x0178, B:99:0x0189, B:101:0x018f, B:146:0x023d, B:103:0x019d, B:107:0x01a7, B:109:0x01ad, B:117:0x01b9, B:119:0x01c7, B:121:0x01d1, B:123:0x01df, B:129:0x0207, B:131:0x020d, B:133:0x0213, B:137:0x021e, B:145:0x0235, B:148:0x0242, B:151:0x024d, B:153:0x0251, B:155:0x025b, B:157:0x0261, B:161:0x0269, B:164:0x0273, B:166:0x027d, B:168:0x0283, B:67:0x0119, B:69:0x011f, B:71:0x0129, B:74:0x0136, B:76:0x013c, B:78:0x0142, B:79:0x0146, B:81:0x014c, B:85:0x0154, B:87:0x015e, B:23:0x0039, B:25:0x0045, B:31:0x005b, B:174:0x02a5, B:29:0x004f), top: B:185:0x0019, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:195:0x020d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0082 A[Catch: all -> 0x0033, Exception -> 0x0036, TryCatch #1 {Exception -> 0x0036, blocks: (B:11:0x0019, B:15:0x0025, B:32:0x0075, B:33:0x007a, B:35:0x0082, B:36:0x0092, B:38:0x0098, B:40:0x00a6, B:44:0x00b2, B:45:0x00bc, B:47:0x00c2, B:54:0x00e4, B:57:0x00ec, B:60:0x00f3, B:62:0x0103, B:63:0x010b, B:91:0x0166, B:93:0x0178, B:99:0x0189, B:101:0x018f, B:146:0x023d, B:103:0x019d, B:107:0x01a7, B:109:0x01ad, B:117:0x01b9, B:119:0x01c7, B:121:0x01d1, B:123:0x01df, B:129:0x0207, B:131:0x020d, B:133:0x0213, B:137:0x021e, B:145:0x0235, B:148:0x0242, B:151:0x024d, B:153:0x0251, B:155:0x025b, B:157:0x0261, B:161:0x0269, B:164:0x0273, B:166:0x027d, B:168:0x0283, B:67:0x0119, B:69:0x011f, B:71:0x0129, B:74:0x0136, B:76:0x013c, B:78:0x0142, B:79:0x0146, B:81:0x014c, B:85:0x0154, B:87:0x015e, B:23:0x0039, B:25:0x0045, B:31:0x005b, B:174:0x02a5, B:29:0x004f), top: B:185:0x0019, outer: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.mbridge.msdk.videocommon.download.a b(int r27, boolean r28) {
        /*
            Method dump skipped, instructions count: 697
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.videocommon.download.l.b(int, boolean):com.mbridge.msdk.videocommon.download.a");
    }

    private boolean d(CampaignEx campaignEx) {
        if (campaignEx != null) {
            try {
                return campaignEx.getPlayable_ads_without_video() == 2;
            } catch (Throwable th2) {
                if (MBridgeConstans.DEBUG) {
                    th2.printStackTrace();
                    return false;
                }
                return false;
            }
        }
        return false;
    }

    private void a() {
        CopyOnWriteArrayList<Map<String, com.mbridge.msdk.videocommon.download.a>> copyOnWriteArrayList = this.f31641g;
        if (copyOnWriteArrayList != null) {
            try {
                synchronized (copyOnWriteArrayList) {
                    int i10 = 0;
                    while (i10 < this.f31641g.size()) {
                        Map<String, com.mbridge.msdk.videocommon.download.a> map = this.f31641g.get(i10);
                        for (Map.Entry<String, com.mbridge.msdk.videocommon.download.a> entry : map.entrySet()) {
                            com.mbridge.msdk.videocommon.download.a value = entry.getValue();
                            if (value != null && value.c() != null && value.o()) {
                                value.t();
                                this.f31641g.remove(map);
                                i10--;
                            }
                        }
                        i10++;
                    }
                }
            } catch (Throwable unused) {
                p0.b("UnitCacheCtroller", "cleanDisplayTask ERROR");
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:194:0x02e7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.mbridge.msdk.videocommon.download.a> a(java.lang.String r26, int r27, boolean r28, java.util.List<com.mbridge.msdk.foundation.entity.CampaignEx> r29, boolean r30, com.mbridge.msdk.foundation.same.report.metrics.e r31) {
        /*
            Method dump skipped, instructions count: 764
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.videocommon.download.l.a(java.lang.String, int, boolean, java.util.List, boolean, com.mbridge.msdk.foundation.same.report.metrics.e):java.util.List");
    }

    private boolean b(String str, CampaignEx campaignEx) {
        if (campaignEx.isMraid() || TextUtils.isEmpty(str)) {
            return true;
        }
        if (campaignEx.getLoadTimeoutState() != 1 || d(campaignEx)) {
            if (campaignEx.getRsIgnoreCheckRule() == null || campaignEx.getRsIgnoreCheckRule().size() <= 0 || !campaignEx.getRsIgnoreCheckRule().contains(2)) {
                return z0.b(H5DownLoadManager.getInstance().getH5ResAddress(str)) || z0.b(HTMLResourceManager.getInstance().getHtmlContentFromUrl(str));
            }
            p0.c("UnitCacheCtroller", "Is not check endCard download status : " + str);
            return true;
        }
        return true;
    }

    public void b(String str) {
        CopyOnWriteArrayList<Map<String, com.mbridge.msdk.videocommon.download.a>> copyOnWriteArrayList;
        k kVar;
        if (this.f31651q && (kVar = this.f31650p) != null) {
            kVar.c(str);
            return;
        }
        try {
            synchronized (this.f31641g) {
                if (!TextUtils.isEmpty(str) && (copyOnWriteArrayList = this.f31641g) != null && copyOnWriteArrayList.size() > 0) {
                    Iterator<Map<String, com.mbridge.msdk.videocommon.download.a>> it = this.f31641g.iterator();
                    while (it.hasNext()) {
                        Map<String, com.mbridge.msdk.videocommon.download.a> next = it.next();
                        if (next != null) {
                            for (Map.Entry<String, com.mbridge.msdk.videocommon.download.a> entry : next.entrySet()) {
                                if (entry != null && TextUtils.equals(entry.getKey(), str)) {
                                    this.f31641g.remove(next);
                                }
                            }
                        }
                    }
                }
            }
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                p0.b("UnitCacheCtroller", e10.getMessage());
            }
        }
    }

    public boolean a(List<CampaignEx> list, String str) {
        if (list == null || list.size() == 0) {
            return false;
        }
        for (int i10 = 0; i10 < list.size(); i10++) {
            CampaignEx campaignEx = list.get(i10);
            if (campaignEx == null || !a(new com.mbridge.msdk.videocommon.download.a(com.mbridge.msdk.foundation.controller.c.m().d(), campaignEx, str, this.f31646l), b(campaignEx), false) || !a(campaignEx.getendcard_url(), campaignEx)) {
                return false;
            }
        }
        return true;
    }

    public static boolean a(com.mbridge.msdk.videocommon.download.a aVar, int i10) {
        long h10 = aVar.h();
        long e10 = aVar.e();
        if (TextUtils.isEmpty(aVar.d())) {
            p0.a("UnitCacheCtroller", "checkVideoDownload video done return true");
            return true;
        }
        if (i10 == 0) {
            if (aVar.c() != null && !TextUtils.isEmpty(aVar.c().getVideoUrlEncode())) {
                return true;
            }
        } else if (e10 > 0 && h10 * 100 >= e10 * i10) {
            if (i10 != 100 || aVar.j() == 5) {
                return true;
            }
            aVar.b();
            return false;
        }
        return false;
    }

    public static boolean a(com.mbridge.msdk.videocommon.download.a aVar, int i10, boolean z10) {
        long h10 = aVar.h();
        long e10 = aVar.e();
        if (TextUtils.isEmpty(aVar.d())) {
            p0.a("UnitCacheCtroller", "checkVideoDownload video done return true");
            return true;
        }
        CampaignEx c10 = aVar.c();
        if (c10 != null) {
            if (c10.getRsIgnoreCheckRule() != null && c10.getRsIgnoreCheckRule().size() > 0 && c10.getRsIgnoreCheckRule().contains(0)) {
                p0.c("UnitCacheCtroller", "Is not check video download status");
                return true;
            } else if (c10.getIsTimeoutCheckVideoStatus() == 1 && c10.getVideoCheckType() == 1) {
                return true;
            } else {
                if (z10 && c10.getVideoCheckType() == 1) {
                    if (i10 == 0) {
                        return true;
                    }
                    if ((e10 != 0 || h10 != 0) && h10 >= (i10 / 100) * e10) {
                        c10.setIsTimeoutCheckVideoStatus(1);
                        return true;
                    }
                }
            }
        }
        return a(aVar, i10);
    }

    private boolean a(String str, CampaignEx campaignEx) {
        try {
            if (campaignEx.getRsIgnoreCheckRule() == null || campaignEx.getRsIgnoreCheckRule().size() <= 0 || !campaignEx.getRsIgnoreCheckRule().contains(2)) {
                return (campaignEx.isDynamicView() && !u0.l(str)) || z0.a(str) || b(str, campaignEx);
            }
            p0.c("UnitCacheCtroller", "Is not check endCard download status : " + str);
            return true;
        } catch (Throwable th2) {
            p0.b("UnitCacheCtroller", th2.getMessage(), th2);
            return false;
        }
    }

    private boolean a(int i10, CampaignEx campaignEx, String str) {
        if (campaignEx.isDynamicView()) {
            return true;
        }
        if (campaignEx.getRsIgnoreCheckRule() != null && campaignEx.getRsIgnoreCheckRule().size() > 0 && campaignEx.getRsIgnoreCheckRule().contains(1)) {
            p0.c("UnitCacheCtroller", "Is not check template download status");
            return true;
        }
        if (!TextUtils.isEmpty(str) && campaignEx.getLoadTimeoutState() == 0) {
            p0.a("UnitCacheCtroller", "check template 下载情况：" + H5DownLoadManager.getInstance().getH5ResAddress(str));
            if (H5DownLoadManager.getInstance().getH5ResAddress(str) == null) {
                return false;
            }
        }
        return true;
    }

    public com.mbridge.msdk.videocommon.download.a a(int i10, boolean z10) {
        k kVar;
        if (this.f31651q && (kVar = this.f31650p) != null) {
            return kVar.d();
        }
        try {
            return b(i10, z10);
        } catch (Throwable th2) {
            p0.b("UnitCacheCtroller", th2.getMessage(), th2);
            return null;
        }
    }

    public com.mbridge.msdk.videocommon.download.a a(String str) {
        k kVar;
        if (this.f31651q && (kVar = this.f31650p) != null) {
            return kVar.a(str);
        }
        CopyOnWriteArrayList<Map<String, com.mbridge.msdk.videocommon.download.a>> copyOnWriteArrayList = this.f31641g;
        if (copyOnWriteArrayList != null) {
            synchronized (copyOnWriteArrayList) {
                try {
                    Iterator<Map<String, com.mbridge.msdk.videocommon.download.a>> it = this.f31641g.iterator();
                    while (it.hasNext()) {
                        Map<String, com.mbridge.msdk.videocommon.download.a> next = it.next();
                        if (next != null && next.containsKey(str)) {
                            return next.get(str);
                        }
                    }
                    return null;
                } finally {
                }
            }
        }
        return null;
    }

    private boolean a(CopyOnWriteArrayList<Map<String, com.mbridge.msdk.videocommon.download.a>> copyOnWriteArrayList) {
        try {
            Iterator<Map<String, com.mbridge.msdk.videocommon.download.a>> it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                Map<String, com.mbridge.msdk.videocommon.download.a> next = it.next();
                if (next != null) {
                    for (Map.Entry<String, com.mbridge.msdk.videocommon.download.a> entry : next.entrySet()) {
                        if (entry.getValue().j() == 1) {
                            return true;
                        }
                    }
                    continue;
                }
            }
            return false;
        } catch (Throwable th2) {
            if (MBridgeConstans.DEBUG) {
                th2.printStackTrace();
                return false;
            }
            return false;
        }
    }

    private int a(CampaignEx campaignEx) {
        try {
            com.mbridge.msdk.setting.l lVar = this.f31648n;
            if (lVar != null) {
                return lVar.C();
            }
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                p0.b("UnitCacheCtroller", e10.getMessage());
            }
        }
        return 100;
    }
}
