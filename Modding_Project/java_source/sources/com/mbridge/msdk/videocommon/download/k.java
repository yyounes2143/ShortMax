package com.mbridge.msdk.videocommon.download;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.utils.Utils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.u0;
import com.mbridge.msdk.foundation.tools.z0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
/* compiled from: UnitCacheControllerRefactor.java */
/* loaded from: classes6.dex */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    private com.mbridge.msdk.videocommon.listener.a f31624a;

    /* renamed from: b  reason: collision with root package name */
    private ConcurrentHashMap<String, com.mbridge.msdk.videocommon.listener.a> f31625b;

    /* renamed from: c  reason: collision with root package name */
    private final Context f31626c;

    /* renamed from: d  reason: collision with root package name */
    private final String f31627d;

    /* renamed from: e  reason: collision with root package name */
    private com.mbridge.msdk.videocommon.setting.c f31628e;

    /* renamed from: f  reason: collision with root package name */
    private final int f31629f;

    /* renamed from: g  reason: collision with root package name */
    private final CopyOnWriteArrayList<CampaignEx> f31630g;

    /* renamed from: h  reason: collision with root package name */
    private final ConcurrentHashMap<String, com.mbridge.msdk.videocommon.download.a> f31631h;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: UnitCacheControllerRefactor.java */
    /* loaded from: classes6.dex */
    public static final class a implements com.mbridge.msdk.videocommon.listener.a {

        /* renamed from: a  reason: collision with root package name */
        private final String f31632a;

        /* renamed from: b  reason: collision with root package name */
        private final ConcurrentHashMap<String, com.mbridge.msdk.videocommon.listener.a> f31633b;

        /* renamed from: c  reason: collision with root package name */
        private final com.mbridge.msdk.videocommon.listener.a f31634c;

        public a(String str, ConcurrentHashMap<String, com.mbridge.msdk.videocommon.listener.a> concurrentHashMap, com.mbridge.msdk.videocommon.listener.a aVar) {
            this.f31632a = str;
            this.f31633b = concurrentHashMap;
            this.f31634c = aVar;
        }

        private void b(String str) {
            com.mbridge.msdk.videocommon.listener.a aVar = this.f31634c;
            if (aVar != null) {
                try {
                    aVar.a(str);
                } catch (Exception e10) {
                    if (MBridgeConstans.DEBUG) {
                        p0.b("RewardVideoRefactorManager", this.f31632a + " videoDownloadListener onDownLoadDone error: " + e10.getMessage());
                    }
                }
            }
            ConcurrentHashMap<String, com.mbridge.msdk.videocommon.listener.a> concurrentHashMap = this.f31633b;
            if (concurrentHashMap != null) {
                for (com.mbridge.msdk.videocommon.listener.a aVar2 : concurrentHashMap.values()) {
                    try {
                        aVar2.a(str);
                    } catch (Exception e11) {
                        if (MBridgeConstans.DEBUG) {
                            p0.b("RewardVideoRefactorManager", this.f31632a + " videoDownloadListener onDownLoadDone error: " + e11.getMessage());
                        }
                    }
                }
            }
        }

        @Override // com.mbridge.msdk.videocommon.listener.a
        public void a(String str) {
            b(str);
        }

        @Override // com.mbridge.msdk.videocommon.listener.a
        public void a(String str, String str2) {
            b(str, str2);
        }

        private void b(String str, String str2) {
            com.mbridge.msdk.videocommon.listener.a aVar = this.f31634c;
            if (aVar != null) {
                try {
                    aVar.a(str, str2);
                } catch (Exception e10) {
                    if (MBridgeConstans.DEBUG) {
                        p0.b("RewardVideoRefactorManager", this.f31632a + " videoDownloadListener onDownLoadFailed error: " + e10.getMessage());
                    }
                }
            }
            ConcurrentHashMap<String, com.mbridge.msdk.videocommon.listener.a> concurrentHashMap = this.f31633b;
            if (concurrentHashMap != null) {
                for (com.mbridge.msdk.videocommon.listener.a aVar2 : concurrentHashMap.values()) {
                    try {
                        aVar2.a(str, str2);
                    } catch (Exception e11) {
                        if (MBridgeConstans.DEBUG) {
                            p0.b("RewardVideoRefactorManager", this.f31632a + " videoDownloadListener onDownLoadFailed error: " + e11.getMessage());
                        }
                    }
                }
            }
        }
    }

    public k(List<CampaignEx> list, String str, int i10) {
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList = new CopyOnWriteArrayList<>();
        this.f31630g = copyOnWriteArrayList;
        this.f31631h = new ConcurrentHashMap<>();
        this.f31626c = com.mbridge.msdk.foundation.controller.c.m().d();
        this.f31627d = str;
        this.f31629f = i10;
        if (list != null) {
            copyOnWriteArrayList.addAll(list);
        }
    }

    private String b(CampaignEx campaignEx) {
        if (campaignEx == null) {
            return "";
        }
        return campaignEx.getendcard_url();
    }

    private int c() {
        com.mbridge.msdk.videocommon.setting.c b10 = b(h());
        if (b10 != null) {
            try {
                return b10.g();
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    p0.a("RewardVideoRefactorManager", h() + " getCDRate error " + e10.getMessage());
                    return 0;
                }
                return 0;
            }
        }
        return 0;
    }

    private int d(CampaignEx campaignEx) {
        if (campaignEx == null) {
            return 1;
        }
        try {
            return campaignEx.getVideoCtnType();
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                p0.a("RewardVideoRefactorManager", h() + " getVideoCtnType error " + e10.getMessage());
                return 1;
            }
            return 1;
        }
    }

    private String e(CampaignEx campaignEx) {
        if (campaignEx == null) {
            return "";
        }
        try {
            CampaignEx.c rewardTemplateMode = campaignEx.getRewardTemplateMode();
            if (rewardTemplateMode != null) {
                return rewardTemplateMode.e();
            }
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                p0.b("RewardVideoRefactorManager", h() + " getVideoTemplateUrl error", e10);
            }
        }
        return "";
    }

    private void f(CampaignEx campaignEx) {
        if (campaignEx == null) {
            return;
        }
        try {
            String str = campaignEx.getRequestId() + campaignEx.getId() + campaignEx.getVideoUrlEncode();
            if (this.f31631h.containsKey(str)) {
                return;
            }
            a(campaignEx, str, (com.mbridge.msdk.videocommon.download.a) null);
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                p0.b("RewardVideoRefactorManager", h() + " handlerCampaignLoadEvent error", e10);
            }
        }
    }

    private boolean g(CampaignEx campaignEx) {
        if (campaignEx != null) {
            try {
                return campaignEx.getPlayable_ads_without_video() == 2;
            } catch (Throwable th2) {
                if (MBridgeConstans.DEBUG) {
                    p0.a("RewardVideoRefactorManager", h() + " isPlayerAbleAds error:" + th2.getMessage());
                    return false;
                }
                return false;
            }
        }
        return false;
    }

    public void a() {
    }

    public void h(CampaignEx campaignEx) {
        if (campaignEx != null) {
            try {
                this.f31630g.add(campaignEx);
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    p0.b("RewardVideoRefactorManager", h() + " update error", e10);
                }
            }
        }
    }

    public com.mbridge.msdk.videocommon.download.a i() {
        List<com.mbridge.msdk.videocommon.download.a> list;
        if (this.f31630g.size() == 0) {
            p0.a("RewardVideoRefactorManager", h() + " isReady campaignExes is null");
            return null;
        }
        try {
            list = a((List<CampaignEx>) this.f31630g, false);
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                p0.b("RewardVideoRefactorManager", h() + " isReady error", e10);
            }
            list = null;
        }
        if (list == null || list.size() <= 0) {
            return null;
        }
        return list.get(0);
    }

    public void j() {
        a(this.f31630g);
    }

    public void a(com.mbridge.msdk.videocommon.listener.a aVar) {
        this.f31624a = aVar;
    }

    private com.mbridge.msdk.videocommon.setting.c b(String str) {
        try {
            if (this.f31628e == null) {
                this.f31628e = com.mbridge.msdk.videocommon.setting.b.b().a(com.mbridge.msdk.foundation.controller.c.m().b(), str, b() == 287);
            }
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                p0.a("RewardVideoRefactorManager", h() + " getRewardUnitSetting error " + e10.getMessage());
            }
        }
        return this.f31628e;
    }

    public void a(String str, com.mbridge.msdk.videocommon.listener.a aVar) {
        if (this.f31625b == null) {
            this.f31625b = new ConcurrentHashMap<>();
        }
        if (aVar == null || TextUtils.isEmpty(str)) {
            return;
        }
        this.f31625b.put(str, aVar);
    }

    private int g() {
        try {
            return b(this.f31627d).w();
        } catch (Throwable th2) {
            if (MBridgeConstans.DEBUG) {
                p0.a("RewardVideoRefactorManager", h() + " getRewardReadyRate error:" + th2.getMessage());
                return 100;
            }
            return 100;
        }
    }

    public com.mbridge.msdk.videocommon.download.a d() {
        try {
            return i();
        } catch (Throwable th2) {
            if (MBridgeConstans.DEBUG) {
                p0.b("RewardVideoRefactorManager", h() + " getCampaignDownLoadTask error:" + th2.getMessage());
                return null;
            }
            return null;
        }
    }

    public String h() {
        return this.f31627d;
    }

    public void c(String str) {
        com.mbridge.msdk.videocommon.download.a remove;
        CampaignEx c10;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            if (!this.f31631h.containsKey(str) || (remove = this.f31631h.remove(str)) == null || (c10 = remove.c()) == null) {
                return;
            }
            this.f31630g.remove(c10);
            if (MBridgeConstans.DEBUG) {
                p0.a("RewardVideoRefactorManager", h() + " removeCampaignDownloadTask campaign name: " + c10.getAppName());
            }
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                p0.b("RewardVideoRefactorManager", h() + " removeCampaignDownloadTask error:" + e10.getMessage());
            }
        }
    }

    public CopyOnWriteArrayList<Map<String, com.mbridge.msdk.videocommon.download.a>> e() {
        try {
            CopyOnWriteArrayList<Map<String, com.mbridge.msdk.videocommon.download.a>> copyOnWriteArrayList = new CopyOnWriteArrayList<>();
            copyOnWriteArrayList.add(this.f31631h);
            return copyOnWriteArrayList;
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                p0.b("RewardVideoRefactorManager", h() + " getCampaignDownLoadTaskList error:" + e10.getMessage());
                return null;
            }
            return null;
        }
    }

    private int f() {
        if (TextUtils.isEmpty(h())) {
            return 1;
        }
        try {
            com.mbridge.msdk.videocommon.setting.c b10 = b(h());
            if (b10 != null) {
                return b10.l();
            }
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                p0.a("RewardVideoRefactorManager", h() + " getDlnet error " + e10.getMessage());
            }
        }
        return 1;
    }

    public void a(List<CampaignEx> list) {
        if (list != null) {
            try {
                this.f31630g.addAll(list);
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    p0.b("RewardVideoRefactorManager", h() + " update error", e10);
                }
            }
        }
    }

    public k(CampaignEx campaignEx, String str, int i10) {
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList = new CopyOnWriteArrayList<>();
        this.f31630g = copyOnWriteArrayList;
        this.f31631h = new ConcurrentHashMap<>();
        this.f31626c = com.mbridge.msdk.foundation.controller.c.m().d();
        this.f31627d = str;
        this.f31629f = i10;
        if (campaignEx != null) {
            copyOnWriteArrayList.add(campaignEx);
        }
    }

    public int b() {
        return this.f31629f;
    }

    private boolean b(CampaignEx campaignEx, String str, com.mbridge.msdk.videocommon.download.a aVar) {
        if (TextUtils.isEmpty(str)) {
            return true;
        }
        if ((aVar == null || !aVar.s()) && !campaignEx.isDynamicView()) {
            return ((campaignEx.getRsIgnoreCheckRule() == null || campaignEx.getRsIgnoreCheckRule().size() <= 0 || !campaignEx.getRsIgnoreCheckRule().contains(1)) && campaignEx.getLoadTimeoutState() == 0 && g.a(str) == null) ? false : true;
        }
        return true;
    }

    private void a(CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList) {
        if (copyOnWriteArrayList != null && copyOnWriteArrayList.size() != 0) {
            Iterator<CampaignEx> it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                CampaignEx next = it.next();
                if (next != null) {
                    f(next);
                }
            }
            return;
        }
        p0.a("RewardVideoRefactorManager", h() + " load campaignExes is null");
    }

    private int c(CampaignEx campaignEx) {
        if (campaignEx == null) {
            return -1;
        }
        if (campaignEx.getReady_rate() != -1) {
            return campaignEx.getReady_rate();
        }
        return g();
    }

    public List<com.mbridge.msdk.videocommon.download.a> a(List<CampaignEx> list, boolean z10) {
        ArrayList arrayList = new ArrayList();
        if (list != null && list.size() != 0) {
            int size = list.size();
            for (CampaignEx campaignEx : list) {
                if (campaignEx != null) {
                    a(z10, arrayList, size, campaignEx);
                }
            }
            return arrayList;
        }
        p0.a("RewardVideoRefactorManager", h() + " isReady campaignExes is null");
        return arrayList;
    }

    public void k() {
    }

    private void a(boolean z10, List<com.mbridge.msdk.videocommon.download.a> list, int i10, CampaignEx campaignEx) {
        try {
            String str = campaignEx.getRequestId() + campaignEx.getId() + campaignEx.getVideoUrlEncode();
            a(z10, list, campaignEx, a(campaignEx, str, this.f31631h.get(str)), i10);
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                p0.b("RewardVideoRefactorManager", h() + " isReady error", e10);
            }
        }
    }

    private com.mbridge.msdk.videocommon.download.a a(CampaignEx campaignEx, String str, com.mbridge.msdk.videocommon.download.a aVar) {
        if (aVar == null) {
            com.mbridge.msdk.videocommon.download.a a10 = a(campaignEx);
            a10.x();
            this.f31631h.put(str, a10);
            return a10;
        }
        return aVar;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(20:5|(2:6|7)|(2:9|(17:11|12|13|(2:15|(13:17|(2:20|21)|46|(2:48|(8:50|(2:53|54)|27|(1:45)(1:32)|33|(1:35)|36|(4:38|(1:40)|41|42)(1:44)))|58|(2:53|54)|27|(0)|45|33|(0)|36|(0)(0)))|60|(2:20|21)|46|(0)|58|(0)|27|(0)|45|33|(0)|36|(0)(0)))|65|12|13|(0)|60|(0)|46|(0)|58|(0)|27|(0)|45|33|(0)|36|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0037, code lost:
        r3 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0050, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0051, code lost:
        r2 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0080, code lost:
        com.mbridge.msdk.foundation.tools.p0.b("RewardVideoRefactorManager", h() + " checkResourceReadyState error", r0);
     */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0043 A[Catch: Exception -> 0x0050, TRY_LEAVE, TryCatch #0 {Exception -> 0x0050, blocks: (B:18:0x003a, B:20:0x0043), top: B:65:0x003a }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0056 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0065 A[Catch: Exception -> 0x005c, TRY_LEAVE, TryCatch #1 {Exception -> 0x005c, blocks: (B:29:0x0058, B:32:0x005f, B:34:0x0065), top: B:67:0x0058 }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0075 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x009e A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:75:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(boolean r15, java.util.List<com.mbridge.msdk.videocommon.download.a> r16, com.mbridge.msdk.foundation.entity.CampaignEx r17, com.mbridge.msdk.videocommon.download.a r18, int r19) {
        /*
            Method dump skipped, instructions count: 529
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.videocommon.download.k.a(boolean, java.util.List, com.mbridge.msdk.foundation.entity.CampaignEx, com.mbridge.msdk.videocommon.download.a, int):void");
    }

    private String a(int i10) {
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 4) {
                        if (i10 != 5) {
                            return "Unknown";
                        }
                        return "DOWNLOAD_DONE";
                    }
                    return "DOWNLOAD_STOP";
                }
                return "DOWNLOAD_PAUSE";
            }
            return "DOWNLOAD_RUN";
        }
        return "DOWNLOAD_READY";
    }

    private com.mbridge.msdk.videocommon.download.a a(CampaignEx campaignEx) {
        com.mbridge.msdk.videocommon.download.a aVar;
        com.mbridge.msdk.videocommon.download.a aVar2 = null;
        try {
            aVar = new com.mbridge.msdk.videocommon.download.a(this.f31626c, campaignEx, h(), f());
        } catch (Exception e10) {
            e = e10;
        }
        try {
            aVar.e(campaignEx);
            aVar.a(b());
            aVar.d(c(campaignEx));
            aVar.b(c());
            aVar.e(d(campaignEx));
            aVar.a((c) null);
            aVar.a(new a(h(), this.f31625b, this.f31624a));
            return aVar;
        } catch (Exception e11) {
            e = e11;
            aVar2 = aVar;
            if (MBridgeConstans.DEBUG) {
                p0.a("RewardVideoRefactorManager", h() + " createAndStartCampaignDownloadTask error " + e.getMessage());
            }
            return aVar2;
        }
    }

    private boolean a(com.mbridge.msdk.videocommon.download.a aVar, int i10) {
        if (aVar == null || TextUtils.isEmpty(aVar.d())) {
            return true;
        }
        return i10 == 0 ? (aVar.c() == null || TextUtils.isEmpty(aVar.c().getVideoUrlEncode())) ? false : true : Utils.getDownloadRate(aVar.e(), aVar.h()) >= i10;
    }

    private boolean a(CampaignEx campaignEx, com.mbridge.msdk.videocommon.download.a aVar, int i10, boolean z10, int i11) {
        if (aVar == null || campaignEx == null) {
            return false;
        }
        if (aVar.r() || g(campaignEx) || TextUtils.isEmpty(aVar.d()) || i11 == 3) {
            return true;
        }
        if (campaignEx.getRsIgnoreCheckRule() == null || campaignEx.getRsIgnoreCheckRule().size() <= 0 || !campaignEx.getRsIgnoreCheckRule().contains(0)) {
            if (campaignEx.getIsTimeoutCheckVideoStatus() == 1 && campaignEx.getVideoCheckType() == 1) {
                return true;
            }
            long h10 = aVar.h();
            long e10 = aVar.e();
            if (z10 && campaignEx.getVideoCheckType() == 1) {
                if (i10 == 0) {
                    return true;
                }
                if ((e10 != 0 || h10 != 0) && h10 >= (i10 / 100) * e10) {
                    campaignEx.setIsTimeoutCheckVideoStatus(1);
                    return true;
                }
            }
            return a(aVar, i10);
        }
        return true;
    }

    private boolean a(String str, CampaignEx campaignEx, com.mbridge.msdk.videocommon.download.a aVar) {
        if (campaignEx != null && aVar != null) {
            try {
                if (aVar.p()) {
                    p0.a("RewardVideoRefactorManager", h() + " checkEndCardZipOrSourceDownLoad endCard download success");
                    return true;
                } else if (campaignEx.getRsIgnoreCheckRule() != null && campaignEx.getRsIgnoreCheckRule().size() > 0 && campaignEx.getRsIgnoreCheckRule().contains(2)) {
                    return true;
                } else {
                    if ((campaignEx.isDynamicView() && !u0.l(str)) || z0.a(str) || a(str, campaignEx)) {
                        return true;
                    }
                }
            } catch (Throwable th2) {
                if (MBridgeConstans.DEBUG) {
                    p0.a("RewardVideoRefactorManager", h() + " checkEndCardDownload error " + th2.getMessage());
                }
            }
        }
        return false;
    }

    private boolean a(String str, CampaignEx campaignEx) {
        if (campaignEx == null) {
            return false;
        }
        if (campaignEx.isMraid() || TextUtils.isEmpty(str)) {
            return true;
        }
        if (campaignEx.getLoadTimeoutState() != 1 || g(campaignEx)) {
            if ((campaignEx.getRsIgnoreCheckRule() == null || campaignEx.getRsIgnoreCheckRule().size() <= 0 || !campaignEx.getRsIgnoreCheckRule().contains(2)) && !z0.b(g.a(str))) {
                return z0.b(g.b(str));
            }
            return true;
        }
        return true;
    }

    public com.mbridge.msdk.videocommon.download.a a(String str) {
        if (!TextUtils.isEmpty(str) && this.f31631h.containsKey(str)) {
            return this.f31631h.get(str);
        }
        return null;
    }
}
