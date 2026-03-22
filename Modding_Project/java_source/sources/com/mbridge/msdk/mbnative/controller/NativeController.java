package com.mbridge.msdk.mbnative.controller;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.room.RoomMasterTable;
import com.iab.omid.library.mmadbridge.adsession.AdEvents;
import com.iab.omid.library.mmadbridge.adsession.AdSession;
import com.iab.omid.library.mmadbridge.adsession.FriendlyObstructionPurpose;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.download.H5DownLoadManager;
import com.mbridge.msdk.foundation.download.download.HTMLResourceManager;
import com.mbridge.msdk.foundation.download.download.ResourceManager;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.foundation.same.c;
import com.mbridge.msdk.foundation.same.task.a;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.mbridge.msdk.foundation.tools.a1;
import com.mbridge.msdk.foundation.tools.j0;
import com.mbridge.msdk.foundation.tools.l0;
import com.mbridge.msdk.foundation.tools.n0;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.u0;
import com.mbridge.msdk.interstitial.view.MBInterstitialActivity;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import com.mbridge.msdk.mbnative.controller.c;
import com.mbridge.msdk.nativex.view.MBMediaView;
import com.mbridge.msdk.out.Campaign;
import com.mbridge.msdk.out.Frame;
import com.mbridge.msdk.out.NativeListener;
import com.mbridge.msdk.playercommon.exoplayer2.source.chunk.ChunkedTrackBlacklistUtil;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.ss.ttvideoengine.strategrycenter.IPortraitService;
import com.unity3d.services.core.fid.Constants;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class NativeController extends com.mbridge.msdk.mbnative.controller.a {

    /* renamed from: c0  reason: collision with root package name */
    private static final String f27935c0 = "NativeController";

    /* renamed from: d0  reason: collision with root package name */
    public static Map<String, Long> f27936d0 = new HashMap();

    /* renamed from: e0  reason: collision with root package name */
    private static boolean f27937e0;
    private int A;
    private int B;
    private com.mbridge.msdk.foundation.same.task.b C;
    private List<com.mbridge.msdk.mbnative.controller.c> D;
    private List<c.d> E;
    private CopyOnWriteArrayList<com.mbridge.msdk.foundation.same.task.a> F;
    private Hashtable<String, AdSession> G;
    private int H;
    private int I;
    private n J;
    private boolean K;
    private boolean L;
    private Timer M;
    private String N;
    private String O;
    private ViewTreeObserver.OnGlobalLayoutListener P;
    private com.mbridge.msdk.setting.l Q;
    private long R;
    private int S;
    private int T;
    private boolean U;
    private int V;
    private int W;
    private boolean X;
    private List<Campaign> Y;
    private String Z;

    /* renamed from: a0  reason: collision with root package name */
    private AdSession f27938a0;

    /* renamed from: b  reason: collision with root package name */
    protected List<Integer> f27939b;

    /* renamed from: b0  reason: collision with root package name */
    private AdEvents f27940b0;

    /* renamed from: c  reason: collision with root package name */
    protected List<Integer> f27941c;

    /* renamed from: d  reason: collision with root package name */
    Map<String, Object> f27942d;

    /* renamed from: e  reason: collision with root package name */
    private com.mbridge.msdk.setting.j f27943e;

    /* renamed from: f  reason: collision with root package name */
    private com.mbridge.msdk.mbnative.listener.a f27944f;

    /* renamed from: g  reason: collision with root package name */
    private NativeListener.NativeTrackingListener f27945g;

    /* renamed from: h  reason: collision with root package name */
    private Context f27946h;

    /* renamed from: i  reason: collision with root package name */
    private String f27947i;

    /* renamed from: j  reason: collision with root package name */
    private String f27948j;

    /* renamed from: k  reason: collision with root package name */
    private Queue<Integer> f27949k;

    /* renamed from: l  reason: collision with root package name */
    private Queue<Long> f27950l;

    /* renamed from: m  reason: collision with root package name */
    private String f27951m;

    /* renamed from: n  reason: collision with root package name */
    private com.mbridge.msdk.foundation.same.report.h f27952n;

    /* renamed from: o  reason: collision with root package name */
    private String f27953o;

    /* renamed from: p  reason: collision with root package name */
    private com.mbridge.msdk.click.a f27954p;

    /* renamed from: q  reason: collision with root package name */
    private int f27955q;

    /* renamed from: r  reason: collision with root package name */
    private int f27956r;

    /* renamed from: s  reason: collision with root package name */
    private int f27957s;

    /* renamed from: t  reason: collision with root package name */
    private int f27958t;

    /* renamed from: u  reason: collision with root package name */
    private String f27959u;

    /* renamed from: v  reason: collision with root package name */
    private boolean f27960v;

    /* renamed from: w  reason: collision with root package name */
    private boolean f27961w;

    /* renamed from: x  reason: collision with root package name */
    private boolean f27962x;

    /* renamed from: y  reason: collision with root package name */
    private int f27963y;

    /* renamed from: z  reason: collision with root package name */
    private int f27964z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f27965a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ NativeListener.NativeAdListener f27966b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f27967c;

        a(List list, NativeListener.NativeAdListener nativeAdListener, int i10) {
            this.f27965a = list;
            this.f27966b = nativeAdListener;
            this.f27967c = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            List list = this.f27965a;
            if (list != null && list.size() > 0) {
                NativeController.this.O = ((CampaignEx) this.f27965a.get(0)).getRequestId();
                NativeController.this.Y = this.f27965a;
            }
            NativeController.this.f27960v = true;
            this.f27966b.onAdLoaded(this.f27965a, this.f27967c);
            com.mbridge.msdk.mbnative.report.a.a(NativeController.this.f27946h, this.f27965a, NativeController.this.f27947i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.mbridge.msdk.mbnative.listener.a f27969a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ CampaignEx f27970b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f27971c;

        b(com.mbridge.msdk.mbnative.listener.a aVar, CampaignEx campaignEx, String str) {
            this.f27969a = aVar;
            this.f27970b = campaignEx;
            this.f27971c = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f27969a.a(this.f27970b, this.f27971c);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class d extends TimerTask {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ long f27974a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ o f27975b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ List f27976c;

        d(long j10, o oVar, List list) {
            this.f27974a = j10;
            this.f27975b = oVar;
            this.f27976c = list;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            boolean z10;
            if (System.currentTimeMillis() - this.f27974a >= ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS) {
                this.f27975b.a();
                NativeController.this.c();
                return;
            }
            int s10 = l0.s(NativeController.this.f27946h);
            int q10 = NativeController.this.h().q();
            if (s10 != 9 && q10 == 2) {
                this.f27975b.a();
                NativeController.this.c();
            } else if (q10 == 3) {
                this.f27975b.a();
                NativeController.this.c();
            } else {
                loop0: while (true) {
                    z10 = false;
                    for (Campaign campaign : this.f27976c) {
                        String id2 = campaign.getId();
                        if (campaign instanceof CampaignEx) {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append(id2);
                            CampaignEx campaignEx = (CampaignEx) campaign;
                            sb2.append(campaignEx.getVideoUrlEncode());
                            sb2.append(campaignEx.getBidToken());
                            id2 = sb2.toString();
                        }
                        com.mbridge.msdk.videocommon.download.a a10 = com.mbridge.msdk.videocommon.download.b.getInstance().a(NativeController.this.f27947i, id2);
                        if (a10 != null && com.mbridge.msdk.videocommon.download.l.a(a10, NativeController.this.h().C())) {
                            z10 = true;
                        }
                    }
                    break loop0;
                }
                if (z10) {
                    this.f27975b.a();
                    NativeController.this.c();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class e implements ViewTreeObserver.OnGlobalLayoutListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ImageView f27978a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ View f27979b;

        e(ImageView imageView, View view) {
            this.f27978a = imageView;
            this.f27979b = view;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (this.f27978a != null) {
                this.f27978a.setLayoutParams(new FrameLayout.LayoutParams(this.f27979b.getWidth(), this.f27979b.getHeight()));
            }
        }
    }

    /* loaded from: classes2.dex */
    class f extends com.mbridge.msdk.widget.a {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ CampaignEx f27981b;

        f(CampaignEx campaignEx) {
            this.f27981b = campaignEx;
        }

        @Override // com.mbridge.msdk.widget.a
        protected void a(View view) {
            NativeController.this.b(view.getContext(), this.f27981b);
        }
    }

    /* loaded from: classes2.dex */
    class g extends com.mbridge.msdk.widget.a {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ CampaignEx f27983b;

        g(CampaignEx campaignEx) {
            this.f27983b = campaignEx;
        }

        @Override // com.mbridge.msdk.widget.a
        protected void a(View view) {
            NativeController.this.b(view.getContext(), this.f27983b);
        }
    }

    /* loaded from: classes2.dex */
    class i extends com.mbridge.msdk.widget.a {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ CampaignEx f27987b;

        i(CampaignEx campaignEx) {
            this.f27987b = campaignEx;
        }

        @Override // com.mbridge.msdk.widget.a
        protected void a(View view) {
            NativeController.this.b(view.getContext(), this.f27987b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class j implements a.InterfaceC0375a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ s f27989a;

        j(s sVar) {
            this.f27989a = sVar;
        }

        @Override // com.mbridge.msdk.foundation.same.task.a.InterfaceC0375a
        public void a(a.b bVar) {
            if (bVar == a.b.FINISH && NativeController.this.F != null && NativeController.this.F.size() > 0 && NativeController.this.F.contains(this.f27989a)) {
                NativeController.this.F.remove(this.f27989a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class k implements c.d {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CampaignEx f27991a;

        k(CampaignEx campaignEx) {
            this.f27991a = campaignEx;
        }

        @Override // com.mbridge.msdk.mbnative.controller.c.d
        public void a(ArrayList<View> arrayList, ArrayList<View> arrayList2) {
            if (arrayList != null && !arrayList.isEmpty()) {
                com.mbridge.msdk.mbnative.report.b.a(this.f27991a, NativeController.this.f27946h, NativeController.this.f27947i, NativeController.this.f27944f);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class l implements o {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f27993a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f27994b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ com.mbridge.msdk.mbnative.listener.a f27995c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ List f27996d;

        l(List list, int i10, com.mbridge.msdk.mbnative.listener.a aVar, List list2) {
            this.f27993a = list;
            this.f27994b = i10;
            this.f27995c = aVar;
            this.f27996d = list2;
        }

        @Override // com.mbridge.msdk.mbnative.controller.NativeController.o
        public void a() {
            List a10 = NativeController.this.a((List<Campaign>) this.f27993a, true);
            if (a10 != null && a10.size() > 0) {
                NativeController.this.a(a10, this.f27994b, this.f27995c);
            } else {
                NativeController.this.a(this.f27995c, "has no ads", (CampaignEx) this.f27996d.get(0));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class m implements o {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f27998a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f27999b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ com.mbridge.msdk.mbnative.listener.a f28000c;

        m(List list, int i10, com.mbridge.msdk.mbnative.listener.a aVar) {
            this.f27998a = list;
            this.f27999b = i10;
            this.f28000c = aVar;
        }

        @Override // com.mbridge.msdk.mbnative.controller.NativeController.o
        public void a() {
            List a10 = NativeController.this.a((List<Campaign>) this.f27998a, false);
            if (a10 != null && a10.size() > 0) {
                NativeController.this.a(a10, this.f27999b, this.f28000c);
            } else {
                NativeController.this.a(this.f28000c, "has no ads", (CampaignEx) null);
            }
        }
    }

    /* loaded from: classes2.dex */
    public class n extends com.mbridge.msdk.mbnative.service.net.b implements com.mbridge.msdk.foundation.same.task.d {

        /* renamed from: d  reason: collision with root package name */
        private Runnable f28003d;

        /* renamed from: c  reason: collision with root package name */
        private boolean f28002c = false;

        /* renamed from: e  reason: collision with root package name */
        private boolean f28004e = true;

        /* renamed from: f  reason: collision with root package name */
        private List<String> f28005f = null;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2.dex */
        public class a extends c.a {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ CampaignEx f28007a;

            a(CampaignEx campaignEx, com.mbridge.msdk.foundation.same.report.metrics.callback.a aVar) {
                this.f28007a = campaignEx;
            }

            @Override // com.mbridge.msdk.foundation.same.c.a
            public void a(String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
                com.mbridge.msdk.mbnative.report.a.a(str, cVar, this.f28007a, NativeController.this.f27946h, (com.mbridge.msdk.foundation.same.report.metrics.callback.a) null);
            }
        }

        public n() {
        }

        @Override // com.mbridge.msdk.foundation.same.task.d
        public void a(boolean z10) {
            this.f28002c = z10;
        }

        public void b(boolean z10) {
            this.f28004e = z10;
        }

        @Override // com.mbridge.msdk.mbnative.service.net.b
        public void a(List<com.mbridge.msdk.tracker.network.g> list, CampaignUnit campaignUnit) {
            Integer num;
            boolean z10 = true;
            NativeController.this.U = true;
            com.mbridge.msdk.foundation.db.j a10 = com.mbridge.msdk.foundation.db.j.a(com.mbridge.msdk.foundation.db.g.a(NativeController.this.f27946h));
            a10.a();
            Runnable runnable = this.f28003d;
            if (runnable != null) {
                NativeController.this.f28028a.removeCallbacks(runnable);
            }
            if (com.mbridge.msdk.util.b.a()) {
                NativeController.this.a(campaignUnit);
            }
            if (campaignUnit != null && campaignUnit.getAds() != null && campaignUnit.getAds().size() > 0) {
                NativeController.this.f27953o = campaignUnit.getSessionId();
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                ArrayList arrayList3 = new ArrayList();
                int i10 = 2;
                if (NativeController.this.S <= 0) {
                    if (NativeController.this.S == -3) {
                        NativeController.this.S = campaignUnit.getAds().size();
                    } else {
                        NativeController nativeController = NativeController.this;
                        nativeController.S = nativeController.f27956r;
                    }
                    if (NativeController.this.V != 0 && campaignUnit.getTemplate() == 2) {
                        NativeController nativeController2 = NativeController.this;
                        nativeController2.S = nativeController2.V;
                    }
                    if (NativeController.this.W != 0 && campaignUnit.getTemplate() == 3) {
                        NativeController nativeController3 = NativeController.this;
                        nativeController3.S = nativeController3.W;
                    }
                }
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a("adtp", 42);
                if (!TextUtils.isEmpty(b())) {
                    eVar.a(CampaignEx.JSON_KEY_HB, 1);
                } else {
                    eVar.a(CampaignEx.JSON_KEY_HB, 0);
                }
                com.mbridge.msdk.foundation.same.report.metrics.c a11 = com.mbridge.msdk.foundation.same.report.metrics.d.b().a(true, b(), eVar, campaignUnit.getAds().get(0), this.unitId);
                int i11 = 0;
                while (i11 < campaignUnit.getAds().size()) {
                    CampaignEx campaignEx = campaignUnit.getAds().get(i11);
                    campaignEx.setLocalRequestId(a11.o());
                    campaignEx.setCampaignUnitId(this.unitId);
                    if (!TextUtils.isEmpty(NativeController.this.N)) {
                        campaignEx.setBidToken(NativeController.this.N);
                        campaignEx.setIsBidCampaign(z10);
                    }
                    if (NativeController.f27937e0) {
                        campaignEx.loadIconUrlAsyncWithBlock(null);
                        campaignEx.loadImageUrlAsyncWithBlock(null);
                    }
                    boolean c10 = u0.c(NativeController.this.f27946h, campaignEx.getPackageName());
                    NativeController nativeController4 = NativeController.this;
                    nativeController4.a(nativeController4.f27946h, campaignEx);
                    if (i11 < NativeController.this.f27956r && campaignEx.getOfferType() != 99) {
                        if (u0.c(campaignEx)) {
                            campaignEx.setRtinsType(c10 ? 1 : i10);
                        }
                        if (com.mbridge.msdk.foundation.same.c.b(NativeController.this.f27946h, campaignEx)) {
                            arrayList.add(campaignEx);
                            if (!TextUtils.isEmpty(campaignEx.getVideoUrlEncode())) {
                                arrayList3.add(campaignEx);
                            }
                        } else {
                            u0.a(this.unitId, campaignEx, com.mbridge.msdk.foundation.same.a.f27042x);
                            NativeController.this.Z = "APP ALREADY INSTALLED";
                        }
                        a(campaignEx, null, null);
                    }
                    if (i11 < NativeController.this.S && campaignEx.getOfferType() != 99) {
                        if (u0.c(campaignEx)) {
                            campaignEx.setRtinsType(c10 ? 1 : 2);
                        }
                        if (!c10) {
                            arrayList2.add(campaignEx);
                        } else if (u0.c(campaignEx)) {
                            arrayList2.add(campaignEx);
                        }
                    }
                    if (!a10.a(campaignEx.getId())) {
                        com.mbridge.msdk.foundation.entity.g gVar = new com.mbridge.msdk.foundation.entity.g();
                        gVar.a(campaignEx.getId());
                        gVar.b(campaignEx.getFca());
                        gVar.c(campaignEx.getFcb());
                        gVar.a(0);
                        gVar.d(0);
                        gVar.a(System.currentTimeMillis());
                        a10.b(gVar);
                    }
                    com.mbridge.msdk.click.c.a(NativeController.this.f27946h, campaignEx.getMaitve(), campaignEx.getMaitve_src());
                    i11++;
                    z10 = true;
                    i10 = 2;
                }
                NativeController.this.d(arrayList3);
                int type = campaignUnit.getAds().get(0) != null ? campaignUnit.getAds().get(0).getType() : 1;
                com.mbridge.msdk.mbnative.cache.b<String, List<Campaign>> a12 = com.mbridge.msdk.mbnative.cache.c.a(type);
                if (a12 != null) {
                    a12.a((com.mbridge.msdk.mbnative.cache.b<String, List<Campaign>>) this.unitId, (String) arrayList2, NativeController.this.N);
                }
                if (arrayList.size() == 0) {
                    if (NativeController.this.Z.contains("INSTALLED")) {
                        NativeController.this.a("APP ALREADY INSTALLED", a(), b(), campaignUnit.getAds().get(0));
                        new com.mbridge.msdk.foundation.error.b(880021, "APP ALREADY INSTALLED");
                        return;
                    }
                    NativeController.this.a("v3 response error", a(), b(), campaignUnit.getAds().get(0));
                    new com.mbridge.msdk.foundation.error.b(880003);
                    return;
                }
                NativeController nativeController5 = NativeController.this;
                nativeController5.c(nativeController5.a(type, nativeController5.a(arrayList)));
                if (com.mbridge.msdk.mbnative.controller.d.g().containsKey(this.unitId) && Boolean.TRUE.equals(com.mbridge.msdk.mbnative.controller.d.g().get(this.unitId))) {
                    com.mbridge.msdk.mbnative.controller.d.a(NativeController.this.f27957s, this.unitId);
                    return;
                }
                int intValue = (!com.mbridge.msdk.mbnative.controller.d.d().containsKey(this.unitId) || (num = com.mbridge.msdk.mbnative.controller.d.d().get(this.unitId)) == null) ? 1 : num.intValue();
                int i12 = NativeController.this.f27956r + NativeController.this.f27958t;
                NativeController.this.f27958t = i12 <= intValue ? i12 : 0;
                return;
            }
            this.unitId = "0_" + this.unitId;
            com.mbridge.msdk.mbnative.controller.d.b(NativeController.this.f27957s, this.unitId);
            NativeController.this.f27958t = 0;
        }

        public void b(List<String> list) {
            this.f28005f = list;
        }

        private void a(CampaignEx campaignEx, com.mbridge.msdk.foundation.same.report.metrics.c cVar, com.mbridge.msdk.foundation.same.report.metrics.callback.a aVar) {
            try {
                com.mbridge.msdk.foundation.same.c.a(campaignEx, NativeController.this.f27946h, cVar, new a(campaignEx, aVar));
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    e10.printStackTrace();
                }
            }
        }

        @Override // com.mbridge.msdk.mbnative.service.net.b
        public void a(int i10, String str) {
            NativeController.this.U = true;
            if (this.f28002c) {
                if (NativeController.this.f27960v || !this.f28004e) {
                    return;
                }
                NativeController.this.a(str, a(), b(), (CampaignEx) null);
                return;
            }
            if (i10 == -1) {
                com.mbridge.msdk.mbnative.controller.d.b(NativeController.this.f27957s, this.unitId);
                NativeController.this.f27958t = 0;
            }
            Runnable runnable = this.f28003d;
            if (runnable != null) {
                NativeController.this.f28028a.removeCallbacks(runnable);
            }
            if (NativeController.this.f27960v) {
                return;
            }
            if (a() == 1 || this.f28004e) {
                NativeController.this.a(str, a(), b(), (CampaignEx) null);
            }
        }

        public void a(Runnable runnable) {
            this.f28003d = runnable;
        }

        @Override // com.mbridge.msdk.mbnative.service.net.b
        public void a(List<Frame> list) {
            if (this.f28002c) {
                return;
            }
            Runnable runnable = this.f28003d;
            if (runnable != null) {
                NativeController.this.f28028a.removeCallbacks(runnable);
            }
            if (list == null || list.size() == 0) {
                if (NativeController.this.f27944f != null) {
                    NativeController.this.f27960v = true;
                    NativeController.this.f27944f.onAdLoadError("frame is empty");
                    return;
                }
                return;
            }
            for (Frame frame : list) {
                List<CampaignEx> campaigns = frame.getCampaigns();
                if (campaigns == null || campaigns.size() == 0) {
                    if (NativeController.this.f27944f != null) {
                        NativeController.this.f27960v = true;
                        NativeController.this.f27944f.onAdLoadError("ads in frame is empty");
                        return;
                    }
                    return;
                }
                for (CampaignEx campaignEx : campaigns) {
                    if (NativeController.f27937e0) {
                        campaignEx.loadImageUrlAsyncWithBlock(null);
                        campaignEx.loadIconUrlAsyncWithBlock(null);
                    }
                }
            }
            if (NativeController.this.f27944f != null) {
                NativeController.this.f27944f.onAdFramesLoaded(list);
            }
        }
    }

    /* loaded from: classes2.dex */
    public interface o {
        void a();
    }

    /* loaded from: classes2.dex */
    public class p implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private int f28009a;

        /* renamed from: b  reason: collision with root package name */
        private com.mbridge.msdk.foundation.same.task.d f28010b;

        /* renamed from: c  reason: collision with root package name */
        private int f28011c;

        /* renamed from: d  reason: collision with root package name */
        private String f28012d;

        public p(int i10, com.mbridge.msdk.foundation.same.task.d dVar, int i11, String str) {
            this.f28009a = i10;
            this.f28010b = dVar;
            this.f28011c = i11;
            this.f28012d = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f28010b.a(true);
            int i10 = this.f28009a;
            if (i10 == 1) {
                NativeController.this.U = true;
                NativeController.this.a("REQUEST_TIMEOUT", this.f28011c, this.f28012d, (CampaignEx) null);
            } else if (i10 == 2) {
                if (!NativeController.this.f27960v || this.f28011c == 1) {
                    NativeController.this.a("REQUEST_TIMEOUT", this.f28011c, this.f28012d, (CampaignEx) null);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class q implements H5DownLoadManager.IH5SourceDownloadListener {

        /* renamed from: a  reason: collision with root package name */
        private String f28014a;

        /* renamed from: b  reason: collision with root package name */
        private CampaignEx f28015b;

        /* renamed from: c  reason: collision with root package name */
        private long f28016c = System.currentTimeMillis();

        /* renamed from: d  reason: collision with root package name */
        private boolean f28017d;

        public q(String str, CampaignEx campaignEx, boolean z10) {
            this.f28017d = true;
            this.f28014a = str;
            this.f28015b = campaignEx;
            this.f28017d = z10;
        }

        @Override // com.mbridge.msdk.foundation.download.download.H5DownLoadManager.H5ResDownloadListerInter
        public void onFailed(String str, String str2) {
            try {
                if (this.f28017d) {
                    long currentTimeMillis = System.currentTimeMillis() - this.f28016c;
                    com.mbridge.msdk.foundation.db.n.a(com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d()));
                    com.mbridge.msdk.foundation.entity.n nVar = new com.mbridge.msdk.foundation.entity.n("2000043", 3, currentTimeMillis + "", str, this.f28015b.getId(), this.f28014a, str2, "2");
                    nVar.n(this.f28015b.getRequestId());
                    nVar.k(this.f28015b.getCurrentLocalRid());
                    nVar.o(this.f28015b.getRequestIdNotice());
                    CampaignEx campaignEx = this.f28015b;
                    if (campaignEx != null && !TextUtils.isEmpty(campaignEx.getId())) {
                        nVar.b(this.f28015b.getId());
                    }
                    CampaignEx campaignEx2 = this.f28015b;
                    if (campaignEx2 != null) {
                        nVar.a(campaignEx2.getAdSpaceT());
                    }
                    nVar.a("1");
                    com.mbridge.msdk.foundation.same.report.g.a(nVar, this.f28014a, this.f28015b);
                }
            } catch (Exception e10) {
                p0.b(NativeController.f27935c0, com.mbridge.msdk.mbnative.common.a.a(e10));
            }
        }

        @Override // com.mbridge.msdk.foundation.download.download.H5DownLoadManager.H5ResDownloadListerInter
        public void onSuccess(String str, String str2, boolean z10) {
            try {
                if (this.f28017d) {
                    long currentTimeMillis = System.currentTimeMillis() - this.f28016c;
                    com.mbridge.msdk.foundation.db.n.a(com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d()));
                    com.mbridge.msdk.foundation.entity.n nVar = new com.mbridge.msdk.foundation.entity.n("2000043", 1, currentTimeMillis + "", str, this.f28015b.getId(), this.f28014a, "", "2");
                    CampaignEx campaignEx = this.f28015b;
                    if (campaignEx != null && !TextUtils.isEmpty(campaignEx.getId())) {
                        nVar.b(this.f28015b.getId());
                    }
                    CampaignEx campaignEx2 = this.f28015b;
                    if (campaignEx2 != null) {
                        nVar.n(campaignEx2.getRequestId());
                        nVar.o(this.f28015b.getRequestIdNotice());
                        nVar.k(this.f28015b.getCurrentLocalRid());
                        nVar.a(this.f28015b.getAdSpaceT());
                    }
                    if (!TextUtils.isEmpty(str2)) {
                        nVar.q(str2);
                    }
                    nVar.a("1");
                    com.mbridge.msdk.foundation.same.report.g.a(nVar, this.f28014a, this.f28015b);
                }
            } catch (Exception e10) {
                p0.b(NativeController.f27935c0, com.mbridge.msdk.mbnative.common.a.a(e10));
            }
        }
    }

    /* loaded from: classes2.dex */
    protected static class r extends Handler {

        /* renamed from: a  reason: collision with root package name */
        private WeakReference<NativeController> f28018a;

        public r(NativeController nativeController) {
            this.f28018a = new WeakReference<>(nativeController);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            NativeController nativeController;
            WeakReference<NativeController> weakReference;
            NativeController nativeController2;
            super.handleMessage(message);
            try {
                if (message.what == 0 && (weakReference = this.f28018a) != null && (nativeController2 = weakReference.get()) != null) {
                    nativeController2.f27952n.a(message.arg1, (String) message.obj);
                }
                if (message.what == 1) {
                    WeakReference<NativeController> weakReference2 = this.f28018a;
                    if (weakReference2 != null && weakReference2.get() != null) {
                        nativeController = this.f28018a.get();
                    } else {
                        nativeController = null;
                    }
                    if (nativeController != null) {
                        nativeController.f27961w = true;
                        List<Campaign> a10 = nativeController.a(nativeController.f27947i, nativeController.f27956r, nativeController.N);
                        if (!nativeController.f27960v) {
                            nativeController.c(a10);
                        }
                    }
                }
            } catch (Exception e10) {
                p0.b(NativeController.f27935c0, com.mbridge.msdk.mbnative.common.a.a(e10));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class t implements H5DownLoadManager.ZipDownloadListener {

        /* renamed from: a  reason: collision with root package name */
        String f28024a;

        /* renamed from: b  reason: collision with root package name */
        CampaignEx f28025b;

        /* renamed from: c  reason: collision with root package name */
        private long f28026c = System.currentTimeMillis();

        /* renamed from: d  reason: collision with root package name */
        private boolean f28027d;

        public t(String str, CampaignEx campaignEx, boolean z10) {
            this.f28027d = true;
            this.f28024a = str;
            this.f28025b = campaignEx;
            this.f28027d = z10;
        }

        @Override // com.mbridge.msdk.foundation.download.download.H5DownLoadManager.H5ResDownloadListerInter
        public void onFailed(String str, String str2) {
            try {
                if (this.f28027d) {
                    long currentTimeMillis = System.currentTimeMillis() - this.f28026c;
                    com.mbridge.msdk.foundation.db.n.a(com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d()));
                    com.mbridge.msdk.foundation.entity.n nVar = new com.mbridge.msdk.foundation.entity.n("2000043", 3, currentTimeMillis + "", str2, this.f28025b.getId(), this.f28024a, str, "1");
                    CampaignEx campaignEx = this.f28025b;
                    if (campaignEx != null && !TextUtils.isEmpty(campaignEx.getId())) {
                        nVar.b(this.f28025b.getId());
                    }
                    CampaignEx campaignEx2 = this.f28025b;
                    if (campaignEx2 != null) {
                        nVar.n(campaignEx2.getRequestId());
                        nVar.k(this.f28025b.getCurrentLocalRid());
                        nVar.o(this.f28025b.getRequestIdNotice());
                        nVar.a(this.f28025b.getAdSpaceT());
                    }
                    nVar.a("2");
                    com.mbridge.msdk.foundation.same.report.g.a(nVar, this.f28024a, this.f28025b);
                }
            } catch (Exception e10) {
                p0.b(NativeController.f27935c0, com.mbridge.msdk.mbnative.common.a.a(e10));
            }
        }

        @Override // com.mbridge.msdk.foundation.download.download.H5DownLoadManager.H5ResDownloadListerInter
        public void onSuccess(String str, String str2, boolean z10) {
            try {
                if (this.f28027d) {
                    long currentTimeMillis = System.currentTimeMillis() - this.f28026c;
                    com.mbridge.msdk.foundation.db.n.a(com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d()));
                    com.mbridge.msdk.foundation.entity.n nVar = new com.mbridge.msdk.foundation.entity.n("2000043", 1, currentTimeMillis + "", str, this.f28025b.getId(), this.f28024a, "", "1");
                    CampaignEx campaignEx = this.f28025b;
                    if (campaignEx != null && !TextUtils.isEmpty(campaignEx.getId())) {
                        nVar.b(this.f28025b.getId());
                    }
                    CampaignEx campaignEx2 = this.f28025b;
                    if (campaignEx2 != null) {
                        nVar.n(campaignEx2.getRequestId());
                        nVar.k(this.f28025b.getCurrentLocalRid());
                        nVar.o(this.f28025b.getRequestIdNotice());
                        nVar.a(this.f28025b.getAdSpaceT());
                    }
                    if (!TextUtils.isEmpty(str2)) {
                        nVar.q(str2);
                    }
                    nVar.a("2");
                    com.mbridge.msdk.foundation.same.report.g.a(nVar, this.f28024a, this.f28025b);
                }
            } catch (Exception e10) {
                p0.b(NativeController.f27935c0, com.mbridge.msdk.mbnative.common.a.a(e10));
            }
        }
    }

    public NativeController(com.mbridge.msdk.mbnative.listener.a aVar, NativeListener.NativeTrackingListener nativeTrackingListener, Map<String, Object> map, Context context) {
        int i10;
        Object obj;
        this.f27955q = 1;
        this.f27956r = 1;
        this.f27957s = -1;
        this.f27958t = 0;
        this.f27960v = false;
        this.f27961w = false;
        this.f27962x = false;
        this.f27963y = 0;
        this.f27964z = 0;
        this.A = 0;
        this.B = 0;
        this.F = new CopyOnWriteArrayList<>();
        this.G = new Hashtable<>();
        this.H = 1;
        this.I = 2;
        this.N = "";
        this.O = "";
        this.Z = "";
        this.f27946h = context;
        this.f27942d = map;
        this.f27943e = new com.mbridge.msdk.setting.j();
        this.f27944f = aVar;
        this.f27945g = nativeTrackingListener;
        this.D = new ArrayList();
        this.E = new ArrayList();
        String str = (String) map.get(MBridgeConstans.PROPERTIES_UNIT_ID);
        this.f27947i = str;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (map.containsKey(MBridgeConstans.PLACEMENT_ID) && map.get(MBridgeConstans.PLACEMENT_ID) != null) {
            this.f27948j = (String) map.get(MBridgeConstans.PLACEMENT_ID);
        } else {
            this.f27948j = "";
        }
        if (map.containsKey(MBridgeConstans.PREIMAGE) && (obj = map.get(MBridgeConstans.PREIMAGE)) != null) {
            f27937e0 = ((Boolean) obj).booleanValue();
        }
        this.f27949k = new LinkedList();
        this.f27950l = new LinkedList();
        this.C = new com.mbridge.msdk.foundation.same.task.b(this.f27946h);
        if (Looper.myLooper() == null) {
            Looper.prepare();
        }
        this.f28028a = new r(this);
        if (map.containsKey(MBridgeConstans.PROPERTIES_API_REUQEST_CATEGORY)) {
            this.f27959u = (String) map.get(MBridgeConstans.PROPERTIES_API_REUQEST_CATEGORY);
        }
        try {
            boolean equals = com.mbridge.msdk.mbnative.controller.d.g().containsKey(this.f27947i) ? Boolean.TRUE.equals(com.mbridge.msdk.mbnative.controller.d.g().get(this.f27947i)) : false;
            Object obj2 = map.get("ad_num");
            Object obj3 = map.get(MBridgeConstans.PROPERTIES_AD_FRAME_NUM);
            if (!equals) {
                if (map.containsKey("ad_num") && obj2 != null) {
                    try {
                        i10 = ((Integer) obj2).intValue();
                    } catch (Exception e10) {
                        if (MBridgeConstans.DEBUG) {
                            p0.b(f27935c0, e10.getMessage());
                        }
                        i10 = 1;
                    }
                    i10 = i10 < 1 ? 1 : i10;
                    i10 = i10 > 10 ? 10 : i10;
                    this.f27956r = i10;
                    this.f27955q = i10;
                }
                if (map.containsKey(MBridgeConstans.PROPERTIES_AD_FRAME_NUM) && obj3 != null) {
                    try {
                        this.A = ((Integer) obj3).intValue();
                    } catch (Exception e11) {
                        if (MBridgeConstans.DEBUG) {
                            p0.b(f27935c0, e11.getMessage());
                        }
                    }
                }
            } else if (com.mbridge.msdk.mbnative.controller.d.c().containsKey(this.f27947i)) {
                Integer num = com.mbridge.msdk.mbnative.controller.d.c().get(this.f27947i);
                if (num != null) {
                    this.f27956r = num.intValue();
                }
                if (map.containsKey("ad_num") && obj2 != null) {
                    int intValue = ((Integer) obj2).intValue();
                    this.f27963y = intValue;
                    this.f27955q = intValue;
                }
                if (map.containsKey(MBridgeConstans.PROPERTIES_AD_FRAME_NUM) && obj3 != null) {
                    int intValue2 = ((Integer) obj3).intValue();
                    this.f27964z = intValue2;
                    this.A = intValue2;
                }
            }
        } catch (Exception e12) {
            p0.b(f27935c0, com.mbridge.msdk.mbnative.common.a.a(e12));
        }
        this.f27952n = new com.mbridge.msdk.foundation.same.report.h(this.f27946h);
        this.f27954p = new com.mbridge.msdk.click.a(this.f27946h, this.f27947i);
        try {
            int i11 = MBMediaView.f28354p0;
            this.L = true;
            Map<String, Object> map2 = this.f27942d;
            if (map2 != null && (map2.containsKey(MBridgeConstans.NATIVE_VIDEO_WIDTH) || this.f27942d.containsKey(MBridgeConstans.NATIVE_VIDEO_HEIGHT) || map.containsKey(MBridgeConstans.NATIVE_VIDEO_SUPPORT))) {
                this.K = true;
            }
            com.mbridge.msdk.mbnative.controller.e.a(this.f27946h, this.f27947i);
            n0.a();
            if (TextUtils.isEmpty(this.f27947i)) {
                return;
            }
            com.mbridge.msdk.foundation.db.e.a(com.mbridge.msdk.foundation.db.g.a(this.f27946h)).a();
            int a10 = a(map.containsKey(MBridgeConstans.NATIVE_INFO) ? (String) map.get(MBridgeConstans.NATIVE_INFO) : null);
            List<Campaign> a11 = a(this.f27947i, a10 <= 0 ? this.f27955q : a10);
            if (a11 != null) {
                ArrayList arrayList = new ArrayList();
                for (int i12 = 0; i12 < a11.size(); i12++) {
                    CampaignEx campaignEx = (CampaignEx) a11.get(i12);
                    if (!TextUtils.isEmpty(campaignEx.getVideoUrlEncode())) {
                        arrayList.add(campaignEx);
                    }
                }
                if (arrayList.size() > 0) {
                    Object invoke = com.mbridge.msdk.videocommon.download.b.class.getMethod(Constants.GET_INSTANCE, new Class[0]).invoke(null, new Object[0]);
                    com.mbridge.msdk.videocommon.download.b.class.getMethod("createUnitCache", Context.class, String.class, CopyOnWriteArrayList.class, Integer.TYPE, com.mbridge.msdk.videocommon.listener.a.class).invoke(invoke, context, this.f27947i, new CopyOnWriteArrayList(arrayList), 1, null);
                    com.mbridge.msdk.videocommon.download.b.class.getMethod("load", String.class).invoke(invoke, this.f27947i);
                }
            }
        } catch (Throwable unused) {
            p0.b(f27935c0, "please import the nativex aar");
        }
    }

    private List<Campaign> e(List<Campaign> list) {
        if (list != null) {
            CampaignEx campaignEx = null;
            for (int size = list.size() - 1; size >= 0; size--) {
                try {
                    campaignEx = (CampaignEx) list.get(size);
                } catch (Throwable th2) {
                    th2.printStackTrace();
                }
                if (campaignEx != null && TextUtils.isEmpty(campaignEx.getVideoUrlEncode())) {
                    Campaign remove = list.remove(size);
                    com.mbridge.msdk.mbnative.cache.c.a(campaignEx.getType()).a(this.f27947i, remove, this.N);
                    p0.a(f27935c0, "remove no videoURL ads:" + remove);
                }
            }
        }
        return list;
    }

    private void f() {
        try {
            if (this.f27951m == null) {
                return;
            }
            JSONArray jSONArray = new JSONArray(this.f27951m);
            if (jSONArray.length() > 0) {
                for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                    JSONObject jSONObject = (JSONObject) jSONArray.opt(i10);
                    int optInt = jSONObject.optInt("id", 0);
                    if (2 == optInt) {
                        this.V = jSONObject.optInt("ad_num");
                        if (this.T > 0) {
                            jSONObject.remove("ad_num");
                            jSONObject.put("ad_num", this.T);
                        }
                    } else if (3 == optInt) {
                        this.W = jSONObject.optInt("ad_num");
                        if (this.T > 0) {
                            jSONObject.remove("ad_num");
                            jSONObject.put("ad_num", this.T);
                        }
                    }
                }
            }
            this.H = Math.max(this.V, this.W);
            this.f27951m = jSONArray.toString();
        } catch (JSONException e10) {
            p0.b(f27935c0, com.mbridge.msdk.mbnative.common.a.a(e10));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.mbridge.msdk.setting.l h() {
        com.mbridge.msdk.setting.l e10 = com.mbridge.msdk.setting.h.b().e("", this.f27947i);
        this.Q = e10;
        if (e10 == null) {
            this.Q = com.mbridge.msdk.setting.l.i(this.f27947i);
        }
        return this.Q;
    }

    public String g() {
        return this.O;
    }

    public void i() {
        com.mbridge.msdk.foundation.same.task.a next;
        com.mbridge.msdk.foundation.same.task.b bVar = this.C;
        if (bVar != null) {
            bVar.a();
            this.C = null;
        }
        Hashtable<String, AdSession> hashtable = this.G;
        if (hashtable != null) {
            for (AdSession adSession : hashtable.values()) {
                if (adSession != null) {
                    adSession.finish();
                }
            }
            this.G.clear();
        }
        Handler handler = this.f28028a;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        this.f27945g = null;
        this.f27954p.c();
        try {
            Context context = this.f27946h;
            if (context != null) {
                com.mbridge.msdk.foundation.same.image.b.a(context).b();
            }
            List<com.mbridge.msdk.mbnative.controller.c> list = this.D;
            if (list != null && list.size() > 0) {
                for (com.mbridge.msdk.mbnative.controller.c cVar : this.D) {
                    cVar.a();
                }
                this.D.clear();
                this.D = null;
            }
            List<c.d> list2 = this.E;
            if (list2 != null && list2.size() > 0) {
                for (c.d dVar : this.E) {
                }
                this.E.clear();
                this.E = null;
            }
            CopyOnWriteArrayList<com.mbridge.msdk.foundation.same.task.a> copyOnWriteArrayList = this.F;
            if (copyOnWriteArrayList == null || copyOnWriteArrayList.size() <= 0) {
                return;
            }
            Iterator<com.mbridge.msdk.foundation.same.task.a> it = this.F.iterator();
            if (it.hasNext() && (next = it.next()) != null) {
                next.cancel();
                this.f28028a.removeCallbacks(next);
            }
            this.F.clear();
        } catch (Exception unused) {
        }
    }

    public void j() {
        List<Integer> list = this.f27939b;
        if (list != null && list.size() > 0) {
            Queue<Integer> queue = this.f27949k;
            if (queue != null && queue.size() > 0) {
                this.f27949k.clear();
            }
            for (Integer num : this.f27939b) {
                Queue<Integer> queue2 = this.f27949k;
                if (queue2 != null) {
                    queue2.add(num);
                }
            }
        }
        List<Integer> list2 = this.f27941c;
        if (list2 == null || list2.size() <= 0) {
            return;
        }
        Queue<Long> queue3 = this.f27950l;
        if (queue3 != null && queue3.size() > 0) {
            this.f27950l.clear();
        }
        for (Integer num2 : this.f27941c) {
            Queue<Long> queue4 = this.f27950l;
            if (queue4 != null) {
                queue4.add(Long.valueOf(num2.intValue() * 1000));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(List<CampaignEx> list) {
        if (list != null) {
            try {
                if (list.size() > 0) {
                    int i10 = MBMediaView.f28354p0;
                    Object invoke = com.mbridge.msdk.videocommon.download.b.class.getMethod(Constants.GET_INSTANCE, new Class[0]).invoke(null, new Object[0]);
                    if (invoke != null) {
                        com.mbridge.msdk.videocommon.download.b.class.getMethod("createUnitCache", Context.class, String.class, CopyOnWriteArrayList.class, Integer.TYPE, com.mbridge.msdk.videocommon.listener.a.class).invoke(invoke, this.f27946h, this.f27947i, new CopyOnWriteArrayList(list), 1, null);
                        com.mbridge.msdk.videocommon.download.b.class.getMethod("load", String.class).invoke(invoke, this.f27947i);
                    }
                    Iterator<CampaignEx> it = list.iterator();
                    while (it.hasNext()) {
                        CampaignEx next = it.next();
                        if (next != null && !TextUtils.isEmpty(next.getImageUrl())) {
                            com.mbridge.msdk.foundation.same.image.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).a(next.getImageUrl(), new c());
                        }
                        String str = "";
                        if (next != null) {
                            try {
                                str = next.getendcard_url();
                            } catch (Exception unused) {
                            }
                        }
                        com.mbridge.msdk.foundation.same.report.metrics.c cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
                        cVar.a(next);
                        if (!TextUtils.isEmpty(str)) {
                            cVar.f((next == null || next.getAabEntity() == null) ? 0 : next.getAabEntity().h3c);
                            if (str.contains(".zip") && str.contains(ResourceManager.KEY_MD5FILENAME)) {
                                H5DownLoadManager.getInstance().downloadH5Res(cVar, str, new t(this.f27947i, next, TextUtils.isEmpty(H5DownLoadManager.getInstance().getH5ResAddress(str))));
                            } else {
                                H5DownLoadManager.getInstance().downloadH5Res(cVar, str, new q(this.f27947i, next, TextUtils.isEmpty(HTMLResourceManager.getInstance().getHtmlContentFromUrl(str))));
                            }
                        }
                    }
                }
            } catch (Throwable th2) {
                if (MBridgeConstans.DEBUG) {
                    th2.printStackTrace();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean c(List<Campaign> list) {
        if ((TextUtils.isEmpty(this.N) || list == null || list.size() != 0) && list != null && list.size() > 0) {
            com.mbridge.msdk.mbnative.listener.a aVar = this.f27944f;
            if (aVar != null) {
                CampaignEx campaignEx = (CampaignEx) list.get(0);
                if (campaignEx != null && campaignEx.isActiveOm()) {
                    AdSession a10 = a(campaignEx);
                    this.f27938a0 = a10;
                    if (a10 != null) {
                        a10.start();
                        AdEvents createAdEvents = AdEvents.createAdEvents(this.f27938a0);
                        this.f27940b0 = createAdEvents;
                        createAdEvents.loaded();
                    }
                }
                int template = campaignEx != null ? campaignEx.getTemplate() : 2;
                com.mbridge.msdk.foundation.db.j a11 = com.mbridge.msdk.foundation.db.j.a(com.mbridge.msdk.foundation.db.g.a(this.f27946h));
                a11.a();
                for (int i10 = 0; i10 < list.size(); i10++) {
                    CampaignEx campaignEx2 = (CampaignEx) list.get(i10);
                    if (!a11.a(campaignEx2.getId())) {
                        com.mbridge.msdk.foundation.entity.g gVar = new com.mbridge.msdk.foundation.entity.g();
                        gVar.a(campaignEx2.getId());
                        gVar.b(campaignEx2.getFca());
                        gVar.c(campaignEx2.getFcb());
                        gVar.a(0);
                        gVar.d(0);
                        gVar.a(System.currentTimeMillis());
                        a11.b(gVar);
                    }
                }
                if (this.L && this.K) {
                    if (h().m() == 3) {
                        List<Campaign> e10 = e(list);
                        if (list.size() > 0) {
                            a(list, new l(e10, template, aVar, list));
                            return true;
                        }
                        a(aVar, "has no ads", (CampaignEx) null);
                        return true;
                    }
                    List<Campaign> b10 = b(list);
                    if (b10 != null && b10.size() > 0) {
                        a(b10, new m(list, template, aVar));
                        return true;
                    }
                    a(list, template, aVar);
                    return true;
                } else if (list.size() > 0) {
                    for (Campaign campaign : list) {
                        campaign.setVideoLength(0);
                    }
                    a(list, template, aVar);
                    return true;
                } else {
                    a(aVar, "has no ads", (CampaignEx) null);
                    return true;
                }
            }
            return true;
        }
        return false;
    }

    public static boolean b(Map<String, Object> map) {
        if (map != null) {
            try {
                if (map.containsKey("app_id") && map.containsKey("app_key") && map.containsKey(MBridgeConstans.KEY_WORD)) {
                    return map.get(MBridgeConstans.KEY_WORD) != null;
                }
                return false;
            } catch (Exception e10) {
                p0.b(f27935c0, com.mbridge.msdk.mbnative.common.a.a(e10));
                return false;
            }
        }
        return false;
    }

    public void b(int i10, String str) {
        com.mbridge.msdk.mbnative.listener.a aVar;
        Long poll;
        Queue<Integer> queue = this.f27949k;
        if (queue != null && queue.size() > 0) {
            Integer poll2 = this.f27949k.poll();
            int intValue = poll2 != null ? poll2.intValue() : 1;
            this.R = MBridgeConstans.REQUEST_TIME_OUT;
            Queue<Long> queue2 = this.f27950l;
            if (queue2 != null && queue2.size() > 0 && (poll = this.f27950l.poll()) != null) {
                this.R = poll.longValue();
            }
            b(intValue, this.R, i10, str);
        } else if (this.f27960v || (aVar = this.f27944f) == null) {
        } else {
            this.f27960v = true;
            aVar.onAdLoadError("no ad source");
        }
    }

    public String e() {
        ArrayList arrayList = new ArrayList();
        List<Campaign> list = this.Y;
        if (list != null) {
            for (Campaign campaign : list) {
                CampaignEx campaignEx = new CampaignEx();
                campaignEx.setCreativeId(campaign.getCreativeId());
                arrayList.add(campaignEx);
            }
        }
        return com.mbridge.msdk.foundation.same.c.b(arrayList);
    }

    public static List<String> a(Map<String, Object> map) {
        Exception e10;
        ArrayList arrayList = null;
        try {
            if (map.get(MBridgeConstans.KEY_WORD) instanceof String) {
                String str = (String) map.get(MBridgeConstans.KEY_WORD);
                if (TextUtils.isEmpty(str)) {
                    return null;
                }
                JSONArray jSONArray = new JSONArray(str);
                if (jSONArray.length() == 0) {
                    return null;
                }
                ArrayList arrayList2 = new ArrayList();
                for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                    try {
                        JSONObject optJSONObject = jSONArray.optJSONObject(i10);
                        if (optJSONObject != null) {
                            String optString = optJSONObject.optString(TtmlNode.TAG_P);
                            if (!TextUtils.isEmpty(optString)) {
                                arrayList2.add(optString);
                            }
                        }
                    } catch (Exception e11) {
                        e10 = e11;
                        arrayList = arrayList2;
                        p0.b(f27935c0, com.mbridge.msdk.mbnative.common.a.a(e10));
                        return arrayList;
                    }
                }
                return arrayList2;
            }
            return null;
        } catch (Exception e12) {
            e10 = e12;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class h implements com.mbridge.msdk.widget.dialog.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CampaignEx f27985a;

        h(CampaignEx campaignEx) {
            this.f27985a = campaignEx;
        }

        @Override // com.mbridge.msdk.widget.dialog.b
        public void b() {
            NativeController.this.f27954p.a(this.f27985a, NativeController.this.f27944f);
            NativeController.this.b(this.f27985a);
        }

        @Override // com.mbridge.msdk.widget.dialog.b
        public void a() {
        }

        @Override // com.mbridge.msdk.widget.dialog.b
        public void c() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class s extends com.mbridge.msdk.foundation.same.task.a {

        /* renamed from: a  reason: collision with root package name */
        private CampaignEx f28019a;

        /* renamed from: b  reason: collision with root package name */
        private WeakReference<View> f28020b;

        /* renamed from: c  reason: collision with root package name */
        private WeakReference<List<View>> f28021c;

        /* renamed from: d  reason: collision with root package name */
        private WeakReference<NativeController> f28022d;

        /* renamed from: e  reason: collision with root package name */
        private WeakReference<AdSession> f28023e;

        public s(CampaignEx campaignEx, View view, List<View> list, NativeController nativeController, AdSession adSession) {
            this.f28019a = campaignEx;
            this.f28020b = new WeakReference<>(view);
            this.f28021c = new WeakReference<>(list);
            this.f28022d = new WeakReference<>(nativeController);
            this.f28023e = new WeakReference<>(adSession);
        }

        @Override // com.mbridge.msdk.foundation.same.task.a
        public void runTask() {
            WeakReference<View> weakReference;
            AdSession adSession;
            try {
                if (this.f28022d != null && (weakReference = this.f28020b) != null && this.f28021c != null) {
                    View view = weakReference.get();
                    List<View> list = this.f28021c.get();
                    NativeController nativeController = this.f28022d.get();
                    WeakReference<AdSession> weakReference2 = this.f28023e;
                    if (weakReference2 != null) {
                        adSession = weakReference2.get();
                    } else {
                        adSession = null;
                    }
                    if (view != null && nativeController != null) {
                        nativeController.a(this.f28019a, view, list, adSession);
                    }
                }
            } catch (Exception e10) {
                p0.b(NativeController.f27935c0, com.mbridge.msdk.mbnative.common.a.a(e10));
            }
        }

        @Override // com.mbridge.msdk.foundation.same.task.a
        public void cancelTask() {
        }

        @Override // com.mbridge.msdk.foundation.same.task.a
        public void pauseTask(boolean z10) {
        }
    }

    public void b(int i10, long j10, int i11, String str) {
        com.mbridge.msdk.mbnative.cache.b<String, List<Campaign>> a10;
        if (i11 == 0 && (a10 = com.mbridge.msdk.mbnative.cache.c.a(i10)) != null) {
            if ((i10 == 1 || i10 == 2) && this.f27942d.containsKey(MBridgeConstans.NATIVE_INFO)) {
                this.f27956r = this.H;
            } else {
                this.f27956r = this.f27955q;
            }
            if (c(a(i10, a(a10.a((com.mbridge.msdk.mbnative.cache.b<String, List<Campaign>>) this.f27947i, this.f27956r))))) {
                return;
            }
        }
        if (i10 == 1) {
            a(j10, i11, true, this.f27947i, str);
        } else if (i10 != 2) {
            a(i10, j10, i11, str);
        } else {
            a(2, j10, i11, str);
        }
    }

    public List<Campaign> a(String str, int i10) {
        com.mbridge.msdk.mbnative.cache.b<String, List<Campaign>> a10;
        com.mbridge.msdk.setting.l e10 = com.mbridge.msdk.setting.h.b().e("", str);
        this.Q = e10;
        if (e10 == null) {
            this.Q = com.mbridge.msdk.setting.l.i(str);
        }
        List<Integer> b10 = this.Q.b();
        this.f27939b = b10;
        if (b10 == null || b10.size() <= 0 || !this.f27939b.contains(1) || (a10 = com.mbridge.msdk.mbnative.cache.c.a(1)) == null) {
            return null;
        }
        return a10.a((com.mbridge.msdk.mbnative.cache.b<String, List<Campaign>>) str, i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(Context context, CampaignEx campaignEx) {
        if (campaignEx != null) {
            try {
                if (campaignEx.needShowIDialog() && com.mbridge.msdk.util.b.a()) {
                    h hVar = new h(campaignEx);
                    if (com.mbridge.msdk.click.c.a(campaignEx) && campaignEx.needShowIDialog()) {
                        if (a(this.f27954p, context, campaignEx, this.f27947i, hVar)) {
                            return;
                        }
                        b(campaignEx);
                        this.f27944f.onAdClick(campaignEx);
                        return;
                    }
                }
            } catch (Throwable th2) {
                p0.a(f27935c0, th2.getMessage());
            }
        }
        this.f27954p.a(campaignEx, this.f27944f);
        b(campaignEx);
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
            p0.b(f27935c0, com.mbridge.msdk.mbnative.common.a.a(e10));
        }
        return 0;
    }

    public void d() {
        n0.b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(CampaignEx campaignEx) {
        if (campaignEx == null || campaignEx.isReportClick()) {
            return;
        }
        campaignEx.setReportClick(true);
        if (campaignEx.getNativeVideoTracking() == null || campaignEx.getNativeVideoTracking().d() == null) {
            return;
        }
        com.mbridge.msdk.click.a.a(this.f27946h, campaignEx, campaignEx.getCampaignUnitId(), campaignEx.getNativeVideoTracking().d(), false, false);
    }

    public void a(String str, String str2) {
        this.f27943e.a(this.f27946h, str, str2, this.f27947i);
    }

    public void a(int i10, String str) {
        boolean z10 = false;
        this.f27960v = false;
        this.f27961w = false;
        this.f27962x = false;
        this.U = false;
        this.N = str;
        this.f27944f.a(!TextUtils.isEmpty(str));
        this.J = null;
        Map<String, Long> map = f27936d0;
        if (map != null && map.size() > 0) {
            f27936d0.clear();
        }
        if (com.mbridge.msdk.mbnative.controller.d.g() != null && com.mbridge.msdk.mbnative.controller.d.g().containsKey(this.f27947i)) {
            z10 = Boolean.TRUE.equals(com.mbridge.msdk.mbnative.controller.d.g().get(this.f27947i));
        }
        a(z10, i10);
    }

    public void b(Campaign campaign, View view) {
        b(campaign, view, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        Timer timer = this.M;
        if (timer != null) {
            timer.cancel();
            this.M = null;
        }
    }

    public void b(Campaign campaign, View view, List<View> list) {
        Class<MBMediaView> cls;
        if (view != null && this.P != null) {
            try {
                view.getViewTreeObserver().removeOnGlobalLayoutListener(this.P);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        if (campaign != null) {
            int type = campaign.getType();
            if (type == 1 || type == 2) {
                try {
                    cls = MBMediaView.class;
                    int i10 = MBMediaView.f28354p0;
                } catch (Throwable unused) {
                    cls = null;
                }
                if (list == null || list.size() <= 0) {
                    if (view != null) {
                        a(view, cls);
                        return;
                    }
                    return;
                }
                for (View view2 : list) {
                    a(view2, cls);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class c implements com.mbridge.msdk.foundation.same.image.c {
        c() {
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onFailedLoad(String str, String str2) {
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onSuccessLoad(Bitmap bitmap, String str) {
        }
    }

    private List<Campaign> b(List<Campaign> list) {
        ArrayList arrayList = null;
        if (list != null) {
            for (Campaign campaign : list) {
                if (campaign instanceof CampaignEx) {
                    CampaignEx campaignEx = (CampaignEx) campaign;
                    if (TextUtils.isEmpty(campaignEx.getImageUrl()) && !TextUtils.isEmpty(campaignEx.getVideoUrlEncode())) {
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        arrayList.add(campaign);
                    }
                }
            }
        }
        return arrayList;
    }

    private void a(boolean z10, int i10) {
        boolean z11;
        if (z10 && i10 == 1 && a(i10)) {
            return;
        }
        String b10 = com.mbridge.msdk.foundation.controller.c.m().b();
        String c10 = com.mbridge.msdk.foundation.controller.c.m().c();
        if (this.f27942d.containsKey("app_id") && this.f27942d.containsKey("app_key") && this.f27942d.containsKey(MBridgeConstans.KEY_WORD)) {
            b10 = (String) this.f27942d.get("app_id");
            c10 = (String) this.f27942d.get("app_key");
        }
        a(b10, c10);
        com.mbridge.msdk.setting.l e10 = com.mbridge.msdk.setting.h.b().e(b10, this.f27947i);
        this.Q = e10;
        if (e10 == null) {
            this.Q = com.mbridge.msdk.setting.l.i(this.f27947i);
        }
        com.mbridge.msdk.mbnative.controller.d.d().put(this.f27947i, Integer.valueOf(this.Q.y() * this.f27956r));
        this.f27939b = this.Q.b();
        this.f27941c = this.Q.c();
        this.T = this.Q.f();
        this.S = this.Q.e();
        this.f27956r = this.f27955q;
        List<Integer> list = this.f27939b;
        if (list != null && list.size() != 0) {
            try {
                z11 = com.mbridge.msdk.mbsignalcommon.webEnvCheck.a.b(com.mbridge.msdk.foundation.controller.c.m().d());
            } catch (Exception unused) {
                z11 = false;
            }
            if (!z11) {
                com.mbridge.msdk.mbnative.listener.a aVar = this.f27944f;
                if (aVar != null) {
                    aVar.onAdLoadError("webview is not available");
                    return;
                }
                return;
            }
            if (this.f27942d.containsKey(MBridgeConstans.NATIVE_INFO) && this.f27951m == null) {
                this.f27951m = (String) this.f27942d.get(MBridgeConstans.NATIVE_INFO);
                f();
            }
            if ((!this.f27939b.contains(1) || this.f27939b.get(0).intValue() == 1) && i10 == 0 && c(a(this.f27947i, this.f27956r, this.N))) {
                return;
            }
            this.X = true;
            if (this.f27939b.contains(1) && i10 == 0 && this.f27939b.get(0).intValue() != 1) {
                int intValue = this.f27939b.get(0).intValue();
                com.mbridge.msdk.mbnative.cache.b<String, List<Campaign>> a10 = com.mbridge.msdk.mbnative.cache.c.a(intValue);
                if (intValue == 2 && this.f27942d.containsKey(MBridgeConstans.NATIVE_INFO)) {
                    this.f27956r = this.H;
                } else {
                    this.f27956r = this.f27955q;
                }
                if (a10 != null && c(a(intValue, a(a10.a((com.mbridge.msdk.mbnative.cache.b<String, List<Campaign>>) this.f27947i, this.f27956r))))) {
                    return;
                }
                this.X = false;
                try {
                    a(this.f27941c.get(this.f27939b.indexOf(1)).intValue() * 1000, i10, false, this.f27947i, this.N);
                } catch (Exception unused2) {
                }
            }
            this.f28028a.sendEmptyMessageDelayed(1, this.Q.K() * 1000);
            j();
            b(i10, this.N);
            return;
        }
        com.mbridge.msdk.mbnative.listener.a aVar2 = this.f27944f;
        if (aVar2 != null) {
            this.f27960v = true;
            aVar2.onAdLoadError("do not have sorceList");
        }
    }

    public NativeController() {
        this.f27955q = 1;
        this.f27956r = 1;
        this.f27957s = -1;
        this.f27958t = 0;
        this.f27960v = false;
        this.f27961w = false;
        this.f27962x = false;
        this.f27963y = 0;
        this.f27964z = 0;
        this.A = 0;
        this.B = 0;
        this.F = new CopyOnWriteArrayList<>();
        this.G = new Hashtable<>();
        this.H = 1;
        this.I = 2;
        this.N = "";
        this.O = "";
        this.Z = "";
    }

    public boolean a(int i10) {
        int i11;
        int i12;
        int i13;
        com.mbridge.msdk.mbnative.listener.a aVar;
        int i14 = 0;
        if (com.mbridge.msdk.mbnative.controller.d.g().containsKey(this.f27947i) && Boolean.TRUE.equals(com.mbridge.msdk.mbnative.controller.d.g().get(this.f27947i))) {
            Map<String, Map<Long, Object>> f10 = com.mbridge.msdk.mbnative.controller.d.f();
            Map<Long, Object> map = f10.get(i10 + "_" + this.f27947i);
            Integer num = com.mbridge.msdk.mbnative.controller.d.c().get(this.f27947i);
            com.mbridge.msdk.setting.g d10 = com.mbridge.msdk.setting.h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
            if (num != null) {
                this.f27956r = num.intValue();
            }
            if (map != null && map.size() > 0) {
                Long next = map.keySet().iterator().next();
                long currentTimeMillis = System.currentTimeMillis();
                if (d10 == null) {
                    d10 = com.mbridge.msdk.setting.h.b().a();
                }
                if (currentTimeMillis - next.longValue() >= d10.Z() * 1000) {
                    f10.remove(i10 + "_" + this.f27947i);
                } else if (i10 == 1) {
                    List<Frame> list = (List) map.get(next);
                    if (list == null || list.size() <= 0 || (aVar = this.f27944f) == null) {
                        return false;
                    }
                    if (this.A >= list.size()) {
                        f10.remove(i10 + "_" + this.f27947i);
                        aVar.onAdFramesLoaded(list);
                        return true;
                    } else if (this.A == 0) {
                        return false;
                    } else {
                        List<Frame> subList = list.subList(0, this.f27964z);
                        aVar.onAdFramesLoaded(list);
                        list.removeAll(subList);
                        map.put(next, subList);
                        ArrayList arrayList = new ArrayList();
                        for (Frame frame : list) {
                            if (i14 >= this.A) {
                                arrayList.add(frame);
                            }
                            i14++;
                        }
                        map.put(next, arrayList);
                        f10.put(i10 + "_" + this.f27947i, map);
                        aVar.onAdFramesLoaded(subList);
                        return true;
                    }
                } else {
                    List list2 = (List) map.get(next);
                    if (list2 != null && list2.size() > 0) {
                        List<Campaign> arrayList2 = new ArrayList<>();
                        if (((CampaignEx) list2.get(0)).getType() == 1) {
                            if (TextUtils.isEmpty(this.f27951m)) {
                                i11 = Math.min(this.f27963y, list2.size());
                            } else {
                                try {
                                    JSONArray jSONArray = new JSONArray(this.f27951m);
                                    if (jSONArray.length() > 0) {
                                        i12 = 0;
                                        i13 = 0;
                                        for (int i15 = 0; i15 < jSONArray.length(); i15++) {
                                            JSONObject jSONObject = (JSONObject) jSONArray.opt(i15);
                                            int optInt = jSONObject.optInt("id", 0);
                                            if (2 == optInt) {
                                                i12 = jSONObject.optInt("ad_num");
                                            } else if (3 == optInt) {
                                                i13 = jSONObject.optInt("ad_num");
                                            }
                                        }
                                    } else {
                                        i12 = 0;
                                        i13 = 0;
                                    }
                                    if (3 == ((CampaignEx) list2.get(0)).getTemplate()) {
                                        i11 = Math.min(i13, list2.size());
                                    } else {
                                        i11 = Math.min(i12, list2.size());
                                    }
                                } catch (Exception unused) {
                                    p0.b(f27935c0, "load from catch error in get nativeinfo adnum");
                                    i11 = 0;
                                }
                            }
                            if (i11 <= 0) {
                                return false;
                            }
                            Iterator it = list2.iterator();
                            while (it.hasNext() && i14 != i11) {
                                CampaignEx campaignEx = (CampaignEx) it.next();
                                campaignEx.getTemplate();
                                arrayList2.add(campaignEx);
                                it.remove();
                                i14++;
                            }
                        } else {
                            int min = Math.min(this.f27963y, list2.size());
                            if (min > 0) {
                                Iterator it2 = list2.iterator();
                                while (it2.hasNext() && i14 != min) {
                                    CampaignEx campaignEx2 = (CampaignEx) it2.next();
                                    campaignEx2.getTemplate();
                                    arrayList2.add(campaignEx2);
                                    it2.remove();
                                    i14++;
                                }
                            }
                        }
                        c(arrayList2);
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public void a(String str, int i10, String str2, CampaignEx campaignEx) {
        Queue<Integer> queue = this.f27949k;
        if ((queue != null && queue.size() <= 0) || this.f27949k == null) {
            com.mbridge.msdk.mbnative.listener.a aVar = this.f27944f;
            if (aVar == null || this.f27960v) {
                return;
            }
            this.f27960v = true;
            aVar.a(campaignEx, str);
            return;
        }
        b(i10, str2);
    }

    @Override // com.mbridge.msdk.mbnative.controller.a
    public synchronized void a(int i10, long j10, int i11, String str) {
        n nVar;
        com.mbridge.msdk.foundation.same.net.wrapper.e eVar;
        com.mbridge.msdk.mbnative.service.net.a aVar;
        p pVar;
        int i12;
        com.mbridge.msdk.foundation.entity.k kVar;
        try {
            try {
                if (this.f27942d.containsKey(MBridgeConstans.NATIVE_INFO)) {
                    this.f27956r = Math.max(this.V, this.W);
                }
                if (i11 == 0) {
                    com.mbridge.msdk.mbnative.cache.b<String, List<Campaign>> a10 = com.mbridge.msdk.mbnative.cache.c.a(i10);
                    if (a10 != null && c(a(1, a(a10.a((com.mbridge.msdk.mbnative.cache.b<String, List<Campaign>>) this.f27947i, this.f27956r))))) {
                        return;
                    }
                    n nVar2 = this.J;
                    if (nVar2 != null && !this.U) {
                        nVar2.b(true);
                    }
                    if (this.U && !this.f27960v) {
                        a("mb load failed", i11, str, (CampaignEx) null);
                    }
                    if (!this.X) {
                        return;
                    }
                }
                int i13 = this.f27957s;
                if (i13 == -1) {
                    this.f27957s = i10;
                } else if (i13 != i10) {
                    this.f27958t = 0;
                }
                com.mbridge.msdk.foundation.db.e.a(com.mbridge.msdk.foundation.db.g.a(this.f27946h)).a();
                com.mbridge.msdk.mbnative.service.net.a aVar2 = new com.mbridge.msdk.mbnative.service.net.a(this.f27946h);
                com.mbridge.msdk.foundation.same.net.wrapper.e eVar2 = new com.mbridge.msdk.foundation.same.net.wrapper.e();
                String b10 = com.mbridge.msdk.foundation.controller.c.m().b();
                String c10 = com.mbridge.msdk.foundation.controller.c.m().c();
                Map<String, Object> map = this.f27942d;
                if (map != null && map.containsKey("app_id") && this.f27942d.containsKey("app_key") && this.f27942d.containsKey(MBridgeConstans.KEY_WORD) && this.f27942d.get(MBridgeConstans.KEY_WORD) != null) {
                    if (this.f27942d.get("app_id") instanceof String) {
                        b10 = (String) this.f27942d.get("app_id");
                    }
                    if (this.f27942d.get("app_key") instanceof String) {
                        c10 = (String) this.f27942d.get("app_key");
                    }
                    String str2 = this.f27942d.get(MBridgeConstans.KEY_WORD) instanceof String ? (String) this.f27942d.get(MBridgeConstans.KEY_WORD) : null;
                    if (!TextUtils.isEmpty(str2)) {
                        eVar2.a(IPortraitService.FROM_SMART, j0.b(str2));
                    }
                }
                eVar2.a("app_id", b10);
                eVar2.a(MBridgeConstans.PROPERTIES_UNIT_ID, this.f27947i);
                if (!TextUtils.isEmpty(this.f27948j)) {
                    eVar2.a(MBridgeConstans.PLACEMENT_ID, this.f27948j);
                }
                eVar2.a("req_type", "2");
                if (!TextUtils.isEmpty(this.f27959u)) {
                    eVar2.a("category", this.f27959u);
                }
                eVar2.a("sign", SameMD5.getMD5(b10 + c10));
                if (this.T > 0 && i11 == 0) {
                    eVar2.a("ad_num", this.T + "");
                } else {
                    eVar2.a("ad_num", this.f27955q + "");
                }
                String d10 = u0.d(this.f27947i);
                if (!TextUtils.isEmpty(d10)) {
                    eVar2.a(com.mbridge.msdk.foundation.same.report.j.f27256b, d10);
                }
                eVar2.a("only_impression", "1");
                eVar2.a("ping_mode", "1");
                if (this.A != 0) {
                    eVar2.a("frame_num", this.A + "");
                }
                if (!TextUtils.isEmpty(this.f27951m)) {
                    eVar2.a(MBridgeConstans.NATIVE_INFO, this.f27951m);
                    if (i10 == 1) {
                        eVar2.a("tnum", this.H + "");
                    }
                } else if (i10 == 1) {
                    eVar2.a("tnum", this.f27955q + "");
                }
                a(eVar2, i10);
                String a11 = com.mbridge.msdk.foundation.same.buffer.b.a(this.f27947i, "native");
                if (!TextUtils.isEmpty(a11)) {
                    eVar2.a(com.mbridge.msdk.foundation.same.net.wrapper.e.f27190g, a11);
                }
                if (this.f27942d.containsKey(MBridgeConstans.NATIVE_VIDEO_WIDTH) && (this.f27942d.get(MBridgeConstans.NATIVE_VIDEO_WIDTH) instanceof Integer)) {
                    eVar2.a("video_width", ((Integer) this.f27942d.get(MBridgeConstans.NATIVE_VIDEO_WIDTH)).intValue() + "");
                }
                if (this.f27942d.containsKey(MBridgeConstans.NATIVE_VIDEO_HEIGHT) && (this.f27942d.get(MBridgeConstans.NATIVE_VIDEO_HEIGHT) instanceof Integer)) {
                    eVar2.a("video_height", ((Integer) this.f27942d.get(MBridgeConstans.NATIVE_VIDEO_HEIGHT)).intValue() + "");
                }
                if (this.f27942d.containsKey(MBridgeConstans.NATIVE_VIDEO_SUPPORT) && (this.f27942d.get(MBridgeConstans.NATIVE_VIDEO_SUPPORT) instanceof Boolean)) {
                    ((Boolean) this.f27942d.get(MBridgeConstans.NATIVE_VIDEO_SUPPORT)).booleanValue();
                }
                eVar2.a("video_version", MBridgeConstans.NATIVE_VIDEO_VERSION);
                if (com.mbridge.msdk.setting.h.b().d(com.mbridge.msdk.foundation.controller.c.m().b()) == null) {
                    com.mbridge.msdk.setting.h.b().a();
                }
                if (!b(this.f27942d)) {
                    JSONArray b11 = u0.b(this.f27946h, this.f27947i);
                    if (b11.length() > 0) {
                        eVar2.a(com.mbridge.msdk.foundation.same.net.wrapper.e.f27191h, u0.a(b11));
                    }
                }
                if (com.mbridge.msdk.mbnative.controller.d.g().containsKey(this.f27947i) && com.mbridge.msdk.mbnative.controller.d.g().get(this.f27947i).booleanValue() && com.mbridge.msdk.mbnative.controller.d.e().get(this.f27947i) != null && (kVar = com.mbridge.msdk.mbnative.controller.d.e().get(this.f27947i)) != null) {
                    if (i10 == 1) {
                        this.f27958t = kVar.a();
                    } else if (i10 == 2) {
                        this.f27958t = kVar.b();
                    }
                }
                eVar2.a(TypedValues.CycleType.S_WAVE_OFFSET, this.f27958t + "");
                eVar2.a("ad_type", RoomMasterTable.DEFAULT_ID);
                eVar2.a(CampaignEx.JSON_KEY_AD_SOURCE_ID, i10 + "");
                if (!TextUtils.isEmpty(this.f27953o)) {
                    eVar2.a(com.mbridge.msdk.foundation.same.net.wrapper.e.f27192i, this.f27953o);
                }
                n nVar3 = new n();
                nVar3.b(a(this.f27942d));
                nVar3.setUnitId(this.f27947i);
                nVar3.setPlacementId(this.f27948j);
                nVar3.setAdType(42);
                nVar3.b(true);
                p pVar2 = new p(1, nVar3, i11, str);
                nVar3.a(pVar2);
                nVar3.a(i11);
                nVar3.a(str);
                if (i11 == 0) {
                    if (!TextUtils.isEmpty(str)) {
                        eVar2.a(BidResponsed.KEY_TOKEN, str);
                    }
                    nVar = nVar3;
                    eVar = eVar2;
                    aVar = aVar2;
                    pVar = pVar2;
                    i12 = 1;
                    aVar2.choiceV3OrV5BySetting(1, eVar, nVar, str, com.mbridge.msdk.foundation.same.c.a(j10, 30000L));
                } else {
                    nVar = nVar3;
                    eVar = eVar2;
                    aVar = aVar2;
                    pVar = pVar2;
                    i12 = 1;
                }
                if (i11 == i12) {
                    aVar.getLoadOrSetting(1, com.mbridge.msdk.foundation.same.net.utils.d.h().f27155b0, eVar, nVar, MBInterstitialActivity.INTENT_CAMAPIGN, com.mbridge.msdk.foundation.same.c.a(j10, 30000L));
                }
                this.f28028a.postDelayed(pVar, j10);
            } catch (Exception e10) {
                String str3 = f27935c0;
                p0.b(str3, com.mbridge.msdk.mbnative.common.a.a(e10));
                p0.b(str3, e10.getMessage());
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private void a(View view, CampaignEx campaignEx) {
        BitmapDrawable a10;
        ImageView imageView;
        if (!(view instanceof FrameLayout) || (a10 = com.mbridge.msdk.foundation.controller.c.m().a(this.f27947i, campaignEx.getAdType())) == null) {
            return;
        }
        try {
            int childCount = ((ViewGroup) view).getChildCount();
            int i10 = 0;
            while (true) {
                if (i10 >= childCount) {
                    imageView = null;
                    break;
                }
                View childAt = ((ViewGroup) view).getChildAt(i10);
                if ((childAt instanceof ImageView) && childAt.getTag() != null && "mb_wm".equals((String) childAt.getTag())) {
                    ((ImageView) childAt).setLayoutParams(new FrameLayout.LayoutParams(view.getWidth(), view.getHeight()));
                    imageView = (ImageView) childAt;
                    break;
                }
                i10++;
            }
            if (imageView == null) {
                imageView = new ImageView(com.mbridge.msdk.foundation.controller.c.m().d());
                imageView.setTag("mb_wm");
                u0.a(imageView, a10, view.getResources().getDisplayMetrics());
                if (imageView.getParent() == null) {
                    ((FrameLayout) view).addView(imageView, new FrameLayout.LayoutParams(view.getWidth(), view.getHeight()));
                }
                AdSession adSession = this.f27938a0;
                if (adSession != null) {
                    adSession.addFriendlyObstruction(imageView, FriendlyObstructionPurpose.OTHER, null);
                }
            }
            this.P = new e(imageView, view);
            view.getViewTreeObserver().addOnGlobalLayoutListener(this.P);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void a(Campaign campaign, View view, List<View> list) {
        Class<MBMediaView> cls;
        try {
            a(view, (CampaignEx) campaign);
            NativeListener.NativeTrackingListener nativeTrackingListener = this.f27945g;
            if (nativeTrackingListener != null) {
                this.f27954p.a(nativeTrackingListener);
            }
            com.mbridge.msdk.mbnative.cache.c.a(campaign.getType()).a(this.f27947i, campaign, this.N);
            CampaignEx campaignEx = (CampaignEx) campaign;
            try {
                cls = MBMediaView.class;
                int i10 = MBMediaView.f28354p0;
            } catch (Throwable unused) {
                cls = null;
            }
            com.mbridge.msdk.foundation.same.buffer.b.a(this.f27947i, campaignEx, "native");
            if (view != null) {
                if (cls != null && cls.isInstance(view)) {
                    return;
                }
                a1.a(view, campaignEx.getLocalRequestId(), campaignEx.getLocalAllowTrackClick());
                view.setOnClickListener(new f(campaignEx));
            }
            if (list != null && list.size() > 0) {
                for (View view2 : list) {
                    if (cls != null && cls.isInstance(view2)) {
                        break;
                    }
                    a1.a(view2, campaignEx.getLocalRequestId(), campaignEx.getLocalAllowTrackClick());
                    view2.setOnClickListener(new g(campaignEx));
                }
            }
            if (campaignEx.isReport()) {
                return;
            }
            a(campaignEx, view, list);
            String str = f27935c0;
            Log.e(str, "sendImpression" + campaignEx);
        } catch (Exception unused2) {
            p0.b(f27935c0, "registerview exception!");
        }
    }

    public void a(Campaign campaign, View view) {
        try {
            NativeListener.NativeTrackingListener nativeTrackingListener = this.f27945g;
            if (nativeTrackingListener != null) {
                this.f27954p.a(nativeTrackingListener);
            }
            com.mbridge.msdk.mbnative.cache.c.a(campaign.getType()).a(this.f27947i, campaign, this.N);
            CampaignEx campaignEx = (CampaignEx) campaign;
            com.mbridge.msdk.foundation.same.buffer.b.a(this.f27947i, campaignEx, "native");
            a1.a(view, campaignEx.getLocalRequestId(), campaignEx.getLocalAllowTrackClick());
            i iVar = new i(campaignEx);
            int i10 = MBMediaView.f28354p0;
            a(campaignEx, view, iVar, MBMediaView.class);
            if (!com.mbridge.msdk.util.b.a()) {
                a(view, (CampaignEx) campaign);
            }
            if (campaignEx.isReport()) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(view);
            a(campaignEx, view, (List<View>) arrayList);
            String str = f27935c0;
            p0.c(str, "sendImpression" + campaignEx);
        } catch (Exception unused) {
            p0.b(f27935c0, "registerview exception!");
        }
    }

    private AdSession a(CampaignEx campaignEx) {
        if (this.G == null) {
            this.G = new Hashtable<>();
        }
        String requestIdNotice = campaignEx.getRequestIdNotice();
        AdSession adSession = this.G.get(requestIdNotice);
        if (adSession == null && campaignEx.isActiveOm() && TextUtils.isEmpty(campaignEx.getVideoUrlEncode())) {
            adSession = com.mbridge.msdk.omsdk.b.a(this.f27946h, true, campaignEx.getOmid(), campaignEx.getRequestId(), campaignEx.getId(), this.f27947i, "", campaignEx.getRequestIdNotice());
        }
        if (adSession != null) {
            this.G.put(requestIdNotice, adSession);
        }
        return adSession;
    }

    private void a(CampaignEx campaignEx, View view, List<View> list) {
        AdSession adSession;
        try {
            if (this.f27946h == null || campaignEx == null) {
                adSession = null;
            } else {
                adSession = a(campaignEx);
                if (adSession != null) {
                    adSession.registerAdView(view);
                    adSession.start();
                }
            }
            AdSession adSession2 = adSession;
            com.mbridge.msdk.setting.l lVar = this.Q;
            int s10 = lVar != null ? lVar.s() : 0;
            if (campaignEx != null && campaignEx.getImpReportType() == 1) {
                s10 = 0;
            }
            s sVar = new s(campaignEx, view, list, this, adSession2);
            if (this.F == null) {
                this.F = new CopyOnWriteArrayList<>();
            }
            this.F.add(sVar);
            sVar.setOnStateChangeListener(new j(sVar));
            Handler handler = this.f28028a;
            if (handler != null) {
                handler.postDelayed(sVar, s10 * 1000);
            }
        } catch (Exception e10) {
            p0.b(f27935c0, com.mbridge.msdk.mbnative.common.a.a(e10));
        }
    }

    private void a(CampaignEx campaignEx, View view, View.OnClickListener onClickListener, Class cls) {
        if (view == null || onClickListener == null) {
            return;
        }
        if (cls != null) {
            try {
                if (cls.isInstance(view)) {
                    return;
                }
            } catch (Throwable unused) {
                return;
            }
        }
        view.setOnClickListener(onClickListener);
        a1.a(view, campaignEx.getLocalRequestId(), campaignEx.getLocalAllowTrackClick());
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
                a(campaignEx, viewGroup.getChildAt(i10), onClickListener, cls);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(CampaignEx campaignEx, View view, List<View> list, AdSession adSession) {
        try {
            k kVar = new k(campaignEx);
            com.mbridge.msdk.mbnative.controller.c cVar = new com.mbridge.msdk.mbnative.controller.c(list, kVar, new Handler(Looper.getMainLooper()), campaignEx.getImpReportType());
            cVar.a(view);
            List<com.mbridge.msdk.mbnative.controller.c> list2 = this.D;
            if (list2 != null) {
                list2.add(cVar);
            }
            List<c.d> list3 = this.E;
            if (list3 != null) {
                list3.add(kVar);
            }
            AdEvents adEvents = this.f27940b0;
            if (adEvents != null) {
                adEvents.impressionOccurred();
            }
        } catch (Exception unused) {
        }
    }

    private void a(View view, Class cls) {
        if (view == null) {
            return;
        }
        if (cls != null) {
            try {
                if (cls.isInstance(view)) {
                    return;
                }
            } catch (Throwable unused) {
                return;
            }
        }
        view.setOnClickListener(null);
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
                a(viewGroup.getChildAt(i10), cls);
            }
        }
    }

    public List<Campaign> a(String str, int i10, String str2) {
        int i11;
        int i12;
        List<Campaign> list = null;
        if (this.f27939b != null) {
            ArrayList arrayList = new ArrayList(this.f27939b);
            for (int i13 = 0; i13 < arrayList.size(); i13++) {
                com.mbridge.msdk.mbnative.cache.b<String, List<Campaign>> a10 = com.mbridge.msdk.mbnative.cache.c.a(((Integer) arrayList.get(i13)).intValue());
                if (a10 != null) {
                    if ((((Integer) arrayList.get(i13)).intValue() == 1 || ((Integer) arrayList.get(i13)).intValue() == 2) && this.f27942d.containsKey(MBridgeConstans.NATIVE_INFO)) {
                        i12 = this.H;
                    } else {
                        i12 = this.f27955q;
                    }
                    list = a(((Integer) arrayList.get(i13)).intValue(), a10.a((com.mbridge.msdk.mbnative.cache.b<String, List<Campaign>>) str, i12));
                    if (list != null) {
                        break;
                    }
                }
            }
            if (list == null) {
                for (int i14 = 0; i14 < arrayList.size(); i14++) {
                    com.mbridge.msdk.mbnative.cache.b<String, List<Campaign>> a11 = com.mbridge.msdk.mbnative.cache.c.a(((Integer) arrayList.get(i14)).intValue());
                    if ((((Integer) arrayList.get(i14)).intValue() == 1 || ((Integer) arrayList.get(i14)).intValue() == 2) && this.f27942d.containsKey(MBridgeConstans.NATIVE_INFO)) {
                        i11 = this.H;
                    } else {
                        i11 = this.f27955q;
                    }
                    list = a(((Integer) arrayList.get(i14)).intValue(), a11.b(str, i11));
                    if (list != null) {
                        break;
                    }
                }
            }
        }
        return a(list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(List<Campaign> list, int i10, NativeListener.NativeAdListener nativeAdListener) {
        this.f28028a.post(new a(list, nativeAdListener, i10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.mbridge.msdk.mbnative.listener.a aVar, String str, CampaignEx campaignEx) {
        this.f28028a.post(new b(aVar, campaignEx, str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<Campaign> a(int i10, List<Campaign> list) {
        if (i10 != 1 || !this.f27942d.containsKey(MBridgeConstans.NATIVE_INFO) || list == null || list.size() <= 0) {
            return list;
        }
        CampaignEx campaignEx = (CampaignEx) list.get(0);
        int template = campaignEx != null ? campaignEx.getTemplate() : 1;
        if (template == 2) {
            int size = list.size();
            int i11 = this.V;
            return size >= i11 ? list.subList(0, i11) : list;
        } else if (template == 3) {
            int size2 = list.size();
            int i12 = this.W;
            return size2 >= i12 ? list.subList(0, i12) : list;
        } else {
            return list;
        }
    }

    private void a(List<Campaign> list, o oVar) {
        c();
        long currentTimeMillis = System.currentTimeMillis();
        Timer timer = new Timer();
        this.M = timer;
        timer.schedule(new d(currentTimeMillis, oVar, list), 0L, 1000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<Campaign> a(List<Campaign> list, boolean z10) {
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                Campaign campaign = list.get(size);
                String id2 = campaign.getId();
                boolean z11 = campaign instanceof CampaignEx;
                if (z11) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(id2);
                    CampaignEx campaignEx = (CampaignEx) campaign;
                    sb2.append(campaignEx.getVideoUrlEncode());
                    sb2.append(campaignEx.getBidToken());
                    id2 = sb2.toString();
                }
                com.mbridge.msdk.videocommon.download.a a10 = com.mbridge.msdk.videocommon.download.b.getInstance().a(this.f27947i, id2);
                if (z10) {
                    if (a10 == null || !com.mbridge.msdk.videocommon.download.l.a(a10, h().C())) {
                        com.mbridge.msdk.mbnative.cache.c.a(campaign.getType()).a(this.f27947i, list.remove(size), this.N);
                    }
                } else if (z11) {
                    CampaignEx campaignEx2 = (CampaignEx) campaign;
                    if (TextUtils.isEmpty(campaignEx2.getImageUrl()) && !TextUtils.isEmpty(campaignEx2.getVideoUrlEncode()) && (a10 == null || !com.mbridge.msdk.videocommon.download.l.a(a10, h().C()))) {
                        com.mbridge.msdk.mbnative.cache.c.a(campaign.getType()).a(this.f27947i, list.remove(size), this.N);
                    }
                }
            }
        }
        return list;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<Campaign> a(List<Campaign> list) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        ArrayList arrayList2 = new ArrayList(list.size());
        for (Campaign campaign : list) {
            if (campaign instanceof CampaignEx) {
                CampaignEx campaignEx = (CampaignEx) campaign;
                if (TextUtils.isEmpty(this.N) && TextUtils.isEmpty(campaignEx.getBidToken()) && !campaignEx.isBidCampaign()) {
                    arrayList2.add(campaignEx);
                } else if (!TextUtils.isEmpty(this.N) && TextUtils.equals(campaignEx.getBidToken(), this.N)) {
                    arrayList.add(campaign);
                }
            } else {
                arrayList2.add(campaign);
            }
        }
        return TextUtils.isEmpty(this.N) ? arrayList2 : arrayList;
    }
}
