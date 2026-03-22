package com.mbridge.msdk.reward.controller;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.cache.a;
import com.mbridge.msdk.foundation.download.download.H5DownLoadManager;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.mbridge.msdk.foundation.tools.n0;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.r0;
import com.mbridge.msdk.foundation.tools.u0;
import com.mbridge.msdk.foundation.tools.x0;
import com.mbridge.msdk.foundation.tools.z0;
import com.mbridge.msdk.out.MBridgeIds;
import com.mbridge.msdk.out.RewardInfo;
import com.mbridge.msdk.reward.adapter.b;
import com.mbridge.msdk.videocommon.a;
import com.mbridge.msdk.videocommon.listener.InterVideoOutListener;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: RewardVideoController.java */
/* loaded from: classes6.dex */
public class a {

    /* renamed from: b0  reason: collision with root package name */
    public static String f28760b0 = "";

    /* renamed from: c0  reason: collision with root package name */
    public static String f28761c0;

    /* renamed from: d0  reason: collision with root package name */
    private static ConcurrentHashMap<String, Integer> f28762d0 = new ConcurrentHashMap<>();

    /* renamed from: e0  reason: collision with root package name */
    private static ConcurrentHashMap<String, String> f28763e0 = new ConcurrentHashMap<>();

    /* renamed from: f0  reason: collision with root package name */
    public static ConcurrentHashMap<String, i> f28764f0 = new ConcurrentHashMap<>();
    private Queue<Integer> I;
    private String J;
    private CopyOnWriteArrayList<CampaignEx> S;
    private List<CampaignEx> T;

    /* renamed from: a  reason: collision with root package name */
    private Context f28765a;

    /* renamed from: b  reason: collision with root package name */
    private com.mbridge.msdk.reward.adapter.c f28767b;

    /* renamed from: c  reason: collision with root package name */
    private com.mbridge.msdk.videocommon.setting.c f28768c;

    /* renamed from: d  reason: collision with root package name */
    private com.mbridge.msdk.videocommon.setting.a f28769d;

    /* renamed from: e  reason: collision with root package name */
    private volatile InterVideoOutListener f28770e;

    /* renamed from: f  reason: collision with root package name */
    private volatile h f28771f;

    /* renamed from: g  reason: collision with root package name */
    private String f28772g;

    /* renamed from: h  reason: collision with root package name */
    private String f28773h;

    /* renamed from: i  reason: collision with root package name */
    private MBridgeIds f28774i;

    /* renamed from: j  reason: collision with root package name */
    g f28775j;

    /* renamed from: k  reason: collision with root package name */
    private String f28776k;

    /* renamed from: l  reason: collision with root package name */
    private volatile String f28777l;

    /* renamed from: m  reason: collision with root package name */
    private String f28778m;

    /* renamed from: q  reason: collision with root package name */
    private int f28782q;

    /* renamed from: r  reason: collision with root package name */
    private int f28783r;

    /* renamed from: s  reason: collision with root package name */
    private int f28784s;

    /* renamed from: x  reason: collision with root package name */
    private boolean f28789x;

    /* renamed from: n  reason: collision with root package name */
    private int f28779n = 0;

    /* renamed from: p  reason: collision with root package name */
    private int f28781p = 2;

    /* renamed from: t  reason: collision with root package name */
    private boolean f28785t = false;

    /* renamed from: u  reason: collision with root package name */
    private boolean f28786u = false;

    /* renamed from: v  reason: collision with root package name */
    private boolean f28787v = false;

    /* renamed from: w  reason: collision with root package name */
    private boolean f28788w = false;

    /* renamed from: y  reason: collision with root package name */
    private boolean f28790y = false;

    /* renamed from: z  reason: collision with root package name */
    private String f28791z = "";
    private String A = "";
    private ArrayList<Integer> B = new ArrayList<>(7);
    private boolean C = false;
    private final Object D = new Object();
    public boolean E = false;
    int F = 25;
    int G = 1;
    private List<CampaignEx> H = new ArrayList();
    private com.mbridge.msdk.foundation.db.g K = null;
    private volatile boolean L = true;
    private volatile boolean M = false;
    private volatile boolean N = false;
    private volatile boolean O = false;
    private volatile boolean P = false;
    private volatile boolean Q = false;
    private volatile boolean R = false;
    volatile boolean U = false;
    volatile boolean V = false;
    volatile boolean W = false;
    volatile boolean X = false;
    volatile boolean Y = false;
    private JSONArray Z = new JSONArray();

    /* renamed from: a0  reason: collision with root package name */
    private int f28766a0 = 1;

    /* renamed from: o  reason: collision with root package name */
    private Handler f28780o = new com.mbridge.msdk.reward.controller.b(this);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RewardVideoController.java */
    /* loaded from: classes6.dex */
    public class c implements b.n {

        /* renamed from: a  reason: collision with root package name */
        com.mbridge.msdk.foundation.same.report.metrics.c f28812a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ CampaignEx f28813b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ CopyOnWriteArrayList f28814c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ boolean f28815d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ int f28816e;

        c(CampaignEx campaignEx, CopyOnWriteArrayList copyOnWriteArrayList, boolean z10, int i10) {
            this.f28813b = campaignEx;
            this.f28814c = copyOnWriteArrayList;
            this.f28815d = z10;
            this.f28816e = i10;
            this.f28812a = com.mbridge.msdk.foundation.same.report.metrics.d.b().c().get(campaignEx.getLocalRequestId());
        }

        @Override // com.mbridge.msdk.reward.adapter.b.n
        public void a(String str, String str2, String str3, String str4) {
        }

        @Override // com.mbridge.msdk.reward.adapter.b.n
        public void a(String str, String str2, com.mbridge.msdk.foundation.error.b bVar) {
            String unitId = bVar == null ? "" : bVar.e().getUnitId();
            a aVar = a.this;
            aVar.c(unitId, aVar.T);
            if (bVar != null) {
                bVar.c("errorCode: 3202 errorMessage: temp resource download failed");
            }
            if (this.f28812a == null) {
                this.f28812a = new com.mbridge.msdk.foundation.same.report.metrics.c();
            }
            this.f28812a.b(this.f28814c);
            this.f28812a.a(bVar);
            if (!this.f28815d && a.this.f28771f != null) {
                if (a.this.X) {
                    return;
                }
                a.this.X = true;
                a.this.f28771f.b(bVar, this.f28812a);
            } else if (this.f28816e != 1 || a.this.X || a.this.f28771f == null) {
            } else {
                a.this.X = true;
                a.this.f28771f.b(bVar, this.f28812a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RewardVideoController.java */
    /* loaded from: classes6.dex */
    public class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (a.this.K == null) {
                    a.this.K = com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d());
                }
                com.mbridge.msdk.foundation.db.h a10 = com.mbridge.msdk.foundation.db.h.a(a.this.K);
                if (a10 != null) {
                    a10.b(a.this.f28773h);
                }
            } catch (Throwable unused) {
                p0.b("RewardVideoController", "can't find DailyPlayCapDao");
            }
        }
    }

    /* compiled from: RewardVideoController.java */
    /* loaded from: classes6.dex */
    public class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final com.mbridge.msdk.reward.adapter.c f28831a;

        /* renamed from: b  reason: collision with root package name */
        private final int f28832b;

        /* renamed from: c  reason: collision with root package name */
        private final boolean f28833c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f28834d = false;

        /* renamed from: e  reason: collision with root package name */
        private int f28835e;

        /* renamed from: f  reason: collision with root package name */
        private String f28836f;

        /* renamed from: g  reason: collision with root package name */
        private com.mbridge.msdk.foundation.same.report.metrics.c f28837g;

        public f(com.mbridge.msdk.reward.adapter.c cVar, int i10, boolean z10, String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar2) {
            this.f28831a = cVar;
            this.f28832b = i10;
            this.f28833c = z10;
            if (cVar != null) {
                cVar.c(false);
            }
            this.f28836f = str;
            this.f28837g = cVar2;
        }

        public void a() {
            this.f28834d = true;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f28834d) {
                return;
            }
            com.mbridge.msdk.reward.adapter.c cVar = this.f28831a;
            if (cVar != null) {
                cVar.c(true);
            }
            p0.b("RewardVideoController", "adSource=" + this.f28832b + " CommonCancelTimeTask mIsDevCall：" + this.f28833c);
            a.this.a(com.mbridge.msdk.foundation.error.a.a(880023, "v3 is timeout"), this.f28837g);
        }

        public void a(int i10) {
            this.f28835e = i10;
        }
    }

    /* compiled from: RewardVideoController.java */
    /* loaded from: classes6.dex */
    public class g implements com.mbridge.msdk.reward.adapter.a {

        /* renamed from: a  reason: collision with root package name */
        private com.mbridge.msdk.reward.adapter.c f28839a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f28840b;

        /* renamed from: c  reason: collision with root package name */
        private f f28841c;

        public g(com.mbridge.msdk.reward.adapter.c cVar, boolean z10) {
            this.f28839a = cVar;
            this.f28840b = z10;
        }

        public void a(f fVar) {
            this.f28841c = fVar;
        }

        @Override // com.mbridge.msdk.reward.adapter.a
        public void a(String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            f fVar = this.f28841c;
            if (fVar != null) {
                fVar.a();
                a.this.f28780o.removeCallbacks(this.f28841c);
            }
            if (a.this.f28771f != null) {
                a.this.f28771f.a(a.this.f28777l, a.this.f28773h, cVar);
            }
        }

        @Override // com.mbridge.msdk.reward.adapter.a
        public void a(List<CampaignEx> list, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            f fVar = this.f28841c;
            if (fVar != null) {
                fVar.a();
                a.this.f28780o.removeCallbacks(this.f28841c);
            }
            a.this.a(list);
            if (a.this.f28771f != null) {
                if (list != null && list.size() == 1) {
                    CampaignEx campaignEx = list.get(0);
                    if (!com.mbridge.msdk.foundation.same.c.a(a.this.f28765a, campaignEx) && campaignEx.getFilterAdsVideoCallState() == 0) {
                        if (a.this.f28766a0 <= 1) {
                            com.mbridge.msdk.foundation.error.b a10 = com.mbridge.msdk.foundation.error.a.a(880020, "load exception second");
                            if (cVar != null) {
                                cVar.a(a10);
                                cVar.b(true);
                            }
                            a.this.f28771f.a(a10, cVar);
                            return;
                        }
                        a.m(a.this);
                        return;
                    }
                }
                a.this.f28771f.c(a.this.f28777l, a.this.f28773h, cVar);
            }
        }

        @Override // com.mbridge.msdk.reward.adapter.a
        public void a(List<CampaignEx> list, com.mbridge.msdk.foundation.error.b bVar, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            f fVar = this.f28841c;
            if (fVar != null) {
                fVar.a();
                a.this.f28780o.removeCallbacks(this.f28841c);
            }
            com.mbridge.msdk.reward.adapter.c cVar2 = this.f28839a;
            if (cVar2 != null) {
                cVar2.a((com.mbridge.msdk.reward.adapter.a) null);
                this.f28839a = null;
            }
            a.this.a(list);
            if (a.this.f28771f != null) {
                a.this.f28771f.a(bVar, cVar);
            }
        }
    }

    /* compiled from: RewardVideoController.java */
    /* loaded from: classes6.dex */
    public final class h {

        /* renamed from: a  reason: collision with root package name */
        private WeakReference<InterVideoOutListener> f28843a;

        /* renamed from: b  reason: collision with root package name */
        private volatile AtomicInteger f28844b;

        /* renamed from: c  reason: collision with root package name */
        private Handler f28845c;

        /* renamed from: d  reason: collision with root package name */
        private String f28846d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f28847e;

        /* synthetic */ h(a aVar, InterVideoOutListener interVideoOutListener, Handler handler, String str, C0410a c0410a) {
            this(interVideoOutListener, handler, str);
        }

        public void c(String str, String str2, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            InterVideoOutListener interVideoOutListener;
            Handler handler = this.f28845c;
            if (handler != null) {
                handler.removeMessages(1001002);
            }
            WeakReference<InterVideoOutListener> weakReference = this.f28843a;
            if (weakReference != null) {
                interVideoOutListener = weakReference.get();
            } else {
                interVideoOutListener = null;
            }
            if (this.f28844b.get() != 2 && this.f28845c != null) {
                a.m(a.this);
                this.f28844b.set(2);
                if (!a.this.O) {
                    a.this.O = true;
                    if (cVar == null) {
                        cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
                    }
                    cVar.b(a.this.H);
                    a.this.a("2000048", cVar, interVideoOutListener);
                    if (interVideoOutListener != null) {
                        Message obtain = Message.obtain();
                        Bundle bundle = new Bundle();
                        bundle.putString(MBridgeConstans.PLACEMENT_ID, str);
                        bundle.putString(MBridgeConstans.PROPERTIES_UNIT_ID, str2);
                        bundle.putString("metrics_data_lrid", cVar.o());
                        obtain.setData(bundle);
                        obtain.obj = str2;
                        obtain.what = 9;
                        this.f28845c.sendMessage(obtain);
                    }
                }
            }
        }

        public void d(String str, String str2, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            InterVideoOutListener interVideoOutListener;
            Handler handler = this.f28845c;
            if (handler != null) {
                handler.removeMessages(1001002);
            }
            WeakReference<InterVideoOutListener> weakReference = this.f28843a;
            if (weakReference != null) {
                interVideoOutListener = weakReference.get();
            } else {
                interVideoOutListener = null;
            }
            if (this.f28844b.get() != 2 && this.f28845c != null) {
                if (this.f28844b.get() == 1) {
                    this.f28844b.set(3);
                }
                if (!a.this.O) {
                    a.this.O = true;
                    if (cVar == null) {
                        cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
                    }
                    cVar.a(true);
                    cVar.b(a.this.H);
                    a.this.a("2000048", cVar, interVideoOutListener);
                    if (interVideoOutListener != null) {
                        Message obtain = Message.obtain();
                        Bundle bundle = new Bundle();
                        bundle.putString(MBridgeConstans.PLACEMENT_ID, str);
                        bundle.putString(MBridgeConstans.PROPERTIES_UNIT_ID, str2);
                        bundle.putSerializable("metrics_data_lrid", cVar.o());
                        obtain.setData(bundle);
                        obtain.obj = str2;
                        obtain.what = 9;
                        this.f28845c.sendMessage(obtain);
                    }
                    if (a.this.P) {
                        this.f28844b.set(2);
                    }
                }
            }
        }

        private h(InterVideoOutListener interVideoOutListener, Handler handler, String str) {
            this.f28843a = new WeakReference<>(interVideoOutListener);
            this.f28844b = new AtomicInteger(0);
            this.f28845c = handler;
            this.f28846d = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b(String str, String str2, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            WeakReference<InterVideoOutListener> weakReference = this.f28843a;
            InterVideoOutListener interVideoOutListener = weakReference != null ? weakReference.get() : null;
            if (this.f28845c == null || a.this.N) {
                return;
            }
            a.this.N = true;
            a.this.a("2000127", cVar, interVideoOutListener);
            if (interVideoOutListener != null) {
                Message obtain = Message.obtain();
                Bundle bundle = new Bundle();
                bundle.putString(MBridgeConstans.PLACEMENT_ID, str);
                bundle.putString(MBridgeConstans.PROPERTIES_UNIT_ID, str2);
                bundle.putBoolean(MBridgeConstans.PROPERTIES_IS_CACHED_CAMPAIGN, true);
                if (cVar != null) {
                    bundle.putString("metrics_data_lrid", cVar.o());
                }
                obtain.setData(bundle);
                obtain.obj = str2;
                obtain.what = 17;
                this.f28845c.sendMessage(obtain);
                if (r0.a().a("l_s_i_l_v_s", false)) {
                    d(str, str2, cVar);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int a() {
            return this.f28844b.get();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(int i10) {
            this.f28844b.set(i10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(String str, String str2, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            WeakReference<InterVideoOutListener> weakReference = this.f28843a;
            InterVideoOutListener interVideoOutListener = weakReference != null ? weakReference.get() : null;
            if ((this.f28844b.get() != 1 && this.f28844b.get() != 3) || this.f28845c == null || a.this.N) {
                return;
            }
            a.this.N = true;
            a.this.a("2000127", cVar, interVideoOutListener);
            if (interVideoOutListener != null) {
                Message obtain = Message.obtain();
                Bundle bundle = new Bundle();
                bundle.putString(MBridgeConstans.PLACEMENT_ID, str);
                bundle.putString(MBridgeConstans.PROPERTIES_UNIT_ID, str2);
                bundle.putBoolean(MBridgeConstans.PROPERTIES_IS_CACHED_CAMPAIGN, false);
                if (cVar != null) {
                    bundle.putString("metrics_data_lrid", cVar.o());
                }
                obtain.setData(bundle);
                obtain.obj = str2;
                obtain.what = 17;
                this.f28845c.sendMessage(obtain);
                if (r0.a().a("l_s_i_l_v_s", false)) {
                    c(str, str2, cVar);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b(String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            WeakReference<InterVideoOutListener> weakReference = this.f28843a;
            a.this.a("2000047", cVar, weakReference != null ? weakReference.get() : null);
            if (this.f28845c != null) {
                Message obtain = Message.obtain();
                obtain.obj = str;
                obtain.what = 18;
                if (cVar != null) {
                    Bundle bundle = new Bundle();
                    bundle.putString("metrics_data_lrid", cVar.o());
                    obtain.setData(bundle);
                }
                this.f28845c.sendMessage(obtain);
            }
        }

        public void a(com.mbridge.msdk.foundation.error.b bVar, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            String str;
            CampaignEx campaignEx;
            if (bVar != null && cVar != null) {
                str = bVar.g();
                cVar.a(bVar);
            } else {
                str = "";
            }
            if (a.this.f28767b != null && a.this.f28766a0 == 1) {
                a.this.f28767b.a(a.this.f28775j);
                CopyOnWriteArrayList<CampaignEx> f10 = a.this.f28767b.f();
                CampaignEx campaignEx2 = (a.this.H == null || a.this.H.size() == 0) ? null : (CampaignEx) a.this.H.get(0);
                if (campaignEx2 == null) {
                    if (f10 == null || f10.size() == 0) {
                        campaignEx = null;
                        if (!a.this.f28786u && ((campaignEx == null || TextUtils.isEmpty(campaignEx.getNLRid())) && ((f10 == null || f10.size() == 0) && a.this.f28767b.a(campaignEx, true, bVar, 2, cVar)))) {
                            return;
                        }
                        a.this.f28767b.a((com.mbridge.msdk.reward.adapter.a) null);
                    } else {
                        campaignEx2 = f10.get(0);
                    }
                }
                campaignEx = campaignEx2;
                if (!a.this.f28786u) {
                }
                a.this.f28767b.a((com.mbridge.msdk.reward.adapter.a) null);
            }
            Handler handler = this.f28845c;
            if (handler != null) {
                handler.removeMessages(1001002);
            }
            WeakReference<InterVideoOutListener> weakReference = this.f28843a;
            InterVideoOutListener interVideoOutListener = weakReference != null ? weakReference.get() : null;
            if (this.f28844b.get() == 2 || this.f28845c == null) {
                return;
            }
            a.this.P = true;
            if (!a.this.R || str.contains("resource load timeout")) {
                a.this.Q = true;
            }
            if (a.this.O) {
                this.f28844b.set(2);
            }
            if (a.this.P && a.this.Q && !a.this.O) {
                if (a.this.f28766a0 > 1) {
                    a.m(a.this);
                    a.this.f28767b.a(a.this.f28775j);
                    return;
                }
                this.f28844b.set(2);
                a.this.a("2000047", cVar, interVideoOutListener);
                if (interVideoOutListener != null) {
                    Message obtain = Message.obtain();
                    obtain.obj = str;
                    obtain.what = 16;
                    if (cVar != null) {
                        Bundle bundle = new Bundle();
                        bundle.putString("metrics_data_lrid", cVar.o());
                        obtain.setData(bundle);
                    }
                    this.f28845c.sendMessage(obtain);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b(com.mbridge.msdk.foundation.error.b bVar, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            String str;
            WeakReference<InterVideoOutListener> weakReference = this.f28843a;
            InterVideoOutListener interVideoOutListener = weakReference != null ? weakReference.get() : null;
            if (this.f28844b.get() == 2 || this.f28845c == null) {
                return;
            }
            a.this.Q = true;
            if (bVar != null) {
                str = bVar.g();
            } else {
                str = "";
            }
            if (str.contains("resource load timeout")) {
                a.this.P = true;
            }
            if (a.this.Q && a.this.P && !a.this.O) {
                this.f28844b.set(2);
                if (interVideoOutListener != null) {
                    Message obtain = Message.obtain();
                    obtain.obj = str;
                    obtain.what = 16;
                    if (cVar != null) {
                        Bundle bundle = new Bundle();
                        bundle.putString("metrics_data_lrid", cVar.o());
                        obtain.setData(bundle);
                    }
                    this.f28845c.sendMessage(obtain);
                }
                if (cVar == null) {
                    cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
                }
                cVar.a(true);
                a.this.a("2000047", cVar, interVideoOutListener);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            this.f28844b.set(2);
            b(str, cVar);
        }

        public void a(boolean z10) {
            this.f28847e = z10;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: RewardVideoController.java */
    /* loaded from: classes6.dex */
    public final class i extends com.mbridge.msdk.video.bt.module.orglistener.b {

        /* renamed from: c  reason: collision with root package name */
        private a f28849c;

        /* renamed from: d  reason: collision with root package name */
        private Handler f28850d;

        /* renamed from: e  reason: collision with root package name */
        private int f28851e;

        /* compiled from: RewardVideoController.java */
        /* renamed from: com.mbridge.msdk.reward.controller.a$i$a  reason: collision with other inner class name */
        /* loaded from: classes6.dex */
        class RunnableC0417a implements Runnable {
            RunnableC0417a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                int i10;
                if (i.this.f28849c != null) {
                    com.mbridge.msdk.foundation.same.report.metrics.d b10 = com.mbridge.msdk.foundation.same.report.metrics.d.b();
                    if (a.this.f28785t) {
                        i10 = 287;
                    } else {
                        i10 = 94;
                    }
                    i.this.f28849c.a(false, b10.a(0, i10, a.this.f28773h, true, 1));
                }
            }
        }

        /* synthetic */ i(a aVar, a aVar2, Handler handler, C0410a c0410a) {
            this(aVar2, handler);
        }

        @Override // com.mbridge.msdk.video.bt.module.orglistener.b, com.mbridge.msdk.video.bt.module.orglistener.h
        public void b(String str, String str2) {
            try {
                a aVar = this.f28849c;
                if (aVar != null && aVar.f28770e != null) {
                    try {
                        this.f28849c.f28770e.onVideoComplete(a.this.f28774i);
                    } catch (Exception e10) {
                        if (MBridgeConstans.DEBUG) {
                            p0.b("RewardVideoController", e10.getMessage());
                        }
                    }
                    this.f28851e = 5;
                }
            } catch (Exception e11) {
                if (MBridgeConstans.DEBUG) {
                    p0.b("RewardVideoController", e11.getMessage());
                }
            }
        }

        public void e() {
            a.this.B.clear();
            this.f28849c = null;
        }

        private i(a aVar, Handler handler) {
            this.f28851e = 0;
            this.f28849c = aVar;
            this.f28850d = handler;
        }

        @Override // com.mbridge.msdk.video.bt.module.orglistener.b, com.mbridge.msdk.video.bt.module.orglistener.h
        public void a(com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            a.this.E = false;
            try {
                com.mbridge.msdk.reward.candidate.a aVar = new com.mbridge.msdk.reward.candidate.a(a.this.f28773h, a.this.f28785t);
                a aVar2 = this.f28849c;
                aVar.a(cVar.o(), (aVar2 == null || aVar2.f28767b == null) ? "" : this.f28849c.f28767b.H, 3, a.f28760b0);
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    p0.b("RewardVideoController", e10.getMessage());
                }
            }
            try {
                a aVar3 = this.f28849c;
                if (aVar3 != null) {
                    aVar3.C = true;
                    if (this.f28849c.f28767b != null) {
                        this.f28849c.f28767b.H = "";
                    }
                    this.f28849c.q();
                    if (a.this.f28786u) {
                        a.this.a();
                    }
                    a aVar4 = a.this;
                    aVar4.a("2000130", cVar, aVar4.f28770e, "");
                    b();
                    if (this.f28849c.f28770e != null) {
                        this.f28849c.f28770e.onAdShow(a.this.f28774i);
                        this.f28851e = 2;
                    }
                }
            } catch (Throwable th2) {
                if (MBridgeConstans.DEBUG) {
                    p0.b("RewardVideoController", th2.getMessage());
                }
            }
        }

        @Override // com.mbridge.msdk.video.bt.module.orglistener.b, com.mbridge.msdk.video.bt.module.orglistener.h
        public void a(com.mbridge.msdk.foundation.same.report.metrics.c cVar, boolean z10, com.mbridge.msdk.videocommon.entity.c cVar2) {
            try {
                a aVar = this.f28849c;
                if (aVar != null && aVar.f28770e != null) {
                    if (cVar2 == null) {
                        cVar2 = com.mbridge.msdk.videocommon.entity.c.a(this.f28849c.f28778m);
                    }
                    if (a.this.f28786u) {
                        a.this.a();
                        a.this.v();
                        com.mbridge.msdk.foundation.same.buffer.b.d(a.this.f28773h, a.this.m());
                    }
                    this.f28849c.f28770e.onAdClose(a.this.f28774i, new RewardInfo(z10, cVar2.c(), String.valueOf(cVar2.a())));
                    this.f28851e = 7;
                    this.f28849c.C = false;
                    e();
                }
                com.mbridge.msdk.foundation.same.report.metrics.d.b().b("2000152", cVar, null);
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    p0.b("RewardVideoController", e10.getMessage());
                }
            }
        }

        @Override // com.mbridge.msdk.video.bt.module.orglistener.b, com.mbridge.msdk.video.bt.module.orglistener.h
        public void a(com.mbridge.msdk.foundation.same.report.metrics.c cVar, String str) {
            try {
                a aVar = a.this;
                aVar.E = false;
                if (this.f28849c != null) {
                    if (aVar.f28786u) {
                        a.this.a();
                    }
                    this.f28849c.C = false;
                    a.this.a("2000131", cVar, this.f28849c.f28770e, str);
                    a();
                    if (this.f28849c.f28770e != null) {
                        try {
                            this.f28849c.f28770e.onShowFail(cVar, a.this.f28774i, str);
                        } catch (Exception e10) {
                            if (MBridgeConstans.DEBUG) {
                                p0.b("RewardVideoController", e10.getMessage());
                            }
                        }
                        this.f28851e = 4;
                    }
                }
            } catch (Exception e11) {
                this.f28851e = 0;
                if (MBridgeConstans.DEBUG) {
                    p0.b("RewardVideoController", e11.getMessage());
                }
            }
        }

        @Override // com.mbridge.msdk.video.bt.module.orglistener.b, com.mbridge.msdk.video.bt.module.orglistener.h
        public void a(boolean z10, String str, String str2) {
            try {
                a aVar = this.f28849c;
                if (aVar == null || aVar.f28770e == null) {
                    return;
                }
                if (a.this.f28786u) {
                    a.this.a();
                }
                this.f28849c.C = false;
                try {
                    this.f28849c.f28770e.onVideoAdClicked(z10, a.this.f28774i);
                } catch (Exception e10) {
                    if (MBridgeConstans.DEBUG) {
                        p0.b("RewardVideoController", e10.getMessage());
                    }
                }
            } catch (Exception e11) {
                if (MBridgeConstans.DEBUG) {
                    p0.b("RewardVideoController", e11.getMessage());
                }
            }
        }

        @Override // com.mbridge.msdk.video.bt.module.orglistener.b, com.mbridge.msdk.video.bt.module.orglistener.h
        public void a(boolean z10, int i10) {
            try {
                a aVar = this.f28849c;
                if (aVar != null && aVar.f28770e != null) {
                    try {
                        this.f28849c.f28770e.onAdCloseWithIVReward(a.this.f28774i, new RewardInfo(z10, i10));
                    } catch (Exception e10) {
                        if (MBridgeConstans.DEBUG) {
                            p0.b("RewardVideoController", e10.getMessage());
                        }
                    }
                }
            } catch (Exception e11) {
                if (MBridgeConstans.DEBUG) {
                    p0.b("RewardVideoController", e11.getMessage());
                }
            }
        }

        @Override // com.mbridge.msdk.video.bt.module.orglistener.b, com.mbridge.msdk.video.bt.module.orglistener.h
        public void a(String str, String str2) {
            try {
                a aVar = this.f28849c;
                if (aVar == null || aVar.f28770e == null) {
                    return;
                }
                try {
                    this.f28849c.f28770e.onEndcardShow(a.this.f28774i);
                    com.mbridge.msdk.foundation.feedback.b b10 = com.mbridge.msdk.foundation.feedback.b.b();
                    b10.a(str2 + "_2", 2);
                } catch (Exception e10) {
                    if (MBridgeConstans.DEBUG) {
                        p0.b("RewardVideoController", e10.getMessage());
                    }
                }
                this.f28851e = 6;
            } catch (Exception e11) {
                if (MBridgeConstans.DEBUG) {
                    p0.b("RewardVideoController", e11.getMessage());
                }
            }
        }

        @Override // com.mbridge.msdk.video.bt.module.orglistener.b, com.mbridge.msdk.video.bt.module.orglistener.h
        public void a(int i10, String str, String str2) {
            this.f28851e = i10;
            a aVar = this.f28849c;
            if (aVar == null || aVar.f28786u || this.f28849c.f28785t || this.f28849c.f28768c == null || !this.f28849c.f28768c.a(this.f28851e) || this.f28849c.f28771f == null || this.f28849c.f28771f.a() == 1 || this.f28849c.f28771f.a() == 3 || a.this.B.contains(Integer.valueOf(this.f28851e))) {
                return;
            }
            a.this.B.add(Integer.valueOf(this.f28851e));
            int f10 = this.f28849c.f28768c.f() * 1000;
            if (this.f28851e == 4) {
                f10 = 3000;
            }
            Handler handler = this.f28850d;
            if (handler != null) {
                handler.removeMessages(1001001);
                this.f28850d.sendEmptyMessageDelayed(1001001, f10);
                return;
            }
            new Handler(Looper.getMainLooper()).postDelayed(new RunnableC0417a(), f10);
        }
    }

    /* compiled from: RewardVideoController.java */
    /* loaded from: classes6.dex */
    public class j {
        public j() {
        }

        public void a(String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            a.this.f28766a0++;
            a aVar = a.this;
            aVar.b(aVar.f28789x, str, cVar);
        }
    }

    static /* synthetic */ int m(a aVar) {
        int i10 = aVar.f28766a0;
        aVar.f28766a0 = i10 - 1;
        return i10;
    }

    private void w() {
        com.mbridge.msdk.foundation.db.e.a(com.mbridge.msdk.foundation.db.g.a(this.f28765a)).b(this.f28773h);
    }

    private void x() {
        try {
            List<CampaignEx> c10 = com.mbridge.msdk.foundation.db.e.a(com.mbridge.msdk.foundation.db.g.a(this.f28765a)).c(this.f28773h);
            if (c10 == null || c10.size() <= 0) {
                return;
            }
            for (CampaignEx campaignEx : c10) {
                if (!TextUtils.isEmpty(campaignEx.getCMPTEntryUrl())) {
                    com.mbridge.msdk.videocommon.a.e(this.f28773h + "_" + campaignEx.getRequestId() + "_" + campaignEx.getCMPTEntryUrl());
                    if (campaignEx.getRewardTemplateMode() != null && !TextUtils.isEmpty(campaignEx.getRewardTemplateMode().e())) {
                        com.mbridge.msdk.videocommon.a.e(this.f28773h + "_" + campaignEx.getId() + "_" + campaignEx.getRequestId() + "_" + campaignEx.getRewardTemplateMode().e());
                    }
                } else {
                    com.mbridge.msdk.videocommon.a.b(campaignEx.getAdType(), campaignEx);
                }
            }
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                p0.b("RewardVideoController", e10.getMessage());
            }
        }
    }

    public void f(boolean z10) {
        this.f28790y = z10;
    }

    public MBridgeIds g() {
        return this.f28774i;
    }

    public List<CampaignEx> h() {
        return this.T;
    }

    public CopyOnWriteArrayList<CampaignEx> i() {
        return this.S;
    }

    public String j() {
        com.mbridge.msdk.reward.adapter.c cVar = this.f28767b;
        if (cVar != null) {
            return cVar.g();
        }
        return "";
    }

    public h k() {
        return this.f28771f;
    }

    public String l() {
        return this.f28777l;
    }

    public String m() {
        com.mbridge.msdk.reward.adapter.c cVar = this.f28767b;
        if (cVar != null) {
            return cVar.a(this.C);
        }
        return "";
    }

    public com.mbridge.msdk.reward.adapter.c n() {
        return this.f28767b;
    }

    public InterVideoOutListener o() {
        return this.f28770e;
    }

    public String p() {
        return this.f28773h;
    }

    public void q() {
        com.mbridge.msdk.foundation.same.threadpool.a.b().execute(new e());
    }

    public boolean r() {
        return this.f28786u;
    }

    public boolean s() {
        return this.f28789x;
    }

    public boolean t() {
        return this.f28785t;
    }

    public boolean u() {
        return (this.f28770e == null || this.f28771f == null) ? false : true;
    }

    public void v() {
        ConcurrentHashMap<String, String> concurrentHashMap;
        if (!this.C || (concurrentHashMap = f28763e0) == null || concurrentHashMap.containsKey(m())) {
            return;
        }
        f28763e0.remove(m());
    }

    private com.mbridge.msdk.foundation.same.report.metrics.c b(boolean z10, String str, com.mbridge.msdk.foundation.same.report.metrics.e eVar) {
        com.mbridge.msdk.foundation.same.report.metrics.c cVar;
        String a10;
        com.mbridge.msdk.foundation.same.report.metrics.c cVar2 = new com.mbridge.msdk.foundation.same.report.metrics.c();
        try {
            b(z10);
            if (TextUtils.isEmpty(str)) {
                a10 = SameMD5.getMD5(u0.d());
            } else {
                a10 = a(str);
            }
            this.A = a10;
            cVar2 = com.mbridge.msdk.foundation.same.report.metrics.d.b().b(a10);
            if (cVar2 == null) {
                cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
                try {
                    com.mbridge.msdk.foundation.same.report.metrics.d.b().c().put(a10, cVar);
                    cVar.d(true);
                    cVar2 = cVar;
                } catch (Exception e10) {
                    e = e10;
                    if (MBridgeConstans.DEBUG) {
                        p0.b("RewardVideoController", e.getMessage());
                    }
                    return cVar;
                }
            }
            cVar2.i(a10);
            cVar2.n(this.f28773h);
            if (eVar != null) {
                if (eVar.a("adtp")) {
                    cVar2.a(Integer.parseInt((String) eVar.b("adtp")));
                }
                if (eVar.a(CampaignEx.JSON_KEY_HB)) {
                    String str2 = (String) eVar.b(CampaignEx.JSON_KEY_HB);
                    cVar2.h(str2);
                    if (str2.equals("1")) {
                        cVar2.g(str);
                    }
                }
            }
            cVar2.f(z10 ? "2" : "1");
            if (z10) {
                com.mbridge.msdk.reward.report.metrics.a.a().a("2000123", cVar2);
                return cVar2;
            }
            return cVar2;
        } catch (Exception e11) {
            e = e11;
            cVar = cVar2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(String str, List<CampaignEx> list) {
        if (list != null) {
            try {
                if (list.size() <= 0 || this.O) {
                    return;
                }
                com.mbridge.msdk.foundation.db.e.a(com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d())).b(list, str);
            } catch (Throwable th2) {
                p0.b("RewardVideoController", th2.getMessage());
            }
        }
    }

    private void f() {
        com.mbridge.msdk.reward.adapter.c cVar = new com.mbridge.msdk.reward.adapter.c(this.f28765a, this.f28777l, this.f28773h);
        this.f28767b = cVar;
        cVar.d(this.f28785t);
        this.f28767b.e(this.f28786u);
        if (this.f28785t) {
            this.f28767b.a(this.f28782q, this.f28783r, this.f28784s);
        }
        this.f28767b.a(this.f28768c);
    }

    public void d(boolean z10) {
        this.f28785t = z10;
        if (z10) {
            this.f28781p = com.mbridge.msdk.foundation.same.a.X;
        } else {
            this.f28781p = com.mbridge.msdk.foundation.same.a.W;
        }
    }

    public void e(boolean z10) {
        this.f28786u = z10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RewardVideoController.java */
    /* loaded from: classes6.dex */
    public class d implements b.n {

        /* renamed from: a  reason: collision with root package name */
        com.mbridge.msdk.foundation.same.report.metrics.c f28818a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ CampaignEx f28819b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ CopyOnWriteArrayList f28820c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ com.mbridge.msdk.reward.adapter.c f28821d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ boolean f28822e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ int f28823f;

        d(CampaignEx campaignEx, CopyOnWriteArrayList copyOnWriteArrayList, com.mbridge.msdk.reward.adapter.c cVar, boolean z10, int i10) {
            this.f28819b = campaignEx;
            this.f28820c = copyOnWriteArrayList;
            this.f28821d = cVar;
            this.f28822e = z10;
            this.f28823f = i10;
            this.f28818a = com.mbridge.msdk.foundation.same.report.metrics.d.b().c().get(campaignEx.getLocalRequestId());
        }

        @Override // com.mbridge.msdk.reward.adapter.b.n
        public void a(String str, String str2, String str3, String str4) {
            a.this.V = true;
            if (!a.this.U || a.this.W || a.this.f28780o == null) {
                return;
            }
            a.this.W = true;
            a.this.f28780o.post(new RunnableC0415a(str3, str, str2));
        }

        @Override // com.mbridge.msdk.reward.adapter.b.n
        public void a(String str, String str2, com.mbridge.msdk.foundation.error.b bVar) {
            String str3;
            if (bVar != null) {
                str3 = bVar.e().getUnitId();
                bVar.c("errorCode: 3203 errorMessage: tpl temp resource download failed");
            } else {
                str3 = "";
            }
            a aVar = a.this;
            aVar.c(str3, aVar.T);
            if (this.f28818a == null) {
                this.f28818a = new com.mbridge.msdk.foundation.same.report.metrics.c();
            }
            this.f28818a.a(bVar);
            this.f28818a.b(this.f28820c);
            a.this.V = false;
            if (a.this.f28771f == null || a.this.X) {
                return;
            }
            a.this.X = true;
            a.this.f28771f.b(bVar, this.f28818a);
        }

        /* compiled from: RewardVideoController.java */
        /* renamed from: com.mbridge.msdk.reward.controller.a$d$a  reason: collision with other inner class name */
        /* loaded from: classes6.dex */
        class RunnableC0415a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ String f28825a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ String f28826b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ String f28827c;

            RunnableC0415a(String str, String str2, String str3) {
                this.f28825a = str;
                this.f28826b = str2;
                this.f28827c = str3;
            }

            @Override // java.lang.Runnable
            public void run() {
                com.mbridge.msdk.reward.adapter.b b10 = com.mbridge.msdk.reward.adapter.b.b();
                boolean z10 = a.this.f28790y;
                Handler handler = a.this.f28780o;
                boolean z11 = a.this.f28785t;
                boolean z12 = a.this.f28786u;
                String str = this.f28825a;
                String requestIdNotice = d.this.f28819b.getRequestIdNotice();
                String str2 = this.f28826b;
                String str3 = this.f28827c;
                String cMPTEntryUrl = d.this.f28819b.getCMPTEntryUrl();
                int i10 = a.this.f28781p;
                d dVar = d.this;
                b10.a(z10, handler, z11, z12, str, requestIdNotice, str2, str3, cMPTEntryUrl, i10, dVar.f28819b, dVar.f28820c, H5DownLoadManager.getInstance().getH5ResAddress(d.this.f28819b.getCMPTEntryUrl()), this.f28827c, a.this.f28768c, new C0416a(), true);
            }

            /* compiled from: RewardVideoController.java */
            /* renamed from: com.mbridge.msdk.reward.controller.a$d$a$a  reason: collision with other inner class name */
            /* loaded from: classes6.dex */
            class C0416a implements b.o {
                C0416a() {
                }

                @Override // com.mbridge.msdk.reward.adapter.b.o
                public void a(String str, String str2, String str3, String str4, String str5, a.C0455a c0455a) {
                    d dVar = d.this;
                    com.mbridge.msdk.reward.adapter.c cVar = dVar.f28821d;
                    if (cVar != null && cVar.a(dVar.f28820c, dVar.f28822e, dVar.f28823f)) {
                        if (a.this.f28771f == null || a.this.Y) {
                            return;
                        }
                        a.this.Y = true;
                        p0.a("RewardVideoController", "Cache onVideoLoadSuccess");
                        d dVar2 = d.this;
                        a.this.a(dVar2.f28820c);
                        d dVar3 = d.this;
                        com.mbridge.msdk.foundation.same.report.metrics.c cVar2 = dVar3.f28818a;
                        if (cVar2 != null) {
                            cVar2.b(dVar3.f28820c);
                        }
                        a.this.f28771f.d(str2, str3, d.this.f28818a);
                        return;
                    }
                    a aVar = a.this;
                    aVar.c(str3, aVar.T);
                    if (a.this.f28771f == null || a.this.X) {
                        return;
                    }
                    a.this.X = true;
                    com.mbridge.msdk.foundation.error.b a10 = com.mbridge.msdk.foundation.error.a.a(880015, "errorCode: 3505 errorMessage: tpl temp preload success but isReady false");
                    d dVar4 = d.this;
                    if (dVar4.f28818a == null) {
                        dVar4.f28818a = new com.mbridge.msdk.foundation.same.report.metrics.c();
                    }
                    d dVar5 = d.this;
                    dVar5.f28818a.b(dVar5.f28820c);
                    d.this.f28818a.a(a10);
                    a.this.f28771f.b(a10, d.this.f28818a);
                }

                @Override // com.mbridge.msdk.reward.adapter.b.o
                public void a(String str, String str2, String str3, a.C0455a c0455a, com.mbridge.msdk.foundation.error.b bVar) {
                    RunnableC0415a runnableC0415a = RunnableC0415a.this;
                    a aVar = a.this;
                    aVar.c(runnableC0415a.f28827c, aVar.T);
                    if (a.this.f28771f == null || a.this.X) {
                        return;
                    }
                    a.this.X = true;
                    if (bVar != null) {
                        bVar.c("errorCode: 3303 errorMessage: tpl temp preload failed");
                    }
                    d dVar = d.this;
                    if (dVar.f28818a == null) {
                        dVar.f28818a = new com.mbridge.msdk.foundation.same.report.metrics.c();
                    }
                    d dVar2 = d.this;
                    dVar2.f28818a.b(dVar2.f28820c);
                    d.this.f28818a.a(bVar);
                    a.this.f28771f.b(bVar, d.this.f28818a);
                }
            }
        }
    }

    public void e() {
        n0.b();
    }

    private boolean d() {
        if (this.f28767b == null) {
            f();
        }
        com.mbridge.msdk.reward.adapter.c cVar = this.f28767b;
        if (cVar != null) {
            return cVar.b(true);
        }
        return false;
    }

    public void c(String str, String str2) {
        try {
            this.f28765a = com.mbridge.msdk.foundation.controller.c.m().d();
            this.f28773h = str2;
            if (TextUtils.isEmpty(str)) {
                str = "";
            }
            this.f28777l = str;
            this.f28774i = new MBridgeIds(this.f28777l, this.f28773h);
            this.f28769d = com.mbridge.msdk.videocommon.setting.b.b().c();
            com.mbridge.msdk.foundation.same.threadpool.a.b().execute(new com.mbridge.msdk.reward.controller.c(this.f28765a, this.f28773h));
            if (this.K == null) {
                this.K = com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d());
            }
        } catch (Throwable th2) {
            p0.b("RewardVideoController", th2.getMessage(), th2);
        }
    }

    public void a(int i10) {
        this.f28781p = i10;
    }

    private void d(String str, String str2) {
        try {
            com.mbridge.msdk.foundation.same.report.metrics.c cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
            cVar.n(this.f28773h);
            cVar.a(this.f28785t ? 287 : 94);
            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
            eVar.a("event_name", str);
            eVar.a("reason", str2);
            cVar.a("m_temp_is_ready_check", eVar);
            com.mbridge.msdk.reward.report.metrics.a.a().a("m_temp_is_ready_check", cVar);
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
            }
        }
    }

    public void a(String str, String str2, String str3, String str4) {
        if (!TextUtils.isEmpty(str)) {
            Context context = this.f28765a;
            x0.b(context, "MBridge_ConfirmTitle" + this.f28773h, str.trim());
        }
        if (!TextUtils.isEmpty(str2)) {
            Context context2 = this.f28765a;
            x0.b(context2, "MBridge_ConfirmContent" + this.f28773h, str2.trim());
        }
        if (!TextUtils.isEmpty(str4)) {
            Context context3 = this.f28765a;
            x0.b(context3, "MBridge_CancelText" + this.f28773h, str4.trim());
        }
        if (TextUtils.isEmpty(str3)) {
            return;
        }
        Context context4 = this.f28765a;
        x0.b(context4, "MBridge_ConfirmText" + this.f28773h, str3.trim());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RewardVideoController.java */
    /* loaded from: classes6.dex */
    public class b implements b.h {

        /* renamed from: a  reason: collision with root package name */
        com.mbridge.msdk.foundation.same.report.metrics.c f28793a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ CampaignEx f28794b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ boolean f28795c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ com.mbridge.msdk.reward.adapter.c f28796d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ int f28797e;

        b(CampaignEx campaignEx, boolean z10, com.mbridge.msdk.reward.adapter.c cVar, int i10) {
            this.f28794b = campaignEx;
            this.f28795c = z10;
            this.f28796d = cVar;
            this.f28797e = i10;
            this.f28793a = com.mbridge.msdk.foundation.same.report.metrics.d.b().c().get(campaignEx.getLocalRequestId());
        }

        @Override // com.mbridge.msdk.reward.adapter.b.h
        public void a(String str, String str2, String str3, CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList) {
            a.this.U = true;
            if (!this.f28795c) {
                Iterator<CampaignEx> it = copyOnWriteArrayList.iterator();
                while (it.hasNext()) {
                    CampaignEx next = it.next();
                    if (next != null && next.getRewardTemplateMode() != null && !TextUtils.isEmpty(next.getRewardTemplateMode().e()) && !next.getRewardTemplateMode().e().contains(CampaignEx.KEY_IS_CMPT_ENTRY) && a.this.f28780o != null) {
                        a.this.f28780o.post(new RunnableC0411a(next, copyOnWriteArrayList, str, str2, str3));
                    } else {
                        com.mbridge.msdk.reward.adapter.c cVar = this.f28796d;
                        if (cVar != null && cVar.a(copyOnWriteArrayList, this.f28795c, this.f28797e)) {
                            if (a.this.f28771f != null && !a.this.Y) {
                                a.this.Y = true;
                                p0.a("RewardVideoController", "Cache onVideoLoadSuccessForCache");
                                a.this.a(copyOnWriteArrayList);
                                com.mbridge.msdk.foundation.same.report.metrics.c cVar2 = this.f28793a;
                                if (cVar2 != null) {
                                    cVar2.b(copyOnWriteArrayList);
                                }
                                a.this.f28771f.d(str, str2, this.f28793a);
                            }
                        } else {
                            a aVar = a.this;
                            aVar.c(str2, aVar.T);
                            if (a.this.f28771f != null && !a.this.X) {
                                a.this.X = true;
                                com.mbridge.msdk.foundation.error.b a10 = com.mbridge.msdk.foundation.error.a.a(880015, "errorCode: 3503 errorMessage: have no temp but isReady false");
                                if (this.f28793a == null) {
                                    this.f28793a = new com.mbridge.msdk.foundation.same.report.metrics.c();
                                }
                                this.f28793a.b(a.this.S);
                                this.f28793a.a(a10);
                                a.this.f28771f.b(a10, this.f28793a);
                            }
                        }
                    }
                }
            } else if (!a.this.V || a.this.W || a.this.f28780o == null) {
            } else {
                a.this.W = true;
                a.this.f28780o.post(new RunnableC0413b(str3, str, str2, copyOnWriteArrayList));
            }
        }

        /* compiled from: RewardVideoController.java */
        /* renamed from: com.mbridge.msdk.reward.controller.a$b$a  reason: collision with other inner class name */
        /* loaded from: classes6.dex */
        class RunnableC0411a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ CampaignEx f28799a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ CopyOnWriteArrayList f28800b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ String f28801c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ String f28802d;

            /* renamed from: e  reason: collision with root package name */
            final /* synthetic */ String f28803e;

            RunnableC0411a(CampaignEx campaignEx, CopyOnWriteArrayList copyOnWriteArrayList, String str, String str2, String str3) {
                this.f28799a = campaignEx;
                this.f28800b = copyOnWriteArrayList;
                this.f28801c = str;
                this.f28802d = str2;
                this.f28803e = str3;
            }

            @Override // java.lang.Runnable
            public void run() {
                com.mbridge.msdk.reward.adapter.b.b().a(a.this.f28790y, a.this.f28780o, a.this.f28785t, a.this.f28786u, null, this.f28799a.getRewardTemplateMode().e(), a.this.f28781p, b.this.f28794b, this.f28800b, H5DownLoadManager.getInstance().getH5ResAddress(this.f28799a.getRewardTemplateMode().e()), this.f28801c, this.f28802d, this.f28803e, this.f28799a.getRequestIdNotice(), a.this.f28768c, new C0412a());
            }

            /* compiled from: RewardVideoController.java */
            /* renamed from: com.mbridge.msdk.reward.controller.a$b$a$a  reason: collision with other inner class name */
            /* loaded from: classes6.dex */
            class C0412a implements b.o {
                C0412a() {
                }

                @Override // com.mbridge.msdk.reward.adapter.b.o
                public void a(String str, String str2, String str3, String str4, String str5, a.C0455a c0455a) {
                    RunnableC0411a runnableC0411a = RunnableC0411a.this;
                    b bVar = b.this;
                    com.mbridge.msdk.reward.adapter.c cVar = bVar.f28796d;
                    if (cVar != null && cVar.a(runnableC0411a.f28800b, bVar.f28795c, bVar.f28797e)) {
                        if (a.this.f28771f == null || a.this.Y) {
                            return;
                        }
                        a.this.Y = true;
                        RunnableC0411a runnableC0411a2 = RunnableC0411a.this;
                        a.this.a(runnableC0411a2.f28800b);
                        a.this.f28771f.d(str2, str3, b.this.f28793a);
                        return;
                    }
                    a aVar = a.this;
                    aVar.c(str3, aVar.T);
                    if (a.this.f28771f == null || a.this.X) {
                        return;
                    }
                    a.this.X = true;
                    com.mbridge.msdk.foundation.error.b a10 = com.mbridge.msdk.foundation.error.a.a(880015, "errorCode: 3502 errorMessage: temp preload success but isReady false");
                    b bVar2 = b.this;
                    if (bVar2.f28793a == null) {
                        bVar2.f28793a = new com.mbridge.msdk.foundation.same.report.metrics.c();
                    }
                    RunnableC0411a runnableC0411a3 = RunnableC0411a.this;
                    b.this.f28793a.b(runnableC0411a3.f28800b);
                    b.this.f28793a.a(a10);
                    a.this.f28771f.b(a10, b.this.f28793a);
                }

                @Override // com.mbridge.msdk.reward.adapter.b.o
                public void a(String str, String str2, String str3, a.C0455a c0455a, com.mbridge.msdk.foundation.error.b bVar) {
                    RunnableC0411a runnableC0411a = RunnableC0411a.this;
                    a aVar = a.this;
                    aVar.c(runnableC0411a.f28802d, aVar.T);
                    if (a.this.f28771f == null || a.this.X) {
                        return;
                    }
                    a.this.X = true;
                    bVar.c("errorCode: 3301 errorMessage: temp preload failed");
                    b bVar2 = b.this;
                    if (bVar2.f28793a == null) {
                        bVar2.f28793a = new com.mbridge.msdk.foundation.same.report.metrics.c();
                    }
                    b bVar3 = b.this;
                    bVar3.f28793a.b(a.this.S);
                    b.this.f28793a.a(bVar);
                    a.this.f28771f.b(bVar, b.this.f28793a);
                }
            }
        }

        /* compiled from: RewardVideoController.java */
        /* renamed from: com.mbridge.msdk.reward.controller.a$b$b  reason: collision with other inner class name */
        /* loaded from: classes6.dex */
        class RunnableC0413b implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ String f28806a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ String f28807b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ String f28808c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ CopyOnWriteArrayList f28809d;

            RunnableC0413b(String str, String str2, String str3, CopyOnWriteArrayList copyOnWriteArrayList) {
                this.f28806a = str;
                this.f28807b = str2;
                this.f28808c = str3;
                this.f28809d = copyOnWriteArrayList;
            }

            @Override // java.lang.Runnable
            public void run() {
                com.mbridge.msdk.reward.adapter.b.b().a(a.this.f28790y, a.this.f28780o, a.this.f28785t, a.this.f28786u, this.f28806a, b.this.f28794b.getRequestIdNotice(), this.f28807b, this.f28808c, b.this.f28794b.getCMPTEntryUrl(), a.this.f28781p, b.this.f28794b, this.f28809d, H5DownLoadManager.getInstance().getH5ResAddress(b.this.f28794b.getCMPTEntryUrl()), this.f28808c, a.this.f28768c, new C0414a(), true);
            }

            /* compiled from: RewardVideoController.java */
            /* renamed from: com.mbridge.msdk.reward.controller.a$b$b$a  reason: collision with other inner class name */
            /* loaded from: classes6.dex */
            class C0414a implements b.o {
                C0414a() {
                }

                @Override // com.mbridge.msdk.reward.adapter.b.o
                public void a(String str, String str2, String str3, String str4, String str5, a.C0455a c0455a) {
                    RunnableC0413b runnableC0413b = RunnableC0413b.this;
                    b bVar = b.this;
                    com.mbridge.msdk.reward.adapter.c cVar = bVar.f28796d;
                    if (cVar != null && cVar.a(runnableC0413b.f28809d, bVar.f28795c, bVar.f28797e)) {
                        if (a.this.f28771f == null || a.this.Y) {
                            return;
                        }
                        a.this.Y = true;
                        p0.a("RewardVideoController", "Cache onVideoLoadSuccessForCache");
                        RunnableC0413b runnableC0413b2 = RunnableC0413b.this;
                        a.this.a(runnableC0413b2.f28809d);
                        RunnableC0413b runnableC0413b3 = RunnableC0413b.this;
                        com.mbridge.msdk.foundation.same.report.metrics.c cVar2 = b.this.f28793a;
                        if (cVar2 != null) {
                            cVar2.b(runnableC0413b3.f28809d);
                        }
                        a.this.f28771f.d(str2, str3, b.this.f28793a);
                        return;
                    }
                    a aVar = a.this;
                    aVar.c(str3, aVar.T);
                    if (a.this.f28771f == null || a.this.X) {
                        return;
                    }
                    a.this.X = true;
                    com.mbridge.msdk.foundation.error.b a10 = com.mbridge.msdk.foundation.error.a.a(880015, "errorCode: 3504 errorMessage: tpl temp preload success but isReady false");
                    b bVar2 = b.this;
                    if (bVar2.f28793a == null) {
                        bVar2.f28793a = new com.mbridge.msdk.foundation.same.report.metrics.c();
                    }
                    b.this.f28793a.a(a10);
                    RunnableC0413b runnableC0413b4 = RunnableC0413b.this;
                    b.this.f28793a.b(runnableC0413b4.f28809d);
                    a.this.f28771f.b(a10, b.this.f28793a);
                }

                @Override // com.mbridge.msdk.reward.adapter.b.o
                public void a(String str, String str2, String str3, a.C0455a c0455a, com.mbridge.msdk.foundation.error.b bVar) {
                    RunnableC0413b runnableC0413b = RunnableC0413b.this;
                    a aVar = a.this;
                    aVar.c(runnableC0413b.f28808c, aVar.T);
                    if (a.this.f28771f == null || a.this.X) {
                        return;
                    }
                    a.this.X = true;
                    if (bVar != null) {
                        bVar.c("errorCode: 3302 errorMessage: tpl preload failed");
                    }
                    b bVar2 = b.this;
                    if (bVar2.f28793a == null) {
                        bVar2.f28793a = new com.mbridge.msdk.foundation.same.report.metrics.c();
                    }
                    RunnableC0413b runnableC0413b2 = RunnableC0413b.this;
                    b.this.f28793a.b(runnableC0413b2.f28809d);
                    b.this.f28793a.a(bVar);
                    a.this.f28771f.b(bVar, b.this.f28793a);
                }
            }
        }

        @Override // com.mbridge.msdk.reward.adapter.b.h
        public void a(CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList, com.mbridge.msdk.foundation.error.b bVar) {
            a.this.U = false;
            a aVar = a.this;
            aVar.c(aVar.f28773h, a.this.T);
            if (a.this.f28771f == null || a.this.X) {
                return;
            }
            a.this.X = true;
            if (this.f28793a == null) {
                this.f28793a = new com.mbridge.msdk.foundation.same.report.metrics.c();
            }
            this.f28793a.b(copyOnWriteArrayList);
            if (bVar != null) {
                bVar.c("errorCode: 3201 errorMessage: campaign resource download failed");
            }
            this.f28793a.a(bVar);
            a.this.f28771f.b(bVar, this.f28793a);
        }
    }

    public boolean c(boolean z10) {
        boolean a10;
        try {
            if (c()) {
                if (z10) {
                    d("is_ready_start", "over cap check error");
                    com.mbridge.msdk.foundation.same.report.metrics.c cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
                    com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                    eVar.a("type", 10);
                    cVar.a("m_offer_ready", eVar);
                    a(false, cVar, (List<CampaignEx>) this.f28767b.h());
                    return false;
                }
                return false;
            }
            if (this.f28786u) {
                try {
                    a10 = a(z10);
                } catch (Exception e10) {
                    if (MBridgeConstans.DEBUG) {
                        p0.b("RewardVideoController", e10.getMessage());
                        return false;
                    }
                    return false;
                }
            } else {
                a10 = d();
            }
            return a10;
        } catch (Throwable th2) {
            if (MBridgeConstans.DEBUG) {
                p0.b("RewardVideoController", th2.getMessage());
                return false;
            }
            return false;
        }
    }

    public void a(int i10, int i11, int i12) {
        this.f28782q = i10;
        this.f28783r = i11;
        if (i11 == com.mbridge.msdk.foundation.same.a.K) {
            this.f28784s = i12 < 0 ? 5 : i12;
        }
        if (i11 == com.mbridge.msdk.foundation.same.a.J) {
            this.f28784s = i12 < 0 ? 80 : i12;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("ivRewardEnable", 1);
            jSONObject.put("ivRewardMode", i10 == com.mbridge.msdk.foundation.same.a.H ? 0 : 1);
            jSONObject.put("ivRewardPlayValueMode", i11 == com.mbridge.msdk.foundation.same.a.J ? 0 : 1);
            jSONObject.put("ivRewardPlayValue", i12);
            com.mbridge.msdk.setting.h.b().i(this.f28773h, jSONObject.toString());
        } catch (Exception unused) {
            p0.b("RewardVideoController", "setIVRewardEnable to SP was ERROR");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RewardVideoController.java */
    /* renamed from: com.mbridge.msdk.reward.controller.a$a  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public class C0410a implements com.mbridge.msdk.videocommon.net.c {
        C0410a() {
        }

        @Override // com.mbridge.msdk.videocommon.net.c
        public void a(String str) {
        }

        @Override // com.mbridge.msdk.videocommon.net.c
        public void onFailed(String str) {
        }
    }

    private void b(com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        if (this.f28771f != null) {
            String b10 = com.mbridge.msdk.foundation.error.a.b(880001, "");
            com.mbridge.msdk.foundation.error.b a10 = com.mbridge.msdk.foundation.error.a.a(880001, "");
            if (cVar != null) {
                cVar.a(a10);
                cVar.b(true);
            }
            this.f28771f.a(b10, cVar);
        }
    }

    private boolean c() {
        try {
            if (this.K == null) {
                this.K = com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d());
            }
            com.mbridge.msdk.foundation.db.h a10 = com.mbridge.msdk.foundation.db.h.a(this.K);
            if (this.f28768c == null) {
                this.f28768c = com.mbridge.msdk.videocommon.setting.b.b().a(com.mbridge.msdk.foundation.controller.c.m().b(), this.f28773h, this.f28785t);
            }
            int k10 = this.f28768c.k();
            if (a10 != null) {
                if (a10.a(this.f28773h, k10)) {
                    return true;
                }
            }
        } catch (Throwable unused) {
            p0.b("RewardVideoController", "cap check error");
        }
        return false;
    }

    public static void a(String str, int i10) {
        try {
            if (f28762d0 == null || !z0.b(str)) {
                return;
            }
            f28762d0.put(str, Integer.valueOf(i10));
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                p0.b("RewardVideoController", e10.getMessage());
            }
        }
    }

    private CopyOnWriteArrayList<CampaignEx> b(String str, List<CampaignEx> list) {
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList = new CopyOnWriteArrayList<>();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        if (list != null) {
            try {
                if (list.size() > 0) {
                    int i10 = 1;
                    for (CampaignEx campaignEx : list) {
                        if (campaignEx != null) {
                            if (campaignEx.getVcn() > i10) {
                                i10 = campaignEx.getVcn();
                            }
                            if (campaignEx.getTokenRule() == 1) {
                                String requestId = campaignEx.getRequestId();
                                if (!TextUtils.isEmpty(requestId)) {
                                    if (linkedHashMap.containsKey(requestId)) {
                                        List list2 = (List) linkedHashMap.get(requestId);
                                        if (list2 != null) {
                                            list2.add(campaignEx);
                                        }
                                    } else {
                                        ArrayList arrayList = new ArrayList();
                                        arrayList.add(campaignEx);
                                        linkedHashMap.put(requestId, arrayList);
                                    }
                                }
                            } else {
                                String requestId2 = campaignEx.getRequestId();
                                if (!TextUtils.isEmpty(requestId2)) {
                                    if (linkedHashMap2.containsKey(requestId2)) {
                                        List list3 = (List) linkedHashMap2.get(requestId2);
                                        if (list3 != null) {
                                            list3.add(campaignEx);
                                        }
                                    } else {
                                        ArrayList arrayList2 = new ArrayList();
                                        arrayList2.add(campaignEx);
                                        linkedHashMap2.put(requestId2, arrayList2);
                                    }
                                }
                            }
                        }
                    }
                    if (linkedHashMap2.size() + linkedHashMap.size() >= i10 && linkedHashMap.size() > 0 && linkedHashMap.entrySet() != null && linkedHashMap.entrySet().iterator() != null && linkedHashMap.entrySet().iterator().next() != null && ((Map.Entry) linkedHashMap.entrySet().iterator().next()).getValue() != null) {
                        copyOnWriteArrayList.addAll((Collection) ((Map.Entry) linkedHashMap.entrySet().iterator().next()).getValue());
                        com.mbridge.msdk.foundation.same.buffer.b.a(this.f28773h, str, i10);
                    }
                }
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    p0.b("RewardVideoController", e10.getMessage());
                }
            }
        }
        return copyOnWriteArrayList;
    }

    public static void a(String str, String str2) {
        ConcurrentHashMap<String, String> concurrentHashMap;
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || (concurrentHashMap = f28763e0) == null || concurrentHashMap.containsKey(str)) {
            return;
        }
        f28763e0.put(str, str2);
    }

    public void a() {
        try {
            String str = "";
            MBridgeIds mBridgeIds = this.f28774i;
            if (mBridgeIds != null) {
                if (!this.C) {
                    mBridgeIds.setBidToken("");
                    return;
                }
                String m10 = m();
                if (TextUtils.isEmpty(m10)) {
                    return;
                }
                ConcurrentHashMap<String, String> concurrentHashMap = f28763e0;
                if (concurrentHashMap != null && concurrentHashMap.containsKey(m10) && !TextUtils.isEmpty(f28763e0.get(m10))) {
                    str = f28763e0.get(m10);
                }
                this.f28774i.setBidToken(str);
            }
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
            }
        }
    }

    public void a(InterVideoOutListener interVideoOutListener) {
        this.f28770e = interVideoOutListener;
        this.f28771f = new h(this, interVideoOutListener, this.f28780o, this.f28773h, null);
    }

    public void a(boolean z10, com.mbridge.msdk.foundation.same.report.metrics.e eVar) {
        a(z10, "", eVar);
    }

    public void a(boolean z10, String str, com.mbridge.msdk.foundation.same.report.metrics.e eVar) {
        com.mbridge.msdk.foundation.same.report.metrics.c b10 = b(z10, str, eVar);
        this.f28791z = str;
        if (this.f28771f == null) {
            this.f28771f = new h(this, null, this.f28780o, this.f28773h, null);
        }
        if (this.f28771f != null && this.f28771f.a() == 1) {
            a(z10, b10);
            return;
        }
        this.f28766a0 = 1;
        if (this.f28771f != null && this.f28771f.a() == 3) {
            this.L = false;
        } else {
            this.L = true;
            if (this.f28771f != null) {
                this.f28771f.a(1);
            }
        }
        this.f28789x = z10;
        this.f28780o.removeMessages(1001001);
        this.O = false;
        this.N = false;
        this.P = false;
        this.Q = false;
        x();
        w();
        com.mbridge.msdk.reward.adapter.b.b().c();
        try {
            if (TextUtils.isEmpty(str)) {
                if (this.f28785t) {
                    com.mbridge.msdk.timer.b.getInstance().addInterstitialList(this.f28777l, this.f28773h);
                } else {
                    com.mbridge.msdk.timer.b.getInstance().addRewardList(this.f28777l, this.f28773h);
                }
            }
            if (this.f28786u && TextUtils.isEmpty(str)) {
                a(b10);
            } else if (com.mbridge.msdk.system.a.map == null) {
                b(b10);
            } else {
                com.mbridge.msdk.videocommon.setting.c c10 = com.mbridge.msdk.videocommon.setting.b.b().c(com.mbridge.msdk.foundation.controller.c.m().b(), this.f28773h);
                this.f28768c = c10;
                if (c10 == null) {
                    this.J = com.mbridge.msdk.foundation.controller.c.m().b();
                    com.mbridge.msdk.videocommon.setting.b.b().a(this.J, com.mbridge.msdk.foundation.controller.c.m().c(), this.f28773h, new C0410a());
                    this.f28768c = com.mbridge.msdk.videocommon.setting.b.b().a(com.mbridge.msdk.foundation.controller.c.m().b(), this.f28773h, this.f28785t);
                }
                if (!TextUtils.isEmpty(this.f28777l)) {
                    this.f28768c.f(this.f28777l);
                }
                int n10 = this.f28768c.n() * 1000;
                if (this.f28780o != null) {
                    Message obtain = Message.obtain();
                    obtain.what = 1001002;
                    if (b10 != null) {
                        Bundle bundle = new Bundle();
                        bundle.putString("metrics_data_lrid", b10.o());
                        obtain.setData(bundle);
                    }
                    this.f28780o.sendMessageDelayed(obtain, n10);
                }
                this.I = this.f28768c.z();
                try {
                    a(z10, str, b10);
                } catch (Exception e10) {
                    if (this.f28771f != null) {
                        com.mbridge.msdk.foundation.error.b a10 = com.mbridge.msdk.foundation.error.a.a(880020, "load exception");
                        if (b10 != null) {
                            b10.a(a10);
                            b10.b(true);
                        }
                        this.f28771f.a(a10, b10);
                    }
                    if (MBridgeConstans.DEBUG) {
                        p0.b("RewardVideoController", e10.getMessage());
                    }
                }
            }
        } catch (Exception e11) {
            if (this.f28771f != null) {
                com.mbridge.msdk.foundation.error.b a11 = com.mbridge.msdk.foundation.error.a.a(880001, "");
                if (b10 != null) {
                    b10.a(a11);
                    b10.b(true);
                }
                this.f28771f.a(a11, b10);
            }
            if (MBridgeConstans.DEBUG) {
                p0.b("RewardVideoController", e11.getMessage());
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:37:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean b(java.lang.String r5, java.lang.String r6) {
        /*
            r4 = this;
            com.mbridge.msdk.reward.adapter.c r0 = r4.f28767b     // Catch: java.lang.Exception -> Lf
            if (r0 == 0) goto L11
            java.lang.String r0 = r0.j()     // Catch: java.lang.Exception -> Lf
            boolean r0 = r5.equals(r0)     // Catch: java.lang.Exception -> Lf
            if (r0 != 0) goto L28
            goto L11
        Lf:
            r0 = move-exception
            goto L37
        L11:
            com.mbridge.msdk.reward.adapter.c r0 = new com.mbridge.msdk.reward.adapter.c     // Catch: java.lang.Exception -> Lf
            android.content.Context r1 = r4.f28765a     // Catch: java.lang.Exception -> Lf
            java.lang.String r2 = r4.f28777l     // Catch: java.lang.Exception -> Lf
            r0.<init>(r1, r2, r5)     // Catch: java.lang.Exception -> Lf
            r4.f28767b = r0     // Catch: java.lang.Exception -> Lf
            boolean r1 = r4.f28785t     // Catch: java.lang.Exception -> Lf
            r0.d(r1)     // Catch: java.lang.Exception -> Lf
            com.mbridge.msdk.reward.adapter.c r0 = r4.f28767b     // Catch: java.lang.Exception -> Lf
            boolean r1 = r4.f28786u     // Catch: java.lang.Exception -> Lf
            r0.e(r1)     // Catch: java.lang.Exception -> Lf
        L28:
            com.mbridge.msdk.reward.adapter.c r0 = r4.f28767b     // Catch: java.lang.Exception -> Lf
            int r1 = r4.f28781p     // Catch: java.lang.Exception -> Lf
            r0.a(r1)     // Catch: java.lang.Exception -> Lf
            com.mbridge.msdk.reward.adapter.c r0 = r4.f28767b     // Catch: java.lang.Exception -> Lf
            com.mbridge.msdk.videocommon.setting.c r1 = r4.f28768c     // Catch: java.lang.Exception -> Lf
            r0.a(r1)     // Catch: java.lang.Exception -> Lf
            goto L44
        L37:
            boolean r1 = com.mbridge.msdk.MBridgeConstans.DEBUG
            if (r1 == 0) goto L44
            java.lang.String r0 = r0.getMessage()
            java.lang.String r1 = "RewardVideoController"
            com.mbridge.msdk.foundation.tools.p0.b(r1, r0)
        L44:
            com.mbridge.msdk.videocommon.cache.a r0 = com.mbridge.msdk.videocommon.cache.a.a()
            boolean r1 = r4.f28786u
            r2 = 1
            java.util.List r0 = r0.b(r5, r2, r1)
            com.mbridge.msdk.videocommon.cache.a r1 = com.mbridge.msdk.videocommon.cache.a.a()
            boolean r3 = r4.f28786u
            java.util.List r1 = r1.a(r5, r2, r3)
            r4.T = r1
            if (r0 == 0) goto L98
            int r1 = r0.size()
            if (r1 <= 0) goto L98
            com.mbridge.msdk.videocommon.cache.a r1 = com.mbridge.msdk.videocommon.cache.a.a()
            r1.a(r5, r0, r6)
            java.util.concurrent.CopyOnWriteArrayList<com.mbridge.msdk.foundation.entity.CampaignEx> r5 = r4.S
            if (r5 != 0) goto L76
            java.util.concurrent.CopyOnWriteArrayList r5 = new java.util.concurrent.CopyOnWriteArrayList
            r5.<init>()
            r4.S = r5
            goto L79
        L76:
            r5.clear()
        L79:
            java.util.Iterator r5 = r0.iterator()
        L7d:
            boolean r0 = r5.hasNext()
            if (r0 == 0) goto L92
            java.lang.Object r0 = r5.next()
            com.mbridge.msdk.foundation.entity.CampaignEx r0 = (com.mbridge.msdk.foundation.entity.CampaignEx) r0
            r0.setLocalRequestId(r6)
            java.util.concurrent.CopyOnWriteArrayList<com.mbridge.msdk.foundation.entity.CampaignEx> r1 = r4.S
            r1.add(r0)
            goto L7d
        L92:
            java.util.concurrent.CopyOnWriteArrayList<com.mbridge.msdk.foundation.entity.CampaignEx> r5 = r4.S
            r4.a(r5)
            return r2
        L98:
            java.util.concurrent.CopyOnWriteArrayList<com.mbridge.msdk.foundation.entity.CampaignEx> r5 = r4.S
            if (r5 == 0) goto L9f
            r5.clear()
        L9f:
            r5 = 0
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.reward.controller.a.b(java.lang.String, java.lang.String):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x005d A[Catch: Exception -> 0x003d, TryCatch #0 {Exception -> 0x003d, blocks: (B:3:0x002c, B:5:0x0030, B:11:0x0059, B:13:0x005d, B:14:0x0068, B:16:0x006e, B:18:0x0078, B:19:0x008c, B:10:0x0040), top: B:25:0x002c }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void b(boolean r10, java.lang.String r11, com.mbridge.msdk.foundation.same.report.metrics.c r12) {
        /*
            Method dump skipped, instructions count: 255
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.reward.controller.a.b(boolean, java.lang.String, com.mbridge.msdk.foundation.same.report.metrics.c):void");
    }

    private void a(com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        if (this.f28771f != null) {
            com.mbridge.msdk.foundation.error.b a10 = com.mbridge.msdk.foundation.error.a.a(880035, "");
            if (cVar != null) {
                cVar.a(a10);
                cVar.b(true);
            }
            this.f28771f.a("bidToken is empty", cVar);
        }
    }

    private boolean b() {
        if (this.f28767b == null) {
            f();
        }
        List<com.mbridge.msdk.foundation.entity.c> a10 = com.mbridge.msdk.videocommon.cache.a.a().a(this.f28773h);
        if (a10 == null || a10.size() <= 0) {
            return false;
        }
        for (com.mbridge.msdk.foundation.entity.c cVar : a10) {
            if (cVar != null) {
                this.f28767b.c(cVar.a());
                this.f28767b.b(cVar.d());
                if (this.f28767b.m()) {
                    return true;
                }
                com.mbridge.msdk.videocommon.cache.a.a().d(this.f28773h, cVar.a());
            }
        }
        return false;
    }

    private void a(boolean z10, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        if (!this.f28789x) {
            if (z10) {
                this.f28789x = z10;
            }
        } else if (z10) {
            String b10 = com.mbridge.msdk.foundation.error.a.b(880016, "errorCode: 3501 errorMessage: current unit is loading");
            com.mbridge.msdk.foundation.error.b a10 = com.mbridge.msdk.foundation.error.a.a(880016, "errorCode: 3501 errorMessage: current unit is loading");
            if (cVar != null) {
                cVar.a(a10);
                cVar.b(true);
            }
            this.f28771f.b(b10, cVar);
        }
    }

    private void b(boolean z10) {
        List<String> e10;
        if (z10) {
            try {
                com.mbridge.msdk.foundation.db.e a10 = com.mbridge.msdk.foundation.db.e.a(com.mbridge.msdk.foundation.db.g.a(this.f28765a));
                if (a10 != null && (e10 = a10.e(this.f28773h)) != null && e10.size() > 0) {
                    for (String str : e10) {
                        com.mbridge.msdk.foundation.same.report.metrics.d.b().d(str);
                    }
                }
                LinkedHashMap<String, com.mbridge.msdk.foundation.same.report.metrics.c> c10 = com.mbridge.msdk.foundation.same.report.metrics.d.b().c();
                if (c10 == null || c10.size() <= 0) {
                    return;
                }
                Iterator<Map.Entry<String, com.mbridge.msdk.foundation.same.report.metrics.c>> it = c10.entrySet().iterator();
                while (it.hasNext()) {
                    Map.Entry<String, com.mbridge.msdk.foundation.same.report.metrics.c> next = it.next();
                    if (next != null && next.getValue().z()) {
                        it.remove();
                    }
                }
            } catch (Exception e11) {
                if (MBridgeConstans.DEBUG) {
                    e11.printStackTrace();
                }
            }
        }
    }

    private void a(boolean z10, String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        com.mbridge.msdk.reward.candidate.a aVar;
        com.mbridge.msdk.reward.candidate.a aVar2;
        if (this.f28771f != null) {
            if (!this.f28786u) {
                this.R = b(this.f28773h, cVar.o());
                if (this.R) {
                    if (!c()) {
                        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList = this.S;
                        if (copyOnWriteArrayList == null || copyOnWriteArrayList.size() <= 0) {
                            return;
                        }
                        try {
                            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                            eVar.a("cache", 1);
                            cVar.a("2000127", eVar);
                            cVar.a("2000048", eVar);
                            cVar.a(copyOnWriteArrayList);
                        } catch (Exception e10) {
                            if (MBridgeConstans.DEBUG) {
                                p0.b("RewardVideoController", e10.getMessage());
                            }
                        }
                        this.f28771f.b(this.f28777l, this.f28773h, cVar);
                        CampaignEx campaignEx = copyOnWriteArrayList.get(0);
                        this.f28771f.a(this.f28786u);
                        com.mbridge.msdk.reward.adapter.c cVar2 = this.f28767b;
                        if (cVar2 != null && cVar2.a(copyOnWriteArrayList, !TextUtils.isEmpty(campaignEx.getCMPTEntryUrl()), campaignEx.getNscpt())) {
                            a(copyOnWriteArrayList);
                            this.f28771f.d(this.f28777l, this.f28773h, cVar);
                        } else {
                            a(copyOnWriteArrayList, this.f28767b);
                        }
                        if (this.L) {
                            com.mbridge.msdk.reward.adapter.c cVar3 = this.f28767b;
                            if (cVar3 != null) {
                                cVar3.c(this.S);
                            }
                            a(this.I, z10, str, cVar);
                            return;
                        }
                        return;
                    }
                    p0.a("RewardVideoController", "非BID，本地存在可用的缓存，超过上限");
                    CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList2 = this.S;
                    if (copyOnWriteArrayList2 != null && copyOnWriteArrayList2.size() > 0) {
                        Iterator<CampaignEx> it = this.S.iterator();
                        while (it.hasNext()) {
                            com.mbridge.msdk.videocommon.cache.a.a().a(it.next(), this.f28773h);
                        }
                    }
                    com.mbridge.msdk.reward.adapter.c cVar4 = this.f28767b;
                    if (cVar4 != null) {
                        cVar4.c(this.S);
                    }
                    if (z10) {
                        if (this.f28771f != null) {
                            String b10 = com.mbridge.msdk.foundation.error.a.b(880019, "");
                            cVar.a(com.mbridge.msdk.foundation.error.a.a(880019, ""));
                            cVar.b(true);
                            this.f28771f.a(b10, cVar);
                            return;
                        }
                        return;
                    }
                    this.R = false;
                    this.f28771f.a(this.f28786u);
                    a(this.I, z10, str, cVar);
                    return;
                } else if (!c()) {
                    this.R = false;
                    com.mbridge.msdk.reward.adapter.c cVar5 = this.f28767b;
                    if (cVar5 != null) {
                        cVar5.c(this.S);
                    }
                    this.f28771f.a(this.f28786u);
                    a(this.I, z10, str, cVar);
                    return;
                } else if (z10) {
                    if (this.f28771f != null) {
                        String b11 = com.mbridge.msdk.foundation.error.a.b(880019, "");
                        cVar.a(com.mbridge.msdk.foundation.error.a.a(880019, ""));
                        cVar.b(true);
                        this.f28771f.a(b11, cVar);
                        return;
                    }
                    return;
                } else {
                    this.R = false;
                    com.mbridge.msdk.reward.adapter.c cVar6 = this.f28767b;
                    if (cVar6 != null) {
                        cVar6.c(this.S);
                    }
                    this.f28771f.a(this.f28786u);
                    a(this.I, z10, str, cVar);
                    return;
                }
            }
            List<CampaignEx> b12 = com.mbridge.msdk.videocommon.cache.a.a().b(this.f28773h, 1, this.f28786u, "");
            CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList3 = null;
            if (b12 != null && b12.size() > 0) {
                if (!c()) {
                    if (this.f28767b == null) {
                        f();
                    }
                    CopyOnWriteArrayList<CampaignEx> a10 = a(str, b12);
                    if (a10 != null && a10.size() > 0) {
                        a(a10, str, cVar);
                        return;
                    }
                    try {
                        com.mbridge.msdk.reward.candidate.a aVar3 = new com.mbridge.msdk.reward.candidate.a(this.f28773h, this.f28785t);
                        com.mbridge.msdk.foundation.cache.c cVar7 = new com.mbridge.msdk.foundation.cache.c();
                        if (aVar3.a(str)) {
                            aVar2 = aVar3;
                            cVar7 = aVar3.a(str, cVar, (CampaignEx) null, new com.mbridge.msdk.foundation.error.b(880038), 1, this.f28767b);
                            if (cVar7 != null && cVar7.g() == com.mbridge.msdk.foundation.cache.c.f26673l && cVar7.c() != null && cVar7.c().size() > 0 && this.f28767b != null) {
                                CopyOnWriteArrayList<CampaignEx> c10 = cVar7.c();
                                ArrayList arrayList = new ArrayList();
                                Iterator<CampaignEx> it2 = b12.iterator();
                                while (true) {
                                    if (!it2.hasNext()) {
                                        break;
                                    }
                                    CampaignEx next = it2.next();
                                    if (next != null) {
                                        String requestId = next.getRequestId();
                                        if (!TextUtils.isEmpty(requestId)) {
                                            for (int i10 = 0; i10 < c10.size(); i10++) {
                                                CampaignEx campaignEx2 = c10.get(i10);
                                                if (campaignEx2 != null) {
                                                    if (requestId.equals(campaignEx2.getRequestId())) {
                                                        break;
                                                    } else if (i10 == c10.size() - 1) {
                                                        arrayList.add(next);
                                                    }
                                                }
                                            }
                                            if (c10.size() == 0) {
                                                arrayList.add(next);
                                            }
                                        }
                                    }
                                }
                                this.f28767b.c(arrayList);
                                this.f28767b.a(cVar7.c(), false, true, true);
                                copyOnWriteArrayList3 = new CopyOnWriteArrayList<>(cVar7.c());
                            }
                        } else {
                            aVar2 = aVar3;
                            copyOnWriteArrayList3 = b(str, b12);
                            if (copyOnWriteArrayList3.size() > 0) {
                                com.mbridge.msdk.foundation.db.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).a(str, copyOnWriteArrayList3);
                            }
                            cVar7.d("cb is closed");
                            cVar7.a(com.mbridge.msdk.foundation.cache.c.f26672k);
                        }
                        aVar2.a(cVar, str, cVar7, (List<a.b>) null, (JSONObject) null, 1);
                        if (copyOnWriteArrayList3 != null && copyOnWriteArrayList3.size() > 0) {
                            a(copyOnWriteArrayList3, str, cVar);
                            if (this.f28767b != null && !aVar2.a(str)) {
                                this.f28767b.c(copyOnWriteArrayList3);
                            }
                        }
                    } catch (Exception e11) {
                        if (MBridgeConstans.DEBUG) {
                            p0.b("RewardVideoController", e11.getMessage());
                        }
                    }
                    this.R = false;
                    this.f28771f.a(this.f28786u);
                    a(this.I, z10, str, cVar);
                    return;
                }
                com.mbridge.msdk.videocommon.cache.a.a().b(this.f28773h, str);
                if (!z10 || this.f28771f == null) {
                    return;
                }
                String b13 = com.mbridge.msdk.foundation.error.a.b(880019, "");
                com.mbridge.msdk.foundation.error.b a11 = com.mbridge.msdk.foundation.error.a.a(880019, "");
                if (cVar != null) {
                    cVar.a(a11);
                    cVar.b(true);
                }
                this.f28771f.a(b13, cVar);
            } else if (!c()) {
                try {
                    com.mbridge.msdk.reward.candidate.a aVar4 = new com.mbridge.msdk.reward.candidate.a(this.f28773h, this.f28785t);
                    com.mbridge.msdk.foundation.cache.c cVar8 = new com.mbridge.msdk.foundation.cache.c();
                    if (aVar4.a(str)) {
                        if (this.f28767b == null) {
                            com.mbridge.msdk.reward.adapter.c cVar9 = new com.mbridge.msdk.reward.adapter.c(this.f28765a, this.f28777l, this.f28773h);
                            this.f28767b = cVar9;
                            cVar9.d(this.f28785t);
                            this.f28767b.e(this.f28786u);
                            if (this.f28785t) {
                                this.f28767b.a(this.f28782q, this.f28783r, this.f28784s);
                            }
                            this.f28767b.a(this.f28781p);
                            this.f28767b.a(this.f28768c);
                        }
                        aVar = aVar4;
                        cVar8 = aVar4.a(str, cVar, (CampaignEx) null, new com.mbridge.msdk.foundation.error.b(880038), 1, this.f28767b);
                        if (cVar8 != null && cVar8.g() == com.mbridge.msdk.foundation.cache.c.f26673l && cVar8.c() != null && cVar8.c().size() > 0 && this.f28767b != null) {
                            CopyOnWriteArrayList<CampaignEx> c11 = cVar8.c();
                            if (b12 != null) {
                                ArrayList arrayList2 = new ArrayList();
                                Iterator<CampaignEx> it3 = b12.iterator();
                                while (true) {
                                    if (!it3.hasNext()) {
                                        break;
                                    }
                                    CampaignEx next2 = it3.next();
                                    if (next2 != null) {
                                        String requestId2 = next2.getRequestId();
                                        if (!TextUtils.isEmpty(requestId2)) {
                                            for (int i11 = 0; i11 < c11.size(); i11++) {
                                                CampaignEx campaignEx3 = c11.get(i11);
                                                if (campaignEx3 != null) {
                                                    if (requestId2.equals(campaignEx3.getRequestId())) {
                                                        break;
                                                    } else if (i11 == c11.size() - 1) {
                                                        arrayList2.add(next2);
                                                    }
                                                }
                                            }
                                            if (c11.size() == 0) {
                                                arrayList2.add(next2);
                                            }
                                        }
                                    }
                                }
                                this.f28767b.c(arrayList2);
                            }
                            this.f28767b.a(cVar8.c(), false, true, true);
                            copyOnWriteArrayList3 = new CopyOnWriteArrayList<>(cVar8.c());
                        }
                    } else {
                        aVar = aVar4;
                        copyOnWriteArrayList3 = b(str, b12);
                        if (copyOnWriteArrayList3.size() > 0) {
                            com.mbridge.msdk.foundation.db.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).a(str, copyOnWriteArrayList3);
                        }
                        cVar8.d("cb is closed 2");
                        cVar8.a(com.mbridge.msdk.foundation.cache.c.f26672k);
                    }
                    aVar.a(cVar, str, cVar8, (List<a.b>) null, (JSONObject) null, 1);
                    if (copyOnWriteArrayList3 != null && copyOnWriteArrayList3.size() > 0) {
                        a(copyOnWriteArrayList3, str, cVar);
                        if (this.f28767b != null && !aVar.a(str)) {
                            this.f28767b.c(copyOnWriteArrayList3);
                        }
                    }
                } catch (Exception e12) {
                    if (MBridgeConstans.DEBUG) {
                        p0.b("RewardVideoController", e12.getMessage());
                    }
                }
                this.R = false;
                this.f28771f.a(this.f28786u);
                a(this.I, z10, str, cVar);
            } else {
                com.mbridge.msdk.videocommon.cache.a.a().b(this.f28773h, str);
                if (!z10 || this.f28771f == null) {
                    return;
                }
                String b14 = com.mbridge.msdk.foundation.error.a.b(880019, "");
                com.mbridge.msdk.foundation.error.b a12 = com.mbridge.msdk.foundation.error.a.a(880019, "");
                if (cVar != null) {
                    cVar.a(a12);
                    cVar.b(true);
                }
                this.f28771f.a(b14, cVar);
            }
        }
    }

    private void a(CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList, String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        if (copyOnWriteArrayList == null || copyOnWriteArrayList.size() <= 0) {
            return;
        }
        try {
            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
            eVar.a("cache", 1);
            cVar.a("2000127", eVar);
            cVar.a("2000048", eVar);
            cVar.a(copyOnWriteArrayList);
        } catch (Exception e10) {
            p0.b("RewardVideoController", e10.getMessage());
        }
        this.R = true;
        this.f28771f.a(this.f28786u);
        this.f28771f.b(this.f28777l, this.f28773h, cVar);
        CampaignEx campaignEx = copyOnWriteArrayList.get(0);
        a(campaignEx.getRequestId(), str);
        com.mbridge.msdk.reward.adapter.c cVar2 = this.f28767b;
        if (cVar2 != null && cVar2.a(copyOnWriteArrayList, true ^ TextUtils.isEmpty(campaignEx.getCMPTEntryUrl()), campaignEx.getNscpt())) {
            a(copyOnWriteArrayList);
            this.f28771f.d(this.f28777l, this.f28773h, cVar);
            return;
        }
        a(copyOnWriteArrayList, this.f28767b);
    }

    private CopyOnWriteArrayList<CampaignEx> a(String str, List<CampaignEx> list) {
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList = new CopyOnWriteArrayList<>();
        if (list != null && list.size() > 0 && !TextUtils.isEmpty(str)) {
            for (CampaignEx campaignEx : list) {
                if (campaignEx != null && str.equals(campaignEx.getBidToken())) {
                    copyOnWriteArrayList.add(campaignEx);
                }
            }
        }
        return copyOnWriteArrayList;
    }

    private void a(CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList, com.mbridge.msdk.reward.adapter.c cVar) {
        CampaignEx campaignEx = copyOnWriteArrayList.get(0);
        boolean isEmpty = TextUtils.isEmpty(campaignEx.getCMPTEntryUrl());
        boolean z10 = !isEmpty;
        int nscpt = campaignEx.getNscpt();
        this.U = false;
        this.V = false;
        this.W = false;
        this.X = false;
        this.Y = false;
        com.mbridge.msdk.reward.adapter.b.b().a(this.f28765a, z10, nscpt, this.f28786u, this.f28785t ? 287 : 94, this.f28777l, this.f28773h, campaignEx.getRequestId(), copyOnWriteArrayList, new b(campaignEx, z10, cVar, nscpt), new c(campaignEx, copyOnWriteArrayList, z10, nscpt));
        if (isEmpty) {
            return;
        }
        com.mbridge.msdk.reward.adapter.b.b().a(this.f28765a, campaignEx, this.f28777l, this.f28773h, campaignEx.getRequestId(), new d(campaignEx, copyOnWriteArrayList, cVar, z10, nscpt));
    }

    private void a(Queue<Integer> queue, boolean z10, String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        Integer poll;
        try {
            this.F = 25;
            this.G = 1;
            if (queue != null && queue.size() > 0 && (poll = queue.poll()) != null) {
                this.F = poll.intValue();
            }
            try {
                a(this.G, this.F, z10, str, cVar);
            } catch (Exception e10) {
                com.mbridge.msdk.foundation.error.b a10 = com.mbridge.msdk.foundation.error.a.a(880020, "load mv api error:" + e10.getMessage());
                if (cVar != null) {
                    cVar.a(a10);
                    cVar.b(true);
                }
                a(a10, cVar);
                if (MBridgeConstans.DEBUG) {
                    p0.b("RewardVideoController", e10.getMessage());
                }
            }
        } catch (Exception e11) {
            com.mbridge.msdk.foundation.error.b a11 = com.mbridge.msdk.foundation.error.a.a(880020, "load mv api error:" + e11.getMessage());
            if (cVar != null) {
                cVar.a(a11);
                cVar.b(true);
            }
            a(a11, cVar);
            if (MBridgeConstans.DEBUG) {
                p0.b("RewardVideoController", e11.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.mbridge.msdk.foundation.error.b bVar, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        if (this.f28771f != null) {
            this.Q = true;
            this.f28771f.a(bVar, cVar);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0031 A[Catch: Exception -> 0x0011, TryCatch #0 {Exception -> 0x0011, blocks: (B:2:0x0000, B:4:0x0004, B:10:0x002d, B:12:0x0031, B:13:0x003c, B:9:0x0014), top: B:22:0x0000 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(int r11, int r12, boolean r13, java.lang.String r14, com.mbridge.msdk.foundation.same.report.metrics.c r15) {
        /*
            r10 = this;
            com.mbridge.msdk.reward.adapter.c r0 = r10.f28767b     // Catch: java.lang.Exception -> L11
            if (r0 == 0) goto L14
            java.lang.String r1 = r10.f28773h     // Catch: java.lang.Exception -> L11
            java.lang.String r0 = r0.j()     // Catch: java.lang.Exception -> L11
            boolean r0 = r1.equals(r0)     // Catch: java.lang.Exception -> L11
            if (r0 != 0) goto L2d
            goto L14
        L11:
            r11 = move-exception
            goto L9b
        L14:
            com.mbridge.msdk.reward.adapter.c r0 = new com.mbridge.msdk.reward.adapter.c     // Catch: java.lang.Exception -> L11
            android.content.Context r1 = r10.f28765a     // Catch: java.lang.Exception -> L11
            java.lang.String r2 = r10.f28777l     // Catch: java.lang.Exception -> L11
            java.lang.String r3 = r10.f28773h     // Catch: java.lang.Exception -> L11
            r0.<init>(r1, r2, r3)     // Catch: java.lang.Exception -> L11
            r10.f28767b = r0     // Catch: java.lang.Exception -> L11
            boolean r1 = r10.f28785t     // Catch: java.lang.Exception -> L11
            r0.d(r1)     // Catch: java.lang.Exception -> L11
            com.mbridge.msdk.reward.adapter.c r0 = r10.f28767b     // Catch: java.lang.Exception -> L11
            boolean r1 = r10.f28786u     // Catch: java.lang.Exception -> L11
            r0.e(r1)     // Catch: java.lang.Exception -> L11
        L2d:
            boolean r0 = r10.f28785t     // Catch: java.lang.Exception -> L11
            if (r0 == 0) goto L3c
            com.mbridge.msdk.reward.adapter.c r0 = r10.f28767b     // Catch: java.lang.Exception -> L11
            int r1 = r10.f28782q     // Catch: java.lang.Exception -> L11
            int r2 = r10.f28783r     // Catch: java.lang.Exception -> L11
            int r3 = r10.f28784s     // Catch: java.lang.Exception -> L11
            r0.a(r1, r2, r3)     // Catch: java.lang.Exception -> L11
        L3c:
            java.util.ArrayList r0 = new java.util.ArrayList     // Catch: java.lang.Exception -> L11
            r0.<init>()     // Catch: java.lang.Exception -> L11
            r10.H = r0     // Catch: java.lang.Exception -> L11
            com.mbridge.msdk.reward.adapter.c r0 = r10.f28767b     // Catch: java.lang.Exception -> L11
            int r1 = r10.f28781p     // Catch: java.lang.Exception -> L11
            r0.a(r1)     // Catch: java.lang.Exception -> L11
            com.mbridge.msdk.reward.adapter.c r0 = r10.f28767b     // Catch: java.lang.Exception -> L11
            com.mbridge.msdk.videocommon.setting.c r1 = r10.f28768c     // Catch: java.lang.Exception -> L11
            r0.a(r1)     // Catch: java.lang.Exception -> L11
            com.mbridge.msdk.reward.controller.a$f r0 = new com.mbridge.msdk.reward.controller.a$f     // Catch: java.lang.Exception -> L11
            com.mbridge.msdk.reward.adapter.c r4 = r10.f28767b     // Catch: java.lang.Exception -> L11
            r2 = r0
            r3 = r10
            r5 = r11
            r6 = r13
            r7 = r14
            r8 = r15
            r2.<init>(r4, r5, r6, r7, r8)     // Catch: java.lang.Exception -> L11
            r0.a(r12)     // Catch: java.lang.Exception -> L11
            com.mbridge.msdk.reward.controller.a$g r1 = new com.mbridge.msdk.reward.controller.a$g     // Catch: java.lang.Exception -> L11
            com.mbridge.msdk.reward.adapter.c r2 = r10.f28767b     // Catch: java.lang.Exception -> L11
            r1.<init>(r2, r13)     // Catch: java.lang.Exception -> L11
            r10.f28775j = r1     // Catch: java.lang.Exception -> L11
            r1.a(r0)     // Catch: java.lang.Exception -> L11
            com.mbridge.msdk.reward.adapter.c r1 = r10.f28767b     // Catch: java.lang.Exception -> L11
            com.mbridge.msdk.reward.controller.a$g r2 = r10.f28775j     // Catch: java.lang.Exception -> L11
            r1.a(r2)     // Catch: java.lang.Exception -> L11
            com.mbridge.msdk.reward.adapter.c r1 = r10.f28767b     // Catch: java.lang.Exception -> L11
            java.lang.String r2 = ""
            r3 = 0
            r1.a(r3, r2)     // Catch: java.lang.Exception -> L11
            com.mbridge.msdk.reward.adapter.c r1 = r10.f28767b     // Catch: java.lang.Exception -> L11
            com.mbridge.msdk.reward.controller.a$j r2 = new com.mbridge.msdk.reward.controller.a$j     // Catch: java.lang.Exception -> L11
            r2.<init>()     // Catch: java.lang.Exception -> L11
            r1.a(r2)     // Catch: java.lang.Exception -> L11
            com.mbridge.msdk.reward.adapter.c r3 = r10.f28767b     // Catch: java.lang.Exception -> L11
            boolean r8 = r10.f28790y     // Catch: java.lang.Exception -> L11
            r4 = r11
            r5 = r12
            r6 = r13
            r7 = r14
            r9 = r15
            r3.a(r4, r5, r6, r7, r8, r9)     // Catch: java.lang.Exception -> L11
            android.os.Handler r11 = r10.f28780o     // Catch: java.lang.Exception -> L11
            int r12 = r12 * 1000
            long r12 = (long) r12     // Catch: java.lang.Exception -> L11
            r11.postDelayed(r0, r12)     // Catch: java.lang.Exception -> L11
            goto Lbf
        L9b:
            java.lang.String r12 = r11.getMessage()
            r13 = 880020(0xd6d94, float:1.23317E-39)
            com.mbridge.msdk.foundation.error.b r12 = com.mbridge.msdk.foundation.error.a.a(r13, r12)
            if (r15 == 0) goto Laf
            r15.a(r12)
            r13 = 1
            r15.b(r13)
        Laf:
            r10.a(r12, r15)
            boolean r12 = com.mbridge.msdk.MBridgeConstans.DEBUG
            if (r12 == 0) goto Lbf
            java.lang.String r11 = r11.getMessage()
            java.lang.String r12 = "RewardVideoController"
            com.mbridge.msdk.foundation.tools.p0.b(r12, r11)
        Lbf:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.reward.controller.a.a(int, int, boolean, java.lang.String, com.mbridge.msdk.foundation.same.report.metrics.c):void");
    }

    private void a(String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
        com.mbridge.msdk.videocommon.setting.c cVar2;
        com.mbridge.msdk.videocommon.setting.c cVar3;
        boolean l10;
        boolean m10;
        try {
            if (this.f28767b == null) {
                f();
            }
            if (this.f28767b != null) {
                p0.b("RewardVideoController", "controller 819");
                if (this.f28786u) {
                    l10 = a(false);
                } else {
                    l10 = this.f28767b.l();
                }
                if (l10) {
                    p0.c("RewardVideoController", "invoke adapter show isReady");
                    i iVar = new i(this, this, this.f28780o, null);
                    f28764f0.put(this.f28773h, iVar);
                    this.f28767b.a(iVar, str, this.f28772g, this.f28781p, this.f28776k, cVar);
                    this.E = false;
                    return;
                }
                if (this.f28786u) {
                    m10 = b();
                } else {
                    m10 = this.f28767b.m();
                }
                if (m10) {
                    p0.c("RewardVideoController", "invoke adapter show isSpareOfferReady");
                    i iVar2 = new i(this, this, this.f28780o, null);
                    f28764f0.put(this.f28773h, iVar2);
                    this.f28767b.a(iVar2, str, this.f28772g, this.f28781p, this.f28776k, cVar);
                    this.E = false;
                    return;
                }
            }
            this.E = false;
            a("2000131", cVar, this.f28770e, "can't show because load is failed");
            if (this.f28770e != null) {
                try {
                    this.f28770e.onShowFail(cVar, this.f28774i, "can't show because load is failed");
                } catch (Exception e10) {
                    if (MBridgeConstans.DEBUG) {
                        p0.b("RewardVideoController", e10.getMessage());
                    }
                }
            }
            if (this.f28785t || this.f28786u || (cVar3 = this.f28768c) == null || !cVar3.a(4) || this.f28771f == null || this.f28771f.a() == 1 || this.f28771f.a() == 3) {
                return;
            }
            a(false, com.mbridge.msdk.foundation.same.report.metrics.d.b().a(0, 94, this.f28773h, true, 1));
        } catch (Exception e11) {
            this.E = false;
            if (MBridgeConstans.DEBUG) {
                p0.b("RewardVideoController", e11.getLocalizedMessage());
            }
            a("2000131", cVar, this.f28770e, "show exception");
            if (this.f28770e != null) {
                try {
                    this.f28770e.onShowFail(cVar, this.f28774i, "show exception");
                } catch (Exception unused) {
                    if (MBridgeConstans.DEBUG) {
                        p0.b("RewardVideoController", e11.getMessage());
                    }
                }
            }
            if (this.f28785t || this.f28786u || (cVar2 = this.f28768c) == null || !cVar2.a(4) || this.f28771f == null || this.f28771f.a() == 1 || this.f28771f.a() == 3) {
                return;
            }
            a(false, com.mbridge.msdk.foundation.same.report.metrics.d.b().a(0, 94, this.f28773h, true, 1));
        }
    }

    private boolean a(boolean z10) {
        if (this.f28767b == null) {
            f();
        }
        List<com.mbridge.msdk.foundation.entity.c> a10 = com.mbridge.msdk.videocommon.cache.a.a().a(this.f28773h);
        String str = this.A;
        if (a10 == null || a10.size() <= 0) {
            if (z10) {
                d("is_ready_ctir_false", "no effective campaign list");
                com.mbridge.msdk.foundation.same.report.metrics.c cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
                cVar.i(str);
                cVar.g(this.f28791z);
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a("type", 8);
                cVar.a("m_offer_ready", eVar);
                a(false, cVar, (List<CampaignEx>) this.f28767b.h());
                return false;
            }
            return false;
        }
        String d10 = com.mbridge.msdk.foundation.same.buffer.b.d(this.f28773h);
        boolean a11 = TextUtils.isEmpty(d10) ? false : a(a10, d10, z10);
        if (z10) {
            d("is_ready_ctir_" + a11, "");
        }
        if (a11) {
            if (z10) {
                com.mbridge.msdk.foundation.same.report.metrics.c cVar2 = new com.mbridge.msdk.foundation.same.report.metrics.c();
                cVar2.i(str);
                a(a11, cVar2, this.f28767b.h());
                return a11;
            }
            return a11;
        }
        for (com.mbridge.msdk.foundation.entity.c cVar3 : a10) {
            if (cVar3 != null) {
                this.f28767b.c(cVar3.a());
                this.f28767b.b(cVar3.d());
                if (this.f28767b.b(z10)) {
                    cVar3.d();
                    return true;
                }
            }
        }
        return a11;
    }

    private boolean a(List<com.mbridge.msdk.foundation.entity.c> list, String str, boolean z10) {
        if (list == null) {
            return false;
        }
        for (com.mbridge.msdk.foundation.entity.c cVar : list) {
            if (cVar != null && str.equals(cVar.b())) {
                this.f28767b.c(cVar.a());
                this.f28767b.b(cVar.d());
                if (this.f28767b.l()) {
                    if (z10) {
                        com.mbridge.msdk.foundation.same.report.metrics.c cVar2 = new com.mbridge.msdk.foundation.same.report.metrics.c();
                        cVar2.i(cVar.d());
                        a(false, cVar2, (List<CampaignEx>) this.f28767b.h());
                    }
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:129:0x01e4  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x01fb A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(java.lang.String r11, java.lang.String r12, java.lang.String r13, com.mbridge.msdk.foundation.same.report.metrics.e r14) {
        /*
            Method dump skipped, instructions count: 588
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.reward.controller.a.a(java.lang.String, java.lang.String, java.lang.String, com.mbridge.msdk.foundation.same.report.metrics.e):void");
    }

    private com.mbridge.msdk.foundation.same.report.metrics.c a(com.mbridge.msdk.foundation.same.report.metrics.e eVar) {
        com.mbridge.msdk.foundation.same.report.metrics.c cVar;
        CopyOnWriteArrayList<CampaignEx> b10;
        String str;
        com.mbridge.msdk.foundation.same.report.metrics.c cVar2;
        CampaignEx campaignEx;
        try {
            b10 = com.mbridge.msdk.videocommon.download.b.getInstance().b(this.f28773h);
            str = "";
            if (b10 != null && b10.size() > 0 && (campaignEx = b10.get(0)) != null) {
                str = campaignEx.getCurrentLocalRid();
            }
            cVar2 = TextUtils.isEmpty(str) ? null : com.mbridge.msdk.foundation.same.report.metrics.d.b().c().get(str);
        } catch (Exception e10) {
            e = e10;
            cVar = null;
        }
        if (cVar2 != null) {
            cVar2.b(b10);
            cVar2.a("2000128", eVar);
            cVar2.i(str);
            cVar2.n(this.f28773h);
            com.mbridge.msdk.reward.report.metrics.a.a().a("2000128", cVar2);
            return cVar2;
        }
        cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
        try {
            cVar.n(this.f28773h);
            eVar.a("metrics_data_reason", "未获取到待展示的campaign信息 本地new metricsData");
            cVar.a("2000128", eVar);
            if (TextUtils.isEmpty(str)) {
                cVar.i(SameMD5.getMD5(u0.d()));
            } else {
                cVar.i(str);
                cVar.b(b10);
                com.mbridge.msdk.foundation.same.report.metrics.d.b().c().put(str, cVar);
            }
            com.mbridge.msdk.reward.report.metrics.a.a().a("2000128", cVar);
        } catch (Exception e11) {
            e = e11;
            if (MBridgeConstans.DEBUG) {
                p0.b("RewardVideoController", e.getMessage());
            }
            return cVar;
        }
        return cVar;
    }

    public void a(List<CampaignEx> list) {
        if (list != null && list.size() > 0) {
            this.H = list;
        } else {
            this.H = new ArrayList();
        }
    }

    private String a(String str) {
        String str2 = "";
        try {
            if (TextUtils.isEmpty(str)) {
                str2 = SameMD5.getMD5(u0.d());
            }
            String[] split = str.split("_");
            if (split != null && split.length >= 3) {
                str2 = split[2];
            }
            return TextUtils.isEmpty(str2) ? SameMD5.getMD5(u0.d()) : str2;
        } catch (Exception e10) {
            if (!MBridgeConstans.DEBUG) {
                return "";
            }
            e10.printStackTrace();
            return "";
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0022  */
    /* JADX WARN: Removed duplicated region for block: B:17:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.mbridge.msdk.foundation.same.report.metrics.c a(android.os.Message r3) {
        /*
            r2 = this;
            if (r3 == 0) goto L1f
            android.os.Bundle r3 = r3.getData()     // Catch: java.lang.Exception -> L17
            if (r3 == 0) goto L1f
            com.mbridge.msdk.foundation.same.report.metrics.d r0 = com.mbridge.msdk.foundation.same.report.metrics.d.b()     // Catch: java.lang.Exception -> L17
            java.lang.String r1 = "metrics_data_lrid"
            java.lang.String r3 = r3.getString(r1)     // Catch: java.lang.Exception -> L17
            com.mbridge.msdk.foundation.same.report.metrics.c r3 = r0.b(r3)     // Catch: java.lang.Exception -> L17
            goto L20
        L17:
            r3 = move-exception
            boolean r0 = com.mbridge.msdk.MBridgeConstans.DEBUG
            if (r0 == 0) goto L1f
            r3.printStackTrace()
        L1f:
            r3 = 0
        L20:
            if (r3 != 0) goto L27
            com.mbridge.msdk.foundation.same.report.metrics.c r3 = new com.mbridge.msdk.foundation.same.report.metrics.c
            r3.<init>()
        L27:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.reward.controller.a.a(android.os.Message):com.mbridge.msdk.foundation.same.report.metrics.c");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar, InterVideoOutListener interVideoOutListener) {
        if (this.f28789x) {
            if (cVar == null) {
                cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
                cVar.b(this.H);
            }
            try {
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                if (interVideoOutListener != null) {
                    eVar.a("listener_state", 1);
                } else {
                    eVar.a("listener_state", 2);
                }
                cVar.a(str, eVar);
                com.mbridge.msdk.reward.report.metrics.a.a().a(str, cVar);
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    e10.printStackTrace();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar, InterVideoOutListener interVideoOutListener, String str2) {
        if (cVar == null) {
            try {
                cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
                cVar.b(this.H);
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    e10.printStackTrace();
                    return;
                }
                return;
            }
        }
        com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
        if (!TextUtils.isEmpty(str2)) {
            eVar.a("reason", str2);
        }
        if (interVideoOutListener != null) {
            eVar.a("listener_state", 1);
        } else {
            eVar.a("listener_state", 2);
        }
        cVar.a(str, eVar);
        com.mbridge.msdk.reward.report.metrics.a.a().a(str, cVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x003f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0040 A[Catch: Exception -> 0x002b, TryCatch #0 {Exception -> 0x002b, blocks: (B:4:0x0009, B:6:0x000f, B:8:0x0016, B:12:0x002f, B:14:0x0039, B:17:0x0040, B:21:0x0075, B:23:0x0088, B:25:0x0096), top: B:31:0x0009 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.mbridge.msdk.foundation.same.report.metrics.c a(java.util.List<com.mbridge.msdk.foundation.entity.CampaignEx> r5, com.mbridge.msdk.foundation.same.report.metrics.c r6) {
        /*
            r4 = this;
            com.mbridge.msdk.foundation.same.report.metrics.c r0 = new com.mbridge.msdk.foundation.same.report.metrics.c
            r0.<init>()
            java.lang.String r1 = ""
            if (r5 == 0) goto L38
            int r2 = r5.size()     // Catch: java.lang.Exception -> L2b
            if (r2 <= 0) goto L38
            r2 = 0
            java.lang.Object r3 = r5.get(r2)     // Catch: java.lang.Exception -> L2b
            if (r3 == 0) goto L2e
            java.lang.Object r1 = r5.get(r2)     // Catch: java.lang.Exception -> L2b
            com.mbridge.msdk.foundation.entity.CampaignEx r1 = (com.mbridge.msdk.foundation.entity.CampaignEx) r1     // Catch: java.lang.Exception -> L2b
            java.lang.String r1 = r1.getLocalRequestId()     // Catch: java.lang.Exception -> L2b
            java.lang.Object r2 = r5.get(r2)     // Catch: java.lang.Exception -> L2b
            com.mbridge.msdk.foundation.entity.CampaignEx r2 = (com.mbridge.msdk.foundation.entity.CampaignEx) r2     // Catch: java.lang.Exception -> L2b
            java.lang.String r2 = r2.getNLRid()     // Catch: java.lang.Exception -> L2b
            goto L2f
        L2b:
            r5 = move-exception
            goto La2
        L2e:
            r2 = r1
        L2f:
            r0.i(r1)     // Catch: java.lang.Exception -> L2b
            r0.b(r5)     // Catch: java.lang.Exception -> L2b
            r5 = r1
            r1 = r2
            goto L39
        L38:
            r5 = r1
        L39:
            boolean r1 = android.text.TextUtils.isEmpty(r1)     // Catch: java.lang.Exception -> L2b
            if (r1 == 0) goto L40
            return r6
        L40:
            com.mbridge.msdk.foundation.same.report.metrics.e r6 = new com.mbridge.msdk.foundation.same.report.metrics.e     // Catch: java.lang.Exception -> L2b
            r6.<init>()     // Catch: java.lang.Exception -> L2b
            java.lang.String r1 = "cache"
            r2 = 1
            java.lang.Integer r3 = java.lang.Integer.valueOf(r2)     // Catch: java.lang.Exception -> L2b
            r6.a(r1, r3)     // Catch: java.lang.Exception -> L2b
            java.lang.String r1 = "hb"
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)     // Catch: java.lang.Exception -> L2b
            r6.a(r1, r2)     // Catch: java.lang.Exception -> L2b
            java.lang.String r1 = "auto_load"
            r2 = 2
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)     // Catch: java.lang.Exception -> L2b
            r6.a(r1, r2)     // Catch: java.lang.Exception -> L2b
            java.lang.String r1 = "2000127"
            r0.a(r1, r6)     // Catch: java.lang.Exception -> L2b
            java.lang.String r1 = "2000048"
            r0.a(r1, r6)     // Catch: java.lang.Exception -> L2b
            boolean r6 = r4.f28785t     // Catch: java.lang.Exception -> L2b
            if (r6 == 0) goto L73
            r6 = 287(0x11f, float:4.02E-43)
            goto L75
        L73:
            r6 = 94
        L75:
            r0.a(r6)     // Catch: java.lang.Exception -> L2b
            java.lang.String r6 = "1"
            r0.h(r6)     // Catch: java.lang.Exception -> L2b
            java.lang.String r6 = "2"
            r0.f(r6)     // Catch: java.lang.Exception -> L2b
            boolean r6 = android.text.TextUtils.isEmpty(r5)     // Catch: java.lang.Exception -> L2b
            if (r6 != 0) goto La9
            com.mbridge.msdk.foundation.same.report.metrics.d r6 = com.mbridge.msdk.foundation.same.report.metrics.d.b()     // Catch: java.lang.Exception -> L2b
            java.util.LinkedHashMap r6 = r6.c()     // Catch: java.lang.Exception -> L2b
            boolean r6 = r6.containsKey(r5)     // Catch: java.lang.Exception -> L2b
            if (r6 != 0) goto La9
            com.mbridge.msdk.foundation.same.report.metrics.d r6 = com.mbridge.msdk.foundation.same.report.metrics.d.b()     // Catch: java.lang.Exception -> L2b
            java.util.LinkedHashMap r6 = r6.c()     // Catch: java.lang.Exception -> L2b
            r6.put(r5, r0)     // Catch: java.lang.Exception -> L2b
            goto La9
        La2:
            boolean r6 = com.mbridge.msdk.MBridgeConstans.DEBUG
            if (r6 == 0) goto La9
            r5.printStackTrace()
        La9:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.reward.controller.a.a(java.util.List, com.mbridge.msdk.foundation.same.report.metrics.c):com.mbridge.msdk.foundation.same.report.metrics.c");
    }

    private void a(boolean z10, com.mbridge.msdk.foundation.same.report.metrics.c cVar, List<CampaignEx> list) {
        if (cVar == null) {
            cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
        }
        if (list != null && list.size() > 0) {
            CampaignEx campaignEx = list.get(0);
            if (campaignEx != null) {
                cVar.i(campaignEx.getLocalRequestId());
                cVar.g(campaignEx.getBidToken());
            }
            cVar.b(list);
        }
        a(z10, cVar, (com.mbridge.msdk.foundation.same.report.metrics.e) null);
    }

    private void a(boolean z10, com.mbridge.msdk.foundation.same.report.metrics.c cVar, com.mbridge.msdk.foundation.same.report.metrics.e eVar) {
        if (eVar == null) {
            eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
        }
        cVar.n(this.f28773h);
        cVar.a(this.f28785t ? 287 : 94);
        eVar.a("result", Integer.valueOf(z10 ? 1 : 2));
        eVar.a(CampaignEx.JSON_KEY_HB, Integer.valueOf(this.f28786u ? 1 : 0));
        cVar.a("m_offer_ready", eVar);
        com.mbridge.msdk.reward.report.metrics.a.a().a("m_offer_ready", cVar);
    }
}
