package com.mbridge.msdk.reward.adapter;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Base64;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.DownloadError;
import com.mbridge.msdk.foundation.download.download.H5DownLoadManager;
import com.mbridge.msdk.foundation.download.download.HTMLResourceManager;
import com.mbridge.msdk.foundation.download.download.ResDownloadCheckManager;
import com.mbridge.msdk.foundation.download.download.ResourceManager;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.l0;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.u0;
import com.mbridge.msdk.foundation.tools.y;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import com.mbridge.msdk.out.MBridgeIds;
import com.mbridge.msdk.videocommon.a;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONObject;
/* compiled from: RewardCampaignsResourceManager.java */
/* loaded from: classes6.dex */
public final class b {

    /* renamed from: g  reason: collision with root package name */
    private static ConcurrentHashMap<String, f> f28495g;

    /* renamed from: a  reason: collision with root package name */
    private final m f28496a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f28497b;

    /* renamed from: c  reason: collision with root package name */
    private final String f28498c;

    /* renamed from: d  reason: collision with root package name */
    private final String f28499d;

    /* renamed from: e  reason: collision with root package name */
    private final String f28500e;

    /* renamed from: f  reason: collision with root package name */
    private volatile List<WindVaneWebView> f28501f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RewardCampaignsResourceManager.java */
    /* loaded from: classes6.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CopyOnWriteArrayList f28502a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Context f28503b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f28504c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ int f28505d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ String f28506e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ String f28507f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ String f28508g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ n f28509h;

        a(CopyOnWriteArrayList copyOnWriteArrayList, Context context, String str, int i10, String str2, String str3, String str4, n nVar) {
            this.f28502a = copyOnWriteArrayList;
            this.f28503b = context;
            this.f28504c = str;
            this.f28505d = i10;
            this.f28506e = str2;
            this.f28507f = str3;
            this.f28508g = str4;
            this.f28509h = nVar;
        }

        /* JADX WARN: Removed duplicated region for block: B:136:0x038f  */
        /* JADX WARN: Removed duplicated region for block: B:176:0x0274 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:184:0x02a8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:51:0x0185  */
        /* JADX WARN: Removed duplicated region for block: B:66:0x01ec  */
        /* JADX WARN: Removed duplicated region for block: B:79:0x0252  */
        /* JADX WARN: Removed duplicated region for block: B:99:0x02d4  */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                Method dump skipped, instructions count: 1004
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.reward.adapter.b.a.run():void");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RewardCampaignsResourceManager.java */
    /* loaded from: classes6.dex */
    public class c implements H5DownLoadManager.ZipDownloadListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f28514a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f28515b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f28516c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ CampaignEx f28517d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ n f28518e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ Context f28519f;

        c(String str, String str2, String str3, CampaignEx campaignEx, n nVar, Context context) {
            this.f28514a = str;
            this.f28515b = str2;
            this.f28516c = str3;
            this.f28517d = campaignEx;
            this.f28518e = nVar;
            this.f28519f = context;
        }

        /* JADX WARN: Removed duplicated region for block: B:44:0x0143 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        @Override // com.mbridge.msdk.foundation.download.download.H5DownLoadManager.H5ResDownloadListerInter
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onFailed(java.lang.String r23, java.lang.String r24) {
            /*
                Method dump skipped, instructions count: 372
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.reward.adapter.b.c.onFailed(java.lang.String, java.lang.String):void");
        }

        /* JADX WARN: Removed duplicated region for block: B:24:0x0141  */
        /* JADX WARN: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
        @Override // com.mbridge.msdk.foundation.download.download.H5DownLoadManager.H5ResDownloadListerInter
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onSuccess(java.lang.String r18, java.lang.String r19, boolean r20) {
            /*
                Method dump skipped, instructions count: 329
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.reward.adapter.b.c.onSuccess(java.lang.String, java.lang.String, boolean):void");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RewardCampaignsResourceManager.java */
    /* loaded from: classes6.dex */
    public class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CampaignEx f28521a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Context f28522b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f28523c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f28524d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ String f28525e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ String f28526f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ String f28527g;

        d(CampaignEx campaignEx, Context context, int i10, String str, String str2, String str3, String str4) {
            this.f28521a = campaignEx;
            this.f28522b = context;
            this.f28523c = i10;
            this.f28524d = str;
            this.f28525e = str2;
            this.f28526f = str3;
            this.f28527g = str4;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f28521a != null && this.f28522b != null) {
                try {
                    com.mbridge.msdk.foundation.entity.n nVar = new com.mbridge.msdk.foundation.entity.n();
                    nVar.j("m_download_end");
                    Context context = this.f28522b;
                    if (context != null) {
                        nVar.c(l0.s(context.getApplicationContext()));
                    }
                    nVar.d(this.f28523c);
                    CampaignEx campaignEx = this.f28521a;
                    if (campaignEx != null) {
                        nVar.b(campaignEx.getId());
                        nVar.n(this.f28521a.getRequestId());
                        nVar.k(this.f28521a.getCurrentLocalRid());
                        nVar.o(this.f28521a.getRequestIdNotice());
                    }
                    nVar.b("url", this.f28524d);
                    nVar.t(this.f28524d);
                    nVar.m(this.f28525e);
                    nVar.u(this.f28526f);
                    if (!TextUtils.isEmpty(this.f28527g)) {
                        nVar.q(this.f28527g);
                    }
                    nVar.e(1);
                    nVar.b("scenes", "1");
                    com.mbridge.msdk.foundation.same.report.metrics.d.b().a(nVar, this.f28521a);
                } catch (Exception e10) {
                    if (MBridgeConstans.DEBUG) {
                        p0.b("RewardCampaignsResourceManager", e10.getLocalizedMessage());
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RewardCampaignsResourceManager.java */
    /* loaded from: classes6.dex */
    public class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f28529a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ WindVaneWebView f28530b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ CampaignEx f28531c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ CopyOnWriteArrayList f28532d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ String f28533e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ com.mbridge.msdk.videocommon.setting.c f28534f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ String f28535g;

        e(boolean z10, WindVaneWebView windVaneWebView, CampaignEx campaignEx, CopyOnWriteArrayList copyOnWriteArrayList, String str, com.mbridge.msdk.videocommon.setting.c cVar, String str2) {
            this.f28529a = z10;
            this.f28530b = windVaneWebView;
            this.f28531c = campaignEx;
            this.f28532d = copyOnWriteArrayList;
            this.f28533e = str;
            this.f28534f = cVar;
            this.f28535g = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            b.this.a(this.f28529a, this.f28530b, this.f28531c.getRewardTemplateMode().e(), 0, this.f28531c, this.f28532d, H5DownLoadManager.getInstance().getH5ResAddress(this.f28531c.getRewardTemplateMode().e()), this.f28533e, this.f28534f, this.f28535g, b.this.f28497b);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: RewardCampaignsResourceManager.java */
    /* loaded from: classes6.dex */
    public static class f {

        /* renamed from: a  reason: collision with root package name */
        boolean f28537a;

        /* renamed from: b  reason: collision with root package name */
        boolean f28538b;

        /* renamed from: c  reason: collision with root package name */
        int f28539c;

        /* renamed from: d  reason: collision with root package name */
        int f28540d;

        /* renamed from: e  reason: collision with root package name */
        String f28541e;

        /* renamed from: f  reason: collision with root package name */
        String f28542f;

        /* renamed from: g  reason: collision with root package name */
        int f28543g;

        /* renamed from: h  reason: collision with root package name */
        CopyOnWriteArrayList<CampaignEx> f28544h;

        /* renamed from: i  reason: collision with root package name */
        CopyOnWriteArrayList<CampaignEx> f28545i;

        public f(boolean z10, boolean z11, int i10, int i11, String str, String str2, int i12, CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList) {
            this.f28537a = z10;
            this.f28538b = z11;
            this.f28539c = i10;
            this.f28540d = i11;
            this.f28541e = str;
            this.f28542f = str2;
            this.f28543g = i12;
            this.f28544h = copyOnWriteArrayList;
            this.f28545i = new CopyOnWriteArrayList<>(copyOnWriteArrayList);
        }
    }

    /* compiled from: RewardCampaignsResourceManager.java */
    /* loaded from: classes6.dex */
    public interface h {
        void a(String str, String str2, String str3, CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList);

        void a(CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList, com.mbridge.msdk.foundation.error.b bVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: RewardCampaignsResourceManager.java */
    /* loaded from: classes6.dex */
    public static final class i implements H5DownLoadManager.IH5SourceDownloadListener {

        /* renamed from: b  reason: collision with root package name */
        private int f28567b;

        /* renamed from: c  reason: collision with root package name */
        private final String f28568c;

        /* renamed from: d  reason: collision with root package name */
        private final String f28569d;

        /* renamed from: e  reason: collision with root package name */
        private final String f28570e;

        /* renamed from: f  reason: collision with root package name */
        private CampaignEx f28571f;

        /* renamed from: g  reason: collision with root package name */
        private n f28572g;

        /* renamed from: h  reason: collision with root package name */
        private Handler f28573h;

        /* renamed from: i  reason: collision with root package name */
        private CopyOnWriteArrayList<CampaignEx> f28574i;

        /* renamed from: a  reason: collision with root package name */
        private boolean f28566a = false;

        /* renamed from: j  reason: collision with root package name */
        private final long f28575j = System.currentTimeMillis();

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: RewardCampaignsResourceManager.java */
        /* loaded from: classes6.dex */
        public class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f28576a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ long f28577b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ String f28578c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ String f28579d;

            /* renamed from: e  reason: collision with root package name */
            final /* synthetic */ String f28580e;

            a(int i10, long j10, String str, String str2, String str3) {
                this.f28576a = i10;
                this.f28577b = j10;
                this.f28578c = str;
                this.f28579d = str2;
                this.f28580e = str3;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (i.this.f28571f == null) {
                    return;
                }
                try {
                    int i10 = this.f28576a;
                    com.mbridge.msdk.foundation.entity.n nVar = new com.mbridge.msdk.foundation.entity.n("m_download_end", i10, this.f28577b + "", this.f28578c, i.this.f28571f.getId(), i.this.f28569d, this.f28579d, "2");
                    nVar.n(i.this.f28571f.getRequestId());
                    nVar.k(i.this.f28571f.getCurrentLocalRid());
                    nVar.o(i.this.f28571f.getRequestIdNotice());
                    nVar.b(i.this.f28571f.getId());
                    nVar.a(i.this.f28571f.getAdSpaceT());
                    nVar.b("scenes", "1");
                    nVar.b("url", this.f28578c);
                    if (i.this.f28571f.getAdType() == 287) {
                        nVar.a("3");
                    } else if (i.this.f28571f.getAdType() == 94) {
                        nVar.a("1");
                    }
                    if (!TextUtils.isEmpty(this.f28580e)) {
                        nVar.q(this.f28580e);
                    }
                    b.b(nVar, i.this.f28571f);
                    com.mbridge.msdk.foundation.same.report.g.a(nVar, i.this.f28569d, i.this.f28571f);
                } catch (Exception e10) {
                    if (MBridgeConstans.DEBUG) {
                        p0.b("RewardCampaignsResourceManager", e10.getLocalizedMessage());
                    }
                }
            }
        }

        public i(int i10, String str, String str2, String str3, CampaignEx campaignEx, n nVar, Handler handler, CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList) {
            this.f28567b = i10;
            this.f28568c = str;
            this.f28569d = str2;
            this.f28570e = str3;
            this.f28571f = campaignEx;
            this.f28572g = nVar;
            this.f28573h = handler;
            this.f28574i = copyOnWriteArrayList;
        }

        @Override // com.mbridge.msdk.foundation.download.download.H5DownLoadManager.H5ResDownloadListerInter
        public void onFailed(String str, String str2) {
            ResDownloadCheckManager.getInstance().setZipDownloadDone(str, false);
            int i10 = this.f28567b;
            if (i10 != 313) {
                if (i10 != 497) {
                    if (i10 == 859) {
                        Message obtain = Message.obtain();
                        obtain.what = 205;
                        Bundle bundle = new Bundle();
                        bundle.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.f28569d);
                        bundle.putString(MBridgeConstans.PLACEMENT_ID, this.f28568c);
                        bundle.putString("request_id", this.f28570e);
                        bundle.putString("key", this.f28569d + "_" + this.f28570e + "_" + this.f28571f.getSecondRequestIndex());
                        bundle.putString("message", str2);
                        obtain.setData(bundle);
                        this.f28573h.sendMessage(obtain);
                        if (this.f28572g != null) {
                            try {
                                this.f28572g.a(str, this.f28570e, b.b(880006, new MBridgeIds(this.f28568c, this.f28569d, this.f28570e), str2, null, null));
                                return;
                            } catch (Exception e10) {
                                p0.b("RewardCampaignsResourceManager", e10.getMessage());
                                return;
                            }
                        }
                        return;
                    }
                    return;
                }
                Message obtain2 = Message.obtain();
                obtain2.what = 201;
                Bundle bundle2 = new Bundle();
                bundle2.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.f28569d);
                bundle2.putString(MBridgeConstans.PLACEMENT_ID, this.f28568c);
                bundle2.putString("request_id", this.f28570e);
                bundle2.putString("key", this.f28569d + "_" + this.f28570e + "_" + this.f28571f.getSecondRequestIndex());
                bundle2.putString("url", str);
                bundle2.putString("message", str2);
                obtain2.setData(bundle2);
                this.f28573h.sendMessage(obtain2);
                if (this.f28566a) {
                    a(3, System.currentTimeMillis() - this.f28575j, str, "url download failed", "");
                    return;
                }
                return;
            }
            Message obtain3 = Message.obtain();
            obtain3.what = 201;
            Bundle bundle3 = new Bundle();
            bundle3.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.f28569d);
            bundle3.putString(MBridgeConstans.PLACEMENT_ID, this.f28568c);
            bundle3.putString("request_id", this.f28570e);
            bundle3.putString("key", this.f28569d + "_" + this.f28570e + "_" + this.f28571f.getSecondRequestIndex());
            bundle3.putString("url", str);
            bundle3.putString("message", str2);
            obtain3.setData(bundle3);
            this.f28573h.sendMessage(obtain3);
        }

        @Override // com.mbridge.msdk.foundation.download.download.H5DownLoadManager.H5ResDownloadListerInter
        public void onSuccess(String str, String str2, boolean z10) {
            ResDownloadCheckManager.getInstance().setZipDownloadDone(str, true);
            int i10 = this.f28567b;
            if (i10 != 313) {
                if (i10 != 497) {
                    if (i10 == 859) {
                        Message obtain = Message.obtain();
                        obtain.what = 105;
                        Bundle bundle = new Bundle();
                        bundle.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.f28569d);
                        bundle.putString(MBridgeConstans.PLACEMENT_ID, this.f28568c);
                        bundle.putString("request_id", this.f28570e);
                        bundle.putString("key", this.f28569d + "_" + this.f28570e + "_" + this.f28571f.getSecondRequestIndex());
                        obtain.setData(bundle);
                        this.f28573h.sendMessage(obtain);
                        n nVar = this.f28572g;
                        if (nVar != null) {
                            nVar.a(this.f28568c, this.f28569d, this.f28570e, str);
                            return;
                        }
                        return;
                    }
                    return;
                }
                Message obtain2 = Message.obtain();
                obtain2.what = 101;
                Bundle bundle2 = new Bundle();
                bundle2.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.f28569d);
                bundle2.putString(MBridgeConstans.PLACEMENT_ID, this.f28568c);
                bundle2.putString("request_id", this.f28570e);
                bundle2.putString("key", this.f28569d + "_" + this.f28570e + "_" + this.f28571f.getSecondRequestIndex());
                bundle2.putString("url", str);
                obtain2.setData(bundle2);
                this.f28573h.sendMessage(obtain2);
                if (this.f28566a) {
                    a(1, System.currentTimeMillis() - this.f28575j, str, "", str2);
                    return;
                }
                return;
            }
            Message obtain3 = Message.obtain();
            obtain3.what = 101;
            Bundle bundle3 = new Bundle();
            bundle3.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.f28569d);
            bundle3.putString(MBridgeConstans.PLACEMENT_ID, this.f28568c);
            bundle3.putString("request_id", this.f28570e);
            bundle3.putString("key", this.f28569d + "_" + this.f28570e + "_" + this.f28571f.getSecondRequestIndex());
            bundle3.putString("url", str);
            obtain3.setData(bundle3);
            this.f28573h.sendMessage(obtain3);
        }

        public void a(boolean z10) {
            this.f28566a = z10;
        }

        private void a(int i10, long j10, String str, String str2, String str3) {
            com.mbridge.msdk.foundation.same.threadpool.a.e().execute(new a(i10, j10, str, str2, str3));
        }
    }

    /* compiled from: RewardCampaignsResourceManager.java */
    /* loaded from: classes6.dex */
    private static final class j implements com.mbridge.msdk.foundation.same.image.c {

        /* renamed from: a  reason: collision with root package name */
        private Handler f28582a;

        /* renamed from: b  reason: collision with root package name */
        private int f28583b;

        /* renamed from: c  reason: collision with root package name */
        private String f28584c;

        /* renamed from: d  reason: collision with root package name */
        private String f28585d;

        /* renamed from: e  reason: collision with root package name */
        private String f28586e;

        /* renamed from: f  reason: collision with root package name */
        private CampaignEx f28587f;

        /* compiled from: RewardCampaignsResourceManager.java */
        /* loaded from: classes6.dex */
        class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ String f28588a;

            a(String str) {
                this.f28588a = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (j.this.f28587f != null) {
                    try {
                        com.mbridge.msdk.foundation.db.n a10 = com.mbridge.msdk.foundation.db.n.a(com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d()));
                        p0.a("RewardCampaignsResourceManager", "campaign is null");
                        com.mbridge.msdk.foundation.entity.n nVar = new com.mbridge.msdk.foundation.entity.n();
                        nVar.j("2000044");
                        nVar.c(l0.s(com.mbridge.msdk.foundation.controller.c.m().d()));
                        nVar.b(j.this.f28587f.getId());
                        nVar.i(j.this.f28587f.getImageUrl());
                        nVar.n(j.this.f28587f.getRequestId());
                        nVar.k(j.this.f28587f.getCurrentLocalRid());
                        nVar.o(j.this.f28587f.getRequestIdNotice());
                        nVar.u(j.this.f28584c);
                        nVar.m(this.f28588a);
                        nVar.b("scenes", "1");
                        a10.a(nVar);
                    } catch (Exception e10) {
                        if (MBridgeConstans.DEBUG) {
                            p0.b("RewardCampaignsResourceManager", e10.getLocalizedMessage());
                        }
                    }
                }
            }
        }

        public j(Handler handler, int i10, String str, String str2, String str3, CampaignEx campaignEx) {
            this.f28582a = handler;
            this.f28583b = i10;
            this.f28585d = str;
            this.f28584c = str2;
            this.f28586e = str3;
            this.f28587f = campaignEx;
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onFailedLoad(String str, String str2) {
            int i10;
            Message obtain = Message.obtain();
            if (this.f28583b == 0) {
                i10 = 202;
            } else {
                i10 = 204;
            }
            obtain.what = i10;
            Bundle bundle = new Bundle();
            bundle.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.f28584c);
            bundle.putString(MBridgeConstans.PLACEMENT_ID, this.f28585d);
            bundle.putString("request_id", this.f28586e);
            bundle.putString("key", this.f28584c + "_" + this.f28586e + "_" + this.f28587f.getSecondRequestIndex());
            obtain.setData(bundle);
            this.f28582a.sendMessage(obtain);
            a aVar = new a(str);
            if (com.mbridge.msdk.foundation.controller.d.a().e()) {
                com.mbridge.msdk.foundation.same.threadpool.a.b().execute(aVar);
            } else {
                aVar.run();
            }
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onSuccessLoad(Bitmap bitmap, String str) {
            int i10;
            ResDownloadCheckManager.getInstance().setImageDownloadDone(str, true);
            Message obtain = Message.obtain();
            if (this.f28583b == 0) {
                i10 = 102;
            } else {
                i10 = 104;
            }
            obtain.what = i10;
            Bundle bundle = new Bundle();
            bundle.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.f28584c);
            bundle.putString(MBridgeConstans.PLACEMENT_ID, this.f28585d);
            bundle.putString("request_id", this.f28586e);
            bundle.putString("key", this.f28584c + "_" + this.f28586e + "_" + this.f28587f.getSecondRequestIndex());
            obtain.setData(bundle);
            this.f28582a.sendMessage(obtain);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: RewardCampaignsResourceManager.java */
    /* loaded from: classes6.dex */
    public static final class l implements H5DownLoadManager.ZipDownloadListener {

        /* renamed from: b  reason: collision with root package name */
        private Context f28596b;

        /* renamed from: c  reason: collision with root package name */
        private String f28597c;

        /* renamed from: d  reason: collision with root package name */
        private String f28598d;

        /* renamed from: e  reason: collision with root package name */
        private String f28599e;

        /* renamed from: f  reason: collision with root package name */
        private CampaignEx f28600f;

        /* renamed from: g  reason: collision with root package name */
        private int f28601g;

        /* renamed from: h  reason: collision with root package name */
        private Handler f28602h;

        /* renamed from: i  reason: collision with root package name */
        private n f28603i;

        /* renamed from: j  reason: collision with root package name */
        private CopyOnWriteArrayList<CampaignEx> f28604j;

        /* renamed from: a  reason: collision with root package name */
        private boolean f28595a = false;

        /* renamed from: k  reason: collision with root package name */
        private long f28605k = System.currentTimeMillis();

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: RewardCampaignsResourceManager.java */
        /* loaded from: classes6.dex */
        public class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f28606a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ String f28607b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ String f28608c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ String f28609d;

            a(int i10, String str, String str2, String str3) {
                this.f28606a = i10;
                this.f28607b = str;
                this.f28608c = str2;
                this.f28609d = str3;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (l.this.f28600f != null && l.this.f28596b != null) {
                    try {
                        com.mbridge.msdk.foundation.entity.n nVar = new com.mbridge.msdk.foundation.entity.n();
                        nVar.j("m_download_end");
                        if (l.this.f28596b != null) {
                            nVar.c(l0.s(l.this.f28596b.getApplicationContext()));
                        }
                        nVar.d(this.f28606a);
                        if (l.this.f28600f != null) {
                            nVar.b(l.this.f28600f.getId());
                            nVar.n(l.this.f28600f.getRequestId());
                            nVar.k(l.this.f28600f.getCurrentLocalRid());
                            nVar.o(l.this.f28600f.getRequestIdNotice());
                        }
                        nVar.t(this.f28607b);
                        nVar.m(this.f28608c);
                        nVar.u(l.this.f28597c);
                        if (!TextUtils.isEmpty(this.f28609d)) {
                            nVar.q(this.f28609d);
                        }
                        nVar.e(2);
                        nVar.b("scenes", "1");
                        nVar.b("url", this.f28607b);
                        b.b(nVar, l.this.f28600f);
                        com.mbridge.msdk.foundation.same.report.metrics.d.b().a(nVar, l.this.f28600f);
                    } catch (Exception e10) {
                        if (MBridgeConstans.DEBUG) {
                            p0.b("RewardCampaignsResourceManager", e10.getLocalizedMessage());
                        }
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: RewardCampaignsResourceManager.java */
        /* renamed from: com.mbridge.msdk.reward.adapter.b$l$b  reason: collision with other inner class name */
        /* loaded from: classes6.dex */
        public class RunnableC0404b implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ int f28611a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ long f28612b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ String f28613c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ String f28614d;

            /* renamed from: e  reason: collision with root package name */
            final /* synthetic */ String f28615e;

            RunnableC0404b(int i10, long j10, String str, String str2, String str3) {
                this.f28611a = i10;
                this.f28612b = j10;
                this.f28613c = str;
                this.f28614d = str2;
                this.f28615e = str3;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (l.this.f28600f == null) {
                    return;
                }
                try {
                    int i10 = this.f28611a;
                    com.mbridge.msdk.foundation.entity.n nVar = new com.mbridge.msdk.foundation.entity.n("m_download_end", i10, this.f28612b + "", this.f28613c, l.this.f28600f.getId(), l.this.f28597c, this.f28614d, "1");
                    nVar.n(l.this.f28600f.getRequestId());
                    nVar.k(l.this.f28600f.getCurrentLocalRid());
                    nVar.o(l.this.f28600f.getRequestIdNotice());
                    nVar.b(l.this.f28600f.getId());
                    nVar.a(l.this.f28600f.getAdSpaceT());
                    nVar.q(this.f28615e);
                    nVar.b("scenes", "1");
                    if (l.this.f28600f.getAdType() == 287) {
                        nVar.a("3");
                    } else if (l.this.f28600f.getAdType() == 94) {
                        nVar.a("1");
                    }
                    nVar.b("url", this.f28613c);
                    nVar.e(3);
                    b.b(nVar, l.this.f28600f);
                    com.mbridge.msdk.foundation.same.report.g.a(nVar, l.this.f28597c, l.this.f28600f);
                } catch (Exception e10) {
                    if (MBridgeConstans.DEBUG) {
                        p0.b("RewardCampaignsResourceManager", e10.getLocalizedMessage());
                    }
                }
            }
        }

        public l(Context context, String str, String str2, String str3, CampaignEx campaignEx, int i10, Handler handler, n nVar, CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList) {
            this.f28596b = context;
            this.f28598d = str;
            this.f28597c = str2;
            this.f28599e = str3;
            this.f28600f = campaignEx;
            this.f28601g = i10;
            this.f28602h = handler;
            this.f28603i = nVar;
            this.f28604j = copyOnWriteArrayList;
        }

        @Override // com.mbridge.msdk.foundation.download.download.H5DownLoadManager.H5ResDownloadListerInter
        public void onFailed(String str, String str2) {
            ResDownloadCheckManager.getInstance().setZipDownloadDone(str2, false);
            long currentTimeMillis = System.currentTimeMillis() - this.f28605k;
            int i10 = this.f28601g;
            if (i10 != 313) {
                if (i10 != 497) {
                    if (i10 == 859) {
                        Message obtain = Message.obtain();
                        obtain.what = 203;
                        Bundle bundle = new Bundle();
                        bundle.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.f28597c);
                        bundle.putString(MBridgeConstans.PLACEMENT_ID, this.f28598d);
                        bundle.putString("request_id", this.f28599e);
                        bundle.putString("url", str2);
                        bundle.putString("key", this.f28597c + "_" + this.f28599e + "_" + this.f28600f.getSecondRequestIndex());
                        bundle.putString("message", str);
                        obtain.setData(bundle);
                        this.f28602h.sendMessage(obtain);
                        if (this.f28603i != null) {
                            try {
                                this.f28603i.a(str2, this.f28599e, b.b(880006, new MBridgeIds(this.f28598d, this.f28597c, this.f28599e), "", null, null));
                            } catch (Exception e10) {
                                p0.b("RewardCampaignsResourceManager", e10.getMessage());
                            }
                        }
                        a(3, str2, str, "");
                        return;
                    }
                    return;
                }
                Message obtain2 = Message.obtain();
                obtain2.what = 201;
                Bundle bundle2 = new Bundle();
                bundle2.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.f28597c);
                bundle2.putString(MBridgeConstans.PLACEMENT_ID, this.f28598d);
                bundle2.putString("request_id", this.f28599e);
                bundle2.putString("url", str2);
                bundle2.putString("key", this.f28597c + "_" + this.f28599e + "_" + this.f28600f.getSecondRequestIndex());
                bundle2.putString("message", str);
                obtain2.setData(bundle2);
                this.f28602h.sendMessage(obtain2);
                if (this.f28595a) {
                    a(3, currentTimeMillis, str2, "zip download failed", "");
                    return;
                }
                return;
            }
            Message obtain3 = Message.obtain();
            obtain3.what = 101;
            Bundle bundle3 = new Bundle();
            bundle3.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.f28597c);
            bundle3.putString(MBridgeConstans.PLACEMENT_ID, this.f28598d);
            bundle3.putString("request_id", this.f28599e);
            bundle3.putString("key", this.f28597c + "_" + this.f28599e + "_" + this.f28600f.getSecondRequestIndex());
            bundle3.putString("url", str2);
            bundle3.putString("message", str);
            obtain3.setData(bundle3);
            this.f28602h.sendMessage(obtain3);
        }

        @Override // com.mbridge.msdk.foundation.download.download.H5DownLoadManager.H5ResDownloadListerInter
        public void onSuccess(String str, String str2, boolean z10) {
            ResDownloadCheckManager.getInstance().setZipDownloadDone(str, true);
            long currentTimeMillis = System.currentTimeMillis() - this.f28605k;
            int i10 = this.f28601g;
            if (i10 != 313) {
                if (i10 != 497) {
                    if (i10 == 859) {
                        Message obtain = Message.obtain();
                        obtain.what = 103;
                        Bundle bundle = new Bundle();
                        bundle.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.f28597c);
                        bundle.putString(MBridgeConstans.PLACEMENT_ID, this.f28598d);
                        bundle.putString("request_id", this.f28599e);
                        bundle.putString("key", this.f28597c + "_" + this.f28599e + "_" + this.f28600f.getSecondRequestIndex());
                        obtain.setData(bundle);
                        this.f28602h.sendMessage(obtain);
                        n nVar = this.f28603i;
                        if (nVar != null) {
                            nVar.a(this.f28598d, this.f28597c, this.f28599e, str);
                        }
                        if (!z10) {
                            a(1, str, "", str2);
                            return;
                        }
                        return;
                    }
                    return;
                }
                Message obtain2 = Message.obtain();
                obtain2.what = 101;
                Bundle bundle2 = new Bundle();
                bundle2.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.f28597c);
                bundle2.putString(MBridgeConstans.PLACEMENT_ID, this.f28598d);
                bundle2.putString("request_id", this.f28599e);
                bundle2.putString("key", this.f28597c + "_" + this.f28599e + "_" + this.f28600f.getSecondRequestIndex());
                bundle2.putString("url", str);
                obtain2.setData(bundle2);
                this.f28602h.sendMessage(obtain2);
                if (this.f28595a) {
                    a(1, currentTimeMillis, str, "", str2);
                    return;
                }
                return;
            }
            Message obtain3 = Message.obtain();
            obtain3.what = 101;
            Bundle bundle3 = new Bundle();
            bundle3.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.f28597c);
            bundle3.putString(MBridgeConstans.PLACEMENT_ID, this.f28598d);
            bundle3.putString("request_id", this.f28599e);
            bundle3.putString("key", this.f28597c + "_" + this.f28599e + "_" + this.f28600f.getSecondRequestIndex());
            bundle3.putString("url", str);
            obtain3.setData(bundle3);
            this.f28602h.sendMessage(obtain3);
        }

        public void a(boolean z10) {
            this.f28595a = z10;
        }

        private void a(int i10, String str, String str2, String str3) {
            com.mbridge.msdk.foundation.same.threadpool.a.e().execute(new a(i10, str, str2, str3));
        }

        private void a(int i10, long j10, String str, String str2, String str3) {
            com.mbridge.msdk.foundation.same.threadpool.a.e().execute(new RunnableC0404b(i10, j10, str, str2, str3));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: RewardCampaignsResourceManager.java */
    /* loaded from: classes6.dex */
    public static final class m extends Handler {

        /* renamed from: a  reason: collision with root package name */
        private Context f28617a;

        /* renamed from: b  reason: collision with root package name */
        private ConcurrentHashMap<String, h> f28618b;

        /* renamed from: c  reason: collision with root package name */
        private ConcurrentHashMap<String, CopyOnWriteArrayList<CampaignEx>> f28619c;

        public m(Looper looper) {
            super(looper);
            this.f28618b = new ConcurrentHashMap<>();
            this.f28619c = new ConcurrentHashMap<>();
        }

        public void a(String str, h hVar) {
            this.f28618b.put(str, hVar);
        }

        /* JADX WARN: Can't wrap try/catch for region: R(17:6|(1:8)|9|(1:244)(1:13)|14|15|16|17|(3:67|68|(4:70|(7:(2:77|(2:79|(2:81|(2:83|(2:86|(1:88)(2:89|(2:93|(1:97))))(1:85))(2:98|(1:100)))(2:101|(1:103)))(2:104|(1:106)))|107|108|109|110|111|113)(10:119|120|121|122|(2:124|(2:126|(2:128|(1:(1:139)(2:137|138)))(1:(4:172|(4:175|(2:179|180)|181|173)|184|185)(2:170|171)))(1:(4:195|(6:198|(1:202)|203|(2:207|208)|209|196)|212|213)(2:193|194)))(1:(4:223|(4:226|(2:228|229)(1:231)|230|224)|232|233)(2:221|222))|140|141|142|143|(3:152|153|155)(2:145|(5:147|148|149|31|32)(1:151)))|28|29))|19|20|21|22|(1:24)(5:(2:39|(2:41|(2:43|(2:45|(1:50))(2:51|(1:53)))(2:54|(1:56)))(2:57|(1:59)))|60|61|62|63)|25|31|32) */
        /* JADX WARN: Code restructure failed: missing block: B:180:0x03b5, code lost:
            r0 = e;
         */
        /* JADX WARN: Code restructure failed: missing block: B:181:0x03b6, code lost:
            r6 = r12;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:230:0x047a  */
        /* JADX WARN: Removed duplicated region for block: B:274:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Type inference failed for: r12v1, types: [int] */
        /* JADX WARN: Type inference failed for: r12v11 */
        /* JADX WARN: Type inference failed for: r12v2 */
        /* JADX WARN: Type inference failed for: r12v3 */
        /* JADX WARN: Type inference failed for: r12v4 */
        /* JADX WARN: Type inference failed for: r12v5 */
        /* JADX WARN: Type inference failed for: r12v7 */
        /* JADX WARN: Type inference failed for: r12v8 */
        /* JADX WARN: Type inference failed for: r6v10 */
        /* JADX WARN: Type inference failed for: r6v13 */
        /* JADX WARN: Type inference failed for: r6v14, types: [int] */
        /* JADX WARN: Type inference failed for: r6v16 */
        /* JADX WARN: Type inference failed for: r6v17 */
        /* JADX WARN: Type inference failed for: r6v18 */
        /* JADX WARN: Type inference failed for: r6v4 */
        /* JADX WARN: Type inference failed for: r6v5 */
        /* JADX WARN: Type inference failed for: r6v6, types: [int] */
        /* JADX WARN: Type inference failed for: r6v7 */
        /* JADX WARN: Type inference failed for: r6v8 */
        /* JADX WARN: Type inference failed for: r6v9 */
        @Override // android.os.Handler
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void handleMessage(android.os.Message r30) {
            /*
                Method dump skipped, instructions count: 1204
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.reward.adapter.b.m.handleMessage(android.os.Message):void");
        }

        public void a(Context context) {
            this.f28617a = context;
        }

        public void a(String str, CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList) {
            this.f28619c.put(str, copyOnWriteArrayList);
        }
    }

    /* compiled from: RewardCampaignsResourceManager.java */
    /* loaded from: classes6.dex */
    public interface n {
        void a(String str, String str2, com.mbridge.msdk.foundation.error.b bVar);

        void a(String str, String str2, String str3, String str4);
    }

    /* compiled from: RewardCampaignsResourceManager.java */
    /* loaded from: classes6.dex */
    public interface o {
        void a(String str, String str2, String str3, a.C0455a c0455a, com.mbridge.msdk.foundation.error.b bVar);

        void a(String str, String str2, String str3, String str4, String str5, a.C0455a c0455a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: RewardCampaignsResourceManager.java */
    /* loaded from: classes6.dex */
    public static final class r {

        /* renamed from: a  reason: collision with root package name */
        private static final b f28663a = new b(null);
    }

    /* synthetic */ b(a aVar) {
        this();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int c(int i10) {
        if (i10 != 200) {
            if (i10 != 201) {
                if (i10 != 203) {
                    return i10 != 205 ? 880024 : 880005;
                }
                return 880006;
            }
            return 880007;
        }
        return 880004;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Unreachable block: B:15:0x0018
        	at jadx.core.dex.visitors.blocks.BlockProcessor.checkForUnreachableBlocks(BlockProcessor.java:81)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:47)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    /* JADX INFO: Access modifiers changed from: private */
    public static synchronized java.lang.String d(int r2) {
        /*
            java.lang.Class<com.mbridge.msdk.reward.adapter.b> r0 = com.mbridge.msdk.reward.adapter.b.class
            monitor-enter(r0)
            r1 = 200(0xc8, float:2.8E-43)
            if (r2 == r1) goto L29
            r1 = 201(0xc9, float:2.82E-43)
            if (r2 == r1) goto L24
            r1 = 203(0xcb, float:2.84E-43)
            if (r2 == r1) goto L1f
            r1 = 205(0xcd, float:2.87E-43)
            if (r2 == r1) goto L1a
            java.lang.String r2 = "unknown"
            monitor-exit(r0)
            return r2
        L18:
            r2 = move-exception
            goto L2e
        L1a:
            java.lang.String r2 = "tpl"
            monitor-exit(r0)
            return r2
        L1f:
            java.lang.String r2 = "temp"
            monitor-exit(r0)
            return r2
        L24:
            java.lang.String r2 = "zip/html"
            monitor-exit(r0)
            return r2
        L29:
            java.lang.String r2 = "video"
            monitor-exit(r0)
            return r2
        L2e:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L18
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.reward.adapter.b.d(int):java.lang.String");
    }

    private b() {
        this.f28498c = CampaignEx.JSON_KEY_LOCAL_REQUEST_ID;
        this.f28499d = "down_type";
        this.f28500e = "h3c";
        this.f28501f = new ArrayList(6);
        HandlerThread handlerThread = new HandlerThread("mb-reward-load-thread");
        f28495g = new ConcurrentHashMap<>();
        handlerThread.start();
        this.f28496a = new m(handlerThread.getLooper());
    }

    public void c() {
    }

    public static b b() {
        return r.f28663a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(com.mbridge.msdk.foundation.entity.n nVar, CampaignEx campaignEx) {
        try {
            com.mbridge.msdk.videocommon.setting.c c10 = com.mbridge.msdk.videocommon.setting.b.b().c(com.mbridge.msdk.foundation.controller.c.m().b(), campaignEx.getCampaignUnitId());
            if (c10 != null) {
                nVar.s(c10.x());
            }
            com.mbridge.msdk.videocommon.setting.a c11 = com.mbridge.msdk.videocommon.setting.b.b().c();
            if (c11 != null) {
                nVar.r(c11.f());
            }
        } catch (Exception e10) {
            p0.b("RewardCampaignsResourceManager", e10.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static com.mbridge.msdk.foundation.error.b b(int i10, MBridgeIds mBridgeIds, String str, Throwable th2, CampaignEx campaignEx) {
        com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(i10);
        bVar.a(mBridgeIds);
        bVar.a(th2);
        bVar.c(str);
        bVar.a(campaignEx);
        return bVar;
    }

    /* compiled from: RewardCampaignsResourceManager.java */
    /* loaded from: classes6.dex */
    private static final class k implements com.mbridge.msdk.videocommon.listener.a {

        /* renamed from: a  reason: collision with root package name */
        private Handler f28590a;

        /* renamed from: b  reason: collision with root package name */
        private final String f28591b;

        /* renamed from: c  reason: collision with root package name */
        private final String f28592c;

        /* renamed from: d  reason: collision with root package name */
        private final String f28593d;

        /* renamed from: e  reason: collision with root package name */
        private final String f28594e;

        public k(Handler handler, String str, String str2, String str3, String str4) {
            this.f28590a = handler;
            this.f28592c = str;
            this.f28591b = str2;
            this.f28593d = str3;
            this.f28594e = str4;
        }

        @Override // com.mbridge.msdk.videocommon.listener.a
        public void a(String str) {
            ResDownloadCheckManager.getInstance().setVideoDownloadDone(str, true);
            Message obtain = Message.obtain();
            obtain.what = 100;
            Bundle bundle = new Bundle();
            bundle.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.f28591b);
            bundle.putString(MBridgeConstans.PLACEMENT_ID, this.f28592c);
            bundle.putString("request_id", this.f28593d);
            bundle.putString("key", this.f28594e);
            bundle.putString("url", str);
            obtain.setData(bundle);
            this.f28590a.sendMessage(obtain);
        }

        @Override // com.mbridge.msdk.videocommon.listener.a
        public void a(String str, String str2) {
            ResDownloadCheckManager.getInstance().setVideoDownloadDone(str2, false);
            Message obtain = Message.obtain();
            obtain.what = 200;
            Bundle bundle = new Bundle();
            bundle.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.f28591b);
            bundle.putString(MBridgeConstans.PLACEMENT_ID, this.f28592c);
            bundle.putString("request_id", this.f28593d);
            bundle.putString("url", str2);
            bundle.putString("key", this.f28594e);
            bundle.putString("message", str);
            obtain.setData(bundle);
            this.f28590a.sendMessage(obtain);
        }
    }

    public synchronized void a(Context context, boolean z10, int i10, boolean z11, int i11, String str, String str2, String str3, CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList, h hVar, n nVar) {
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList2 = new CopyOnWriteArrayList<>(copyOnWriteArrayList);
        String str4 = str2 + "_" + str3 + "_" + copyOnWriteArrayList2.get(0).getSecondRequestIndex();
        f28495g.put(str4, new f(z10, z11, i10, copyOnWriteArrayList2.size(), str2, str3, i11, copyOnWriteArrayList2));
        this.f28496a.a(str4, hVar);
        this.f28496a.a(context);
        this.f28496a.a(str4, copyOnWriteArrayList2);
        this.f28496a.post(new a(copyOnWriteArrayList2, context, str2, i11, str, str3, str4, nVar));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RewardCampaignsResourceManager.java */
    /* renamed from: com.mbridge.msdk.reward.adapter.b$b  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public class C0403b implements y.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f28511a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ CampaignEx f28512b;

        C0403b(int i10, CampaignEx campaignEx) {
            this.f28511a = i10;
            this.f28512b = campaignEx;
        }

        @Override // com.mbridge.msdk.foundation.tools.y.c
        public void a(String str, String str2, String str3, String str4, boolean z10) {
            if (z10) {
                return;
            }
            try {
                com.mbridge.msdk.foundation.entity.n nVar = new com.mbridge.msdk.foundation.entity.n();
                int i10 = this.f28511a;
                if (i10 == 0) {
                    nVar.e(1);
                    nVar.d(1);
                    nVar.j("m_download_end");
                } else if (i10 == 1) {
                    nVar.e(2);
                    nVar.d(1);
                    nVar.j("m_download_end");
                } else if (i10 == 2) {
                    nVar.e(3);
                    nVar.d(1);
                    nVar.j("m_download_end");
                    nVar.b(this.f28512b.isMraid() ? com.mbridge.msdk.foundation.entity.n.N : com.mbridge.msdk.foundation.entity.n.O);
                    nVar.f("1");
                }
                nVar.o(this.f28512b.getRequestIdNotice());
                nVar.b("url", str);
                nVar.b("scenes", "1");
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a(nVar, this.f28512b);
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    p0.b("RewardCampaignsResourceManager", e10.getMessage());
                }
            }
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
            com.mbridge.msdk.foundation.entity.n nVar = new com.mbridge.msdk.foundation.entity.n();
            int i10 = this.f28511a;
            if (i10 == 0) {
                nVar.e(1);
                nVar.d(3);
                nVar.j("m_download_end");
            } else if (i10 == 1) {
                nVar.e(2);
                nVar.d(3);
                nVar.j("m_download_end");
            } else if (i10 == 2) {
                nVar.e(3);
                nVar.d(3);
                nVar.j("m_download_end");
                nVar.b(this.f28512b.isMraid() ? com.mbridge.msdk.foundation.entity.n.N : com.mbridge.msdk.foundation.entity.n.O);
                nVar.f("1");
            }
            b.b(nVar, this.f28512b);
            nVar.o(this.f28512b.getRequestIdNotice());
            nVar.m(str2);
            nVar.b("scenes", "1");
            nVar.b("url", str);
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a(nVar, this.f28512b);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i10, CampaignEx campaignEx, String str, String str2) {
        y.a(i10, str, str2, new C0403b(i10, campaignEx), campaignEx);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, String str, String str2, String str3, CampaignEx campaignEx, String str4, n nVar, CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList) {
        if (TextUtils.isEmpty(str4) || campaignEx.isMraid()) {
            return;
        }
        com.mbridge.msdk.foundation.same.report.metrics.c a10 = a(campaignEx, 3);
        if (str4.contains(".zip") && str4.contains(ResourceManager.KEY_MD5FILENAME)) {
            boolean isEmpty = TextUtils.isEmpty(H5DownLoadManager.getInstance().getH5ResAddress(str4));
            try {
                l lVar = new l(context, str, str2, str3, campaignEx, TTVideoEngineInterface.PLAYER_OPTION_SET_FIRST_FRAME_MILLISECOND, this.f28496a, nVar, copyOnWriteArrayList);
                lVar.a(isEmpty);
                H5DownLoadManager.getInstance().downloadH5Res(a10, str4, lVar);
                return;
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    p0.b("RewardCampaignsResourceManager", e10.getLocalizedMessage());
                    return;
                }
                return;
            }
        }
        boolean isEmpty2 = TextUtils.isEmpty(HTMLResourceManager.getInstance().getHtmlContentFromUrl(str4));
        try {
            i iVar = new i(TTVideoEngineInterface.PLAYER_OPTION_SET_FIRST_FRAME_MILLISECOND, str, str2, str3, campaignEx, nVar, this.f28496a, copyOnWriteArrayList);
            iVar.a(isEmpty2);
            H5DownLoadManager.getInstance().downloadH5Res(a10, str4, iVar);
        } catch (Exception e11) {
            if (MBridgeConstans.DEBUG) {
                p0.b("RewardCampaignsResourceManager", e11.getLocalizedMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: RewardCampaignsResourceManager.java */
    /* loaded from: classes6.dex */
    public static class g extends com.mbridge.msdk.mbsignalcommon.listener.a {

        /* renamed from: a  reason: collision with root package name */
        private final Handler f28546a;

        /* renamed from: b  reason: collision with root package name */
        private final Runnable f28547b;

        /* renamed from: c  reason: collision with root package name */
        private final boolean f28548c;

        /* renamed from: d  reason: collision with root package name */
        private final boolean f28549d;

        /* renamed from: e  reason: collision with root package name */
        private int f28550e;

        /* renamed from: f  reason: collision with root package name */
        private String f28551f;

        /* renamed from: g  reason: collision with root package name */
        private String f28552g;

        /* renamed from: h  reason: collision with root package name */
        private String f28553h;

        /* renamed from: i  reason: collision with root package name */
        private String f28554i;

        /* renamed from: j  reason: collision with root package name */
        private a.C0455a f28555j;

        /* renamed from: k  reason: collision with root package name */
        private CampaignEx f28556k;

        /* renamed from: l  reason: collision with root package name */
        private CopyOnWriteArrayList<CampaignEx> f28557l;

        /* renamed from: m  reason: collision with root package name */
        private com.mbridge.msdk.videocommon.setting.c f28558m;

        /* renamed from: n  reason: collision with root package name */
        private final o f28559n;

        /* renamed from: o  reason: collision with root package name */
        private boolean f28560o;

        /* renamed from: p  reason: collision with root package name */
        private boolean f28561p;

        /* renamed from: q  reason: collision with root package name */
        private boolean f28562q;

        /* renamed from: r  reason: collision with root package name */
        private int f28563r = 0;

        /* renamed from: s  reason: collision with root package name */
        private boolean f28564s;

        /* renamed from: t  reason: collision with root package name */
        private long f28565t;

        public g(boolean z10, Handler handler, Runnable runnable, boolean z11, boolean z12, int i10, String str, String str2, String str3, String str4, a.C0455a c0455a, CampaignEx campaignEx, CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList, com.mbridge.msdk.videocommon.setting.c cVar, o oVar, boolean z13, long j10) {
            this.f28546a = handler;
            this.f28547b = runnable;
            this.f28548c = z11;
            this.f28549d = z12;
            this.f28550e = i10;
            this.f28551f = str;
            this.f28553h = str2;
            this.f28552g = str3;
            this.f28554i = str4;
            this.f28555j = c0455a;
            this.f28556k = campaignEx;
            this.f28557l = copyOnWriteArrayList;
            this.f28558m = cVar;
            this.f28559n = oVar;
            this.f28560o = z13;
            this.f28564s = z10;
            this.f28565t = j10;
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.a, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, int i10) {
            Runnable runnable;
            try {
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a("type", 1);
                eVar.a("result", Integer.valueOf(i10));
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000155", this.f28556k, eVar);
            } catch (Throwable th2) {
                p0.b("RVWindVaneWebView", th2.getMessage());
            }
            if (this.f28562q) {
                return;
            }
            String str = this.f28552g + "_" + this.f28551f;
            if (i10 == 1) {
                if (this.f28560o) {
                    com.mbridge.msdk.videocommon.a.d(this.f28552g + "_" + this.f28554i);
                } else {
                    com.mbridge.msdk.videocommon.a.c(this.f28552g + "_" + this.f28554i);
                }
                com.mbridge.msdk.videocommon.a.a(this.f28552g + "_" + this.f28554i + "_" + this.f28551f, this.f28555j, true, this.f28560o);
                Handler handler = this.f28546a;
                if (handler != null && (runnable = this.f28547b) != null) {
                    handler.removeCallbacks(runnable);
                }
                ResDownloadCheckManager.getInstance().setTemplatePreLoadDone(this.f28552g + "_" + this.f28554i + "_" + this.f28551f, true);
                a.C0455a c0455a = this.f28555j;
                if (c0455a != null) {
                    c0455a.a(true);
                }
                o oVar = this.f28559n;
                if (oVar != null) {
                    oVar.a(str, this.f28553h, this.f28552g, this.f28554i, this.f28551f, this.f28555j);
                }
            } else {
                ResDownloadCheckManager.getInstance().setTemplatePreLoadDone(this.f28552g + "_" + this.f28554i + "_" + this.f28551f, false);
                a.C0455a c0455a2 = this.f28555j;
                if (c0455a2 != null) {
                    c0455a2.a(false);
                }
                if (this.f28559n != null) {
                    this.f28559n.a(str, this.f28554i, this.f28551f, this.f28555j, b.b(880008, new MBridgeIds(this.f28553h, this.f28552g, this.f28554i), "readyState:" + i10, null, this.f28556k));
                }
            }
            this.f28562q = true;
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.a
        public void a(WebView webView, String str, String str2, int i10, int i11) {
            boolean z10 = true;
            if (i10 == 1) {
                try {
                    com.mbridge.msdk.reward.controller.a aVar = new com.mbridge.msdk.reward.controller.a();
                    aVar.e(false);
                    if (i11 != 2) {
                        z10 = false;
                    }
                    aVar.d(z10);
                    aVar.c(str, str2);
                    aVar.a(new com.mbridge.msdk.video.bt.module.orglistener.a(null));
                    aVar.a(false, com.mbridge.msdk.foundation.same.report.metrics.d.b().a(0, i11, str2, true, 1));
                } catch (Exception e10) {
                    if (MBridgeConstans.DEBUG) {
                        p0.b("RVWindVaneWebView", e10.getMessage());
                    }
                }
            }
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.a
        public void a(Object obj, String str) {
            if (obj != null) {
                try {
                    if (TextUtils.isEmpty(str)) {
                        return;
                    }
                    String optString = new JSONObject(str).optString("id");
                    com.mbridge.msdk.video.bt.component.d.c().b(obj, optString);
                    String f10 = com.mbridge.msdk.video.bt.component.d.c().f(optString);
                    CampaignEx c10 = com.mbridge.msdk.video.bt.component.d.c().c(optString);
                    com.mbridge.msdk.videocommon.setting.c d10 = com.mbridge.msdk.video.bt.component.d.c().d(optString);
                    CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
                    copyOnWriteArrayList.add(c10);
                    WindVaneWebView windVaneWebView = ((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).f28239b;
                    if (windVaneWebView != null) {
                        b.b().a(this.f28564s, windVaneWebView, c10, copyOnWriteArrayList, d10, f10, optString, this.f28563r == 0 ? 3 : 6);
                        this.f28563r++;
                    }
                } catch (Throwable th2) {
                    p0.b("RVWindVaneWebView", th2.getMessage());
                }
            }
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.a, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, String str) {
            Runnable runnable;
            super.a(webView, str);
            if (this.f28561p) {
                return;
            }
            String str2 = this.f28552g + "_" + this.f28551f;
            if (!str.contains("wfr=1")) {
                ResDownloadCheckManager.getInstance().setTemplatePreLoadDone(this.f28552g + "_" + this.f28554i + "_" + this.f28551f, true);
                Handler handler = this.f28546a;
                if (handler != null && (runnable = this.f28547b) != null) {
                    handler.removeCallbacks(runnable);
                }
                a.C0455a c0455a = this.f28555j;
                if (c0455a != null) {
                    c0455a.a(true);
                }
                o oVar = this.f28559n;
                if (oVar != null) {
                    oVar.a(str2, this.f28553h, this.f28552g, this.f28554i, this.f28551f, this.f28555j);
                }
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a(webView);
            this.f28561p = true;
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.a, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, int i10, String str, String str2) {
            super.a(webView, i10, str, str2);
            ResDownloadCheckManager.getInstance().setTemplatePreLoadDone(this.f28552g + "_" + this.f28554i + "_" + this.f28551f, false);
            if (this.f28559n != null) {
                String str3 = this.f28552g + "_" + this.f28551f;
                a.C0455a c0455a = this.f28555j;
                if (c0455a != null) {
                    c0455a.a(false);
                }
                this.f28559n.a(str3, this.f28554i, this.f28551f, this.f28555j, b.b(880008, new MBridgeIds(this.f28553h, this.f28552g, this.f28554i), "onReceivedError： " + i10 + "  " + str, null, this.f28556k));
            }
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.a, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView) {
            if (webView != null) {
                try {
                    com.mbridge.msdk.video.bt.component.d.c().c(this.f28552g, this.f28554i);
                } catch (Throwable th2) {
                    p0.b("RVWindVaneWebView", th2.getMessage());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: RewardCampaignsResourceManager.java */
    /* loaded from: classes6.dex */
    public static class p extends com.mbridge.msdk.mbsignalcommon.listener.b {

        /* renamed from: a  reason: collision with root package name */
        private Handler f28620a;

        /* renamed from: b  reason: collision with root package name */
        private Runnable f28621b;

        /* renamed from: c  reason: collision with root package name */
        private final boolean f28622c;

        /* renamed from: d  reason: collision with root package name */
        private final boolean f28623d;

        /* renamed from: e  reason: collision with root package name */
        private String f28624e;

        /* renamed from: f  reason: collision with root package name */
        private final o f28625f;

        /* renamed from: g  reason: collision with root package name */
        private final WindVaneWebView f28626g;

        /* renamed from: h  reason: collision with root package name */
        private final String f28627h;

        /* renamed from: i  reason: collision with root package name */
        private final String f28628i;

        /* renamed from: j  reason: collision with root package name */
        private final String f28629j;

        /* renamed from: k  reason: collision with root package name */
        private final a.C0455a f28630k;

        /* renamed from: l  reason: collision with root package name */
        private final CampaignEx f28631l;

        /* renamed from: m  reason: collision with root package name */
        private CopyOnWriteArrayList<CampaignEx> f28632m;

        /* renamed from: n  reason: collision with root package name */
        private long f28633n;

        /* renamed from: o  reason: collision with root package name */
        private boolean f28634o;

        /* renamed from: p  reason: collision with root package name */
        private boolean f28635p;

        /* renamed from: q  reason: collision with root package name */
        private final Runnable f28636q;

        /* renamed from: r  reason: collision with root package name */
        private final Runnable f28637r;

        /* compiled from: RewardCampaignsResourceManager.java */
        /* loaded from: classes6.dex */
        class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ o f28638a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ a.C0455a f28639b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ String f28640c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ String f28641d;

            /* renamed from: e  reason: collision with root package name */
            final /* synthetic */ String f28642e;

            /* renamed from: f  reason: collision with root package name */
            final /* synthetic */ String f28643f;

            a(o oVar, a.C0455a c0455a, String str, String str2, String str3, String str4) {
                this.f28638a = oVar;
                this.f28639b = c0455a;
                this.f28640c = str;
                this.f28641d = str2;
                this.f28642e = str3;
                this.f28643f = str4;
            }

            @Override // java.lang.Runnable
            public void run() {
                WindVaneWebView b10;
                a.C0455a c0455a;
                if (this.f28638a != null && (c0455a = this.f28639b) != null) {
                    c0455a.a(true);
                    ResDownloadCheckManager resDownloadCheckManager = ResDownloadCheckManager.getInstance();
                    resDownloadCheckManager.setTemplatePreLoadDone(this.f28640c + "_" + this.f28641d + "_" + this.f28642e, true);
                    o oVar = this.f28638a;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(this.f28640c);
                    sb2.append("_");
                    sb2.append(this.f28642e);
                    oVar.a(sb2.toString(), this.f28643f, this.f28640c, this.f28641d, this.f28642e, this.f28639b);
                }
                a.C0455a c0455a2 = this.f28639b;
                if (c0455a2 != null && (b10 = c0455a2.b()) != null) {
                    try {
                        b10.release();
                    } catch (Exception e10) {
                        if (MBridgeConstans.DEBUG) {
                            p0.b("WindVaneWebView", e10.getMessage());
                        }
                    }
                }
            }
        }

        /* compiled from: RewardCampaignsResourceManager.java */
        /* renamed from: com.mbridge.msdk.reward.adapter.b$p$b  reason: collision with other inner class name */
        /* loaded from: classes6.dex */
        class RunnableC0405b implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ o f28645a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ a.C0455a f28646b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ String f28647c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ String f28648d;

            /* renamed from: e  reason: collision with root package name */
            final /* synthetic */ String f28649e;

            /* renamed from: f  reason: collision with root package name */
            final /* synthetic */ String f28650f;

            RunnableC0405b(o oVar, a.C0455a c0455a, String str, String str2, String str3, String str4) {
                this.f28645a = oVar;
                this.f28646b = c0455a;
                this.f28647c = str;
                this.f28648d = str2;
                this.f28649e = str3;
                this.f28650f = str4;
            }

            @Override // java.lang.Runnable
            public void run() {
                WindVaneWebView b10;
                a.C0455a c0455a;
                if (this.f28645a != null && (c0455a = this.f28646b) != null) {
                    c0455a.a(true);
                    ResDownloadCheckManager resDownloadCheckManager = ResDownloadCheckManager.getInstance();
                    resDownloadCheckManager.setTemplatePreLoadDone(this.f28647c + "_" + this.f28648d + "_" + this.f28649e, true);
                    o oVar = this.f28645a;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(this.f28647c);
                    sb2.append("_");
                    sb2.append(this.f28649e);
                    oVar.a(sb2.toString(), this.f28650f, this.f28647c, this.f28648d, this.f28649e, this.f28646b);
                }
                a.C0455a c0455a2 = this.f28646b;
                if (c0455a2 != null && (b10 = c0455a2.b()) != null) {
                    try {
                        b10.release();
                    } catch (Exception e10) {
                        if (MBridgeConstans.DEBUG) {
                            p0.b("WindVaneWebView", e10.getMessage());
                        }
                    }
                }
            }
        }

        public p(Handler handler, Runnable runnable, boolean z10, boolean z11, String str, o oVar, WindVaneWebView windVaneWebView, String str2, String str3, String str4, a.C0455a c0455a, CampaignEx campaignEx, CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList, long j10) {
            this.f28620a = handler;
            this.f28621b = runnable;
            this.f28622c = z10;
            this.f28623d = z11;
            this.f28624e = str;
            this.f28625f = oVar;
            this.f28626g = windVaneWebView;
            this.f28627h = str2;
            this.f28628i = str4;
            this.f28629j = str3;
            this.f28630k = c0455a;
            this.f28631l = campaignEx;
            this.f28632m = copyOnWriteArrayList;
            this.f28633n = j10;
            a aVar = new a(oVar, c0455a, str4, str, str2, str3);
            this.f28637r = aVar;
            this.f28636q = new RunnableC0405b(oVar, c0455a, str4, str, str2, str3);
            if (handler != null) {
                handler.postDelayed(aVar, 5000L);
            }
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, int i10) {
            Handler handler;
            Runnable runnable;
            Runnable runnable2;
            super.a(webView, i10);
            Handler handler2 = this.f28620a;
            if (handler2 != null && (runnable2 = this.f28636q) != null) {
                handler2.removeCallbacks(runnable2);
            }
            Handler handler3 = this.f28620a;
            if (handler3 != null && (runnable = this.f28637r) != null) {
                handler3.removeCallbacks(runnable);
            }
            try {
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a("type", 2);
                eVar.a("result", Integer.valueOf(i10));
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000155", this.f28631l, eVar);
            } catch (Throwable th2) {
                p0.b("WindVaneWebView", th2.getMessage());
            }
            if (this.f28635p) {
                return;
            }
            String str = this.f28628i + "_" + this.f28627h;
            if (i10 == 1) {
                Runnable runnable3 = this.f28621b;
                if (runnable3 != null && (handler = this.f28620a) != null) {
                    handler.removeCallbacks(runnable3);
                }
                ResDownloadCheckManager.getInstance().setTemplatePreLoadDone(this.f28628i + "_" + this.f28624e + "_" + this.f28627h, true);
                a.C0455a c0455a = this.f28630k;
                if (c0455a != null) {
                    c0455a.a(true);
                }
                if (this.f28622c) {
                    if (this.f28623d) {
                        com.mbridge.msdk.videocommon.a.a(287, this.f28631l.getRequestIdNotice(), this.f28630k);
                    } else {
                        com.mbridge.msdk.videocommon.a.b(287, this.f28631l.getRequestIdNotice(), this.f28630k);
                    }
                } else if (this.f28623d) {
                    com.mbridge.msdk.videocommon.a.a(94, this.f28631l.getRequestIdNotice(), this.f28630k);
                } else {
                    com.mbridge.msdk.videocommon.a.b(94, this.f28631l.getRequestIdNotice(), this.f28630k);
                }
                o oVar = this.f28625f;
                if (oVar != null) {
                    oVar.a(str, this.f28629j, this.f28628i, this.f28624e, this.f28627h, this.f28630k);
                }
            } else if (this.f28625f != null) {
                this.f28625f.a(str, this.f28624e, this.f28627h, this.f28630k, b.b(880009, new MBridgeIds(this.f28629j, this.f28628i, this.f28624e), "readyState:" + i10, null, this.f28631l));
            }
            this.f28635p = true;
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, int i10, String str, String str2) {
            super.a(webView, i10, str, str2);
            ResDownloadCheckManager.getInstance().setTemplatePreLoadDone(this.f28628i + "_" + this.f28624e + "_" + this.f28627h, false);
            Handler handler = this.f28620a;
            if (handler != null) {
                if (this.f28636q != null) {
                    handler.removeCallbacks(this.f28637r);
                }
                Runnable runnable = this.f28636q;
                if (runnable != null) {
                    this.f28620a.removeCallbacks(runnable);
                }
            }
            try {
                String str3 = this.f28628i + "_" + this.f28627h;
                a.C0455a c0455a = this.f28630k;
                if (c0455a != null) {
                    c0455a.a(false);
                }
                if (this.f28625f != null) {
                    this.f28625f.a(str3, this.f28624e, str2, this.f28630k, b.b(880009, new MBridgeIds(this.f28629j, this.f28628i, this.f28624e), i10 + "#" + str, null, this.f28631l));
                }
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    p0.b("WindVaneWebView", e10.getLocalizedMessage());
                }
            }
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            super.a(webView, sslErrorHandler, sslError);
            ResDownloadCheckManager.getInstance().setTemplatePreLoadDone(this.f28628i + "_" + this.f28624e + "_" + this.f28627h, false);
            Handler handler = this.f28620a;
            if (handler != null) {
                if (this.f28636q != null) {
                    handler.removeCallbacks(this.f28637r);
                }
                Runnable runnable = this.f28636q;
                if (runnable != null) {
                    this.f28620a.removeCallbacks(runnable);
                }
            }
            try {
                String str = this.f28628i + "_" + this.f28627h;
                a.C0455a c0455a = this.f28630k;
                if (c0455a != null) {
                    c0455a.a(false);
                }
                if (this.f28625f != null) {
                    MBridgeIds mBridgeIds = new MBridgeIds(this.f28629j, this.f28628i, this.f28624e);
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("onReceivedSslError:");
                    sb2.append(sslError == null ? "" : Integer.valueOf(sslError.getPrimaryError()));
                    this.f28625f.a(str, this.f28624e, this.f28627h, this.f28630k, b.b(880009, mBridgeIds, sb2.toString(), null, this.f28631l));
                }
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    p0.b("WindVaneWebView", e10.getLocalizedMessage());
                }
            }
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, String str) {
            Runnable runnable;
            Handler handler;
            Runnable runnable2;
            super.a(webView, str);
            Handler handler2 = this.f28620a;
            if (handler2 != null && (runnable2 = this.f28637r) != null) {
                handler2.removeCallbacks(runnable2);
            }
            if (this.f28634o) {
                return;
            }
            if (!str.contains("wfr=1")) {
                String str2 = this.f28628i + "_" + this.f28627h;
                ResDownloadCheckManager.getInstance().setTemplatePreLoadDone(this.f28628i + "_" + this.f28624e + "_" + this.f28627h, true);
                Runnable runnable3 = this.f28621b;
                if (runnable3 != null && (handler = this.f28620a) != null) {
                    handler.removeCallbacks(runnable3);
                }
                a.C0455a c0455a = this.f28630k;
                if (c0455a != null) {
                    c0455a.a(true);
                }
                if (this.f28622c) {
                    if (this.f28631l.isBidCampaign()) {
                        com.mbridge.msdk.videocommon.a.a(287, this.f28631l.getRequestIdNotice(), this.f28630k);
                    } else {
                        com.mbridge.msdk.videocommon.a.b(287, this.f28631l.getRequestIdNotice(), this.f28630k);
                    }
                } else if (this.f28631l.isBidCampaign()) {
                    com.mbridge.msdk.videocommon.a.a(94, this.f28631l.getRequestIdNotice(), this.f28630k);
                } else {
                    com.mbridge.msdk.videocommon.a.b(94, this.f28631l.getRequestIdNotice(), this.f28630k);
                }
                o oVar = this.f28625f;
                if (oVar != null) {
                    oVar.a(str2, this.f28629j, this.f28628i, this.f28624e, this.f28627h, this.f28630k);
                }
            } else {
                Handler handler3 = this.f28620a;
                if (handler3 != null && (runnable = this.f28636q) != null) {
                    handler3.postDelayed(runnable, 5000L);
                }
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a(webView);
            this.f28634o = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: RewardCampaignsResourceManager.java */
    /* loaded from: classes6.dex */
    public static class q extends com.mbridge.msdk.mbsignalcommon.listener.b {

        /* renamed from: a  reason: collision with root package name */
        private String f28652a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f28653b;

        /* renamed from: c  reason: collision with root package name */
        private final WindVaneWebView f28654c;

        /* renamed from: d  reason: collision with root package name */
        private final String f28655d;

        /* renamed from: e  reason: collision with root package name */
        private final String f28656e;

        /* renamed from: f  reason: collision with root package name */
        private final a.C0455a f28657f;

        /* renamed from: g  reason: collision with root package name */
        private final CampaignEx f28658g;

        /* renamed from: h  reason: collision with root package name */
        private boolean f28659h;

        /* renamed from: i  reason: collision with root package name */
        private String f28660i;

        /* renamed from: j  reason: collision with root package name */
        private boolean f28661j;

        /* renamed from: k  reason: collision with root package name */
        private boolean f28662k;

        public q(String str, boolean z10, WindVaneWebView windVaneWebView, String str2, String str3, a.C0455a c0455a, CampaignEx campaignEx, boolean z11, String str4) {
            this.f28653b = z10;
            this.f28654c = windVaneWebView;
            this.f28655d = str2;
            this.f28656e = str3;
            this.f28657f = c0455a;
            this.f28658g = campaignEx;
            this.f28652a = str;
            this.f28659h = z11;
            this.f28660i = str4;
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, int i10) {
            try {
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a("type", 2);
                eVar.a("result", Integer.valueOf(i10));
                com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000155", this.f28658g, eVar);
            } catch (Throwable th2) {
                p0.b("WindVaneWebView", th2.getMessage());
            }
            if (this.f28662k) {
                return;
            }
            if (this.f28654c != null) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("id", this.f28652a);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("result", i10);
                    jSONObject2.put("error", "");
                    jSONObject.put("data", jSONObject2);
                    com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) this.f28654c, "onSubPlayTemplateViewLoad", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                } catch (Exception e10) {
                    if (MBridgeConstans.DEBUG) {
                        p0.b("WindVaneWebView", e10.getLocalizedMessage());
                    }
                }
            }
            String str = this.f28656e + "_" + this.f28658g.getId() + "_" + this.f28658g.getRequestId() + "_" + this.f28655d;
            if (i10 == 1) {
                ResDownloadCheckManager.getInstance().setTemplatePreLoadDone(this.f28656e + "_" + this.f28660i + "_" + this.f28655d, true);
                a.C0455a c0455a = this.f28657f;
                if (c0455a != null) {
                    c0455a.a(true);
                }
                if (this.f28653b) {
                    if (this.f28658g.isBidCampaign()) {
                        com.mbridge.msdk.videocommon.a.a(str, this.f28657f, false, this.f28659h);
                    } else {
                        com.mbridge.msdk.videocommon.a.a(str, this.f28657f, false, this.f28659h);
                    }
                } else if (this.f28658g.isBidCampaign()) {
                    com.mbridge.msdk.videocommon.a.a(str, this.f28657f, false, this.f28659h);
                } else {
                    com.mbridge.msdk.videocommon.a.a(str, this.f28657f, false, this.f28659h);
                }
            } else {
                ResDownloadCheckManager.getInstance().setTemplatePreLoadDone(this.f28656e + "_" + this.f28660i + "_" + this.f28655d, false);
                a.C0455a c0455a2 = this.f28657f;
                if (c0455a2 != null) {
                    c0455a2.a(false);
                }
            }
            this.f28662k = true;
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, int i10, String str, String str2) {
            ResDownloadCheckManager resDownloadCheckManager = ResDownloadCheckManager.getInstance();
            resDownloadCheckManager.setTemplatePreLoadDone(this.f28656e + "_" + this.f28660i + "_" + this.f28655d, false);
            a.C0455a c0455a = this.f28657f;
            if (c0455a != null) {
                c0455a.a(false);
            }
            if (this.f28654c != null) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("id", this.f28652a);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("result", 2);
                    jSONObject2.put("error", str);
                    jSONObject.put("data", jSONObject2);
                    com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) this.f28654c, "onSubPlayTemplateViewLoad", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                } catch (Exception e10) {
                    if (MBridgeConstans.DEBUG) {
                        p0.b("WindVaneWebView", e10.getLocalizedMessage());
                    }
                }
            }
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, String str) {
            if (this.f28661j) {
                return;
            }
            if (!str.contains("wfr=1")) {
                if (this.f28654c != null) {
                    JSONObject jSONObject = new JSONObject();
                    try {
                        jSONObject.put("id", this.f28652a);
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("result", 1);
                        jSONObject2.put("error", "");
                        jSONObject.put("data", jSONObject2);
                        com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) this.f28654c, "componentReact", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                    } catch (Exception e10) {
                        if (MBridgeConstans.DEBUG) {
                            p0.b("WindVaneWebView", e10.getLocalizedMessage());
                        }
                    }
                }
                ResDownloadCheckManager.getInstance().setTemplatePreLoadDone(this.f28656e + "_" + this.f28660i + "_" + this.f28655d, true);
                a.C0455a c0455a = this.f28657f;
                if (c0455a != null) {
                    c0455a.a(true);
                }
                String str2 = this.f28656e + "_" + this.f28658g.getId() + "_" + this.f28658g.getRequestId() + "_" + this.f28655d;
                if (this.f28653b) {
                    if (this.f28658g.isBidCampaign()) {
                        com.mbridge.msdk.videocommon.a.a(287, this.f28658g.getRequestIdNotice(), this.f28657f);
                    } else {
                        com.mbridge.msdk.videocommon.a.a(str2, this.f28657f, false, this.f28659h);
                    }
                } else if (this.f28658g.isBidCampaign()) {
                    com.mbridge.msdk.videocommon.a.a(94, this.f28658g.getRequestIdNotice(), this.f28657f);
                } else {
                    com.mbridge.msdk.videocommon.a.a(str2, this.f28657f, false, this.f28659h);
                }
            }
            com.mbridge.msdk.mbsignalcommon.windvane.f.a().a(webView);
            this.f28661j = true;
        }
    }

    public synchronized void a(Context context, CampaignEx campaignEx, String str, String str2, String str3, n nVar) {
        try {
            this.f28496a.a(context);
            if (campaignEx != null) {
                String cMPTEntryUrl = campaignEx.getCMPTEntryUrl();
                if (campaignEx.isDynamicView()) {
                    if (u0.a(MBridgeConstans.DYNAMIC_VIEW_KEY_DY_VIEW, cMPTEntryUrl)) {
                        int mof_tplid = campaignEx.getMof_tplid();
                        a(0, campaignEx, mof_tplid + "", cMPTEntryUrl);
                    }
                    ResDownloadCheckManager.getInstance().setZipDownloadDone(cMPTEntryUrl, true);
                    Message obtain = Message.obtain();
                    obtain.what = 105;
                    Bundle bundle = new Bundle();
                    bundle.putString(MBridgeConstans.PROPERTIES_UNIT_ID, str2);
                    bundle.putString(MBridgeConstans.PLACEMENT_ID, str);
                    bundle.putString("request_id", str3);
                    bundle.putString("key", str2 + "_" + str3 + "_" + campaignEx.getSecondRequestIndex());
                    bundle.putString("url", cMPTEntryUrl);
                    obtain.setData(bundle);
                    this.f28496a.sendMessage(obtain);
                    if (nVar != null) {
                        nVar.a(str, str2, str3, cMPTEntryUrl);
                    }
                    return;
                }
            }
            if (campaignEx != null && !TextUtils.isEmpty(campaignEx.getCMPTEntryUrl())) {
                try {
                    com.mbridge.msdk.foundation.same.report.metrics.c b10 = com.mbridge.msdk.foundation.same.report.metrics.d.b().b(campaignEx.getCurrentLocalRid());
                    if (b10 == null) {
                        b10 = new com.mbridge.msdk.foundation.same.report.metrics.c();
                    }
                    com.mbridge.msdk.foundation.same.report.metrics.c cVar = b10;
                    cVar.a(campaignEx);
                    cVar.e(1);
                    cVar.f(a(campaignEx));
                    H5DownLoadManager.getInstance().downloadH5Res(cVar, campaignEx.getCMPTEntryUrl(), new c(str2, str, str3, campaignEx, nVar, context));
                } catch (Exception e10) {
                    p0.b("RewardCampaignsResourceManager", e10.getLocalizedMessage());
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, int i10, CampaignEx campaignEx, String str, String str2, String str3, String str4) {
        com.mbridge.msdk.foundation.same.threadpool.a.e().execute(new d(campaignEx, context, i10, str, str2, str3, str4));
    }

    /* JADX WARN: Removed duplicated region for block: B:61:0x01aa A[Catch: all -> 0x003a, TryCatch #4 {, blocks: (B:4:0x0009, B:5:0x0021, B:8:0x0029, B:16:0x0046, B:26:0x0089, B:29:0x008f, B:31:0x0095, B:34:0x00a4, B:36:0x00ec, B:59:0x01a6, B:61:0x01aa, B:63:0x01b5, B:33:0x009e, B:56:0x015c, B:43:0x0105, B:45:0x0113, B:47:0x0125), top: B:75:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01b5 A[Catch: all -> 0x003a, TRY_LEAVE, TryCatch #4 {, blocks: (B:4:0x0009, B:5:0x0021, B:8:0x0029, B:16:0x0046, B:26:0x0089, B:29:0x008f, B:31:0x0095, B:34:0x00a4, B:36:0x00ec, B:59:0x01a6, B:61:0x01aa, B:63:0x01b5, B:33:0x009e, B:56:0x015c, B:43:0x0105, B:45:0x0113, B:47:0x0125), top: B:75:0x0009 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized void a(boolean r24, android.os.Handler r25, boolean r26, boolean r27, com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView r28, java.lang.String r29, int r30, com.mbridge.msdk.foundation.entity.CampaignEx r31, java.util.concurrent.CopyOnWriteArrayList<com.mbridge.msdk.foundation.entity.CampaignEx> r32, java.lang.String r33, java.lang.String r34, java.lang.String r35, java.lang.String r36, java.lang.String r37, com.mbridge.msdk.videocommon.setting.c r38, com.mbridge.msdk.reward.adapter.b.o r39) {
        /*
            Method dump skipped, instructions count: 475
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.reward.adapter.b.a(boolean, android.os.Handler, boolean, boolean, com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView, java.lang.String, int, com.mbridge.msdk.foundation.entity.CampaignEx, java.util.concurrent.CopyOnWriteArrayList, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, com.mbridge.msdk.videocommon.setting.c, com.mbridge.msdk.reward.adapter.b$o):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x01d7 A[Catch: all -> 0x0044, TRY_ENTER, TryCatch #1 {, blocks: (B:4:0x000b, B:7:0x0031, B:13:0x0049, B:15:0x007e, B:18:0x008c, B:20:0x00a7, B:22:0x00ad, B:24:0x00b7, B:27:0x00be, B:29:0x00c4, B:30:0x00ce, B:32:0x00d4, B:34:0x00e8, B:36:0x00f6, B:38:0x00ff, B:39:0x0103, B:42:0x0114, B:44:0x015d, B:46:0x0171, B:48:0x0191, B:57:0x01d7, B:58:0x01f9, B:60:0x01fd, B:41:0x010d), top: B:67:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01fd A[Catch: all -> 0x0044, TRY_LEAVE, TryCatch #1 {, blocks: (B:4:0x000b, B:7:0x0031, B:13:0x0049, B:15:0x007e, B:18:0x008c, B:20:0x00a7, B:22:0x00ad, B:24:0x00b7, B:27:0x00be, B:29:0x00c4, B:30:0x00ce, B:32:0x00d4, B:34:0x00e8, B:36:0x00f6, B:38:0x00ff, B:39:0x0103, B:42:0x0114, B:44:0x015d, B:46:0x0171, B:48:0x0191, B:57:0x01d7, B:58:0x01f9, B:60:0x01fd, B:41:0x010d), top: B:67:0x000b }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized void a(boolean r27, android.os.Handler r28, boolean r29, boolean r30, java.lang.String r31, java.lang.String r32, java.lang.String r33, java.lang.String r34, java.lang.String r35, int r36, com.mbridge.msdk.foundation.entity.CampaignEx r37, java.util.concurrent.CopyOnWriteArrayList<com.mbridge.msdk.foundation.entity.CampaignEx> r38, java.lang.String r39, java.lang.String r40, com.mbridge.msdk.videocommon.setting.c r41, com.mbridge.msdk.reward.adapter.b.o r42, boolean r43) {
        /*
            Method dump skipped, instructions count: 522
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.reward.adapter.b.a(boolean, android.os.Handler, boolean, boolean, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, int, com.mbridge.msdk.foundation.entity.CampaignEx, java.util.concurrent.CopyOnWriteArrayList, java.lang.String, java.lang.String, com.mbridge.msdk.videocommon.setting.c, com.mbridge.msdk.reward.adapter.b$o, boolean):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z10, WindVaneWebView windVaneWebView, CampaignEx campaignEx, CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList, com.mbridge.msdk.videocommon.setting.c cVar, String str, String str2, int i10) {
        if (windVaneWebView != null) {
            if (campaignEx != null && cVar != null && campaignEx.getRewardTemplateMode() != null && !TextUtils.isEmpty(str)) {
                if (TextUtils.isEmpty(campaignEx.getRewardTemplateMode().e())) {
                    JSONObject jSONObject = new JSONObject();
                    try {
                        jSONObject.put("id", str2);
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("result", 1);
                        jSONObject2.put("error", "data is null");
                        jSONObject.put("data", jSONObject2);
                        com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) windVaneWebView, "onSubPlayTemplateViewLoad", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                        return;
                    } catch (Exception e10) {
                        if (MBridgeConstans.DEBUG) {
                            p0.b("RewardCampaignsResourceManager", e10.getLocalizedMessage());
                            return;
                        }
                        return;
                    }
                } else if (!TextUtils.isEmpty(campaignEx.getRewardTemplateMode().e()) && campaignEx.getRewardTemplateMode().e().contains(CampaignEx.KEY_IS_CMPT_ENTRY)) {
                    p0.a("RewardCampaignsResourceManager", "getTeamplateUrl contains cmpt=1");
                    return;
                } else {
                    new Handler(Looper.getMainLooper()).postDelayed(new e(z10, windVaneWebView, campaignEx, copyOnWriteArrayList, str, cVar, str2), i10 * 1000);
                    return;
                }
            }
            JSONObject jSONObject3 = new JSONObject();
            try {
                jSONObject3.put("id", str2);
                JSONObject jSONObject4 = new JSONObject();
                jSONObject4.put("result", 2);
                jSONObject4.put("error", "data is null");
                jSONObject3.put("data", jSONObject4);
                com.mbridge.msdk.mbsignalcommon.windvane.f.a().a((WebView) windVaneWebView, "onSubPlayTemplateViewLoad", Base64.encodeToString(jSONObject3.toString().getBytes(), 2));
            } catch (Exception e11) {
                if (MBridgeConstans.DEBUG) {
                    p0.b("RewardCampaignsResourceManager", e11.getLocalizedMessage());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z10, WindVaneWebView windVaneWebView, String str, int i10, CampaignEx campaignEx, CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList, String str2, String str3, com.mbridge.msdk.videocommon.setting.c cVar, String str4, boolean z11) {
        com.mbridge.msdk.video.signal.impl.k kVar;
        String str5;
        try {
            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
            eVar.a("type", 2);
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("2000154", campaignEx, eVar);
            a.C0455a c0455a = new a.C0455a();
            WindVaneWebView windVaneWebView2 = new WindVaneWebView(com.mbridge.msdk.foundation.controller.c.m().d());
            if (campaignEx != null) {
                windVaneWebView2.setLocalRequestId(campaignEx.getCurrentLocalRid());
            }
            windVaneWebView2.setTempTypeForMetrics(2);
            c0455a.a(windVaneWebView2);
            String str6 = "";
            if (copyOnWriteArrayList != null && copyOnWriteArrayList.size() > 0) {
                CopyOnWriteArrayList<CampaignEx> b10 = com.mbridge.msdk.videocommon.download.b.getInstance().b(str3);
                if (b10 != null && b10.size() > 0) {
                    for (int i11 = 0; i11 < copyOnWriteArrayList.size(); i11++) {
                        CampaignEx campaignEx2 = copyOnWriteArrayList.get(i11);
                        for (CampaignEx campaignEx3 : b10) {
                            if (campaignEx3.getId().equals(campaignEx2.getId()) && campaignEx3.getRequestId().equals(campaignEx2.getRequestId())) {
                                campaignEx2.setReady(true);
                                copyOnWriteArrayList.set(i11, campaignEx2);
                            }
                        }
                    }
                }
                com.mbridge.msdk.video.signal.impl.k kVar2 = new com.mbridge.msdk.video.signal.impl.k(null, campaignEx, copyOnWriteArrayList);
                str5 = copyOnWriteArrayList.get(0).getRequestId();
                kVar = kVar2;
            } else {
                com.mbridge.msdk.video.signal.impl.k kVar3 = new com.mbridge.msdk.video.signal.impl.k(null, campaignEx);
                if (campaignEx != null) {
                    str6 = campaignEx.getRequestId();
                }
                kVar = kVar3;
                str5 = str6;
            }
            kVar.g(i10);
            kVar.setUnitId(str3);
            kVar.c(str4);
            kVar.setRewardUnitSetting(cVar);
            kVar.d(z10);
            windVaneWebView2.setWebViewListener(new q(str4, false, windVaneWebView, str, str3, c0455a, campaignEx, z11, str5));
            windVaneWebView2.setObject(kVar);
            windVaneWebView2.loadUrl(str2);
            windVaneWebView2.setRid(str5);
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                p0.b("RewardCampaignsResourceManager", e10.getLocalizedMessage());
            }
        }
    }

    private int a(CampaignEx campaignEx) {
        if (campaignEx != null) {
            try {
                if (campaignEx.getAabEntity() != null) {
                    return campaignEx.getAabEntity().h3c;
                }
            } catch (Throwable th2) {
                p0.b("RewardCampaignsResourceManager", th2.getMessage());
            }
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.mbridge.msdk.foundation.same.report.metrics.c a(CampaignEx campaignEx, int i10) {
        com.mbridge.msdk.foundation.same.report.metrics.c b10 = campaignEx != null ? com.mbridge.msdk.foundation.same.report.metrics.d.b().b(campaignEx.getCurrentLocalRid()) : null;
        if (b10 == null) {
            b10 = new com.mbridge.msdk.foundation.same.report.metrics.c();
        }
        b10.a(campaignEx);
        b10.f(a(campaignEx));
        b10.e(i10);
        return b10;
    }
}
