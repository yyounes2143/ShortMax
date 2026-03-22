package com.mbridge.msdk.splash.manager;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import androidx.annotation.NonNull;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.DownloadError;
import com.mbridge.msdk.foundation.download.download.H5DownLoadManager;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.foundation.entity.n;
import com.mbridge.msdk.foundation.same.c;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.u0;
import com.mbridge.msdk.foundation.tools.x;
import com.mbridge.msdk.foundation.tools.y;
import com.mbridge.msdk.foundation.tools.z0;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import com.mbridge.msdk.out.MBridgeIds;
import com.mbridge.msdk.setting.l;
import com.mbridge.msdk.splash.common.c;
import com.mbridge.msdk.splash.manager.g;
import com.mbridge.msdk.splash.view.MBSplashView;
import com.ss.ttm.player.MediaPlayer;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
/* compiled from: SplashLoadManager.java */
/* loaded from: classes6.dex */
public class e {
    private static String A = "SplashLoadManager";

    /* renamed from: a  reason: collision with root package name */
    private String f29164a;

    /* renamed from: b  reason: collision with root package name */
    private String f29165b;

    /* renamed from: c  reason: collision with root package name */
    private long f29166c;

    /* renamed from: d  reason: collision with root package name */
    private long f29167d;

    /* renamed from: e  reason: collision with root package name */
    private com.mbridge.msdk.splash.middle.b f29168e;

    /* renamed from: g  reason: collision with root package name */
    private MBSplashView f29170g;

    /* renamed from: h  reason: collision with root package name */
    private l f29171h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f29172i;

    /* renamed from: j  reason: collision with root package name */
    private int f29173j;

    /* renamed from: k  reason: collision with root package name */
    private int f29174k;

    /* renamed from: l  reason: collision with root package name */
    private int f29175l;

    /* renamed from: m  reason: collision with root package name */
    private String f29176m;

    /* renamed from: n  reason: collision with root package name */
    private int f29177n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f29178o;

    /* renamed from: p  reason: collision with root package name */
    private volatile boolean f29179p;

    /* renamed from: q  reason: collision with root package name */
    private com.mbridge.msdk.videocommon.listener.a f29180q;

    /* renamed from: r  reason: collision with root package name */
    private H5DownLoadManager.ZipDownloadListener f29181r;

    /* renamed from: s  reason: collision with root package name */
    private String f29182s;

    /* renamed from: t  reason: collision with root package name */
    private int f29183t;

    /* renamed from: v  reason: collision with root package name */
    private int f29185v;

    /* renamed from: w  reason: collision with root package name */
    private List<CampaignEx> f29186w;

    /* renamed from: u  reason: collision with root package name */
    private String f29184u = "";

    /* renamed from: x  reason: collision with root package name */
    private String f29187x = "";

    /* renamed from: y  reason: collision with root package name */
    private Handler f29188y = new c(Looper.getMainLooper());

    /* renamed from: z  reason: collision with root package name */
    private Runnable f29189z = new d();

    /* renamed from: f  reason: collision with root package name */
    private Context f29169f = com.mbridge.msdk.foundation.controller.c.m().d();

    /* compiled from: SplashLoadManager.java */
    /* loaded from: classes6.dex */
    class c extends Handler {
        c(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(@NonNull Message message) {
            int i10;
            super.handleMessage(message);
            int i11 = message.what;
            if (i11 != 1) {
                if (i11 != 2) {
                    if (i11 == 3) {
                        Object obj = message.obj;
                        if (obj instanceof CampaignEx) {
                            e eVar = e.this;
                            eVar.h((CampaignEx) obj, eVar.f29177n);
                            return;
                        }
                        return;
                    }
                    return;
                }
                Object obj2 = message.obj;
                try {
                    if (obj2 instanceof Bundle) {
                        int i12 = ((Bundle) obj2).getInt("type");
                        String string = ((Bundle) obj2).getString("msg");
                        CampaignEx campaignEx = (CampaignEx) ((Bundle) obj2).getSerializable("campaignex");
                        if (i12 == 1) {
                            i10 = 880004;
                        } else if (i12 == 2) {
                            i10 = 880006;
                        } else {
                            i10 = 880027;
                        }
                        com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(i10);
                        bVar.c(string);
                        e eVar2 = e.this;
                        eVar2.a(bVar, eVar2.f29176m, e.this.f29177n, campaignEx);
                        return;
                    }
                    return;
                } catch (Exception e10) {
                    com.mbridge.msdk.foundation.error.b bVar2 = new com.mbridge.msdk.foundation.error.b(880024);
                    bVar2.a((Throwable) e10);
                    e eVar3 = e.this;
                    eVar3.a(bVar2, eVar3.f29176m, e.this.f29177n, (CampaignEx) null);
                    return;
                }
            }
            Object obj3 = message.obj;
            int i13 = message.arg1;
            if (obj3 instanceof CampaignEx) {
                CampaignEx campaignEx2 = (CampaignEx) obj3;
                e.this.a(H5DownLoadManager.getInstance().getH5ResAddress(campaignEx2.getAdZip()), campaignEx2, i13);
            }
        }
    }

    /* compiled from: SplashLoadManager.java */
    /* loaded from: classes6.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880010);
            e eVar = e.this;
            eVar.a(bVar, eVar.f29176m, e.this.f29177n, (CampaignEx) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SplashLoadManager.java */
    /* renamed from: com.mbridge.msdk.splash.manager.e$e  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public class C0426e extends com.mbridge.msdk.splash.request.b {

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ String f29197e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ int f29198f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0426e(int i10, String str, int i11) {
            super(i10);
            this.f29197e = str;
            this.f29198f = i11;
        }

        @Override // com.mbridge.msdk.splash.request.b
        public void a(CampaignUnit campaignUnit, int i10) {
            CampaignEx campaignEx;
            try {
                e eVar = e.this;
                eVar.a(campaignUnit, i10, eVar.f29164a, this.f29197e);
                e.this.f29184u = campaignUnit.getRequestId();
                e.this.f29186w = campaignUnit.getAds();
            } catch (Exception e10) {
                e10.printStackTrace();
                com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880003);
                bVar.a((Throwable) e10);
                e eVar2 = e.this;
                String str = this.f29197e;
                if (campaignUnit != null && campaignUnit.getAds() != null && campaignUnit.getAds().size() != 0) {
                    campaignEx = campaignUnit.getAds().get(0);
                } else {
                    campaignEx = null;
                }
                eVar2.a(bVar, str, i10, campaignEx);
                e.this.f();
            }
        }

        @Override // com.mbridge.msdk.splash.request.b
        public void b(int i10, String str) {
            p0.b(e.A, str);
            com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880002);
            bVar.c(str);
            e.this.a(bVar, this.f29197e, this.f29198f, (CampaignEx) null);
            e.this.f();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SplashLoadManager.java */
    /* loaded from: classes6.dex */
    public class f extends c.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CampaignEx f29200a;

        f(CampaignEx campaignEx, com.mbridge.msdk.foundation.same.report.metrics.callback.a aVar) {
            this.f29200a = campaignEx;
        }

        @Override // com.mbridge.msdk.foundation.same.c.a
        public void a(String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            com.mbridge.msdk.splash.report.a.a(str, cVar, this.f29200a, e.this.f29169f, (com.mbridge.msdk.foundation.same.report.metrics.callback.a) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SplashLoadManager.java */
    /* loaded from: classes6.dex */
    public class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CampaignEx f29202a;

        g(CampaignEx campaignEx) {
            this.f29202a = campaignEx;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.mbridge.msdk.foundation.db.j.a(com.mbridge.msdk.foundation.db.g.a(e.this.f29169f)).a();
            x.a(e.this.f29169f, this.f29202a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SplashLoadManager.java */
    /* loaded from: classes6.dex */
    public class h implements com.mbridge.msdk.splash.view.nativeview.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CampaignEx f29204a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f29205b;

        h(CampaignEx campaignEx, int i10) {
            this.f29204a = campaignEx;
            this.f29205b = i10;
        }

        @Override // com.mbridge.msdk.splash.view.nativeview.a
        public void a() {
            if (this.f29204a.isDynamicView() && e.this.f29170g != null) {
                e.this.f29170g.setImageReady(true);
                e.this.f(this.f29204a, this.f29205b);
            }
            e.this.h(this.f29204a, this.f29205b);
        }

        @Override // com.mbridge.msdk.splash.view.nativeview.a
        public void b() {
            if (this.f29204a.isDynamicView() && e.this.f29170g != null) {
                e.this.f29170g.setImageReady(false);
                com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880027);
                e eVar = e.this;
                eVar.a(bVar, eVar.f29176m, this.f29205b, this.f29204a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SplashLoadManager.java */
    /* loaded from: classes6.dex */
    public class i implements y.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CampaignEx f29207a;

        i(CampaignEx campaignEx) {
            this.f29207a = campaignEx;
        }

        @Override // com.mbridge.msdk.foundation.tools.y.c
        public void a(String str, String str2, String str3, String str4, boolean z10) {
            if (z10) {
                return;
            }
            e.this.a(this.f29207a, str, true, "");
        }

        @Override // com.mbridge.msdk.foundation.tools.y.c
        public void a(String str, DownloadError downloadError) {
            String str2 = "";
            if (downloadError != null) {
                try {
                    if (downloadError.getException() != null) {
                        str2 = downloadError.getException().getMessage();
                    }
                } catch (Exception e10) {
                    if (MBridgeConstans.DEBUG) {
                        e10.printStackTrace();
                        return;
                    }
                    return;
                }
            }
            e.this.a(this.f29207a, str, false, str2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SplashLoadManager.java */
    /* loaded from: classes6.dex */
    public class j implements H5DownLoadManager.ZipDownloadListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CampaignEx f29209a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f29210b;

        j(CampaignEx campaignEx, int i10) {
            this.f29209a = campaignEx;
            this.f29210b = i10;
        }

        @Override // com.mbridge.msdk.foundation.download.download.H5DownLoadManager.H5ResDownloadListerInter
        public void onFailed(String str, String str2) {
            com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880006);
            e eVar = e.this;
            eVar.a(bVar, eVar.f29176m, this.f29210b, this.f29209a);
            Message obtain = Message.obtain();
            obtain.what = 2;
            Bundle bundle = new Bundle();
            bundle.putSerializable("campaignex", this.f29209a);
            bundle.putString("msg", str);
            bundle.putInt("type", 2);
            obtain.obj = bundle;
            e.this.f29188y.sendMessage(obtain);
            e.this.a(this.f29209a, str2, false, str);
        }

        @Override // com.mbridge.msdk.foundation.download.download.H5DownLoadManager.H5ResDownloadListerInter
        public void onSuccess(String str, String str2, boolean z10) {
            String str3;
            Message obtain = Message.obtain();
            obtain.what = 1;
            obtain.obj = this.f29209a;
            obtain.arg1 = this.f29210b;
            e.this.f29188y.sendMessage(obtain);
            if (!z10) {
                CampaignEx campaignEx = this.f29209a;
                if (campaignEx == null) {
                    str3 = "";
                } else {
                    str3 = campaignEx.getAdZip();
                }
                e.this.a(this.f29209a, str3, true, "");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SplashLoadManager.java */
    /* loaded from: classes6.dex */
    public class k implements com.mbridge.msdk.splash.inter.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CampaignEx f29212a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f29213b;

        k(CampaignEx campaignEx, int i10) {
            this.f29212a = campaignEx;
            this.f29213b = i10;
        }

        @Override // com.mbridge.msdk.splash.inter.a
        public void a(View view) {
            if (e.this.f29170g != null) {
                e.this.f29170g.setDynamicView(true);
                e.this.f29170g.setSplashNativeView(view);
                e.this.h(this.f29212a, this.f29213b);
            }
        }

        @Override // com.mbridge.msdk.splash.inter.a
        public void onError(String str) {
            com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880034);
            bVar.c(str);
            e eVar = e.this;
            eVar.a(bVar, eVar.f29176m, this.f29213b, this.f29212a);
        }
    }

    public e(String str, String str2, long j10) {
        this.f29165b = str;
        this.f29164a = str2;
        this.f29167d = j10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h(CampaignEx campaignEx, int i10) {
        if (com.mbridge.msdk.splash.manager.d.a(this.f29170g, campaignEx) && !this.f29179p) {
            b();
            if (this.f29178o) {
                com.mbridge.msdk.splash.manager.d.a(campaignEx, this.f29164a);
            }
            this.f29179p = true;
            com.mbridge.msdk.splash.middle.b bVar = this.f29168e;
            if (bVar != null) {
                bVar.a(campaignEx, i10);
            }
        }
    }

    private void i(CampaignEx campaignEx, int i10) {
        MBSplashView mBSplashView = this.f29170g;
        if (mBSplashView != null) {
            mBSplashView.setDynamicView(false);
        }
        if (campaignEx.isDynamicView()) {
            c(campaignEx, i10);
        } else {
            MBSplashView mBSplashView2 = this.f29170g;
            if (mBSplashView2 != null) {
                mBSplashView2.setSplashWebView();
            }
        }
        if (com.mbridge.msdk.splash.manager.d.a(this.f29170g, campaignEx)) {
            h(campaignEx, i10);
        } else {
            a(campaignEx, i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SplashLoadManager.java */
    /* loaded from: classes6.dex */
    public class a implements g.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CampaignEx f29190a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f29191b;

        a(CampaignEx campaignEx, int i10) {
            this.f29190a = campaignEx;
            this.f29191b = i10;
        }

        @Override // com.mbridge.msdk.splash.manager.g.c
        public void a() {
            if (this.f29190a.isHasMBTplMark()) {
                return;
            }
            e.this.g(this.f29190a, this.f29191b);
        }

        @Override // com.mbridge.msdk.splash.manager.g.c
        public void onError(String str) {
            e.this.a(str, this.f29191b, this.f29190a);
        }

        @Override // com.mbridge.msdk.splash.manager.g.c
        public void a(int i10) {
            if (i10 == 1) {
                e.this.g(this.f29190a, this.f29191b);
            } else {
                e.this.a("readyState 2", this.f29191b, this.f29190a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        this.f29183t = 0;
    }

    private void g() {
        try {
            int i10 = this.f29183t + 1;
            this.f29183t = i10;
            l lVar = this.f29171h;
            if (lVar != null && i10 <= lVar.y()) {
                return;
            }
            this.f29183t = 0;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public String d() {
        return this.f29184u;
    }

    public void e() {
        if (this.f29168e != null) {
            this.f29168e = null;
        }
        if (this.f29180q != null) {
            this.f29180q = null;
        }
        if (this.f29181r != null) {
            this.f29181r = null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x00d3 A[Catch: Exception -> 0x011b, TRY_ENTER, TryCatch #3 {Exception -> 0x011b, blocks: (B:52:0x0117, B:53:0x011a, B:40:0x00d3, B:42:0x00d7, B:44:0x00dd, B:46:0x00e3, B:48:0x00e9, B:49:0x0109, B:32:0x00b4), top: B:58:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00dd A[Catch: Exception -> 0x011b, TryCatch #3 {Exception -> 0x011b, blocks: (B:52:0x0117, B:53:0x011a, B:40:0x00d3, B:42:0x00d7, B:44:0x00dd, B:46:0x00e3, B:48:0x00e9, B:49:0x0109, B:32:0x00b4), top: B:58:0x000a }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void d(com.mbridge.msdk.foundation.entity.CampaignEx r11, int r12) {
        /*
            Method dump skipped, instructions count: 294
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.splash.manager.e.d(com.mbridge.msdk.foundation.entity.CampaignEx, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(CampaignEx campaignEx, int i10) {
        if (campaignEx.isDynamicView()) {
            c.a aVar = new c.a();
            aVar.b(this.f29164a).a(this.f29165b).a(this.f29172i).a(campaignEx).c(this.f29173j).f(this.f29185v);
            try {
                if (!TextUtils.isEmpty(campaignEx.getAdZip())) {
                    Uri parse = Uri.parse(campaignEx.getAdZip());
                    String queryParameter = parse.getQueryParameter("hdbtn");
                    String queryParameter2 = parse.getQueryParameter("alecfc");
                    String queryParameter3 = parse.getQueryParameter("hdinfo");
                    String queryParameter4 = parse.getQueryParameter("shake_show");
                    String queryParameter5 = parse.getQueryParameter("shake_strength");
                    String queryParameter6 = parse.getQueryParameter("shake_time");
                    String queryParameter7 = parse.getQueryParameter("n_logo");
                    if (!TextUtils.isEmpty(queryParameter)) {
                        aVar.b(Integer.parseInt(queryParameter));
                    }
                    if (!TextUtils.isEmpty(queryParameter2)) {
                        aVar.e(Integer.parseInt(queryParameter2));
                    }
                    if (!TextUtils.isEmpty(queryParameter3)) {
                        aVar.a(Integer.parseInt(queryParameter3));
                    }
                    if (!TextUtils.isEmpty(queryParameter4)) {
                        aVar.g(Integer.parseInt(queryParameter4));
                    }
                    if (!TextUtils.isEmpty(queryParameter5)) {
                        aVar.h(Integer.parseInt(queryParameter5));
                    }
                    if (!TextUtils.isEmpty(queryParameter6)) {
                        aVar.i(Integer.parseInt(queryParameter6));
                    }
                    if (!TextUtils.isEmpty(queryParameter7)) {
                        aVar.d(Integer.parseInt(queryParameter7) == 0 ? 0 : 1);
                    }
                }
            } catch (Throwable th2) {
                p0.b(A, th2.getMessage());
            }
            com.mbridge.msdk.splash.manager.c.a().a(this.f29170g, aVar.a(), new k(campaignEx, i10));
        }
    }

    public void b(int i10) {
        this.f29185v = i10;
    }

    public String c() {
        return com.mbridge.msdk.foundation.same.c.b(this.f29186w);
    }

    private void b() {
        this.f29188y.removeCallbacks(this.f29189z);
    }

    private void c(CampaignEx campaignEx, int i10) {
        com.mbridge.msdk.splash.manager.d.a(this.f29170g, campaignEx, new h(campaignEx, i10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SplashLoadManager.java */
    /* loaded from: classes6.dex */
    public class b implements com.mbridge.msdk.videocommon.listener.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CampaignEx f29193a;

        b(CampaignEx campaignEx) {
            this.f29193a = campaignEx;
        }

        @Override // com.mbridge.msdk.videocommon.listener.a
        public void a(String str) {
            e.this.f29170g.setVideoReady(true);
            Message obtain = Message.obtain();
            obtain.obj = this.f29193a;
            obtain.what = 3;
            e.this.f29188y.sendMessage(obtain);
        }

        @Override // com.mbridge.msdk.videocommon.listener.a
        public void a(String str, String str2) {
            e.this.f29170g.setVideoReady(false);
            com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880004);
            bVar.c(str);
            e eVar = e.this;
            eVar.a(bVar, eVar.f29176m, e.this.f29177n, this.f29193a);
            Message obtain = Message.obtain();
            Bundle bundle = new Bundle();
            bundle.putSerializable("campaignex", this.f29193a);
            bundle.putString("msg", str);
            bundle.putInt("type", 1);
            obtain.obj = bundle;
            obtain.what = 2;
            e.this.f29188y.sendMessage(obtain);
        }
    }

    private void b(CampaignEx campaignEx, int i10) {
        this.f29180q = new b(campaignEx);
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList = new CopyOnWriteArrayList<>();
        copyOnWriteArrayList.add(campaignEx);
        com.mbridge.msdk.videocommon.download.b.getInstance().createUnitCache(this.f29169f, this.f29164a, copyOnWriteArrayList, MediaPlayer.MEDIA_PLAYER_OPTION_SKIP_BUFFER_LIMIT, this.f29180q);
        if (!com.mbridge.msdk.videocommon.download.b.getInstance().b(MediaPlayer.MEDIA_PLAYER_OPTION_SKIP_BUFFER_LIMIT, this.f29164a, campaignEx.isBidCampaign())) {
            com.mbridge.msdk.videocommon.download.b.getInstance().load(this.f29164a);
            return;
        }
        this.f29170g.setVideoReady(true);
        h(campaignEx, i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(CampaignEx campaignEx, int i10) {
        if (this.f29170g.isH5Ready()) {
            return;
        }
        this.f29170g.setH5Ready(true);
        h(campaignEx, i10);
    }

    private void e(CampaignEx campaignEx, int i10) {
        if (campaignEx.isDynamicView()) {
            y.a(5, "", campaignEx.getAdZip(), new i(campaignEx), campaignEx);
            return;
        }
        this.f29181r = new j(campaignEx, i10);
        com.mbridge.msdk.foundation.same.report.metrics.c cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
        cVar.a(MediaPlayer.MEDIA_PLAYER_OPTION_SKIP_BUFFER_LIMIT);
        cVar.e(2);
        cVar.a(campaignEx);
        cVar.f(campaignEx.getAabEntity() != null ? campaignEx.getAabEntity().h3c : 0);
        H5DownLoadManager.getInstance().downloadH5Res(cVar, campaignEx.getAdZip(), this.f29181r);
    }

    public void a(l lVar) {
        this.f29171h = lVar;
    }

    public void a(MBSplashView mBSplashView) {
        this.f29170g = mBSplashView;
    }

    public void a(boolean z10) {
        this.f29172i = z10;
    }

    public void a(int i10) {
        this.f29173j = i10;
    }

    public void a(int i10, int i11) {
        this.f29175l = i10;
        this.f29174k = i11;
    }

    public void a(String str, int i10) {
        this.f29179p = false;
        this.f29176m = str;
        this.f29177n = i10;
        CampaignEx a10 = com.mbridge.msdk.splash.manager.d.a(this.f29170g, this.f29165b, this.f29164a, str, this.f29172i, this.f29173j, false, false);
        long timestamp = a10 != null ? a10.getTimestamp() : 0L;
        if (this.f29171h.t() == 1 && i10 != 1 && a10 != null) {
            i(a10, i10);
            return;
        }
        this.f29178o = true;
        if (i10 == 1) {
            List<Integer> c10 = this.f29171h.c();
            if (c10 != null && c10.size() > 0) {
                this.f29166c = c10.get(0).intValue() * 1000;
            } else {
                this.f29166c = 30000L;
            }
        } else {
            long j10 = this.f29167d;
            if (j10 <= 0) {
                this.f29166c = this.f29171h.E();
            } else {
                this.f29166c = j10;
            }
        }
        if (this.f29171h != null && timestamp > 0 && TextUtils.isEmpty(str)) {
            if (System.currentTimeMillis() - timestamp > this.f29171h.v() * 1000) {
                a(this.f29166c);
                a(this.f29169f, str, i10);
                return;
            }
            i(a10, i10);
            return;
        }
        a(this.f29166c);
        a(this.f29169f, str, i10);
    }

    private void a(long j10) {
        this.f29188y.postDelayed(this.f29189z, j10);
    }

    private void a(Context context, String str, int i10) {
        try {
            if (context == null) {
                a(new com.mbridge.msdk.foundation.error.b(880025), str, i10, (CampaignEx) null);
            } else if (z0.a(this.f29164a)) {
                a(new com.mbridge.msdk.foundation.error.b(880032), str, i10, (CampaignEx) null);
            } else {
                MBridgeIds mBridgeIds = new MBridgeIds(this.f29165b, this.f29164a);
                com.mbridge.msdk.splash.request.f fVar = new com.mbridge.msdk.splash.request.f();
                fVar.d(i10);
                fVar.c(this.f29183t);
                fVar.a(this.f29182s);
                fVar.b(this.f29175l);
                fVar.a(this.f29174k);
                com.mbridge.msdk.foundation.same.net.wrapper.e b10 = com.mbridge.msdk.splash.request.e.b(context, mBridgeIds, fVar);
                if (b10 == null) {
                    a(new com.mbridge.msdk.foundation.error.b(880001), str, i10, (CampaignEx) null);
                    return;
                }
                if (!TextUtils.isEmpty(str)) {
                    b10.a(BidResponsed.KEY_TOKEN, str);
                }
                String d10 = u0.d(this.f29164a);
                if (!TextUtils.isEmpty(d10)) {
                    b10.a(com.mbridge.msdk.foundation.same.report.j.f27256b, d10);
                }
                com.mbridge.msdk.splash.request.c cVar = new com.mbridge.msdk.splash.request.c(context);
                C0426e c0426e = new C0426e(i10, str, i10);
                c0426e.a(str);
                c0426e.setUnitId(this.f29164a);
                c0426e.setPlacementId(this.f29165b);
                c0426e.setAdType(MediaPlayer.MEDIA_PLAYER_OPTION_SKIP_BUFFER_LIMIT);
                cVar.choiceV3OrV5BySetting(1, b10, c0426e, str, com.mbridge.msdk.foundation.same.c.a(this.f29166c, 30000L));
            }
        } catch (Exception e10) {
            p0.b(A, e10.getMessage());
            com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880020);
            bVar.a((Throwable) e10);
            a(bVar, str, i10, (CampaignEx) null);
            f();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(CampaignUnit campaignUnit, int i10, String str, String str2) {
        com.mbridge.msdk.foundation.error.b bVar;
        List<CampaignEx> a10 = a(campaignUnit);
        if (a10 != null && a10.size() > 0) {
            g();
            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
            eVar.a("adtp", Integer.valueOf((int) MediaPlayer.MEDIA_PLAYER_OPTION_SKIP_BUFFER_LIMIT));
            if (!TextUtils.isEmpty(str2)) {
                eVar.a(CampaignEx.JSON_KEY_HB, 1);
            } else {
                eVar.a(CampaignEx.JSON_KEY_HB, 0);
            }
            CampaignEx campaignEx = a10.get(0);
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a(true, str2, eVar, campaignEx, str);
            if (TextUtils.isEmpty(campaignEx.getAdZip()) && (TextUtils.isEmpty(campaignEx.getAdHtml()) || !campaignEx.getAdHtml().contains("<MBTPLMARK>"))) {
                campaignEx.setHasMBTplMark(false);
                campaignEx.setIsMraid(true);
            } else {
                campaignEx.setHasMBTplMark(true);
                campaignEx.setIsMraid(false);
            }
            i(campaignEx, i10);
            return;
        }
        if (this.f29187x.contains("INSTALLED")) {
            bVar = new com.mbridge.msdk.foundation.error.b(880021, "APP ALREADY INSTALLED");
        } else {
            bVar = new com.mbridge.msdk.foundation.error.b(880003);
        }
        a(bVar, str2, i10, (campaignUnit == null || campaignUnit.getAds() == null || campaignUnit.getAds().size() == 0) ? null : campaignUnit.getAds().get(0));
    }

    private List<CampaignEx> a(CampaignUnit campaignUnit) {
        if (campaignUnit == null || campaignUnit.getAds() == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        CampaignEx campaignEx = campaignUnit.getAds().get(0);
        campaignEx.setCampaignUnitId(this.f29164a);
        a(campaignEx);
        this.f29182s = campaignUnit.getSessionId();
        if (campaignEx.getOfferType() != 99 && (!TextUtils.isEmpty(campaignEx.getAdZip()) || !TextUtils.isEmpty(campaignEx.getAdHtml()))) {
            if (u0.c(campaignEx)) {
                campaignEx.setRtinsType(u0.c(this.f29169f, campaignEx.getPackageName()) ? 1 : 2);
            }
            if (com.mbridge.msdk.foundation.same.c.b(this.f29169f, campaignEx)) {
                arrayList.add(campaignEx);
            } else {
                u0.a(this.f29164a, campaignEx, com.mbridge.msdk.foundation.same.a.f27042x);
                this.f29187x = "APP ALREADY INSTALLED";
            }
            a(campaignEx, (com.mbridge.msdk.foundation.same.report.metrics.c) null, (com.mbridge.msdk.foundation.same.report.metrics.callback.a) null);
        }
        return arrayList;
    }

    private void a(CampaignEx campaignEx, com.mbridge.msdk.foundation.same.report.metrics.c cVar, com.mbridge.msdk.foundation.same.report.metrics.callback.a aVar) {
        try {
            com.mbridge.msdk.foundation.same.c.a(campaignEx, this.f29169f, cVar, new f(campaignEx, aVar));
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
            }
        }
    }

    private void a(CampaignEx campaignEx) {
        new Thread(new g(campaignEx)).start();
    }

    public void a(com.mbridge.msdk.splash.middle.b bVar) {
        this.f29168e = bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.mbridge.msdk.foundation.error.b bVar, String str, int i10, CampaignEx campaignEx) {
        if (this.f29178o) {
            this.f29178o = false;
            a(bVar, i10, str, campaignEx);
            return;
        }
        a(bVar, i10, campaignEx);
    }

    private void a(com.mbridge.msdk.foundation.error.b bVar, int i10, String str, CampaignEx campaignEx) {
        CampaignEx a10 = com.mbridge.msdk.splash.manager.d.a(this.f29170g, this.f29165b, this.f29164a, str, this.f29172i, this.f29173j, true, false);
        if (a10 != null) {
            i(a10, i10);
        } else {
            a(bVar, i10, campaignEx);
        }
    }

    private void a(com.mbridge.msdk.foundation.error.b bVar, int i10, CampaignEx campaignEx) {
        if (this.f29179p) {
            return;
        }
        b();
        this.f29179p = true;
        if (bVar != null) {
            bVar.a(campaignEx);
        }
        com.mbridge.msdk.splash.middle.b bVar2 = this.f29168e;
        if (bVar2 != null) {
            bVar2.a(bVar, i10);
        }
    }

    private void a(CampaignEx campaignEx, int i10) {
        this.f29170g.clearResState();
        if (!TextUtils.isEmpty(campaignEx.getAdZip())) {
            e(campaignEx, i10);
        }
        if (campaignEx.isDynamicView()) {
            return;
        }
        if (!TextUtils.isEmpty(campaignEx.getAdHtml())) {
            d(campaignEx, i10);
        }
        if (!TextUtils.isEmpty(campaignEx.getVideoUrlEncode())) {
            b(campaignEx, i10);
        }
        if (TextUtils.isEmpty(campaignEx.getImageUrl())) {
            return;
        }
        c(campaignEx, i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, CampaignEx campaignEx, int i10) {
        g.d dVar = new g.d();
        dVar.c(this.f29164a);
        dVar.b(this.f29165b);
        dVar.a(campaignEx);
        dVar.a(str);
        dVar.a(this.f29172i);
        dVar.a(this.f29173j);
        com.mbridge.msdk.splash.manager.g.a().a(this.f29170g, dVar, new a(campaignEx, i10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, int i10, CampaignEx campaignEx) {
        com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880009);
        bVar.c(str);
        a(bVar, this.f29176m, i10, campaignEx);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(CampaignEx campaignEx, String str, boolean z10, String str2) {
        try {
            n nVar = new n();
            nVar.e(2);
            nVar.j("m_download_end");
            if (campaignEx != null) {
                nVar.b(campaignEx.isMraid() ? n.N : n.O);
                nVar.o(campaignEx.getRequestIdNotice());
            }
            nVar.b("url", str);
            nVar.b("scenes", "1");
            if (z10) {
                nVar.d(1);
            } else {
                nVar.d(3);
                nVar.m(str2);
            }
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a(nVar, campaignEx);
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                p0.b(A, e10.getMessage());
            }
        }
    }
}
