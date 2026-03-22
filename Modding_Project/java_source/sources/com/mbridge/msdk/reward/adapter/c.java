package com.mbridge.msdk.reward.adapter;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.cache.a;
import com.mbridge.msdk.foundation.db.j;
import com.mbridge.msdk.foundation.download.download.H5DownLoadManager;
import com.mbridge.msdk.foundation.download.download.ResDownloadCheckManager;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.foundation.same.c;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.u0;
import com.mbridge.msdk.foundation.tools.z0;
import com.mbridge.msdk.mbbid.common.BidResponsedEx;
import com.mbridge.msdk.reward.adapter.b;
import com.mbridge.msdk.reward.controller.a;
import com.mbridge.msdk.reward.player.MBRewardVideoActivity;
import com.mbridge.msdk.videocommon.a;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONObject;
/* compiled from: RewardMVVideoAdapter.java */
/* loaded from: classes6.dex */
public class c {
    private String C;
    private h D;
    public String K;
    private List<CampaignEx> V;
    private CopyOnWriteArrayList<CampaignEx> W;
    private List<CampaignEx> X;

    /* renamed from: a  reason: collision with root package name */
    private Context f28664a;

    /* renamed from: b  reason: collision with root package name */
    private String f28665b;

    /* renamed from: c  reason: collision with root package name */
    private String f28666c;

    /* renamed from: d  reason: collision with root package name */
    private int f28667d;

    /* renamed from: e  reason: collision with root package name */
    private int f28668e;

    /* renamed from: f  reason: collision with root package name */
    private int f28669f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f28670g;

    /* renamed from: h  reason: collision with root package name */
    private String f28671h;

    /* renamed from: i  reason: collision with root package name */
    private com.mbridge.msdk.video.bt.module.orglistener.h f28672i;

    /* renamed from: j  reason: collision with root package name */
    private volatile com.mbridge.msdk.reward.adapter.a f28673j;

    /* renamed from: k  reason: collision with root package name */
    private volatile a.j f28674k;

    /* renamed from: l  reason: collision with root package name */
    private com.mbridge.msdk.videocommon.setting.c f28675l;

    /* renamed from: r  reason: collision with root package name */
    private boolean f28681r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f28682s;

    /* renamed from: u  reason: collision with root package name */
    private String f28684u;

    /* renamed from: v  reason: collision with root package name */
    private int f28685v;

    /* renamed from: w  reason: collision with root package name */
    private int f28686w;

    /* renamed from: x  reason: collision with root package name */
    private int f28687x;

    /* renamed from: y  reason: collision with root package name */
    private CampaignUnit f28688y;

    /* renamed from: z  reason: collision with root package name */
    private CopyOnWriteArrayList<CampaignEx> f28689z;

    /* renamed from: m  reason: collision with root package name */
    private boolean f28676m = false;

    /* renamed from: n  reason: collision with root package name */
    private boolean f28677n = false;

    /* renamed from: o  reason: collision with root package name */
    public Object f28678o = new Object();

    /* renamed from: p  reason: collision with root package name */
    private CopyOnWriteArrayList<CampaignEx> f28679p = new CopyOnWriteArrayList<>();

    /* renamed from: q  reason: collision with root package name */
    private int f28680q = 2;

    /* renamed from: t  reason: collision with root package name */
    private String f28683t = "";
    private boolean A = false;
    private long B = 0;
    private boolean E = false;
    private boolean F = false;
    public String G = "";
    public String H = "";
    public String I = "";
    public int J = 0;
    private Handler L = new a(Looper.getMainLooper());
    private boolean M = false;
    private long N = 0;
    volatile boolean O = false;
    volatile boolean P = false;
    volatile boolean Q = false;
    volatile boolean R = false;
    volatile boolean S = false;
    public volatile boolean T = false;
    private String U = "";

    /* compiled from: RewardMVVideoAdapter.java */
    /* loaded from: classes6.dex */
    class a extends Handler {
        a(Looper looper) {
            super(looper);
        }

        /* JADX WARN: Removed duplicated region for block: B:154:0x03af A[Catch: all -> 0x005b, Exception -> 0x0300, TryCatch #0 {Exception -> 0x0300, blocks: (B:118:0x02e3, B:120:0x02ee, B:122:0x02f6, B:125:0x0304, B:127:0x0312, B:152:0x03a9, B:154:0x03af, B:156:0x03be, B:157:0x03c2, B:158:0x03c6, B:129:0x031f, B:131:0x0329, B:133:0x0331, B:134:0x033a, B:136:0x0348, B:137:0x0353, B:139:0x035b, B:140:0x0364, B:142:0x036c, B:150:0x0380, B:151:0x0394), top: B:189:0x02e3 }] */
        /* JADX WARN: Removed duplicated region for block: B:162:0x03df A[Catch: all -> 0x005b, Exception -> 0x005f, TryCatch #1 {Exception -> 0x005f, blocks: (B:3:0x000e, B:11:0x0023, B:13:0x0046, B:15:0x0051, B:20:0x0063, B:22:0x006b, B:24:0x0071, B:25:0x0086, B:27:0x008e, B:29:0x0096, B:31:0x00a2, B:33:0x00cc, B:35:0x00f3, B:37:0x0107, B:39:0x0124, B:40:0x0136, B:42:0x013e, B:44:0x014a, B:47:0x015a, B:49:0x0162, B:51:0x016e, B:52:0x017a, B:54:0x0180, B:57:0x0188, B:59:0x0192, B:61:0x01a1, B:62:0x01a4, B:64:0x01bb, B:66:0x01c7, B:67:0x01d2, B:69:0x01d8, B:111:0x02b6, B:113:0x02ba, B:114:0x02c3, B:116:0x02cb, B:160:0x03d7, B:162:0x03df, B:163:0x03e8, B:165:0x041b, B:166:0x0427, B:167:0x0438, B:169:0x0440, B:170:0x044b, B:172:0x0454, B:173:0x0465, B:174:0x046c, B:175:0x0476, B:177:0x047e, B:178:0x048e, B:180:0x0496, B:182:0x049c, B:184:0x04a8), top: B:191:0x000e }] */
        /* JADX WARN: Removed duplicated region for block: B:165:0x041b A[Catch: all -> 0x005b, Exception -> 0x005f, TryCatch #1 {Exception -> 0x005f, blocks: (B:3:0x000e, B:11:0x0023, B:13:0x0046, B:15:0x0051, B:20:0x0063, B:22:0x006b, B:24:0x0071, B:25:0x0086, B:27:0x008e, B:29:0x0096, B:31:0x00a2, B:33:0x00cc, B:35:0x00f3, B:37:0x0107, B:39:0x0124, B:40:0x0136, B:42:0x013e, B:44:0x014a, B:47:0x015a, B:49:0x0162, B:51:0x016e, B:52:0x017a, B:54:0x0180, B:57:0x0188, B:59:0x0192, B:61:0x01a1, B:62:0x01a4, B:64:0x01bb, B:66:0x01c7, B:67:0x01d2, B:69:0x01d8, B:111:0x02b6, B:113:0x02ba, B:114:0x02c3, B:116:0x02cb, B:160:0x03d7, B:162:0x03df, B:163:0x03e8, B:165:0x041b, B:166:0x0427, B:167:0x0438, B:169:0x0440, B:170:0x044b, B:172:0x0454, B:173:0x0465, B:174:0x046c, B:175:0x0476, B:177:0x047e, B:178:0x048e, B:180:0x0496, B:182:0x049c, B:184:0x04a8), top: B:191:0x000e }] */
        /* JADX WARN: Removed duplicated region for block: B:90:0x0234  */
        /* JADX WARN: Removed duplicated region for block: B:91:0x0236  */
        @Override // android.os.Handler
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void handleMessage(android.os.Message r19) {
            /*
                Method dump skipped, instructions count: 1242
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.reward.adapter.c.a.handleMessage(android.os.Message):void");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RewardMVVideoAdapter.java */
    /* loaded from: classes6.dex */
    public class b extends com.mbridge.msdk.reward.request.a {

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ com.mbridge.msdk.foundation.same.report.metrics.c f28691e;

        b(com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            this.f28691e = cVar;
        }

        @Override // com.mbridge.msdk.reward.request.a
        public void a(CampaignUnit campaignUnit) {
            CampaignEx campaignEx;
            try {
                c.this.c(campaignUnit);
                c.this.a(campaignUnit);
                if (campaignUnit != null) {
                    c.this.G = campaignUnit.getRequestId();
                }
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    e10.printStackTrace();
                }
                if (c.this.f28689z != null && c.this.f28689z.size() > 0 && (campaignEx = (CampaignEx) c.this.f28689z.get(0)) != null && TextUtils.isEmpty(campaignEx.getNLRid())) {
                    c.this.f28689z.clear();
                }
                if (c.this.V != null) {
                    c.this.V.clear();
                }
                c.this.O = false;
                c.this.P = false;
                synchronized (c.this.f28678o) {
                    try {
                        if (c.this.Q) {
                            c.this.Q = false;
                        }
                        c.this.S = false;
                        c.this.R = false;
                        c.this.b("exception after load success", this.f28691e);
                        c.this.n();
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        }

        @Override // com.mbridge.msdk.reward.request.a
        public void b(int i10, String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            CampaignEx campaignEx;
            if (i10 == -1) {
                c.this.B = System.currentTimeMillis();
            }
            if (c.this.f28689z != null && c.this.f28689z.size() > 0 && (campaignEx = (CampaignEx) c.this.f28689z.get(0)) != null && TextUtils.isEmpty(campaignEx.getNLRid())) {
                c.this.f28689z.clear();
            }
            if (c.this.V != null) {
                c.this.V.clear();
            }
            c.this.O = false;
            c.this.P = false;
            synchronized (c.this.f28678o) {
                try {
                    if (c.this.Q) {
                        c.this.Q = false;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            c.this.a(cVar, i10);
            c.this.S = false;
            c.this.R = false;
            if (!c.this.M) {
                c.this.a(i10, str, cVar);
            }
            c.this.n();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RewardMVVideoAdapter.java */
    /* loaded from: classes6.dex */
    public class d implements b.n {

        /* renamed from: a  reason: collision with root package name */
        com.mbridge.msdk.foundation.same.report.metrics.c f28714a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ CampaignEx f28715b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ boolean f28716c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ CopyOnWriteArrayList f28717d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ int f28718e;

        /* compiled from: RewardMVVideoAdapter.java */
        /* loaded from: classes6.dex */
        class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ String f28720a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ com.mbridge.msdk.foundation.error.b f28721b;

            a(String str, com.mbridge.msdk.foundation.error.b bVar) {
                this.f28720a = str;
                this.f28721b = bVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                c cVar = c.this;
                cVar.a(cVar.f28665b, c.this.V, c.this.f28682s, this.f28720a);
                if (c.this.L != null) {
                    c.this.L.removeMessages(5);
                }
                if (!c.this.S && c.this.f28673j != null) {
                    c.this.S = false;
                    com.mbridge.msdk.foundation.error.b bVar = this.f28721b;
                    if (bVar != null) {
                        bVar.c("errorCode: 3202 errorMessage: temp resource download failed");
                    }
                    d dVar = d.this;
                    if (dVar.f28714a == null) {
                        dVar.f28714a = new com.mbridge.msdk.foundation.same.report.metrics.c();
                    }
                    d dVar2 = d.this;
                    dVar2.f28714a.b(dVar2.f28717d);
                    d.this.f28714a.a(this.f28721b);
                    c.this.f28673j.a(c.this.V, this.f28721b, d.this.f28714a);
                    p0.a("RewardMVVideoAdapter", "播放模板下载失败，非大模板 onVideoLoadFail");
                }
            }
        }

        /* compiled from: RewardMVVideoAdapter.java */
        /* loaded from: classes6.dex */
        class b implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ String f28723a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ com.mbridge.msdk.foundation.error.b f28724b;

            b(String str, com.mbridge.msdk.foundation.error.b bVar) {
                this.f28723a = str;
                this.f28724b = bVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                c cVar = c.this;
                cVar.a(cVar.f28665b, c.this.V, c.this.f28682s, this.f28723a);
                if (c.this.L != null) {
                    c.this.L.removeMessages(5);
                }
                if (!c.this.S && c.this.f28673j != null) {
                    c.this.S = false;
                    com.mbridge.msdk.foundation.error.b bVar = this.f28724b;
                    if (bVar != null) {
                        bVar.c("errorCode: 3203 errorMessage: tpl temp resource download failed");
                    }
                    d dVar = d.this;
                    if (dVar.f28714a == null) {
                        dVar.f28714a = new com.mbridge.msdk.foundation.same.report.metrics.c();
                    }
                    d dVar2 = d.this;
                    dVar2.f28714a.b(dVar2.f28717d);
                    d.this.f28714a.a(this.f28724b);
                    c.this.f28673j.a(c.this.V, this.f28724b, d.this.f28714a);
                    p0.a("RewardMVVideoAdapter", "播放模板下载失败，大模板，nscpt 1 onVideoLoadFail");
                }
            }
        }

        d(CampaignEx campaignEx, boolean z10, CopyOnWriteArrayList copyOnWriteArrayList, int i10) {
            this.f28715b = campaignEx;
            this.f28716c = z10;
            this.f28717d = copyOnWriteArrayList;
            this.f28718e = i10;
            this.f28714a = com.mbridge.msdk.foundation.same.report.metrics.d.b().c().get(campaignEx.getLocalRequestId());
        }

        @Override // com.mbridge.msdk.reward.adapter.b.n
        public void a(String str, String str2, String str3, String str4) {
        }

        @Override // com.mbridge.msdk.reward.adapter.b.n
        public void a(String str, String str2, com.mbridge.msdk.foundation.error.b bVar) {
            p0.a("RewardMVVideoAdapter", "template 下载失败： ");
            if (bVar != null) {
                bVar.c("errorCode: 3202 errorMessage: temp resource download failed");
            }
            if (!this.f28716c && c.this.f28673j != null && c.this.L != null) {
                p0.a("RewardMVVideoAdapter", "播放模板下载失败，非大模板");
                if (this.f28715b.getRsIgnoreCheckRule() == null || this.f28715b.getRsIgnoreCheckRule().size() <= 0 || !this.f28715b.getRsIgnoreCheckRule().contains(1)) {
                    c.this.L.post(new a(str2, bVar));
                } else {
                    p0.c("RewardMVVideoAdapter", "template download fail but hit ignoreCheckRule");
                }
            } else if (this.f28718e == 1) {
                if (this.f28715b.getRsIgnoreCheckRule() != null && this.f28715b.getRsIgnoreCheckRule().size() > 0) {
                    if (this.f28715b.getRsIgnoreCheckRule().contains(3)) {
                        p0.c("RewardMVVideoAdapter", "tpl download fail but hit ignoreCheckRule");
                        return;
                    } else if (this.f28715b.getCMPTEntryUrl().equals(this.f28715b.getendcard_url()) && this.f28715b.getRsIgnoreCheckRule().contains(2)) {
                        p0.c("RewardMVVideoAdapter", "endcard download fail but hit ignoreCheckRule at 3203");
                        return;
                    }
                }
                if (c.this.f28673j == null || c.this.L == null) {
                    return;
                }
                c.this.L.post(new b(str2, bVar));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RewardMVVideoAdapter.java */
    /* loaded from: classes6.dex */
    public class f extends c.a {
        f() {
        }

        @Override // com.mbridge.msdk.foundation.same.c.a
        public void a(String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            com.mbridge.msdk.reward.report.metrics.a.a().a(str, cVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RewardMVVideoAdapter.java */
    /* loaded from: classes6.dex */
    public class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CampaignUnit f28738a;

        g(CampaignUnit campaignUnit) {
            this.f28738a = campaignUnit;
        }

        @Override // java.lang.Runnable
        public void run() {
            j.a(com.mbridge.msdk.foundation.db.g.a(c.this.f28664a)).a();
            CampaignUnit campaignUnit = this.f28738a;
            if (campaignUnit != null && campaignUnit.getAds() != null && this.f28738a.getAds().size() > 0) {
                c.this.d(this.f28738a.getAds());
            }
        }
    }

    /* compiled from: RewardMVVideoAdapter.java */
    /* loaded from: classes6.dex */
    public class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private String f28740a;

        /* renamed from: b  reason: collision with root package name */
        private com.mbridge.msdk.foundation.same.report.metrics.c f28741b;

        public h(String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            this.f28740a = str;
            this.f28741b = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (c.this.E) {
                    return;
                }
                c.this.F = true;
                if (c.this.L != null) {
                    Message obtainMessage = c.this.L.obtainMessage();
                    obtainMessage.obj = this.f28740a;
                    obtainMessage.what = 2;
                    if (this.f28741b != null) {
                        Bundle bundle = new Bundle();
                        bundle.putString("metrics_data_lrid", this.f28741b.o());
                        obtainMessage.setData(bundle);
                    }
                    c.this.L.sendMessage(obtainMessage);
                }
            } catch (Exception e10) {
                p0.b("RewardMVVideoAdapter", e10.getMessage());
            }
        }
    }

    /* compiled from: RewardMVVideoAdapter.java */
    /* loaded from: classes6.dex */
    public class i implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private String f28743a;

        /* renamed from: b  reason: collision with root package name */
        private com.mbridge.msdk.foundation.same.report.metrics.c f28744b;

        public i(String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            this.f28743a = str;
            this.f28744b = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (com.mbridge.msdk.util.b.a()) {
                    c cVar = c.this;
                    cVar.f28684u = com.mbridge.msdk.b.a(cVar.f28665b, c.this.f28664a);
                }
                c cVar2 = c.this;
                cVar2.f28671h = u0.a(cVar2.f28664a, c.this.f28665b);
                if (c.this.F) {
                    return;
                }
                if (c.this.D != null && c.this.L != null) {
                    c.this.L.removeCallbacks(c.this.D);
                }
                c.this.E = true;
                if (c.this.L != null) {
                    Message obtainMessage = c.this.L.obtainMessage();
                    obtainMessage.obj = this.f28743a;
                    obtainMessage.what = 1;
                    if (this.f28744b != null) {
                        Bundle bundle = new Bundle();
                        bundle.putString("metrics_data_lrid", this.f28744b.o());
                        obtainMessage.setData(bundle);
                    }
                    c.this.L.sendMessage(obtainMessage);
                }
                if (!TextUtils.isEmpty(c.this.f28671h)) {
                    p0.b("RewardMVVideoAdapter", "excludeId : " + c.this.f28671h);
                }
            } catch (Exception e10) {
                p0.b("RewardMVVideoAdapter", e10.getMessage());
            }
        }
    }

    public c(Context context, String str, String str2) {
        try {
            this.f28664a = context.getApplicationContext();
            this.f28665b = str2;
            this.f28666c = str;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private String i() {
        try {
            if (z0.b(com.mbridge.msdk.reward.controller.a.f28761c0)) {
                return com.mbridge.msdk.reward.controller.a.f28761c0;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return "";
    }

    private String k() {
        int B;
        com.mbridge.msdk.setting.g b10 = com.mbridge.msdk.setting.h.b().b(com.mbridge.msdk.foundation.controller.c.m().b());
        if (TextUtils.isEmpty(this.C)) {
            B = b10.p0();
        } else {
            B = b10.B();
        }
        return com.mbridge.msdk.foundation.same.net.utils.d.h().a(this.C, B);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        try {
            if (z0.b(this.f28665b)) {
                com.mbridge.msdk.reward.controller.a.a(this.f28665b, 0);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void c(String str) {
        this.f28683t = str;
    }

    public void d(boolean z10) {
        this.f28681r = z10;
    }

    public void e(boolean z10) {
        this.f28682s = z10;
    }

    public void f(boolean z10) {
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList;
        if (z10 || (copyOnWriteArrayList = this.f28689z) == null || copyOnWriteArrayList.size() <= 0) {
            return;
        }
        com.mbridge.msdk.videocommon.cache.a.a().a(this.f28665b, this.f28689z);
    }

    public boolean g(boolean z10) {
        if (z10) {
            List<CampaignEx> list = this.X;
            if (list == null || list.size() <= 0) {
                return false;
            }
            for (CampaignEx campaignEx : this.X) {
                if (campaignEx != null) {
                    campaignEx.setLoadTimeoutState(1);
                    if (campaignEx.getRewardTemplateMode() != null && !TextUtils.isEmpty(campaignEx.getRewardTemplateMode().e())) {
                        ResDownloadCheckManager resDownloadCheckManager = ResDownloadCheckManager.getInstance();
                        resDownloadCheckManager.setTemplatePreLoadDone(this.f28665b + "_" + campaignEx.getRequestId() + "_" + campaignEx.getRewardTemplateMode().e(), true);
                    }
                }
            }
            com.mbridge.msdk.videocommon.cache.a.a().a(this.f28665b, this.X, "load_timeout", 1);
            return true;
        }
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList = this.f28689z;
        if (copyOnWriteArrayList == null || copyOnWriteArrayList.size() <= 0) {
            return false;
        }
        Iterator<CampaignEx> it = this.f28689z.iterator();
        while (it.hasNext()) {
            CampaignEx next = it.next();
            if (next != null) {
                next.setLoadTimeoutState(1);
                if (next.getRewardTemplateMode() != null && !TextUtils.isEmpty(next.getRewardTemplateMode().e())) {
                    ResDownloadCheckManager resDownloadCheckManager2 = ResDownloadCheckManager.getInstance();
                    resDownloadCheckManager2.setTemplatePreLoadDone(this.f28665b + "_" + next.getRequestId() + "_" + next.getRewardTemplateMode().e(), true);
                }
            }
        }
        com.mbridge.msdk.videocommon.cache.a.a().a(this.f28665b, this.f28689z, "load_timeout", 1);
        return true;
    }

    public void h(boolean z10) {
        if (z10) {
            List<CampaignEx> list = this.X;
            if (list == null || list.size() <= 0) {
                return;
            }
            for (CampaignEx campaignEx : this.X) {
                if (campaignEx != null) {
                    campaignEx.setLoadTimeoutState(0);
                    if (campaignEx.getRewardTemplateMode() != null && !TextUtils.isEmpty(campaignEx.getRewardTemplateMode().e())) {
                        ResDownloadCheckManager resDownloadCheckManager = ResDownloadCheckManager.getInstance();
                        resDownloadCheckManager.setTemplatePreLoadDone(this.f28665b + "_" + campaignEx.getRequestId() + "_" + campaignEx.getRewardTemplateMode().e(), false);
                    }
                }
            }
            com.mbridge.msdk.videocommon.cache.a.a().a(this.f28665b, this.X, "load_timeout", 0);
            return;
        }
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList = this.f28689z;
        if (copyOnWriteArrayList == null || copyOnWriteArrayList.size() <= 0) {
            return;
        }
        Iterator<CampaignEx> it = this.f28689z.iterator();
        while (it.hasNext()) {
            CampaignEx next = it.next();
            if (next != null) {
                next.setLoadTimeoutState(0);
                if (next.getRewardTemplateMode() != null && !TextUtils.isEmpty(next.getRewardTemplateMode().e())) {
                    ResDownloadCheckManager resDownloadCheckManager2 = ResDownloadCheckManager.getInstance();
                    resDownloadCheckManager2.setTemplatePreLoadDone(this.f28665b + "_" + next.getRequestId() + "_" + next.getRewardTemplateMode().e(), false);
                }
            }
        }
        com.mbridge.msdk.videocommon.cache.a.a().a(this.f28665b, this.f28689z, "load_timeout", 0);
    }

    public String j() {
        return this.f28665b;
    }

    public boolean l() {
        return b(false);
    }

    public boolean m() {
        List<CampaignEx> c10 = com.mbridge.msdk.videocommon.cache.a.a().c(this.f28665b, 1, this.f28682s, this.f28683t);
        if (c10 != null && c10.size() > 0) {
            CampaignEx campaignEx = c10.get(0);
            int a10 = com.mbridge.msdk.videocommon.cache.a.a().a(this.f28665b, 1, this.f28682s, this.f28683t);
            if (TextUtils.isEmpty(campaignEx.getCMPTEntryUrl()) || campaignEx.getNscpt() != 1 || c10.size() >= a10) {
                return a(c10, !TextUtils.isEmpty(campaignEx.getCMPTEntryUrl()), campaignEx.getNscpt());
            }
            return false;
        }
        p0.a("test_isReay_db", "database has not can use data");
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(List<CampaignEx> list) {
        if (this.f28664a == null || list == null || list.size() == 0) {
            return;
        }
        j a10 = j.a(com.mbridge.msdk.foundation.db.g.a(this.f28664a));
        for (int i10 = 0; i10 < list.size(); i10++) {
            CampaignEx campaignEx = list.get(i10);
            if (campaignEx != null) {
                if (com.mbridge.msdk.util.b.a()) {
                    if (u0.c(this.f28664a, campaignEx.getPackageName())) {
                        com.mbridge.msdk.b.a(campaignEx);
                    } else {
                        a(a10, campaignEx);
                    }
                } else {
                    a(a10, campaignEx);
                }
            }
        }
    }

    private String e() {
        return com.mbridge.msdk.b.a();
    }

    public void c(boolean z10) {
        this.M = z10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(CampaignUnit campaignUnit) {
        if (campaignUnit == null || campaignUnit.getAds() == null || campaignUnit.getAds().size() <= 0) {
            return;
        }
        try {
            com.mbridge.msdk.foundation.same.report.metrics.c metricsData = campaignUnit.getMetricsData();
            if (metricsData != null) {
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a("result", 1);
                eVar.a("timeout", Integer.valueOf(this.f28669f));
                eVar.a("hst", k());
                metricsData.b(campaignUnit.getAds());
                metricsData.a("2000126", eVar);
                campaignUnit.setLocalRequestId(metricsData.o());
                com.mbridge.msdk.reward.report.metrics.a.a().a("2000126", metricsData);
            }
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                p0.b("RewardMVVideoAdapter", e10.getMessage());
            }
        }
    }

    public CopyOnWriteArrayList<CampaignEx> f() {
        return this.W;
    }

    public void b(String str) {
        this.I = str;
    }

    public boolean b(boolean z10) {
        com.mbridge.msdk.foundation.same.report.metrics.c cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
        CopyOnWriteArrayList<CampaignEx> b10 = com.mbridge.msdk.videocommon.cache.a.a().b(this.f28665b, 1, this.f28682s, this.f28683t);
        if (b10 != null && b10.size() > 0) {
            CampaignEx campaignEx = b10.get(0);
            cVar.i(campaignEx.getCurrentLocalRid());
            int a10 = com.mbridge.msdk.videocommon.cache.a.a().a(this.f28665b, 1, this.f28682s, this.f28683t);
            if (TextUtils.isEmpty(campaignEx.getCMPTEntryUrl()) || campaignEx.getNscpt() != 1 || b10.size() >= a10) {
                boolean a11 = a(b10, !TextUtils.isEmpty(campaignEx.getCMPTEntryUrl()), campaignEx.getNscpt(), z10);
                if (z10) {
                    a(a11, cVar, b10);
                }
                return a11;
            }
            if (z10) {
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a("event_name", "is_ready_cltr");
                eVar.a("reason", "nscpt error");
                eVar.a("type", 8);
                a(cVar, eVar, b10);
            }
            return false;
        }
        p0.a("RewardVideoController", "database has not can use data");
        if (z10) {
            com.mbridge.msdk.foundation.same.report.metrics.e eVar2 = new com.mbridge.msdk.foundation.same.report.metrics.e();
            eVar2.a("event_name", "is_ready_cse");
            eVar2.a("reason", "no effective campaign list");
            eVar2.a("type", 8);
            a(cVar, eVar2, b10);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RewardMVVideoAdapter.java */
    /* loaded from: classes6.dex */
    public class e implements b.n {

        /* renamed from: a  reason: collision with root package name */
        com.mbridge.msdk.foundation.same.report.metrics.c f28726a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ CampaignEx f28727b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ CopyOnWriteArrayList f28728c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ boolean f28729d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ int f28730e;

        e(CampaignEx campaignEx, CopyOnWriteArrayList copyOnWriteArrayList, boolean z10, int i10) {
            this.f28727b = campaignEx;
            this.f28728c = copyOnWriteArrayList;
            this.f28729d = z10;
            this.f28730e = i10;
            this.f28726a = com.mbridge.msdk.foundation.same.report.metrics.d.b().c().get(campaignEx.getLocalRequestId());
        }

        @Override // com.mbridge.msdk.reward.adapter.b.n
        public void a(String str, String str2, String str3, String str4) {
            p0.a("RewardMVVideoAdapter", "大模板业务，大模板下载成功");
            c.this.P = true;
            if (!c.this.O || c.this.Q || c.this.L == null) {
                return;
            }
            synchronized (c.this.f28678o) {
                try {
                    if (c.this.Q) {
                        return;
                    }
                    c.this.Q = true;
                    c.this.L.post(new a(str3, str, str2));
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override // com.mbridge.msdk.reward.adapter.b.n
        public void a(String str, String str2, com.mbridge.msdk.foundation.error.b bVar) {
            p0.a("RewardMVVideoAdapter", "大模板业务，大模板下载失败");
            if (this.f28727b.getRsIgnoreCheckRule() != null && this.f28727b.getRsIgnoreCheckRule().size() > 0) {
                if (this.f28727b.getRsIgnoreCheckRule().contains(3)) {
                    p0.c("RewardMVVideoAdapter", "tpl download fail but hit ignoreCheckRule");
                    return;
                } else if (this.f28727b.getCMPTEntryUrl().equals(this.f28727b.getendcard_url()) && this.f28727b.getRsIgnoreCheckRule().contains(2)) {
                    p0.c("RewardMVVideoAdapter", "endcard download fail but hit ignoreCheckRule at 3203");
                    return;
                }
            }
            c cVar = c.this;
            cVar.a(cVar.f28665b, c.this.V, c.this.f28682s, str2);
            c.this.P = false;
            if (c.this.L != null) {
                c.this.L.removeMessages(5);
            }
            if (c.this.f28673j == null || c.this.S) {
                return;
            }
            c.this.S = false;
            if (bVar != null) {
                bVar.c("errorCode: 3203 errorMessage: tpl temp resource download failed");
            }
            if (this.f28726a == null) {
                this.f28726a = new com.mbridge.msdk.foundation.same.report.metrics.c();
            }
            this.f28726a.b(this.f28728c);
            this.f28726a.a(bVar);
            c.this.f28673j.a(c.this.V, bVar, this.f28726a);
            p0.a("RewardMVVideoAdapter", "大模板业务，大模板下载失败 onVideoLoadFail");
        }

        /* compiled from: RewardMVVideoAdapter.java */
        /* loaded from: classes6.dex */
        class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ String f28732a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ String f28733b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ String f28734c;

            a(String str, String str2, String str3) {
                this.f28732a = str;
                this.f28733b = str2;
                this.f28734c = str3;
            }

            @Override // java.lang.Runnable
            public void run() {
                com.mbridge.msdk.reward.adapter.b b10 = com.mbridge.msdk.reward.adapter.b.b();
                boolean z10 = c.this.A;
                Handler handler = c.this.L;
                boolean z11 = c.this.f28681r;
                boolean z12 = c.this.f28682s;
                String str = this.f28732a;
                String requestIdNotice = e.this.f28727b.getRequestIdNotice();
                String str2 = this.f28733b;
                String str3 = this.f28734c;
                String cMPTEntryUrl = e.this.f28727b.getCMPTEntryUrl();
                int i10 = c.this.f28680q;
                e eVar = e.this;
                b10.a(z10, handler, z11, z12, str, requestIdNotice, str2, str3, cMPTEntryUrl, i10, eVar.f28727b, eVar.f28728c, H5DownLoadManager.getInstance().getH5ResAddress(e.this.f28727b.getCMPTEntryUrl()), this.f28734c, c.this.f28675l, new C0409a(), false);
            }

            /* compiled from: RewardMVVideoAdapter.java */
            /* renamed from: com.mbridge.msdk.reward.adapter.c$e$a$a  reason: collision with other inner class name */
            /* loaded from: classes6.dex */
            class C0409a implements b.o {
                C0409a() {
                }

                @Override // com.mbridge.msdk.reward.adapter.b.o
                public void a(String str, String str2, String str3, String str4, String str5, a.C0455a c0455a) {
                    p0.a("HBOPTIMIZE", "模板加载成功 requestId " + str4);
                    e eVar = e.this;
                    if (c.this.a(eVar.f28728c, eVar.f28729d, eVar.f28730e)) {
                        c cVar = c.this;
                        cVar.a(cVar.f28665b, c.this.V, c.this.X, c.this.f28682s);
                        if (c.this.L != null) {
                            c.this.L.removeMessages(5);
                        }
                        if (c.this.f28673j == null || c.this.R) {
                            return;
                        }
                        c.this.R = true;
                        e eVar2 = e.this;
                        com.mbridge.msdk.foundation.same.report.metrics.c cVar2 = eVar2.f28726a;
                        if (cVar2 != null) {
                            cVar2.b(eVar2.f28728c);
                        }
                        com.mbridge.msdk.reward.adapter.a aVar = c.this.f28673j;
                        e eVar3 = e.this;
                        aVar.a(eVar3.f28728c, eVar3.f28726a);
                        return;
                    }
                    c cVar3 = c.this;
                    cVar3.a(str3, cVar3.V, c.this.f28682s, a.this.f28732a);
                    if (c.this.L != null) {
                        c.this.L.removeMessages(5);
                    }
                    if (c.this.f28673j == null || c.this.S) {
                        return;
                    }
                    c.this.S = false;
                    com.mbridge.msdk.foundation.error.b a10 = com.mbridge.msdk.foundation.error.a.a(880008, "errorCode: 3505 errorMessage: tpl temp preload success but isReady false");
                    e eVar4 = e.this;
                    if (eVar4.f28726a == null) {
                        eVar4.f28726a = new com.mbridge.msdk.foundation.same.report.metrics.c();
                    }
                    e eVar5 = e.this;
                    eVar5.f28726a.b(eVar5.f28728c);
                    e.this.f28726a.a(a10);
                    c.this.f28673j.a(c.this.V, a10, e.this.f28726a);
                    p0.a("RewardMVVideoAdapter", "大模板业务，大模板预加载成功 isReady false  onVideoLoadFail");
                }

                @Override // com.mbridge.msdk.reward.adapter.b.o
                public void a(String str, String str2, String str3, a.C0455a c0455a, com.mbridge.msdk.foundation.error.b bVar) {
                    p0.a("RewardMVVideoAdapter", "大模板业务，大模板预加载失败");
                    p0.b("HBOPTIMIZE", "模板加载失败 requestId " + str2);
                    a aVar = a.this;
                    c cVar = c.this;
                    cVar.a(aVar.f28734c, cVar.V, c.this.f28682s, str2);
                    if (c.this.L != null) {
                        c.this.L.removeMessages(5);
                    }
                    if (c.this.f28673j == null || c.this.S) {
                        return;
                    }
                    c.this.S = false;
                    e eVar = e.this;
                    if (eVar.f28726a == null) {
                        eVar.f28726a = new com.mbridge.msdk.foundation.same.report.metrics.c();
                    }
                    e eVar2 = e.this;
                    eVar2.f28726a.b(eVar2.f28728c);
                    e.this.f28726a.a(bVar);
                    c.this.f28673j.a(c.this.V, bVar, e.this.f28726a);
                    p0.a("RewardMVVideoAdapter", "大模板业务，大模板预加载失败 onVideoLoadFail");
                }
            }
        }
    }

    private void d() {
        try {
            Map<String, Long> map = com.mbridge.msdk.foundation.same.buffer.b.f27061l;
            if (map == null || map.size() <= 0) {
                return;
            }
            com.mbridge.msdk.foundation.same.buffer.b.f27061l.clear();
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
            }
        }
    }

    public String a(boolean z10) {
        CopyOnWriteArrayList<CampaignEx> b10;
        CampaignEx campaignEx;
        if (z10) {
            if (TextUtils.isEmpty(this.H) && (b10 = com.mbridge.msdk.videocommon.download.b.getInstance().b(this.f28665b)) != null && b10.size() > 0 && (campaignEx = b10.get(0)) != null) {
                this.H = campaignEx.getRequestId();
            }
            return this.H;
        }
        return this.G;
    }

    public String g() {
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList = this.f28689z;
        if (copyOnWriteArrayList != null && !copyOnWriteArrayList.isEmpty()) {
            return com.mbridge.msdk.foundation.same.c.b(this.f28689z);
        }
        return com.mbridge.msdk.foundation.same.c.b(this.X);
    }

    public CopyOnWriteArrayList<CampaignEx> h() {
        return this.f28689z;
    }

    private void c() {
        try {
            com.mbridge.msdk.foundation.db.i.a(com.mbridge.msdk.foundation.db.g.a(this.f28664a)).a(this.f28665b);
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
            }
        }
    }

    public void a(int i10) {
        this.f28680q = i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RewardMVVideoAdapter.java */
    /* renamed from: com.mbridge.msdk.reward.adapter.c$c  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public class C0406c implements b.h {

        /* renamed from: a  reason: collision with root package name */
        com.mbridge.msdk.foundation.same.report.metrics.c f28693a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ CampaignEx f28694b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ boolean f28695c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ CopyOnWriteArrayList f28696d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ int f28697e;

        /* compiled from: RewardMVVideoAdapter.java */
        /* renamed from: com.mbridge.msdk.reward.adapter.c$c$c  reason: collision with other inner class name */
        /* loaded from: classes6.dex */
        class RunnableC0408c implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ CopyOnWriteArrayList f28711a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ com.mbridge.msdk.foundation.error.b f28712b;

            RunnableC0408c(CopyOnWriteArrayList copyOnWriteArrayList, com.mbridge.msdk.foundation.error.b bVar) {
                this.f28711a = copyOnWriteArrayList;
                this.f28712b = bVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                c cVar = c.this;
                cVar.a(cVar.f28665b, this.f28711a, c.this.f28682s, "");
                if (c.this.L != null) {
                    c.this.L.removeMessages(5);
                }
                if (!c.this.S && c.this.f28673j != null) {
                    c.this.S = false;
                    C0406c c0406c = C0406c.this;
                    if (c0406c.f28693a == null) {
                        c0406c.f28693a = new com.mbridge.msdk.foundation.same.report.metrics.c();
                    }
                    C0406c c0406c2 = C0406c.this;
                    c0406c2.f28693a.b(c0406c2.f28696d);
                    com.mbridge.msdk.foundation.error.b bVar = this.f28712b;
                    if (bVar != null) {
                        bVar.c("errorCode: 3201 errorMessage: campaign resource download failed");
                    }
                    C0406c.this.f28693a.a(this.f28712b);
                    c.this.f28673j.a(this.f28711a, this.f28712b, C0406c.this.f28693a);
                    p0.a("RewardMVVideoAdapter", "Campaign 下载失败：onVideoLoadFail");
                }
            }
        }

        C0406c(CampaignEx campaignEx, boolean z10, CopyOnWriteArrayList copyOnWriteArrayList, int i10) {
            this.f28694b = campaignEx;
            this.f28695c = z10;
            this.f28696d = copyOnWriteArrayList;
            this.f28697e = i10;
            this.f28693a = com.mbridge.msdk.foundation.same.report.metrics.d.b().c().get(campaignEx.getLocalRequestId());
        }

        @Override // com.mbridge.msdk.reward.adapter.b.h
        public void a(String str, String str2, String str3, CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList) {
            c.this.O = true;
            if (!this.f28695c) {
                Iterator<CampaignEx> it = copyOnWriteArrayList.iterator();
                while (it.hasNext()) {
                    CampaignEx next = it.next();
                    if (next != null && next.getRewardTemplateMode() != null && !TextUtils.isEmpty(next.getRewardTemplateMode().e()) && !next.getRewardTemplateMode().e().contains(CampaignEx.KEY_IS_CMPT_ENTRY) && c.this.L != null) {
                        c.this.L.post(new a(next, str, str2, str3, copyOnWriteArrayList));
                    } else if (c.this.a(this.f28696d, this.f28695c, this.f28697e)) {
                        c cVar = c.this;
                        cVar.a(cVar.f28665b, copyOnWriteArrayList, c.this.X, c.this.f28682s);
                        if (c.this.L != null) {
                            c.this.L.removeMessages(5);
                        }
                        if (c.this.f28673j != null && !c.this.R) {
                            c.this.R = true;
                            com.mbridge.msdk.foundation.same.report.metrics.c cVar2 = this.f28693a;
                            if (cVar2 != null) {
                                cVar2.b(this.f28696d);
                            }
                            c.this.f28673j.a(this.f28696d, this.f28693a);
                        }
                    } else {
                        c cVar3 = c.this;
                        cVar3.a(str2, cVar3.V, c.this.f28682s, str3);
                        if (c.this.L != null) {
                            c.this.L.removeMessages(5);
                        }
                        if (c.this.f28673j != null && !c.this.S) {
                            c.this.S = false;
                            com.mbridge.msdk.foundation.error.b a10 = com.mbridge.msdk.foundation.error.a.a(880015, "errorCode: 3503 errorMessage: have no temp but isReady false");
                            if (this.f28693a == null) {
                                this.f28693a = new com.mbridge.msdk.foundation.same.report.metrics.c();
                            }
                            this.f28693a.b(this.f28696d);
                            this.f28693a.a(a10);
                            c.this.f28673j.a(this.f28696d, a10, this.f28693a);
                            p0.a("RewardMVVideoAdapter", "Campaign 下载成功： 非大模板，不存在播放模板,isReay false onVideoLoadFail");
                        }
                    }
                }
            } else if (!c.this.P || c.this.Q || c.this.L == null) {
            } else {
                synchronized (c.this.f28678o) {
                    try {
                        if (c.this.Q) {
                            return;
                        }
                        c.this.Q = true;
                        c.this.L.post(new b(str3, str2, copyOnWriteArrayList));
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        }

        /* compiled from: RewardMVVideoAdapter.java */
        /* renamed from: com.mbridge.msdk.reward.adapter.c$c$a */
        /* loaded from: classes6.dex */
        class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ CampaignEx f28699a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ String f28700b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ String f28701c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ String f28702d;

            /* renamed from: e  reason: collision with root package name */
            final /* synthetic */ CopyOnWriteArrayList f28703e;

            a(CampaignEx campaignEx, String str, String str2, String str3, CopyOnWriteArrayList copyOnWriteArrayList) {
                this.f28699a = campaignEx;
                this.f28700b = str;
                this.f28701c = str2;
                this.f28702d = str3;
                this.f28703e = copyOnWriteArrayList;
            }

            @Override // java.lang.Runnable
            public void run() {
                com.mbridge.msdk.reward.adapter.b b10 = com.mbridge.msdk.reward.adapter.b.b();
                boolean z10 = c.this.A;
                Handler handler = c.this.L;
                boolean z11 = c.this.f28681r;
                boolean z12 = c.this.f28682s;
                String e10 = this.f28699a.getRewardTemplateMode().e();
                int i10 = c.this.f28680q;
                C0406c c0406c = C0406c.this;
                b10.a(z10, handler, z11, z12, null, e10, i10, c0406c.f28694b, c0406c.f28696d, H5DownLoadManager.getInstance().getH5ResAddress(this.f28699a.getRewardTemplateMode().e()), this.f28700b, this.f28701c, this.f28702d, this.f28699a.getRequestIdNotice(), c.this.f28675l, new C0407a());
            }

            /* compiled from: RewardMVVideoAdapter.java */
            /* renamed from: com.mbridge.msdk.reward.adapter.c$c$a$a  reason: collision with other inner class name */
            /* loaded from: classes6.dex */
            class C0407a implements b.o {
                C0407a() {
                }

                @Override // com.mbridge.msdk.reward.adapter.b.o
                public void a(String str, String str2, String str3, String str4, String str5, a.C0455a c0455a) {
                    C0406c c0406c = C0406c.this;
                    if (c.this.a(c0406c.f28696d, c0406c.f28695c, c0406c.f28697e)) {
                        c cVar = c.this;
                        String str6 = cVar.f28665b;
                        a aVar = a.this;
                        cVar.a(str6, aVar.f28703e, c.this.X, c.this.f28682s);
                        if (c.this.L != null) {
                            c.this.L.removeMessages(5);
                        }
                        if (c.this.f28673j == null || c.this.R) {
                            return;
                        }
                        c.this.R = true;
                        C0406c c0406c2 = C0406c.this;
                        com.mbridge.msdk.foundation.same.report.metrics.c cVar2 = c0406c2.f28693a;
                        if (cVar2 != null) {
                            cVar2.b(c0406c2.f28696d);
                        }
                        com.mbridge.msdk.reward.adapter.a aVar2 = c.this.f28673j;
                        C0406c c0406c3 = C0406c.this;
                        aVar2.a(c0406c3.f28696d, c0406c3.f28693a);
                        return;
                    }
                    c cVar3 = c.this;
                    cVar3.a(str3, cVar3.V, c.this.f28682s, str4);
                    if (c.this.L != null) {
                        c.this.L.removeMessages(5);
                    }
                    if (c.this.f28673j == null || c.this.S) {
                        return;
                    }
                    c.this.S = false;
                    com.mbridge.msdk.foundation.error.b a10 = com.mbridge.msdk.foundation.error.a.a(880015, "errorCode: 3502 errorMessage: temp preload success but isReady false");
                    C0406c c0406c4 = C0406c.this;
                    if (c0406c4.f28693a == null) {
                        c0406c4.f28693a = new com.mbridge.msdk.foundation.same.report.metrics.c();
                    }
                    C0406c c0406c5 = C0406c.this;
                    c0406c5.f28693a.b(c0406c5.f28696d);
                    C0406c.this.f28693a.a(a10);
                    com.mbridge.msdk.reward.adapter.a aVar3 = c.this.f28673j;
                    C0406c c0406c6 = C0406c.this;
                    aVar3.a(c0406c6.f28696d, a10, c0406c6.f28693a);
                    p0.a("RewardMVVideoAdapter", "Campaign 下载成功： 非大模板，播放模板预加载成功,isReay false onVideoLoadFail");
                }

                @Override // com.mbridge.msdk.reward.adapter.b.o
                public void a(String str, String str2, String str3, a.C0455a c0455a, com.mbridge.msdk.foundation.error.b bVar) {
                    if (bVar != null) {
                        bVar.a("his_reason", "preload template failed is tpl :" + C0406c.this.f28695c);
                    }
                    if (C0406c.this.f28694b.getRsIgnoreCheckRule() != null && C0406c.this.f28694b.getRsIgnoreCheckRule().size() > 0 && C0406c.this.f28694b.getRsIgnoreCheckRule().contains(1)) {
                        p0.c("RewardMVVideoAdapter", "template download fail but hit ignoreCheckRule");
                        return;
                    }
                    a aVar = a.this;
                    c cVar = c.this;
                    cVar.a(aVar.f28701c, cVar.V, c.this.f28682s, str2);
                    if (c.this.L != null) {
                        c.this.L.removeMessages(5);
                    }
                    if (c.this.f28673j == null || c.this.S) {
                        return;
                    }
                    c.this.S = false;
                    C0406c c0406c = C0406c.this;
                    if (c0406c.f28693a == null) {
                        c0406c.f28693a = new com.mbridge.msdk.foundation.same.report.metrics.c();
                    }
                    C0406c c0406c2 = C0406c.this;
                    c0406c2.f28693a.b(c0406c2.f28696d);
                    C0406c.this.f28693a.a(bVar);
                    c.this.f28673j.a(c.this.V, bVar, C0406c.this.f28693a);
                    p0.a("RewardMVVideoAdapter", "Campaign 下载失败： 非大模板，播放模板预加载失败 onVideoLoadFail");
                }
            }
        }

        /* compiled from: RewardMVVideoAdapter.java */
        /* renamed from: com.mbridge.msdk.reward.adapter.c$c$b */
        /* loaded from: classes6.dex */
        class b implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ String f28706a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ String f28707b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ CopyOnWriteArrayList f28708c;

            b(String str, String str2, CopyOnWriteArrayList copyOnWriteArrayList) {
                this.f28706a = str;
                this.f28707b = str2;
                this.f28708c = copyOnWriteArrayList;
            }

            @Override // java.lang.Runnable
            public void run() {
                com.mbridge.msdk.reward.adapter.b b10 = com.mbridge.msdk.reward.adapter.b.b();
                boolean z10 = c.this.A;
                Handler handler = c.this.L;
                boolean z11 = c.this.f28681r;
                boolean z12 = c.this.f28682s;
                String str = this.f28706a;
                String requestIdNotice = C0406c.this.f28694b.getRequestIdNotice();
                String str2 = c.this.f28666c;
                String str3 = this.f28707b;
                String cMPTEntryUrl = C0406c.this.f28694b.getCMPTEntryUrl();
                int i10 = c.this.f28680q;
                C0406c c0406c = C0406c.this;
                b10.a(z10, handler, z11, z12, str, requestIdNotice, str2, str3, cMPTEntryUrl, i10, c0406c.f28694b, c0406c.f28696d, H5DownLoadManager.getInstance().getH5ResAddress(C0406c.this.f28694b.getCMPTEntryUrl()), this.f28707b, c.this.f28675l, new a(), false);
            }

            /* compiled from: RewardMVVideoAdapter.java */
            /* renamed from: com.mbridge.msdk.reward.adapter.c$c$b$a */
            /* loaded from: classes6.dex */
            class a implements b.o {
                a() {
                }

                @Override // com.mbridge.msdk.reward.adapter.b.o
                public void a(String str, String str2, String str3, String str4, String str5, a.C0455a c0455a) {
                    C0406c c0406c = C0406c.this;
                    if (c.this.a(c0406c.f28696d, c0406c.f28695c, c0406c.f28697e)) {
                        c cVar = c.this;
                        String str6 = cVar.f28665b;
                        b bVar = b.this;
                        cVar.a(str6, bVar.f28708c, c.this.X, c.this.f28682s);
                        if (c.this.L != null) {
                            c.this.L.removeMessages(5);
                        }
                        if (c.this.f28673j == null || c.this.R) {
                            return;
                        }
                        c.this.R = true;
                        C0406c c0406c2 = C0406c.this;
                        com.mbridge.msdk.foundation.same.report.metrics.c cVar2 = c0406c2.f28693a;
                        if (cVar2 != null) {
                            cVar2.b(c0406c2.f28696d);
                        }
                        com.mbridge.msdk.reward.adapter.a aVar = c.this.f28673j;
                        C0406c c0406c3 = C0406c.this;
                        aVar.a(c0406c3.f28696d, c0406c3.f28693a);
                        return;
                    }
                    c cVar3 = c.this;
                    cVar3.a(str3, cVar3.V, c.this.f28682s, str4);
                    if (c.this.L != null) {
                        c.this.L.removeMessages(5);
                    }
                    if (c.this.f28673j == null || c.this.S) {
                        return;
                    }
                    c.this.S = false;
                    com.mbridge.msdk.foundation.error.b a10 = com.mbridge.msdk.foundation.error.a.a(880015, "errorCode: 3505 errorMessage: tpl temp preload success but isReady false");
                    C0406c c0406c4 = C0406c.this;
                    if (c0406c4.f28693a == null) {
                        c0406c4.f28693a = new com.mbridge.msdk.foundation.same.report.metrics.c();
                    }
                    C0406c c0406c5 = C0406c.this;
                    c0406c5.f28693a.b(c0406c5.f28696d);
                    C0406c.this.f28693a.a(a10);
                    c.this.f28673j.a(c.this.V, a10, C0406c.this.f28693a);
                    p0.a("RewardMVVideoAdapter", "Campaign 下载成功： 大模板预加载成功,isReady false onVideoLoadFail");
                }

                @Override // com.mbridge.msdk.reward.adapter.b.o
                public void a(String str, String str2, String str3, a.C0455a c0455a, com.mbridge.msdk.foundation.error.b bVar) {
                    if (bVar != null) {
                        bVar.a("his_reason", "errorCode: 3303 errorMessage: tpl temp preload failed");
                    }
                    if (C0406c.this.f28694b.getRsIgnoreCheckRule() != null && C0406c.this.f28694b.getRsIgnoreCheckRule().size() > 0 && C0406c.this.f28694b.getRsIgnoreCheckRule().contains(3)) {
                        p0.c("RewardMVVideoAdapter", "template download fail but hit ignoreCheckRule");
                        return;
                    }
                    b bVar2 = b.this;
                    c cVar = c.this;
                    cVar.a(bVar2.f28707b, cVar.V, c.this.f28682s, str2);
                    if (c.this.L != null) {
                        c.this.L.removeMessages(5);
                    }
                    if (c.this.f28673j == null || c.this.S) {
                        return;
                    }
                    c.this.S = false;
                    C0406c c0406c = C0406c.this;
                    if (c0406c.f28693a == null) {
                        c0406c.f28693a = new com.mbridge.msdk.foundation.same.report.metrics.c();
                    }
                    C0406c c0406c2 = C0406c.this;
                    c0406c2.f28693a.b(c0406c2.f28696d);
                    C0406c.this.f28693a.a(bVar);
                    c.this.f28673j.a(c.this.V, bVar, C0406c.this.f28693a);
                    p0.a("RewardMVVideoAdapter", "Campaign 下载成功： 大模板预加载失败 onVideoLoadFail");
                }
            }
        }

        @Override // com.mbridge.msdk.reward.adapter.b.h
        public void a(CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList, com.mbridge.msdk.foundation.error.b bVar) {
            c.this.O = false;
            if (c.this.f28673j == null || c.this.L == null) {
                return;
            }
            c.this.L.post(new RunnableC0408c(copyOnWriteArrayList, bVar));
        }
    }

    public void a(int i10, String str) {
        this.J = i10;
        this.K = str;
    }

    public void c(List<CampaignEx> list) {
        this.X = list;
    }

    public boolean a(CampaignEx campaignEx, boolean z10, com.mbridge.msdk.foundation.error.b bVar, int i10, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        com.mbridge.msdk.foundation.cache.c cVar2;
        com.mbridge.msdk.foundation.cache.c cVar3 = new com.mbridge.msdk.foundation.cache.c();
        com.mbridge.msdk.reward.candidate.a aVar = new com.mbridge.msdk.reward.candidate.a(this.f28665b, this.f28681r);
        boolean z11 = false;
        if (aVar.a(this.C)) {
            return false;
        }
        if (!this.T) {
            this.T = true;
            cVar3 = aVar.a(this.C, cVar, campaignEx, bVar, i10, this);
            if (cVar3 != null && cVar3.g() > com.mbridge.msdk.foundation.cache.c.f26670i) {
                if (cVar3.c() != null && cVar3.c().size() > 0) {
                    a(cVar3.c(), true, true, true);
                } else if (cVar3.g() == com.mbridge.msdk.foundation.cache.c.f26672k && bVar != null) {
                    bVar.a(com.mbridge.msdk.foundation.error.a.b(880038));
                    bVar.d(cVar3.e());
                }
            }
            cVar2 = cVar3;
            aVar.a(cVar, this.C, cVar2, (List<a.b>) null, (JSONObject) null, 3);
            return z11;
        }
        cVar3.d("isCandidate:false");
        cVar3.a(com.mbridge.msdk.foundation.cache.c.f26672k);
        cVar2 = cVar3;
        z11 = true;
        aVar.a(cVar, this.C, cVar2, (List<a.b>) null, (JSONObject) null, 3);
        return z11;
    }

    public void b(String str, boolean z10, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        String str2;
        boolean z11;
        try {
            if (this.f28664a == null) {
                com.mbridge.msdk.foundation.error.b a10 = com.mbridge.msdk.foundation.error.a.a(880001, "errorCode: 3507 errorMessage: data load failed, errorMsg is Context is null");
                if (cVar != null) {
                    cVar.a(a10);
                }
                b("errorCode: 3507 errorMessage: data load failed, errorMsg is Context is null", cVar);
            } else if (z0.a(this.f28665b)) {
                com.mbridge.msdk.foundation.error.b a11 = com.mbridge.msdk.foundation.error.a.a(880001, "errorCode: 3507 errorMessage: data load failed, errorMsg is UnitId is null");
                if (cVar != null) {
                    cVar.a(a11);
                }
                b("errorCode: 3507 errorMessage: data load failed, errorMsg is UnitId is null", cVar);
            } else if (this.f28675l == null) {
                com.mbridge.msdk.foundation.error.b a12 = com.mbridge.msdk.foundation.error.a.a(880001, "errorCode: 3507 errorMessage: data load failed, errorMsg is RewardUnitSetting is null");
                if (cVar != null) {
                    cVar.a(a12);
                }
                b("errorCode: 3507 errorMessage: data load failed, errorMsg is RewardUnitSetting is null", cVar);
            } else if (TextUtils.isEmpty(str) && System.currentTimeMillis() - this.B < this.f28675l.p() * 1000) {
                com.mbridge.msdk.foundation.error.b a13 = com.mbridge.msdk.foundation.error.a.a(880018, "errorCode: 3507 errorMessage: data load failed, errorMsg is EXCEPTION_RETURN_EMPTY");
                if (cVar != null) {
                    cVar.a(a13);
                    cVar.b(true);
                }
                b("errorCode: 3507 errorMessage: data load failed, errorMsg is EXCEPTION_RETURN_EMPTY", cVar);
            } else {
                if (cVar == null) {
                    str2 = "";
                } else {
                    str2 = cVar.o();
                }
                com.mbridge.msdk.foundation.same.net.wrapper.e a14 = new com.mbridge.msdk.reward.adapter.e(this.f28666c, this.f28665b, this.f28681r, this.f28675l, str2).a(this.f28670g, this.f28671h, this.f28667d, i(), e(), this.f28684u, str, z10, this.f28685v);
                if (a14 == null) {
                    com.mbridge.msdk.foundation.error.b a15 = com.mbridge.msdk.foundation.error.a.a(880001, "errorCode: 3507 errorMessage: data load failed, errorMsg is Load param is null");
                    if (cVar != null) {
                        cVar.a(a15);
                    }
                    b("errorCode: 3507 errorMessage: data load failed, errorMsg is Load param is null", cVar);
                    return;
                }
                if (this.J != 0) {
                    a14.a("r_index", this.J + "");
                }
                if (!TextUtils.isEmpty(this.K)) {
                    a14.a("invalid_ad_ids", this.K);
                }
                this.N = System.currentTimeMillis();
                com.mbridge.msdk.reward.request.b bVar = new com.mbridge.msdk.reward.request.b(this.f28664a);
                b bVar2 = new b(cVar);
                bVar2.a(str);
                bVar2.setUnitId(this.f28665b);
                bVar2.setPlacementId(this.f28666c);
                bVar2.setAdType(this.f28681r ? 287 : 94);
                bVar2.a(cVar);
                try {
                    z11 = com.mbridge.msdk.videocommon.download.j.a().a(this.f28681r ? 287 : 94);
                } catch (Exception e10) {
                    if (MBridgeConstans.DEBUG) {
                        p0.b("RewardMVVideoAdapter", "isRewardVideoRefactorForCampaignRequest exception " + e10.getMessage());
                    }
                    z11 = false;
                }
                boolean z12 = z11;
                try {
                    if (com.mbridge.msdk.foundation.same.net.utils.c.b().a(a14) == null) {
                        com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                        eVar.a("hst", k());
                        if (this.J != 0) {
                            eVar.a("r_index", this.J + "");
                        }
                        cVar.a("2000125", eVar);
                        com.mbridge.msdk.reward.report.metrics.a.a().a("2000125", cVar);
                    }
                } catch (Exception e11) {
                    if (MBridgeConstans.DEBUG) {
                        e11.printStackTrace();
                    }
                }
                if (z12) {
                    bVar.getCampaign(1, str, a14, bVar2, com.mbridge.msdk.foundation.same.c.a(this.f28669f * 1000, 30000L));
                } else {
                    bVar.choiceV3OrV5BySetting(1, a14, bVar2, str, com.mbridge.msdk.foundation.same.c.a(this.f28669f * 1000, 30000L));
                }
            }
        } catch (Exception e12) {
            e12.printStackTrace();
            b("Load exception", cVar);
            n();
        }
    }

    public void a(com.mbridge.msdk.videocommon.setting.c cVar) {
        try {
            this.f28675l = cVar;
            if (cVar == null || cVar.o() * 1000 == com.mbridge.msdk.foundation.same.a.L) {
                return;
            }
            com.mbridge.msdk.foundation.same.a.L = this.f28675l.o() * 1000;
        } catch (Throwable th2) {
            p0.b("RewardMVVideoAdapter", th2.getMessage(), th2);
        }
    }

    public boolean a(List<CampaignEx> list, boolean z10, int i10, boolean z11) {
        return a(list, z10, i10, false, z11);
    }

    public boolean a(List<CampaignEx> list, boolean z10, int i10) {
        return a(list, z10, i10, false, false);
    }

    public boolean a(List<CampaignEx> list, boolean z10) {
        if (list != null && list.size() > 0) {
            CampaignEx campaignEx = list.get(0);
            if (campaignEx != null && com.mbridge.msdk.videocommon.download.b.getInstance().a(94, this.f28665b, list)) {
                if (z10) {
                    if (campaignEx.isDynamicView()) {
                        return true;
                    }
                    if (campaignEx.getRsIgnoreCheckRule() != null && campaignEx.getRsIgnoreCheckRule().size() > 0) {
                        if (campaignEx.getRsIgnoreCheckRule().contains(3)) {
                            p0.c("RewardMVVideoAdapter", "Is not check big template download status");
                            return true;
                        } else if (campaignEx.getCMPTEntryUrl().equals(campaignEx.getendcard_url()) && campaignEx.getRsIgnoreCheckRule().contains(2)) {
                            p0.c("RewardMVVideoAdapter", "Is not check big template ENDCARD download status");
                            return true;
                        }
                    }
                    ResDownloadCheckManager resDownloadCheckManager = ResDownloadCheckManager.getInstance();
                    if (resDownloadCheckManager.checkPreLoadState(this.f28665b + "_" + campaignEx.getRequestId() + "_" + campaignEx.getCMPTEntryUrl())) {
                        p0.a("RewardVideoController", "大模板业务，开始检查大模板预加载情况，大模板预加载成功");
                        return true;
                    }
                } else if (campaignEx.isDynamicView()) {
                    return true;
                } else {
                    if (campaignEx.getRsIgnoreCheckRule() != null && campaignEx.getRsIgnoreCheckRule().size() > 0 && campaignEx.getRsIgnoreCheckRule().contains(1)) {
                        p0.c("RewardMVVideoAdapter", "Is not check template download status");
                        return true;
                    } else if (campaignEx.getRewardTemplateMode() != null && !TextUtils.isEmpty(campaignEx.getRewardTemplateMode().e())) {
                        ResDownloadCheckManager resDownloadCheckManager2 = ResDownloadCheckManager.getInstance();
                        if (resDownloadCheckManager2.checkPreLoadState(this.f28665b + "_" + campaignEx.getRequestId() + "_" + campaignEx.getRewardTemplateMode().e())) {
                            p0.a("RewardVideoController", "非大模板业务，存在播放模板，播放模板预加载成功");
                            return true;
                        }
                    } else {
                        p0.a("RewardVideoController", "非大模板 没有 template");
                        return true;
                    }
                }
            }
        } else {
            p0.a("RewardVideoController", "数据为空");
        }
        return false;
    }

    public boolean a(List<CampaignEx> list, boolean z10, int i10, boolean z11, boolean z12) {
        List<CampaignEx> list2;
        com.mbridge.msdk.foundation.same.report.metrics.c cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
        com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
        if (list != null && list.size() > 0) {
            CampaignEx campaignEx = list.get(0);
            cVar.i(campaignEx.getCurrentLocalRid());
            boolean a10 = com.mbridge.msdk.videocommon.download.b.getInstance().a(94, this.f28665b, this.f28682s, list.size(), z10, i10, list, z11, eVar);
            eVar.a("event_name", "is_ready_crwtpl_" + a10);
            if (a10) {
                if (z10) {
                    if (campaignEx.isDynamicView()) {
                        return true;
                    }
                    if (campaignEx.getRsIgnoreCheckRule() != null && campaignEx.getRsIgnoreCheckRule().size() > 0) {
                        if (campaignEx.getRsIgnoreCheckRule().contains(3)) {
                            p0.c("RewardMVVideoAdapter", "Is not check big template download status");
                            return true;
                        } else if (campaignEx.getCMPTEntryUrl().equals(campaignEx.getendcard_url()) && campaignEx.getRsIgnoreCheckRule().contains(2)) {
                            p0.c("RewardMVVideoAdapter", "Is not check big template of ENDCARD download status");
                            return true;
                        }
                    }
                    if (ResDownloadCheckManager.getInstance().checkPreLoadState(this.f28665b + "_" + campaignEx.getRequestId() + "_" + campaignEx.getCMPTEntryUrl())) {
                        return true;
                    }
                    if (z12) {
                        eVar.a("event_name", "is_ready_crwtpl_" + a10);
                        eVar.a("reason", "h5 big template checkPreLoadState error");
                        eVar.a("type", 5);
                        list2 = list;
                        a(cVar, eVar, list2);
                    }
                } else {
                    list2 = list;
                    if (campaignEx.isDynamicView()) {
                        return true;
                    }
                    if (campaignEx.getRsIgnoreCheckRule() != null && campaignEx.getRsIgnoreCheckRule().size() > 0 && campaignEx.getRsIgnoreCheckRule().contains(1)) {
                        p0.c("RewardMVVideoAdapter", "Is not check template download status");
                        return true;
                    } else if (campaignEx.getRewardTemplateMode() == null || TextUtils.isEmpty(campaignEx.getRewardTemplateMode().e())) {
                        return true;
                    } else {
                        String str = this.f28665b + "_" + campaignEx.getRequestId() + "_" + campaignEx.getRewardTemplateMode().e();
                        if (z12) {
                            ResDownloadCheckManager.getInstance().setTemplatePreLoadDone(str, true);
                        }
                        if (ResDownloadCheckManager.getInstance().checkPreLoadState(str)) {
                            return true;
                        }
                        if (z12) {
                            eVar.a("event_name", "is_ready_crwtpl_" + a10);
                            eVar.a("reason", "h5 template checkPreLoadState error");
                            eVar.a("type", 5);
                            a(cVar, eVar, list2);
                        }
                    }
                }
            }
            list2 = list;
        } else {
            list2 = list;
            eVar.a("event_name", "is_ready_crwtpl_empty");
            eVar.a("reason", "campaign list is empty error");
            eVar.a("type", 8);
        }
        a(cVar, eVar, list2);
        return false;
    }

    private void b(com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        if (this.L != null) {
            Message obtain = Message.obtain();
            obtain.what = 18;
            if (cVar != null) {
                Bundle bundle = new Bundle();
                bundle.putString("metrics_data_lrid", cVar.o());
                obtain.setData(bundle);
            }
            this.L.sendMessage(obtain);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        if (this.L != null) {
            if (TextUtils.isEmpty(str)) {
                str = "load fail exception";
            }
            Message obtain = Message.obtain();
            obtain.what = 4;
            obtain.obj = str;
            if (cVar != null) {
                cVar.b(true);
                Bundle bundle = new Bundle();
                bundle.putString("metrics_data_lrid", cVar.o());
                obtain.setData(bundle);
            }
            if (str.contains("exception")) {
                this.L.sendMessageAtFrontOfQueue(obtain);
            } else {
                this.L.sendMessage(obtain);
            }
        }
    }

    public void a(com.mbridge.msdk.video.bt.module.orglistener.h hVar, String str, String str2, int i10, String str3, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        try {
            this.f28672i = hVar;
            if (this.f28664a != null && !z0.a(this.f28665b)) {
                Intent intent = new Intent(this.f28664a, MBRewardVideoActivity.class);
                intent.putExtra(MBRewardVideoActivity.INTENT_UNITID, this.f28665b);
                intent.putExtra(MBridgeConstans.PLACEMENT_ID, this.f28666c);
                intent.putExtra(MBRewardVideoActivity.INTENT_REWARD, str);
                intent.putExtra(MBRewardVideoActivity.INTENT_MUTE, i10);
                intent.putExtra(MBRewardVideoActivity.INTENT_ISIV, this.f28681r);
                intent.putExtra(MBRewardVideoActivity.INTENT_ISBID, this.f28682s);
                intent.putExtra(MBRewardVideoActivity.INTENT_EXTRADATA, str3);
                CopyOnWriteArrayList<CampaignEx> b10 = com.mbridge.msdk.videocommon.download.b.getInstance().b(this.f28665b);
                boolean z10 = false;
                if (b10 != null && b10.size() > 0) {
                    CampaignEx campaignEx = b10.get(0);
                    if (b10.size() == 1 && !com.mbridge.msdk.foundation.same.c.a(this.f28664a, campaignEx) && campaignEx.getFilterAdsShowCallState() == 1) {
                        com.mbridge.msdk.videocommon.cache.a.a().b(this.f28665b, campaignEx);
                        com.mbridge.msdk.video.bt.module.orglistener.h hVar2 = this.f28672i;
                        if (hVar2 != null) {
                            hVar2.a(cVar, "show_campaign_filtered");
                            return;
                        }
                    }
                    if (campaignEx != null) {
                        this.H = campaignEx.getRequestId();
                    }
                    if (campaignEx != null && !TextUtils.isEmpty(campaignEx.getCMPTEntryUrl())) {
                        z10 = true;
                    }
                    a();
                } else {
                    com.mbridge.msdk.video.bt.module.orglistener.h hVar3 = this.f28672i;
                    if (hVar3 != null) {
                        hVar3.a(cVar, "load failed");
                        return;
                    }
                }
                intent.putExtra(MBRewardVideoActivity.INTENT_ISBIG_OFFER, z10);
                if (this.f28681r) {
                    intent.putExtra(MBRewardVideoActivity.INTENT_IVREWARD_MODETYPE, this.f28685v);
                    intent.putExtra(MBRewardVideoActivity.INTENT_IVREWARD_VALUETYPE, this.f28686w);
                    intent.putExtra(MBRewardVideoActivity.INTENT_IVREWARD_VALUE, this.f28687x);
                }
                if (!TextUtils.isEmpty(str2)) {
                    intent.putExtra(MBRewardVideoActivity.INTENT_USERID, str2);
                }
                RewardUnitCacheManager.getInstance().add(this.f28666c, this.f28665b, this.f28675l);
                if (com.mbridge.msdk.foundation.controller.c.m() != null && com.mbridge.msdk.foundation.controller.c.m().f() != null) {
                    ((Activity) com.mbridge.msdk.foundation.controller.c.m().f()).startActivity(intent);
                    return;
                } else if (com.mbridge.msdk.foundation.controller.c.m() != null && com.mbridge.msdk.foundation.controller.c.m().d() != null && (com.mbridge.msdk.foundation.controller.c.m().d() instanceof Activity)) {
                    ((Activity) com.mbridge.msdk.foundation.controller.c.m().d()).startActivity(intent);
                    return;
                } else {
                    intent.addFlags(268435456);
                    this.f28664a.startActivity(intent);
                    return;
                }
            }
            com.mbridge.msdk.video.bt.module.orglistener.h hVar4 = this.f28672i;
            if (hVar4 != null) {
                hVar4.a(cVar, "context or unitid is null");
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            com.mbridge.msdk.video.bt.module.orglistener.h hVar5 = this.f28672i;
            if (hVar5 != null) {
                hVar5.a(cVar, "show failed, exception is " + e10.getMessage());
            }
        }
    }

    private void b() {
        if (com.mbridge.msdk.videocommon.cache.a.a() != null) {
            try {
                com.mbridge.msdk.setting.g d10 = com.mbridge.msdk.setting.h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
                if (d10 == null) {
                    d10 = com.mbridge.msdk.setting.h.b().a();
                }
                com.mbridge.msdk.videocommon.cache.a.a().a(d10.a0() * 1000, this.f28665b);
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    e10.printStackTrace();
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:124:0x0225, code lost:
        if (com.mbridge.msdk.MBridgeConstans.DEBUG == false) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x0234, code lost:
        if (com.mbridge.msdk.MBridgeConstans.DEBUG == false) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x0236, code lost:
        com.mbridge.msdk.foundation.tools.p0.b("RewardMVVideoAdapter", r15.getMessage());
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x01ba, code lost:
        if (com.mbridge.msdk.foundation.tools.z0.a(r15.getVideoUrlEncode()) != false) goto L119;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.mbridge.msdk.reward.adapter.d b(com.mbridge.msdk.foundation.entity.CampaignUnit r15) {
        /*
            Method dump skipped, instructions count: 594
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.reward.adapter.c.b(com.mbridge.msdk.foundation.entity.CampaignUnit):com.mbridge.msdk.reward.adapter.d");
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0078 A[Catch: Exception -> 0x0042, TryCatch #0 {Exception -> 0x0042, blocks: (B:10:0x0027, B:12:0x002d, B:27:0x0072, B:29:0x0078, B:31:0x0080, B:15:0x0044, B:17:0x004a, B:18:0x004e, B:20:0x0054, B:22:0x005c, B:24:0x0066), top: B:35:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:44:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a() {
        /*
            r4 = this;
            com.mbridge.msdk.foundation.controller.c r0 = com.mbridge.msdk.foundation.controller.c.m()
            android.content.Context r0 = r0.d()
            com.mbridge.msdk.foundation.db.b r0 = com.mbridge.msdk.foundation.db.b.a(r0)
            java.lang.String r1 = r4.f28665b
            java.lang.String r2 = r4.H
            java.util.List r0 = r0.a(r1, r2)
            if (r0 == 0) goto La7
            int r1 = r0.size()
            java.lang.String r2 = r4.f28665b
            java.lang.String r2 = com.mbridge.msdk.foundation.same.buffer.b.d(r2)
            if (r1 != 0) goto L23
            return
        L23:
            r3 = 1
            if (r1 != r3) goto L44
            r1 = 0
            java.lang.Object r3 = r0.get(r1)     // Catch: java.lang.Exception -> L42
            if (r3 == 0) goto L6f
            java.lang.Object r3 = r0.get(r1)     // Catch: java.lang.Exception -> L42
            com.mbridge.msdk.foundation.entity.d r3 = (com.mbridge.msdk.foundation.entity.d) r3     // Catch: java.lang.Exception -> L42
            java.lang.String r3 = r3.d()     // Catch: java.lang.Exception -> L42
            java.lang.Object r0 = r0.get(r1)     // Catch: java.lang.Exception -> L42
            com.mbridge.msdk.foundation.entity.d r0 = (com.mbridge.msdk.foundation.entity.d) r0     // Catch: java.lang.Exception -> L42
            java.lang.String r0 = r0.b()     // Catch: java.lang.Exception -> L42
            goto L72
        L42:
            r0 = move-exception
            goto L9e
        L44:
            boolean r1 = android.text.TextUtils.isEmpty(r2)     // Catch: java.lang.Exception -> L42
            if (r1 != 0) goto L6f
            java.util.Iterator r0 = r0.iterator()     // Catch: java.lang.Exception -> L42
        L4e:
            boolean r1 = r0.hasNext()     // Catch: java.lang.Exception -> L42
            if (r1 == 0) goto L6f
            java.lang.Object r1 = r0.next()     // Catch: java.lang.Exception -> L42
            com.mbridge.msdk.foundation.entity.d r1 = (com.mbridge.msdk.foundation.entity.d) r1     // Catch: java.lang.Exception -> L42
            if (r1 == 0) goto L4e
            java.lang.String r3 = r1.a()     // Catch: java.lang.Exception -> L42
            boolean r3 = r2.equals(r3)     // Catch: java.lang.Exception -> L42
            if (r3 == 0) goto L4e
            java.lang.String r3 = r1.d()     // Catch: java.lang.Exception -> L42
            java.lang.String r0 = r1.b()     // Catch: java.lang.Exception -> L42
            goto L72
        L6f:
            java.lang.String r0 = ""
            r3 = r0
        L72:
            boolean r1 = android.text.TextUtils.isEmpty(r3)     // Catch: java.lang.Exception -> L42
            if (r1 != 0) goto La7
            java.lang.String r1 = r4.H     // Catch: java.lang.Exception -> L42
            boolean r1 = r3.equals(r1)     // Catch: java.lang.Exception -> L42
            if (r1 == 0) goto La7
            com.mbridge.msdk.foundation.controller.c r1 = com.mbridge.msdk.foundation.controller.c.m()     // Catch: java.lang.Exception -> L42
            android.content.Context r1 = r1.d()     // Catch: java.lang.Exception -> L42
            com.mbridge.msdk.foundation.db.b r1 = com.mbridge.msdk.foundation.db.b.a(r1)     // Catch: java.lang.Exception -> L42
            java.lang.String r3 = r4.f28665b     // Catch: java.lang.Exception -> L42
            r1.b(r2, r3)     // Catch: java.lang.Exception -> L42
            java.lang.String r1 = r4.f28665b     // Catch: java.lang.Exception -> L42
            java.lang.String r2 = r4.H     // Catch: java.lang.Exception -> L42
            com.mbridge.msdk.foundation.same.buffer.b.a(r1, r2, r0)     // Catch: java.lang.Exception -> L42
            java.lang.String r0 = r4.f28665b     // Catch: java.lang.Exception -> L42
            com.mbridge.msdk.foundation.same.buffer.b.e(r0)     // Catch: java.lang.Exception -> L42
            goto La7
        L9e:
            java.lang.String r0 = r0.getMessage()
            java.lang.String r1 = "RewardMVVideoAdapter"
            com.mbridge.msdk.foundation.tools.p0.a(r1, r0)
        La7:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.reward.adapter.c.a():void");
    }

    public void a(int i10, int i11, boolean z10, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        a(i10, i11, z10, "", this.A, cVar);
    }

    public void a(int i10, int i11, boolean z10, String str, boolean z11, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        CampaignEx campaignEx;
        this.f28668e = i10;
        this.f28669f = i11;
        this.f28670g = z10;
        this.C = str;
        this.A = z11;
        boolean z12 = false;
        this.T = false;
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList = this.f28689z;
        if (copyOnWriteArrayList != null && copyOnWriteArrayList.size() > 0 && (campaignEx = this.f28689z.get(0)) != null && TextUtils.isEmpty(campaignEx.getNLRid())) {
            this.f28689z.clear();
        }
        List<CampaignEx> list = this.V;
        if (list != null) {
            list.clear();
        }
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList2 = this.W;
        if (copyOnWriteArrayList2 != null) {
            copyOnWriteArrayList2.clear();
        }
        this.O = false;
        this.P = false;
        synchronized (this.f28678o) {
            try {
                if (this.Q) {
                    this.Q = false;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        this.S = false;
        this.R = false;
        try {
            z12 = com.mbridge.msdk.mbsignalcommon.webEnvCheck.a.b(this.f28664a);
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                p0.b("RewardMVVideoAdapter", e10.getMessage());
            }
        }
        if (!z12) {
            com.mbridge.msdk.foundation.error.b a10 = com.mbridge.msdk.foundation.error.a.a(880001, "errorCode: 3507 errorMessage: data load failed, errorMsg is WebView is not available");
            if (cVar != null) {
                cVar.a(a10);
            }
            b("errorCode: 3507 errorMessage: data load failed, errorMsg is WebView is not available", cVar);
        } else if (this.f28664a == null) {
            com.mbridge.msdk.foundation.error.b a11 = com.mbridge.msdk.foundation.error.a.a(880001, "errorCode: 3507 errorMessage: data load failed, errorMsg is Context is null");
            if (cVar != null) {
                cVar.a(a11);
            }
            b("errorCode: 3507 errorMessage: data load failed, errorMsg is Context is null", cVar);
        } else if (z0.a(this.f28665b)) {
            com.mbridge.msdk.foundation.error.b a12 = com.mbridge.msdk.foundation.error.a.a(880001, "errorCode: 3507 errorMessage: data load failed, errorMsg is UnitId is null");
            if (cVar != null) {
                cVar.a(a12);
            }
            b("errorCode: 3507 errorMessage: data load failed, errorMsg is UnitId is null", cVar);
        } else if (this.f28675l == null) {
            com.mbridge.msdk.foundation.error.b a13 = com.mbridge.msdk.foundation.error.a.a(880001, "errorCode: 3507 errorMessage: data load failed, errorMsg is RewardUnitSetting is null");
            if (cVar != null) {
                cVar.a(a13);
            }
            b("RewardUnitSetting is null", cVar);
        } else {
            d();
            c();
            p0.c("RewardMVVideoAdapter", "load 开始清除过期数据");
            b();
            a(str, z11, cVar);
        }
    }

    private void b(List<CampaignEx> list) {
        if (list != null) {
            try {
                if (list.size() > 0) {
                    this.f28667d += list.size();
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                return;
            }
        }
        com.mbridge.msdk.videocommon.setting.c cVar = this.f28675l;
        if (cVar == null || this.f28667d > cVar.r()) {
            this.f28667d = 0;
        }
        if (z0.b(this.f28665b)) {
            com.mbridge.msdk.reward.controller.a.a(this.f28665b, this.f28667d);
        }
    }

    private boolean b(CampaignEx campaignEx) {
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

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0063 A[Catch: Exception -> 0x0027, TRY_ENTER, TryCatch #0 {Exception -> 0x0027, blocks: (B:4:0x0004, B:6:0x000a, B:14:0x0021, B:18:0x002f, B:20:0x004e, B:22:0x0056, B:24:0x005a, B:27:0x0063, B:29:0x007c, B:28:0x0071, B:30:0x0092, B:17:0x002a), top: B:36:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0071 A[Catch: Exception -> 0x0027, TryCatch #0 {Exception -> 0x0027, blocks: (B:4:0x0004, B:6:0x000a, B:14:0x0021, B:18:0x002f, B:20:0x004e, B:22:0x0056, B:24:0x005a, B:27:0x0063, B:29:0x007c, B:28:0x0071, B:30:0x0092, B:17:0x002a), top: B:36:0x0004 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(com.mbridge.msdk.foundation.same.report.metrics.c r6, int r7) {
        /*
            r5 = this;
            java.lang.String r0 = "2000126"
            if (r6 == 0) goto Lb7
            boolean r1 = r6.A()     // Catch: java.lang.Exception -> L27
            if (r1 != 0) goto Lb7
            com.mbridge.msdk.foundation.same.report.metrics.e r1 = new com.mbridge.msdk.foundation.same.report.metrics.e     // Catch: java.lang.Exception -> L27
            r1.<init>()     // Catch: java.lang.Exception -> L27
            r2 = 3
            java.lang.String r3 = "result"
            if (r7 == r2) goto L2a
            r2 = 880023(0xd6d97, float:1.233175E-39)
            if (r7 == r2) goto L2a
            r2 = 880041(0xd6da9, float:1.2332E-39)
            if (r7 == r2) goto L2a
            switch(r7) {
                case 10: goto L2a;
                case 11: goto L2a;
                case 12: goto L2a;
                default: goto L21;
            }
        L21:
            java.lang.String r7 = "1"
            r1.a(r3, r7)     // Catch: java.lang.Exception -> L27
            goto L2f
        L27:
            r6 = move-exception
            goto Lb0
        L2a:
            java.lang.String r7 = "2"
            r1.a(r3, r7)     // Catch: java.lang.Exception -> L27
        L2f:
            java.lang.String r7 = "timeout"
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L27
            r2.<init>()     // Catch: java.lang.Exception -> L27
            int r3 = r5.f28669f     // Catch: java.lang.Exception -> L27
            r2.append(r3)     // Catch: java.lang.Exception -> L27
            java.lang.String r3 = ""
            r2.append(r3)     // Catch: java.lang.Exception -> L27
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Exception -> L27
            r1.a(r7, r2)     // Catch: java.lang.Exception -> L27
            com.mbridge.msdk.foundation.error.b r7 = r6.p()     // Catch: java.lang.Exception -> L27
            if (r7 == 0) goto L92
            java.lang.String r2 = "campaign_request_error"
            java.lang.Object r2 = r7.a(r2)     // Catch: java.lang.Exception -> L27
            if (r2 == 0) goto L92
            boolean r3 = r2 instanceof com.mbridge.msdk.foundation.same.net.exception.a     // Catch: java.lang.Exception -> L27
            if (r3 == 0) goto L92
            r3 = r2
            com.mbridge.msdk.foundation.same.net.exception.a r3 = (com.mbridge.msdk.foundation.same.net.exception.a) r3     // Catch: java.lang.Exception -> L27
            com.mbridge.msdk.foundation.same.net.toolbox.a r3 = r3.f27121c     // Catch: java.lang.Exception -> L27
            java.lang.String r4 = "code"
            if (r3 == 0) goto L71
            com.mbridge.msdk.foundation.same.net.exception.a r2 = (com.mbridge.msdk.foundation.same.net.exception.a) r2     // Catch: java.lang.Exception -> L27
            com.mbridge.msdk.foundation.same.net.toolbox.a r2 = r2.f27121c     // Catch: java.lang.Exception -> L27
            int r2 = r2.f27142d     // Catch: java.lang.Exception -> L27
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)     // Catch: java.lang.Exception -> L27
            r1.a(r4, r2)     // Catch: java.lang.Exception -> L27
            goto L7c
        L71:
            int r2 = r7.b()     // Catch: java.lang.Exception -> L27
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)     // Catch: java.lang.Exception -> L27
            r1.a(r4, r2)     // Catch: java.lang.Exception -> L27
        L7c:
            java.lang.String r2 = "reason"
            java.lang.String r3 = r7.g()     // Catch: java.lang.Exception -> L27
            r1.a(r2, r3)     // Catch: java.lang.Exception -> L27
            java.lang.String r2 = "err_desc"
            java.lang.String r7 = r7.d()     // Catch: java.lang.Exception -> L27
            r1.a(r2, r7)     // Catch: java.lang.Exception -> L27
            r7 = 0
            r6.a(r7)     // Catch: java.lang.Exception -> L27
        L92:
            java.lang.String r7 = "hst"
            java.lang.String r2 = r5.k()     // Catch: java.lang.Exception -> L27
            r1.a(r7, r2)     // Catch: java.lang.Exception -> L27
            java.lang.String r7 = "126_exclude"
            r2 = 1
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)     // Catch: java.lang.Exception -> L27
            r1.a(r7, r2)     // Catch: java.lang.Exception -> L27
            r6.a(r0, r1)     // Catch: java.lang.Exception -> L27
            com.mbridge.msdk.reward.report.metrics.a r7 = com.mbridge.msdk.reward.report.metrics.a.a()     // Catch: java.lang.Exception -> L27
            r7.a(r0, r6)     // Catch: java.lang.Exception -> L27
            goto Lb7
        Lb0:
            boolean r7 = com.mbridge.msdk.MBridgeConstans.DEBUG
            if (r7 == 0) goto Lb7
            r6.printStackTrace()
        Lb7:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.reward.adapter.c.a(com.mbridge.msdk.foundation.same.report.metrics.c, int):void");
    }

    private void a(com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        if (this.L != null) {
            Message obtain = Message.obtain();
            obtain.what = 3;
            if (cVar != null) {
                Bundle bundle = new Bundle();
                bundle.putString("metrics_data_lrid", cVar.o());
                obtain.setData(bundle);
            }
            this.L.sendMessage(obtain);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i10, String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        if (this.L != null) {
            if (TextUtils.isEmpty(str)) {
                str = "load fail exception";
            }
            Message obtain = Message.obtain();
            obtain.what = 4;
            obtain.obj = str;
            obtain.arg1 = i10;
            if (cVar != null) {
                cVar.b(true);
                Bundle bundle = new Bundle();
                bundle.putString("metrics_data_lrid", cVar.o());
                obtain.setData(bundle);
            }
            if (str.contains("exception")) {
                this.L.sendMessageAtFrontOfQueue(obtain);
            } else {
                this.L.sendMessage(obtain);
            }
        }
    }

    private void a(j jVar, CampaignEx campaignEx) {
        if (jVar == null || jVar.a(campaignEx.getId())) {
            return;
        }
        com.mbridge.msdk.foundation.entity.g gVar = new com.mbridge.msdk.foundation.entity.g();
        gVar.a(campaignEx.getId());
        gVar.b(campaignEx.getFca());
        gVar.c(campaignEx.getFcb());
        gVar.a(0);
        gVar.d(0);
        gVar.a(System.currentTimeMillis());
        jVar.b(gVar);
    }

    private void a(String str, String str2, List<CampaignEx> list) {
        if (com.mbridge.msdk.videocommon.cache.a.a() != null) {
            com.mbridge.msdk.videocommon.cache.a.a().a(str, str2, list);
        }
    }

    public void a(com.mbridge.msdk.reward.adapter.a aVar) {
        this.f28673j = aVar;
    }

    public void a(a.j jVar) {
        this.f28674k = jVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.mbridge.msdk.reward.adapter.d a(CampaignUnit campaignUnit) {
        boolean z10;
        this.f28688y = campaignUnit;
        com.mbridge.msdk.reward.adapter.d b10 = b(campaignUnit);
        new com.mbridge.msdk.reward.candidate.a(this.f28665b, this.f28681r).a(b10.b(), this.C, this, this.f28665b);
        CopyOnWriteArrayList<CampaignEx> b11 = b10.b();
        if (b10.e()) {
            if (b10.d() == 0) {
                b11.clear();
            } else if (b10.a()) {
                b(campaignUnit.getMetricsData());
            }
            if (b10.c() == 0) {
                z10 = false;
                a(b11, true, false, z10);
                return b10;
            }
        }
        z10 = true;
        a(b11, true, false, z10);
        return b10;
    }

    public void a(CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList, boolean z10, boolean z11, boolean z12) {
        com.mbridge.msdk.foundation.same.report.metrics.c cVar;
        try {
            if (z11) {
                this.V = copyOnWriteArrayList;
                CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList2 = new CopyOnWriteArrayList<>(copyOnWriteArrayList);
                this.W = copyOnWriteArrayList2;
                cVar = a((List<CampaignEx>) copyOnWriteArrayList2);
            } else {
                cVar = this.f28688y.getMetricsData();
            }
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                p0.b("RewardMVVideoAdapter", e10.getMessage());
            }
            cVar = null;
        }
        a(this.f28688y, copyOnWriteArrayList);
        if (copyOnWriteArrayList != null && copyOnWriteArrayList.size() > 0) {
            p0.c("RewardMVVideoAdapter", "onload load success size:" + copyOnWriteArrayList.size());
            if (z10) {
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                if (z11) {
                    eVar.a("cache", 1);
                } else {
                    eVar.a("cache", 2);
                }
                if (cVar != null) {
                    cVar.a("2000127", eVar);
                    cVar.a("2000048", eVar);
                }
                a(cVar);
            }
            List<CampaignEx> b10 = com.mbridge.msdk.videocommon.cache.a.a().b(this.f28665b, 1, this.f28682s);
            if (b10 != null && b10.size() > 0 && cVar != null) {
                com.mbridge.msdk.foundation.same.report.metrics.e eVar2 = new com.mbridge.msdk.foundation.same.report.metrics.e();
                CampaignEx campaignEx = copyOnWriteArrayList.get(0);
                eVar2.a(BidResponsedEx.KEY_CID, campaignEx.getId());
                eVar2.a("price", "");
                eVar2.a("bid_tk", this.C);
                eVar2.a("lrid", campaignEx.getLocalRequestId());
                CampaignEx campaignEx2 = b10.get(0);
                eVar2.a("cid_old", com.mbridge.msdk.foundation.same.c.a(b10));
                eVar2.a("price_old", "");
                eVar2.a("bid_tk_old", campaignEx2.getBidToken());
                eVar2.a("lrid_old", campaignEx2.getLocalRequestId());
                cVar.a("m_load_overwrite", eVar2);
                com.mbridge.msdk.reward.report.metrics.a.a().a("m_load_overwrite", cVar);
            }
            if (z12) {
                a(copyOnWriteArrayList);
                return;
            }
            this.U = "campaign filtered";
            a(880021, "campaign filtered", cVar);
            return;
        }
        p0.c("RewardMVVideoAdapter", "onload load fail, callback campaign have not video");
        if (TextUtils.isEmpty(this.U)) {
            this.U = "APP ALREADY INSTALLED";
        }
        a(this.U.contains("INSTALL") ? 880021 : 880003, this.U, cVar);
    }

    public void a(CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList) {
        CampaignUnit campaignUnit = this.f28688y;
        if (campaignUnit != null) {
            a(campaignUnit.getSessionId());
        }
        b(copyOnWriteArrayList);
        if (copyOnWriteArrayList != null && copyOnWriteArrayList.size() > 0) {
            p0.c("RewardMVVideoAdapter", "#######onload 把广告存在本地 size:" + copyOnWriteArrayList.size());
            a(this.f28666c, this.f28665b, copyOnWriteArrayList);
        }
        this.f28689z = copyOnWriteArrayList;
        a(copyOnWriteArrayList.get(0));
    }

    private void a(CampaignEx campaignEx) {
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList = new CopyOnWriteArrayList<>(this.f28689z);
        boolean isEmpty = TextUtils.isEmpty(campaignEx.getCMPTEntryUrl());
        boolean z10 = !isEmpty;
        int nscpt = campaignEx.getNscpt();
        this.O = false;
        this.P = false;
        synchronized (this.f28678o) {
            try {
                if (this.Q) {
                    this.Q = false;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        this.S = false;
        this.R = false;
        if (this.f28682s) {
            com.mbridge.msdk.foundation.db.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).a(campaignEx.getBidToken(), campaignEx.getCampaignUnitId(), campaignEx.getEncryptPrice());
        }
        com.mbridge.msdk.reward.adapter.b.b().a(this.f28664a, z10, nscpt, this.f28682s, this.f28681r ? 287 : 94, this.f28666c, this.f28665b, campaignEx.getRequestId(), copyOnWriteArrayList, new C0406c(campaignEx, z10, copyOnWriteArrayList, nscpt), new d(campaignEx, z10, copyOnWriteArrayList, nscpt));
        if (isEmpty) {
            return;
        }
        com.mbridge.msdk.reward.adapter.b.b().a(this.f28664a, campaignEx, this.f28666c, this.f28665b, campaignEx.getRequestId(), new e(campaignEx, copyOnWriteArrayList, z10, nscpt));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, List<CampaignEx> list, List<CampaignEx> list2, boolean z10) {
        com.mbridge.msdk.foundation.db.e.a(com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d())).a(str, list, list2, z10);
        if (list2 != null && list2.size() > 0) {
            for (CampaignEx campaignEx : list2) {
                if (campaignEx.getRewardTemplateMode() != null && !TextUtils.isEmpty(campaignEx.getRewardTemplateMode().e())) {
                    com.mbridge.msdk.videocommon.a.e(str + "_" + campaignEx.getId() + "_" + campaignEx.getRequestId() + "_" + campaignEx.getRewardTemplateMode().e());
                    com.mbridge.msdk.videocommon.a.b(campaignEx.getAdType(), campaignEx);
                }
            }
        }
        if (z10) {
            a(str, list, list2);
        }
        if (list == null || list.size() <= 0) {
            return;
        }
        try {
            CampaignEx campaignEx2 = list.get(0);
            com.mbridge.msdk.reward.candidate.a aVar = new com.mbridge.msdk.reward.candidate.a(str, this.f28681r);
            if (campaignEx2 == null || !TextUtils.isEmpty(campaignEx2.getNLRid())) {
                return;
            }
            aVar.a(campaignEx2.getLocalRequestId(), campaignEx2.getRequestId(), 1, campaignEx2.getEcppv());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x003a A[Catch: Exception -> 0x002e, TryCatch #0 {Exception -> 0x002e, blocks: (B:4:0x0004, B:6:0x000a, B:8:0x0013, B:10:0x0029, B:14:0x0034, B:16:0x003a, B:17:0x004f, B:19:0x0055, B:21:0x005e, B:23:0x0064, B:24:0x006b, B:26:0x0071, B:28:0x0079, B:30:0x009b, B:32:0x00a1, B:33:0x00a5, B:35:0x00ab, B:37:0x00b3, B:38:0x00bf), top: B:44:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0055 A[Catch: Exception -> 0x002e, TryCatch #0 {Exception -> 0x002e, blocks: (B:4:0x0004, B:6:0x000a, B:8:0x0013, B:10:0x0029, B:14:0x0034, B:16:0x003a, B:17:0x004f, B:19:0x0055, B:21:0x005e, B:23:0x0064, B:24:0x006b, B:26:0x0071, B:28:0x0079, B:30:0x009b, B:32:0x00a1, B:33:0x00a5, B:35:0x00ab, B:37:0x00b3, B:38:0x00bf), top: B:44:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0071 A[Catch: Exception -> 0x002e, TryCatch #0 {Exception -> 0x002e, blocks: (B:4:0x0004, B:6:0x000a, B:8:0x0013, B:10:0x0029, B:14:0x0034, B:16:0x003a, B:17:0x004f, B:19:0x0055, B:21:0x005e, B:23:0x0064, B:24:0x006b, B:26:0x0071, B:28:0x0079, B:30:0x009b, B:32:0x00a1, B:33:0x00a5, B:35:0x00ab, B:37:0x00b3, B:38:0x00bf), top: B:44:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00ab A[Catch: Exception -> 0x002e, TryCatch #0 {Exception -> 0x002e, blocks: (B:4:0x0004, B:6:0x000a, B:8:0x0013, B:10:0x0029, B:14:0x0034, B:16:0x003a, B:17:0x004f, B:19:0x0055, B:21:0x005e, B:23:0x0064, B:24:0x006b, B:26:0x0071, B:28:0x0079, B:30:0x009b, B:32:0x00a1, B:33:0x00a5, B:35:0x00ab, B:37:0x00b3, B:38:0x00bf), top: B:44:0x0004 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(java.lang.String r12, java.util.List<com.mbridge.msdk.foundation.entity.CampaignEx> r13, java.util.List<com.mbridge.msdk.foundation.entity.CampaignEx> r14) {
        /*
            r11 = this;
            java.lang.String r0 = ""
            if (r13 == 0) goto L31
            int r1 = r13.size()     // Catch: java.lang.Exception -> L2e
            if (r1 <= 0) goto L31
            r1 = 0
            java.lang.Object r1 = r13.get(r1)     // Catch: java.lang.Exception -> L2e
            com.mbridge.msdk.foundation.entity.CampaignEx r1 = (com.mbridge.msdk.foundation.entity.CampaignEx) r1     // Catch: java.lang.Exception -> L2e
            if (r1 == 0) goto L31
            java.lang.String r2 = r1.getRequestId()     // Catch: java.lang.Exception -> L2e
            int r3 = r1.getVcn()     // Catch: java.lang.Exception -> L2e
            java.lang.String r4 = r1.getBidToken()     // Catch: java.lang.Exception -> L2e
            java.lang.String r5 = r1.getNLRid()     // Catch: java.lang.Exception -> L2e
            boolean r5 = android.text.TextUtils.isEmpty(r5)     // Catch: java.lang.Exception -> L2e
            if (r5 == 0) goto L34
            java.lang.String r0 = r1.getLocalRequestId()     // Catch: java.lang.Exception -> L2e
            goto L34
        L2e:
            r12 = move-exception
            goto Ld2
        L31:
            r3 = 1
            r2 = r0
            r4 = r2
        L34:
            com.mbridge.msdk.videocommon.cache.a r1 = com.mbridge.msdk.videocommon.cache.a.a()     // Catch: java.lang.Exception -> L2e
            if (r1 == 0) goto L4f
            com.mbridge.msdk.videocommon.cache.a r1 = com.mbridge.msdk.videocommon.cache.a.a()     // Catch: java.lang.Exception -> L2e
            r1.c(r12, r0)     // Catch: java.lang.Exception -> L2e
            com.mbridge.msdk.videocommon.cache.a r1 = com.mbridge.msdk.videocommon.cache.a.a()     // Catch: java.lang.Exception -> L2e
            r1.b(r12)     // Catch: java.lang.Exception -> L2e
            com.mbridge.msdk.videocommon.cache.a r1 = com.mbridge.msdk.videocommon.cache.a.a()     // Catch: java.lang.Exception -> L2e
            r1.a(r12, r0)     // Catch: java.lang.Exception -> L2e
        L4f:
            com.mbridge.msdk.videocommon.cache.a r0 = com.mbridge.msdk.videocommon.cache.a.a()     // Catch: java.lang.Exception -> L2e
            if (r0 == 0) goto L5c
            com.mbridge.msdk.videocommon.cache.a r0 = com.mbridge.msdk.videocommon.cache.a.a()     // Catch: java.lang.Exception -> L2e
            r0.a(r12, r3)     // Catch: java.lang.Exception -> L2e
        L5c:
            if (r13 == 0) goto L99
            int r0 = r13.size()     // Catch: java.lang.Exception -> L2e
            if (r0 <= 0) goto L99
            com.mbridge.msdk.reward.controller.a.a(r2, r4)     // Catch: java.lang.Exception -> L2e
            java.util.Iterator r13 = r13.iterator()     // Catch: java.lang.Exception -> L2e
        L6b:
            boolean r0 = r13.hasNext()     // Catch: java.lang.Exception -> L2e
            if (r0 == 0) goto L99
            java.lang.Object r0 = r13.next()     // Catch: java.lang.Exception -> L2e
            com.mbridge.msdk.foundation.entity.CampaignEx r0 = (com.mbridge.msdk.foundation.entity.CampaignEx) r0     // Catch: java.lang.Exception -> L2e
            if (r0 == 0) goto L6b
            java.lang.String r1 = r0.getCampaignUnitId()     // Catch: java.lang.Exception -> L2e
            java.lang.String r2 = r0.getRequestId()     // Catch: java.lang.Exception -> L2e
            java.lang.String r3 = r0.getId()     // Catch: java.lang.Exception -> L2e
            long r4 = r0.getPlct()     // Catch: java.lang.Exception -> L2e
            long r6 = r0.getPlctb()     // Catch: java.lang.Exception -> L2e
            long r8 = r0.getTimestamp()     // Catch: java.lang.Exception -> L2e
            java.lang.String r10 = r0.getLocalRequestId()     // Catch: java.lang.Exception -> L2e
            com.mbridge.msdk.foundation.same.buffer.b.a(r1, r2, r3, r4, r6, r8, r10)     // Catch: java.lang.Exception -> L2e
            goto L6b
        L99:
            if (r14 == 0) goto Lbf
            int r13 = r14.size()     // Catch: java.lang.Exception -> L2e
            if (r13 <= 0) goto Lbf
            java.util.Iterator r13 = r14.iterator()     // Catch: java.lang.Exception -> L2e
        La5:
            boolean r14 = r13.hasNext()     // Catch: java.lang.Exception -> L2e
            if (r14 == 0) goto Lbf
            java.lang.Object r14 = r13.next()     // Catch: java.lang.Exception -> L2e
            com.mbridge.msdk.foundation.entity.CampaignEx r14 = (com.mbridge.msdk.foundation.entity.CampaignEx) r14     // Catch: java.lang.Exception -> L2e
            if (r14 == 0) goto La5
            java.lang.String r0 = r14.getCampaignUnitId()     // Catch: java.lang.Exception -> L2e
            java.lang.String r14 = r14.getRequestId()     // Catch: java.lang.Exception -> L2e
            com.mbridge.msdk.foundation.same.buffer.b.c(r0, r14)     // Catch: java.lang.Exception -> L2e
            goto La5
        Lbf:
            com.mbridge.msdk.foundation.same.buffer.b.e(r12)     // Catch: java.lang.Exception -> L2e
            com.mbridge.msdk.foundation.controller.c r12 = com.mbridge.msdk.foundation.controller.c.m()     // Catch: java.lang.Exception -> L2e
            android.content.Context r12 = r12.d()     // Catch: java.lang.Exception -> L2e
            com.mbridge.msdk.foundation.db.b r12 = com.mbridge.msdk.foundation.db.b.a(r12)     // Catch: java.lang.Exception -> L2e
            r12.a()     // Catch: java.lang.Exception -> L2e
            goto Ld9
        Ld2:
            boolean r13 = com.mbridge.msdk.MBridgeConstans.DEBUG
            if (r13 == 0) goto Ld9
            r12.printStackTrace()
        Ld9:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.reward.adapter.c.a(java.lang.String, java.util.List, java.util.List):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, List<CampaignEx> list, boolean z10, String str2) {
        if (!TextUtils.isEmpty(str) && list != null && list.size() > 0) {
            CampaignEx campaignEx = list.get(0);
            if (campaignEx != null && !TextUtils.isEmpty(campaignEx.getEcppv()) && !TextUtils.isEmpty(str2)) {
                com.mbridge.msdk.foundation.db.e.a(com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d())).a(str, (CampaignEx) null, z10, str2);
                return;
            } else {
                com.mbridge.msdk.foundation.db.e.a(com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d())).a(str, list, z10);
                return;
            }
        }
        com.mbridge.msdk.foundation.db.e.a(com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d())).a(str, (CampaignEx) null, z10, str2);
    }

    private void a(CampaignEx campaignEx, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        try {
            com.mbridge.msdk.foundation.same.c.a(campaignEx, this.f28664a, cVar, new f());
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
            }
        }
    }

    private void a(CampaignUnit campaignUnit, List<CampaignEx> list) {
        com.mbridge.msdk.foundation.same.threadpool.a.b().execute(new g(campaignUnit));
    }

    private void a(String str) {
        if (z0.b(str)) {
            com.mbridge.msdk.reward.controller.a.f28761c0 = str;
        }
    }

    public void a(int i10, int i11, int i12) {
        this.f28685v = i10;
        this.f28686w = i11;
        this.f28687x = i12;
    }

    public void a(String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        if (this.f28675l != null && TextUtils.isEmpty(str)) {
            int q10 = this.f28675l.q() * 1000;
            List<CampaignEx> list = this.X;
            if (list != null && list.size() > 0) {
                if (System.currentTimeMillis() - this.X.get(0).getTimestamp() < q10) {
                    b("hit ltorwc", cVar);
                    return;
                }
            }
        }
        b(str, this.A, cVar);
    }

    public void a(String str, boolean z10, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        com.mbridge.msdk.foundation.same.threadpool.a.f().execute(new i(str, cVar));
        if (this.L != null) {
            h hVar = new h(str, cVar);
            this.D = hVar;
            this.L.postDelayed(hVar, 90000L);
            return;
        }
        b(str, z10, cVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.mbridge.msdk.foundation.same.report.metrics.c a(Message message) {
        com.mbridge.msdk.foundation.same.report.metrics.c cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
        if (message != null) {
            try {
                Bundle data = message.getData();
                return data != null ? com.mbridge.msdk.foundation.same.report.metrics.d.b().b(data.getString("metrics_data_lrid")) : cVar;
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    e10.printStackTrace();
                    return cVar;
                }
                return cVar;
            }
        }
        return cVar;
    }

    private com.mbridge.msdk.foundation.same.report.metrics.c a(List<CampaignEx> list) {
        com.mbridge.msdk.foundation.same.report.metrics.c cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
        String str = "";
        if (list != null) {
            try {
                if (list.size() > 0) {
                    if (list.get(0) != null) {
                        str = list.get(0).getLocalRequestId();
                    }
                    if (com.mbridge.msdk.foundation.same.report.metrics.d.b().c().containsKey(str)) {
                        com.mbridge.msdk.foundation.same.report.metrics.c cVar2 = com.mbridge.msdk.foundation.same.report.metrics.d.b().c().get(str);
                        if (cVar2 == null) {
                            try {
                                cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
                            } catch (Exception e10) {
                                e = e10;
                                cVar = cVar2;
                                if (MBridgeConstans.DEBUG) {
                                    e.printStackTrace();
                                }
                                return cVar;
                            }
                        } else {
                            cVar = cVar2;
                        }
                    }
                    cVar.i(str);
                    cVar.b(list);
                }
            } catch (Exception e11) {
                e = e11;
            }
        }
        com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
        eVar.a("cache", 1);
        eVar.a(CampaignEx.JSON_KEY_HB, 1);
        eVar.a("auto_load", 2);
        cVar.a("2000127", eVar);
        cVar.a("2000048", eVar);
        cVar.a(this.f28681r ? 287 : 94);
        cVar.h("1");
        cVar.f("2");
        if (!TextUtils.isEmpty(str)) {
            com.mbridge.msdk.foundation.same.report.metrics.d.b().c().put(str, cVar);
        }
        return cVar;
    }

    private void a(com.mbridge.msdk.foundation.same.report.metrics.c cVar, com.mbridge.msdk.foundation.same.report.metrics.e eVar, List<CampaignEx> list) {
        if (cVar != null) {
            if (list != null) {
                try {
                    if (list.size() > 0) {
                        cVar.b(list);
                        CampaignEx campaignEx = list.get(0);
                        if (campaignEx != null) {
                            cVar.i(campaignEx.getLocalRequestId());
                        }
                        cVar.b(list);
                    }
                } catch (Exception e10) {
                    if (MBridgeConstans.DEBUG) {
                        e10.printStackTrace();
                        return;
                    }
                    return;
                }
            }
            a(false, cVar, eVar);
        }
    }

    private void a(boolean z10, com.mbridge.msdk.foundation.same.report.metrics.c cVar, List<CampaignEx> list) {
        if (cVar == null) {
            cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
        }
        if (list != null && list.size() > 0) {
            CampaignEx campaignEx = list.get(0);
            if (campaignEx != null) {
                cVar.i(campaignEx.getLocalRequestId());
            }
            cVar.b(list);
        }
        a(z10, cVar, (com.mbridge.msdk.foundation.same.report.metrics.e) null);
    }

    private void a(boolean z10, com.mbridge.msdk.foundation.same.report.metrics.c cVar, com.mbridge.msdk.foundation.same.report.metrics.e eVar) {
        if (eVar == null) {
            eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
        }
        cVar.n(this.f28665b);
        cVar.a(this.f28681r ? 287 : 94);
        eVar.a("result", Integer.valueOf(z10 ? 1 : 2));
        eVar.a("bid_tk", this.C);
        eVar.a(CampaignEx.JSON_KEY_HB, Integer.valueOf(this.f28682s ? 1 : 0));
        cVar.a("m_offer_ready", eVar);
        com.mbridge.msdk.reward.report.metrics.a.a().a("m_offer_ready", cVar);
    }
}
