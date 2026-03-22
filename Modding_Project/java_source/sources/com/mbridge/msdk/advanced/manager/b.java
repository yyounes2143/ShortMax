package com.mbridge.msdk.advanced.manager;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import androidx.annotation.NonNull;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.advanced.view.MBNativeAdvancedView;
import com.mbridge.msdk.advanced.view.MBNativeAdvancedWebview;
import com.mbridge.msdk.foundation.download.download.H5DownLoadManager;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.foundation.entity.n;
import com.mbridge.msdk.foundation.same.c;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.u0;
import com.mbridge.msdk.foundation.tools.x;
import com.mbridge.msdk.foundation.tools.z0;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import com.mbridge.msdk.out.MBridgeIds;
import com.ss.ttm.player.MediaPlayer;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
/* compiled from: NativeAdvancedLoadManager.java */
/* loaded from: classes4.dex */
public class b {

    /* renamed from: z  reason: collision with root package name */
    private static String f25774z = "NativeAdvancedLoadManager";

    /* renamed from: a  reason: collision with root package name */
    private String f25775a;

    /* renamed from: b  reason: collision with root package name */
    private String f25776b;

    /* renamed from: c  reason: collision with root package name */
    private long f25777c;

    /* renamed from: d  reason: collision with root package name */
    private com.mbridge.msdk.advanced.middle.b f25778d;

    /* renamed from: f  reason: collision with root package name */
    private MBNativeAdvancedView f25780f;

    /* renamed from: g  reason: collision with root package name */
    private com.mbridge.msdk.setting.l f25781g;

    /* renamed from: h  reason: collision with root package name */
    private List<CampaignEx> f25782h;

    /* renamed from: i  reason: collision with root package name */
    private CampaignEx f25783i;

    /* renamed from: j  reason: collision with root package name */
    private int f25784j;

    /* renamed from: k  reason: collision with root package name */
    private int f25785k;

    /* renamed from: l  reason: collision with root package name */
    private int f25786l;

    /* renamed from: m  reason: collision with root package name */
    private int f25787m;

    /* renamed from: n  reason: collision with root package name */
    private String f25788n;

    /* renamed from: o  reason: collision with root package name */
    private int f25789o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f25790p;

    /* renamed from: q  reason: collision with root package name */
    private volatile boolean f25791q;

    /* renamed from: r  reason: collision with root package name */
    private com.mbridge.msdk.videocommon.listener.a f25792r;

    /* renamed from: s  reason: collision with root package name */
    private H5DownLoadManager.ZipDownloadListener f25793s;

    /* renamed from: t  reason: collision with root package name */
    private H5DownLoadManager.ZipDownloadListener f25794t;

    /* renamed from: u  reason: collision with root package name */
    private String f25795u;

    /* renamed from: v  reason: collision with root package name */
    private int f25796v;

    /* renamed from: w  reason: collision with root package name */
    private String f25797w = "";

    /* renamed from: x  reason: collision with root package name */
    private Handler f25798x = new e(Looper.getMainLooper());

    /* renamed from: y  reason: collision with root package name */
    private Runnable f25799y = new f();

    /* renamed from: e  reason: collision with root package name */
    private Context f25779e = com.mbridge.msdk.foundation.controller.c.m().d();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NativeAdvancedLoadManager.java */
    /* loaded from: classes4.dex */
    public class a implements H5DownLoadManager.ZipDownloadListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CampaignEx f25800a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f25801b;

        a(CampaignEx campaignEx, int i10) {
            this.f25800a = campaignEx;
            this.f25801b = i10;
        }

        @Override // com.mbridge.msdk.foundation.download.download.H5DownLoadManager.H5ResDownloadListerInter
        public void onFailed(String str, String str2) {
            String str3 = b.f25774z;
            p0.a(str3, "zip 下载失败： " + str2 + " " + str);
            Message obtain = Message.obtain();
            obtain.what = 2;
            Bundle bundle = new Bundle();
            bundle.putSerializable("campaignex", this.f25800a);
            bundle.putString("msg", str);
            bundle.putInt("type", 3);
            obtain.obj = bundle;
            b.this.f25798x.sendMessage(obtain);
            b.this.a(this.f25800a, str2, false, str);
        }

        @Override // com.mbridge.msdk.foundation.download.download.H5DownLoadManager.H5ResDownloadListerInter
        public void onSuccess(String str, String str2, boolean z10) {
            String str3 = b.f25774z;
            p0.a(str3, "zip 下载成功： " + str);
            Message obtain = Message.obtain();
            obtain.what = 1;
            obtain.obj = this.f25800a;
            obtain.arg1 = this.f25801b;
            b.this.f25798x.sendMessage(obtain);
            if (!z10) {
                b.this.a(this.f25800a, str, true, "");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NativeAdvancedLoadManager.java */
    /* loaded from: classes4.dex */
    public class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ MBNativeAdvancedWebview f25807a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f25808b;

        c(MBNativeAdvancedWebview mBNativeAdvancedWebview, String str) {
            this.f25807a = mBNativeAdvancedWebview;
            this.f25808b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f25807a.loadUrl(this.f25808b);
        }
    }

    /* compiled from: NativeAdvancedLoadManager.java */
    /* loaded from: classes4.dex */
    class e extends Handler {
        e(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(@NonNull Message message) {
            int i10;
            Object obj;
            super.handleMessage(message);
            int i11 = message.what;
            if (i11 != 1) {
                if (i11 != 2) {
                    if (i11 != 3) {
                        if (i11 != 4) {
                            if (i11 == 5 && (obj = message.obj) != null && (obj instanceof CampaignEx)) {
                                if (b.this.f25780f != null) {
                                    b.this.f25780f.setVideoReady(true);
                                }
                                b bVar = b.this;
                                bVar.i((CampaignEx) obj, bVar.f25789o);
                                return;
                            }
                            return;
                        }
                        Object obj2 = message.obj;
                        if (obj2 != null && (obj2 instanceof CampaignEx)) {
                            if (b.this.f25780f != null) {
                                b.this.f25780f.setEndCardReady(true);
                            }
                            b bVar2 = b.this;
                            bVar2.i((CampaignEx) obj2, bVar2.f25789o);
                            return;
                        }
                        return;
                    }
                    Object obj3 = message.obj;
                    if (obj3 != null && (obj3 instanceof CampaignEx)) {
                        b bVar3 = b.this;
                        bVar3.i((CampaignEx) obj3, bVar3.f25789o);
                        return;
                    }
                    return;
                }
                Object obj4 = message.obj;
                try {
                    if (obj4 instanceof Bundle) {
                        int i12 = ((Bundle) obj4).getInt("type");
                        if (i12 == 1) {
                            i10 = 880004;
                        } else if (i12 == 2) {
                            i10 = 880007;
                        } else if (i12 == 3) {
                            i10 = 880006;
                        } else {
                            i10 = 880024;
                        }
                        com.mbridge.msdk.foundation.error.b bVar4 = new com.mbridge.msdk.foundation.error.b(i10);
                        String string = ((Bundle) obj4).getString("msg");
                        CampaignEx campaignEx = (CampaignEx) ((Bundle) obj4).getSerializable("campaignex");
                        bVar4.c(string);
                        bVar4.a(campaignEx);
                        b bVar5 = b.this;
                        bVar5.a(bVar4, bVar5.f25788n, b.this.f25789o, campaignEx);
                        return;
                    }
                    return;
                } catch (Exception e10) {
                    com.mbridge.msdk.foundation.error.b bVar6 = new com.mbridge.msdk.foundation.error.b(880000);
                    bVar6.a((Throwable) e10);
                    b bVar7 = b.this;
                    bVar7.a(bVar6, bVar7.f25788n, b.this.f25789o, (CampaignEx) null);
                    return;
                }
            }
            Object obj5 = message.obj;
            int i13 = message.arg1;
            if (obj5 != null && (obj5 instanceof CampaignEx)) {
                CampaignEx campaignEx2 = (CampaignEx) obj5;
                b.this.a(H5DownLoadManager.getInstance().getH5ResAddress(campaignEx2.getAdZip()), campaignEx2, i13);
            }
        }
    }

    /* compiled from: NativeAdvancedLoadManager.java */
    /* loaded from: classes4.dex */
    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880010);
            b bVar2 = b.this;
            bVar2.a(bVar, bVar2.f25788n, b.this.f25789o, (CampaignEx) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NativeAdvancedLoadManager.java */
    /* loaded from: classes4.dex */
    public class g extends com.mbridge.msdk.advanced.request.b {

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ String f25814e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ int f25815f;

        /* compiled from: NativeAdvancedLoadManager.java */
        /* loaded from: classes4.dex */
        class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Exception f25817a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ int f25818b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ CampaignUnit f25819c;

            a(Exception exc, int i10, CampaignUnit campaignUnit) {
                this.f25817a = exc;
                this.f25818b = i10;
                this.f25819c = campaignUnit;
            }

            @Override // java.lang.Runnable
            public void run() {
                CampaignEx campaignEx;
                com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880003);
                bVar.a((Throwable) this.f25817a);
                g gVar = g.this;
                b bVar2 = b.this;
                String str = gVar.f25814e;
                int i10 = this.f25818b;
                CampaignUnit campaignUnit = this.f25819c;
                if (campaignUnit != null && campaignUnit.getAds() != null && this.f25819c.getAds().size() != 0) {
                    campaignEx = this.f25819c.getAds().get(0);
                } else {
                    campaignEx = null;
                }
                bVar2.a(bVar, str, i10, campaignEx);
            }
        }

        /* compiled from: NativeAdvancedLoadManager.java */
        /* renamed from: com.mbridge.msdk.advanced.manager.b$g$b  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        class RunnableC0351b implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ String f25821a;

            RunnableC0351b(String str) {
                this.f25821a = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880002);
                bVar.c(this.f25821a);
                g gVar = g.this;
                b.this.a(bVar, gVar.f25814e, gVar.f25815f, (CampaignEx) null);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g(int i10, String str, int i11) {
            super(i10);
            this.f25814e = str;
            this.f25815f = i11;
        }

        @Override // com.mbridge.msdk.advanced.request.b
        public void a(CampaignUnit campaignUnit, int i10) {
            try {
                b bVar = b.this;
                bVar.a(campaignUnit, i10, bVar.f25775a, this.f25814e);
                b.this.f25797w = campaignUnit.getRequestId();
                b.this.f25782h = campaignUnit.getAds();
            } catch (Exception e10) {
                p0.b(b.f25774z, e10.getMessage());
                p0.c(b.f25774z, "onLoadCompaginSuccess 数据刚请求失败");
                if (b.this.f25798x != null) {
                    b.this.f25798x.post(new a(e10, i10, campaignUnit));
                }
                b.this.f();
            }
        }

        @Override // com.mbridge.msdk.advanced.request.b
        public void b(int i10, String str) {
            p0.b(b.f25774z, str);
            String str2 = b.f25774z;
            p0.c(str2, "onLoadCompaginFailed load failed errorCode:" + i10 + " msg:" + str);
            if (b.this.f25798x != null) {
                b.this.f25798x.post(new RunnableC0351b(str));
            }
            b.this.f();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NativeAdvancedLoadManager.java */
    /* loaded from: classes4.dex */
    public class h extends c.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CampaignEx f25823a;

        h(CampaignEx campaignEx, com.mbridge.msdk.foundation.same.report.metrics.callback.a aVar) {
            this.f25823a = campaignEx;
        }

        @Override // com.mbridge.msdk.foundation.same.c.a
        public void a(String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            com.mbridge.msdk.advanced.report.a.a(str, cVar, this.f25823a, b.this.f25779e, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NativeAdvancedLoadManager.java */
    /* loaded from: classes4.dex */
    public class i implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CampaignEx f25825a;

        i(CampaignEx campaignEx) {
            this.f25825a = campaignEx;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.mbridge.msdk.foundation.db.j.a(com.mbridge.msdk.foundation.db.g.a(b.this.f25779e)).a();
            x.a(b.this.f25779e, this.f25825a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NativeAdvancedLoadManager.java */
    /* loaded from: classes4.dex */
    public class j implements com.mbridge.msdk.foundation.same.image.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CampaignEx f25827a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f25828b;

        /* compiled from: NativeAdvancedLoadManager.java */
        /* loaded from: classes4.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                j jVar = j.this;
                b.this.i(jVar.f25827a, jVar.f25828b);
            }
        }

        /* compiled from: NativeAdvancedLoadManager.java */
        /* renamed from: com.mbridge.msdk.advanced.manager.b$j$b  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        class RunnableC0352b implements Runnable {
            RunnableC0352b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                j jVar = j.this;
                b.this.i(jVar.f25827a, jVar.f25828b);
            }
        }

        j(CampaignEx campaignEx, int i10) {
            this.f25827a = campaignEx;
            this.f25828b = i10;
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onFailedLoad(String str, String str2) {
            String str3 = b.f25774z;
            p0.a(str3, "gifurl 下载失败： " + str2);
            if (b.this.f25798x != null) {
                b.this.f25798x.post(new RunnableC0352b());
            }
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onSuccessLoad(Bitmap bitmap, String str) {
            String str2 = b.f25774z;
            p0.a(str2, "giturl 下载成功： " + str);
            if (b.this.f25798x != null) {
                b.this.f25798x.post(new a());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NativeAdvancedLoadManager.java */
    /* loaded from: classes4.dex */
    public class k implements H5DownLoadManager.ZipDownloadListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CampaignEx f25832a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f25833b;

        k(CampaignEx campaignEx, int i10) {
            this.f25832a = campaignEx;
            this.f25833b = i10;
        }

        @Override // com.mbridge.msdk.foundation.download.download.H5DownLoadManager.H5ResDownloadListerInter
        public void onFailed(String str, String str2) {
            String str3 = b.f25774z;
            p0.a(str3, "endcard 下载失败： " + str2);
            if (b.this.f25780f != null) {
                b.this.f25780f.setEndCardReady(false);
            }
            Message obtain = Message.obtain();
            obtain.what = 2;
            Bundle bundle = new Bundle();
            bundle.putSerializable("campaignex", this.f25832a);
            bundle.putString("msg", str);
            bundle.putInt("type", 2);
            obtain.obj = bundle;
            b.this.f25798x.sendMessage(obtain);
        }

        @Override // com.mbridge.msdk.foundation.download.download.H5DownLoadManager.H5ResDownloadListerInter
        public void onSuccess(String str, String str2, boolean z10) {
            String str3 = b.f25774z;
            p0.a(str3, "endcard 下载成功： " + str);
            if (b.this.f25798x != null) {
                Message obtain = Message.obtain();
                obtain.what = 4;
                obtain.obj = this.f25832a;
                obtain.arg1 = this.f25833b;
                b.this.f25798x.sendMessage(obtain);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NativeAdvancedLoadManager.java */
    /* loaded from: classes4.dex */
    public class l implements com.mbridge.msdk.foundation.same.image.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CampaignEx f25835a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f25836b;

        /* compiled from: NativeAdvancedLoadManager.java */
        /* loaded from: classes4.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                l lVar = l.this;
                b.this.i(lVar.f25835a, lVar.f25836b);
            }
        }

        /* compiled from: NativeAdvancedLoadManager.java */
        /* renamed from: com.mbridge.msdk.advanced.manager.b$l$b  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        class RunnableC0353b implements Runnable {
            RunnableC0353b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                l lVar = l.this;
                b.this.i(lVar.f25835a, lVar.f25836b);
            }
        }

        l(CampaignEx campaignEx, int i10) {
            this.f25835a = campaignEx;
            this.f25836b = i10;
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onFailedLoad(String str, String str2) {
            String str3 = b.f25774z;
            p0.a(str3, "image 下载失败： " + str2);
            if (b.this.f25798x != null) {
                b.this.f25798x.post(new RunnableC0353b());
            }
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onSuccessLoad(Bitmap bitmap, String str) {
            String str2 = b.f25774z;
            p0.a(str2, "image 下载成功： " + str);
            if (b.this.f25798x != null) {
                b.this.f25798x.post(new a());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NativeAdvancedLoadManager.java */
    /* loaded from: classes4.dex */
    public class m implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ File f25840a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ CampaignEx f25841b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f25842c;

        m(File file, CampaignEx campaignEx, int i10) {
            this.f25840a = file;
            this.f25841b = campaignEx;
            this.f25842c = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            b bVar = b.this;
            bVar.a("file:////" + this.f25840a.getAbsolutePath(), this.f25841b, this.f25842c);
        }
    }

    public b(String str, String str2, long j10) {
        this.f25776b = str;
        this.f25775a = str2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i(CampaignEx campaignEx, int i10) {
        if (com.mbridge.msdk.advanced.manager.d.a(this.f25780f, campaignEx, this.f25776b, this.f25775a) && !this.f25791q) {
            b();
            com.mbridge.msdk.advanced.manager.d.a(campaignEx, this.f25775a);
            this.f25791q = true;
            com.mbridge.msdk.advanced.middle.b bVar = this.f25778d;
            if (bVar != null) {
                bVar.a(campaignEx, i10);
            }
        }
    }

    private void j(CampaignEx campaignEx, int i10) {
        this.f25783i = campaignEx;
        if (com.mbridge.msdk.advanced.manager.d.a(this.f25780f, campaignEx, this.f25776b, this.f25775a)) {
            i(campaignEx, i10);
        } else {
            e(campaignEx, i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        this.f25796v = 0;
    }

    private void g() {
        try {
            int i10 = this.f25796v + 1;
            this.f25796v = i10;
            com.mbridge.msdk.setting.l lVar = this.f25781g;
            if (lVar != null) {
                if (i10 > lVar.y()) {
                }
                String str = f25774z;
                p0.c(str, "onload 算出 下次的offset是:" + this.f25796v);
            }
            p0.c(f25774z, "onload 重置offset为0");
            this.f25796v = 0;
            String str2 = f25774z;
            p0.c(str2, "onload 算出 下次的offset是:" + this.f25796v);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h(CampaignEx campaignEx, int i10) {
        if (this.f25780f.isH5Ready()) {
            i(campaignEx, i10);
            com.mbridge.msdk.advanced.report.a.a(1, "", this.f25775a, campaignEx);
        }
    }

    public String c() {
        return com.mbridge.msdk.foundation.same.c.b(this.f25782h);
    }

    public String d() {
        return this.f25797w;
    }

    public void e() {
        if (this.f25778d != null) {
            this.f25778d = null;
        }
        if (this.f25792r != null) {
            this.f25792r = null;
        }
        if (this.f25793s != null) {
            this.f25793s = null;
        }
    }

    private void c(CampaignEx campaignEx, int i10) {
        com.mbridge.msdk.foundation.same.image.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).a(campaignEx.getImageUrl(), new l(campaignEx, i10));
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x00d6 A[Catch: all -> 0x00b8, Exception -> 0x0131, TRY_ENTER, TryCatch #6 {Exception -> 0x0131, blocks: (B:42:0x00d6, B:44:0x00da, B:46:0x00e0, B:48:0x00e6, B:50:0x00ec, B:52:0x00fe, B:53:0x0107, B:32:0x00b4), top: B:84:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00e0 A[Catch: all -> 0x00b8, Exception -> 0x0131, TryCatch #6 {Exception -> 0x0131, blocks: (B:42:0x00d6, B:44:0x00da, B:46:0x00e0, B:48:0x00e6, B:50:0x00ec, B:52:0x00fe, B:53:0x0107, B:32:0x00b4), top: B:84:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x011f A[Catch: IOException -> 0x0123, TRY_ENTER, TRY_LEAVE, TryCatch #10 {IOException -> 0x0123, blocks: (B:68:0x013d, B:55:0x011f), top: B:79:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x014d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:97:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void d(com.mbridge.msdk.foundation.entity.CampaignEx r11, int r12) {
        /*
            Method dump skipped, instructions count: 348
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.advanced.manager.b.d(com.mbridge.msdk.foundation.entity.CampaignEx, int):void");
    }

    private void f(CampaignEx campaignEx, int i10) {
        this.f25792r = new d(campaignEx);
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList = new CopyOnWriteArrayList<>();
        copyOnWriteArrayList.add(campaignEx);
        com.mbridge.msdk.videocommon.download.b.getInstance().createUnitCache(this.f25779e, this.f25775a, copyOnWriteArrayList, MediaPlayer.MEDIA_PLAYER_OPTION_LIVE_START_INDEX, this.f25792r);
        if (!com.mbridge.msdk.videocommon.download.b.getInstance().b(MediaPlayer.MEDIA_PLAYER_OPTION_LIVE_START_INDEX, this.f25775a, campaignEx.isBidCampaign())) {
            p0.a(f25774z, " load Video");
            com.mbridge.msdk.videocommon.download.b.getInstance().load(this.f25775a);
            return;
        }
        p0.a(f25774z, " load Video isReady true");
        this.f25780f.setVideoReady(true);
        i(campaignEx, i10);
    }

    public void b(String str, int i10) {
        CampaignEx a10;
        this.f25791q = false;
        this.f25788n = str;
        this.f25789o = i10;
        this.f25783i = null;
        if (this.f25780f == null) {
            a(new com.mbridge.msdk.foundation.error.b(880030), str, i10, (CampaignEx) null);
            return;
        }
        if (TextUtils.isEmpty(str)) {
            a10 = com.mbridge.msdk.advanced.manager.d.a(this.f25780f, this.f25776b, this.f25775a, str, this.f25784j, false, false);
        } else {
            a10 = com.mbridge.msdk.advanced.manager.d.a(this.f25780f, this.f25776b, this.f25775a, str, this.f25784j, false, true);
        }
        long timestamp = a10 != null ? a10.getTimestamp() : 0L;
        com.mbridge.msdk.setting.l lVar = this.f25781g;
        if (lVar != null && lVar.t() == 1 && this.f25780f != null && a10 != null) {
            j(a10, i10);
            return;
        }
        this.f25790p = false;
        com.mbridge.msdk.setting.l lVar2 = this.f25781g;
        if (lVar2 != null) {
            List<Integer> c10 = lVar2.c();
            if (c10 != null && c10.size() > 0) {
                this.f25777c = c10.get(0).intValue() * 1000;
            } else {
                this.f25777c = 30000L;
            }
        } else {
            this.f25777c = 30000L;
        }
        String str2 = f25774z;
        p0.a(str2, "开始从V3请求新的 offer，超时 ：" + this.f25777c);
        if (this.f25781g != null && timestamp > 0 && TextUtils.isEmpty(str)) {
            if (System.currentTimeMillis() - timestamp > this.f25781g.v() * 1000) {
                a(this.f25777c);
                a(this.f25779e, str, i10);
                return;
            }
            j(a10, i10);
            return;
        }
        a(this.f25777c);
        a(this.f25779e, str, i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NativeAdvancedLoadManager.java */
    /* loaded from: classes4.dex */
    public class d implements com.mbridge.msdk.videocommon.listener.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CampaignEx f25810a;

        d(CampaignEx campaignEx) {
            this.f25810a = campaignEx;
        }

        @Override // com.mbridge.msdk.videocommon.listener.a
        public void a(String str) {
            String str2 = b.f25774z;
            p0.a(str2, "Video 下载成功： " + str);
            Message obtain = Message.obtain();
            obtain.obj = this.f25810a;
            obtain.what = 5;
            b.this.f25798x.sendMessage(obtain);
        }

        @Override // com.mbridge.msdk.videocommon.listener.a
        public void a(String str, String str2) {
            String str3 = b.f25774z;
            p0.a(str3, "Video 下载失败： " + str);
            Message obtain = Message.obtain();
            Bundle bundle = new Bundle();
            bundle.putSerializable("campaignex", this.f25810a);
            bundle.putString("msg", str);
            bundle.putInt("type", 1);
            obtain.obj = bundle;
            obtain.what = 2;
            b.this.f25798x.sendMessage(obtain);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NativeAdvancedLoadManager.java */
    /* renamed from: com.mbridge.msdk.advanced.manager.b$b  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    public class C0350b extends com.mbridge.msdk.mbsignalcommon.listener.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CampaignEx f25803a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f25804b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ long f25805c;

        C0350b(CampaignEx campaignEx, int i10, long j10) {
            this.f25803a = campaignEx;
            this.f25804b = i10;
            this.f25805c = j10;
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, int i10) {
            super.a(webView, i10);
            p0.b("NativeAdvancedLoadManager", "=========readyState: " + i10);
            if (i10 == 1) {
                b.this.f25780f.setH5Ready(true);
                com.mbridge.msdk.advanced.common.c.a(b.this.f25776b + b.this.f25775a + this.f25803a.getRequestId(), true);
                b.this.h(this.f25803a, this.f25804b);
                com.mbridge.msdk.advanced.report.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f25803a, b.this.f25775a, "", this.f25805c, 1);
                return;
            }
            b.this.a(this.f25803a, "readyState 2", this.f25804b);
            com.mbridge.msdk.advanced.report.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f25803a, b.this.f25775a, "readyState 2", this.f25805c, 3);
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, int i10, String str, String str2) {
            super.a(webView, i10, str, str2);
            p0.b("NativeAdvancedLoadManager", "onReceivedError： " + i10 + "  " + str + "  " + str2);
            b.this.a(this.f25803a, str, this.f25804b);
            Context d10 = com.mbridge.msdk.foundation.controller.c.m().d();
            CampaignEx campaignEx = this.f25803a;
            String str3 = b.this.f25775a;
            com.mbridge.msdk.advanced.report.a.a(d10, campaignEx, str3, "error code:" + i10 + str, this.f25805c, 3);
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            super.a(webView, sslErrorHandler, sslError);
            p0.b("NativeAdvancedLoadManager", "onReceivedSslError: " + sslError.getPrimaryError());
            b bVar = b.this;
            CampaignEx campaignEx = this.f25803a;
            bVar.a(campaignEx, "onReceivedSslError:" + sslError.getUrl(), this.f25804b);
            Context d10 = com.mbridge.msdk.foundation.controller.c.m().d();
            CampaignEx campaignEx2 = this.f25803a;
            String str = b.this.f25775a;
            com.mbridge.msdk.advanced.report.a.a(d10, campaignEx2, str, "error url:" + sslError.getUrl(), this.f25805c, 3);
        }

        @Override // com.mbridge.msdk.mbsignalcommon.listener.b, com.mbridge.msdk.mbsignalcommon.windvane.c
        public void a(WebView webView, String str) {
            super.a(webView, str);
            p0.b("NativeAdvancedLoadManager", "onPageFinished");
            if (!this.f25803a.isHasMBTplMark()) {
                b.this.f25780f.setH5Ready(true);
                p0.b("NativeAdvancedLoadManager", "=======onPageFinished OK");
                com.mbridge.msdk.advanced.common.c.a(b.this.f25776b + b.this.f25775a + this.f25803a.getRequestId(), true);
                b.this.h(this.f25803a, this.f25804b);
                com.mbridge.msdk.advanced.report.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), this.f25803a, b.this.f25775a, "", this.f25805c, 1);
            }
            com.mbridge.msdk.advanced.signal.a.a(webView);
        }
    }

    private void e(CampaignEx campaignEx, int i10) {
        MBNativeAdvancedView mBNativeAdvancedView = this.f25780f;
        if (mBNativeAdvancedView != null) {
            mBNativeAdvancedView.clearResState();
        }
        if (!TextUtils.isEmpty(campaignEx.getAdZip())) {
            String str = f25774z;
            p0.a(str, "开始下载zip： " + campaignEx.getAdZip());
            g(campaignEx, i10);
        }
        if (!TextUtils.isEmpty(campaignEx.getAdHtml())) {
            String str2 = f25774z;
            p0.a(str2, "开始下载HTML： " + campaignEx.getAdHtml());
            d(campaignEx, i10);
        }
        if (!TextUtils.isEmpty(campaignEx.getVideoUrlEncode())) {
            String str3 = f25774z;
            p0.a(str3, "开始下载Video： " + campaignEx.getVideoUrlEncode());
            f(campaignEx, i10);
        }
        if (!TextUtils.isEmpty(campaignEx.getImageUrl())) {
            String str4 = f25774z;
            p0.a(str4, "开始下载image： " + campaignEx.getImageUrl());
            c(campaignEx, i10);
        }
        if (!TextUtils.isEmpty(campaignEx.getendcard_url())) {
            String str5 = f25774z;
            p0.a(str5, "开始下载EndCard： " + campaignEx.getendcard_url());
            a(campaignEx, i10);
        }
        if (TextUtils.isEmpty(campaignEx.getGifUrl())) {
            return;
        }
        String str6 = f25774z;
        p0.a(str6, "开始下载gitUrl： " + campaignEx.getGifUrl());
        b(campaignEx, i10);
    }

    private void g(CampaignEx campaignEx, int i10) {
        String str;
        this.f25793s = new a(campaignEx, i10);
        com.mbridge.msdk.foundation.same.report.metrics.c cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
        cVar.a(campaignEx);
        if (campaignEx != null) {
            r0 = campaignEx.getAabEntity() != null ? campaignEx.getAabEntity().h3c : 0;
            str = campaignEx.getAdZip();
        } else {
            str = "";
        }
        cVar.f(r0);
        cVar.e(2);
        H5DownLoadManager.getInstance().downloadH5Res(cVar, str, this.f25793s);
    }

    public void a(com.mbridge.msdk.setting.l lVar) {
        this.f25781g = lVar;
    }

    public void a(MBNativeAdvancedView mBNativeAdvancedView) {
        this.f25780f = mBNativeAdvancedView;
    }

    public void a(int i10) {
        this.f25784j = i10;
    }

    public void a(int i10, int i11) {
        this.f25787m = i10;
        this.f25786l = i11;
    }

    private void a(long j10) {
        this.f25798x.postDelayed(this.f25799y, j10);
    }

    private void a(Context context, String str, int i10) {
        try {
            if (context == null) {
                a(new com.mbridge.msdk.foundation.error.b(880025), str, i10, (CampaignEx) null);
            } else if (z0.a(this.f25775a)) {
                a(new com.mbridge.msdk.foundation.error.b(880032), str, i10, (CampaignEx) null);
            } else {
                com.mbridge.msdk.advanced.manager.d.b(this.f25775a);
                p0.c(f25774z, "load 开始准备请求参数");
                MBridgeIds mBridgeIds = new MBridgeIds(this.f25776b, this.f25775a);
                com.mbridge.msdk.advanced.request.f fVar = new com.mbridge.msdk.advanced.request.f();
                fVar.d(i10);
                fVar.c(this.f25796v);
                fVar.a(this.f25795u);
                fVar.b(this.f25787m);
                fVar.a(this.f25786l);
                com.mbridge.msdk.foundation.same.net.wrapper.e b10 = com.mbridge.msdk.advanced.request.e.b(context, mBridgeIds, fVar);
                if (b10 == null) {
                    p0.c(f25774z, "load 请求参数为空 load失败");
                    a(new com.mbridge.msdk.foundation.error.b(880001), str, i10, (CampaignEx) null);
                    return;
                }
                if (!TextUtils.isEmpty(str)) {
                    b10.a(BidResponsed.KEY_TOKEN, str);
                }
                String d10 = u0.d(this.f25775a);
                if (!TextUtils.isEmpty(d10)) {
                    b10.a(com.mbridge.msdk.foundation.same.report.j.f27256b, d10);
                }
                new com.mbridge.msdk.advanced.request.c(context).choiceV3OrV5BySetting(1, b10, a(str, i10), str, com.mbridge.msdk.foundation.same.c.a(this.f25777c, 30000L));
            }
        } catch (Exception e10) {
            p0.b(f25774z, e10.getMessage());
            com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880020);
            bVar.a((Throwable) e10);
            a(bVar, str, i10, (CampaignEx) null);
            f();
        }
    }

    private void b() {
        this.f25798x.removeCallbacks(this.f25799y);
    }

    private void b(CampaignEx campaignEx, int i10) {
        com.mbridge.msdk.foundation.same.image.b.a(com.mbridge.msdk.foundation.controller.c.m().d()).a(campaignEx.getGifUrl(), new j(campaignEx, i10));
    }

    @NonNull
    private com.mbridge.msdk.advanced.request.b a(String str, int i10) {
        g gVar = new g(i10, str, i10);
        gVar.a(str);
        gVar.setUnitId(this.f25775a);
        gVar.setPlacementId(this.f25776b);
        gVar.setAdType(MediaPlayer.MEDIA_PLAYER_OPTION_LIVE_START_INDEX);
        return gVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(CampaignUnit campaignUnit, int i10, String str, String str2) {
        com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
        eVar.a("adtp", Integer.valueOf((int) MediaPlayer.MEDIA_PLAYER_OPTION_LIVE_START_INDEX));
        if (!TextUtils.isEmpty(str2)) {
            eVar.a(CampaignEx.JSON_KEY_HB, 1);
        } else {
            eVar.a(CampaignEx.JSON_KEY_HB, 0);
        }
        if (campaignUnit != null && campaignUnit.getAds() != null) {
            campaignUnit.setLocalRequestId(com.mbridge.msdk.foundation.same.report.metrics.d.b().a(i10 == 1, str2, eVar, campaignUnit.getAds().get(0), str).o());
        }
        List<CampaignEx> a10 = a(campaignUnit);
        if (a10 != null && a10.size() > 0) {
            g();
            String str3 = f25774z;
            p0.c(str3, "onload load成功 size:" + a10.size());
            CampaignEx campaignEx = a10.get(0);
            if (TextUtils.isEmpty(campaignEx.getAdZip()) && (TextUtils.isEmpty(campaignEx.getAdHtml()) || !campaignEx.getAdHtml().contains("<MBTPLMARK>"))) {
                campaignEx.setHasMBTplMark(false);
                campaignEx.setIsMraid(true);
            } else {
                campaignEx.setHasMBTplMark(true);
                campaignEx.setIsMraid(false);
            }
            j(campaignEx, i10);
            return;
        }
        p0.c(f25774z, "onload load失败 返回的compaign没有可以用的");
        a(new com.mbridge.msdk.foundation.error.b(880033), str2, i10, (campaignUnit == null || campaignUnit.getAds() == null || campaignUnit.getAds().size() == 0) ? null : campaignUnit.getAds().get(0));
    }

    private List<CampaignEx> a(CampaignUnit campaignUnit) {
        if (campaignUnit == null || campaignUnit.getAds() == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        CampaignEx campaignEx = campaignUnit.getAds().get(0);
        campaignEx.setLocalRequestId(campaignUnit.getLocalRequestId());
        campaignEx.setCampaignUnitId(this.f25775a);
        a(campaignEx);
        this.f25795u = campaignUnit.getSessionId();
        if (campaignEx.getOfferType() != 99 && (!TextUtils.isEmpty(campaignEx.getAdZip()) || !TextUtils.isEmpty(campaignEx.getAdHtml()))) {
            if (u0.c(campaignEx)) {
                campaignEx.setRtinsType(u0.c(this.f25779e, campaignEx.getPackageName()) ? 1 : 2);
            }
            if (com.mbridge.msdk.foundation.same.c.b(this.f25779e, campaignEx)) {
                arrayList.add(campaignEx);
            } else {
                u0.a(this.f25775a, campaignEx, com.mbridge.msdk.foundation.same.a.f27042x);
            }
            a(campaignEx, (com.mbridge.msdk.foundation.same.report.metrics.c) null, (com.mbridge.msdk.foundation.same.report.metrics.callback.a) null);
        }
        return arrayList;
    }

    private void a(CampaignEx campaignEx, com.mbridge.msdk.foundation.same.report.metrics.c cVar, com.mbridge.msdk.foundation.same.report.metrics.callback.a aVar) {
        try {
            com.mbridge.msdk.foundation.same.c.a(campaignEx, this.f25779e, cVar, new h(campaignEx, aVar));
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
            }
        }
    }

    private void a(CampaignEx campaignEx) {
        new Thread(new i(campaignEx)).start();
    }

    public void a(com.mbridge.msdk.advanced.middle.b bVar) {
        this.f25778d = bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.mbridge.msdk.foundation.error.b bVar, String str, int i10, CampaignEx campaignEx) {
        if (this.f25790p) {
            this.f25790p = false;
            a(bVar, i10, str);
            return;
        }
        if (bVar != null) {
            bVar.a(campaignEx);
        }
        a(bVar, i10, campaignEx);
    }

    private void a(com.mbridge.msdk.foundation.error.b bVar, int i10, String str) {
        CampaignEx a10 = com.mbridge.msdk.advanced.manager.d.a(this.f25780f, this.f25776b, this.f25775a, str, this.f25784j, true, true);
        if (a10 != null) {
            p0.b(f25774z, "load failed cache ");
            j(a10, i10);
            return;
        }
        a(bVar, i10, a10);
    }

    private void a(com.mbridge.msdk.foundation.error.b bVar, int i10, CampaignEx campaignEx) {
        if (this.f25791q) {
            return;
        }
        b();
        if (bVar != null) {
            String str = f25774z;
            p0.b(str, "real failed: " + bVar.g());
        }
        this.f25791q = true;
        com.mbridge.msdk.advanced.middle.b bVar2 = this.f25778d;
        if (bVar2 != null) {
            bVar2.a(bVar, i10);
        }
    }

    private void a(CampaignEx campaignEx, int i10) {
        String str;
        this.f25794t = new k(campaignEx, i10);
        if (campaignEx != null) {
            r4 = campaignEx.getAabEntity() != null ? campaignEx.getAabEntity().h3c : 0;
            str = campaignEx.getendcard_url();
        } else {
            str = "";
        }
        com.mbridge.msdk.foundation.same.report.metrics.c cVar = new com.mbridge.msdk.foundation.same.report.metrics.c();
        cVar.a(campaignEx);
        cVar.f(r4);
        H5DownLoadManager.getInstance().downloadH5Res(cVar, str, this.f25794t);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, CampaignEx campaignEx, int i10) {
        MBNativeAdvancedView mBNativeAdvancedView = this.f25780f;
        if (mBNativeAdvancedView == null || mBNativeAdvancedView.getAdvancedNativeWebview() == null) {
            return;
        }
        com.mbridge.msdk.advanced.report.a.b(this.f25775a, campaignEx);
        com.mbridge.msdk.advanced.signal.b bVar = new com.mbridge.msdk.advanced.signal.b(this.f25780f.getContext(), this.f25776b, this.f25775a);
        ArrayList arrayList = new ArrayList();
        arrayList.add(campaignEx);
        bVar.a(arrayList);
        bVar.a(this.f25784j);
        bVar.b(this.f25785k);
        this.f25780f.setAdvancedNativeSignalCommunicationImpl(bVar);
        long currentTimeMillis = System.currentTimeMillis();
        MBNativeAdvancedWebview advancedNativeWebview = this.f25780f.getAdvancedNativeWebview();
        if (advancedNativeWebview == null) {
            a(campaignEx, "webview is null", i10);
        } else if (advancedNativeWebview.isDestoryed()) {
            a(campaignEx, "webview is destroyed", i10);
        } else {
            advancedNativeWebview.setWebViewListener(new C0350b(campaignEx, i10, currentTimeMillis));
            if (!advancedNativeWebview.isDestoryed()) {
                String str2 = f25774z;
                p0.b(str2, "=======开始渲染: " + str);
                Handler handler = this.f25798x;
                if (handler != null) {
                    handler.post(new c(advancedNativeWebview, str));
                    return;
                }
                return;
            }
            a(new com.mbridge.msdk.foundation.error.b(880031), this.f25788n, i10, campaignEx);
            com.mbridge.msdk.advanced.report.a.a(com.mbridge.msdk.foundation.controller.c.m().d(), campaignEx, this.f25775a, "webview had destory", currentTimeMillis, 3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(CampaignEx campaignEx, String str, int i10) {
        com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880009);
        bVar.c(str);
        a(bVar, this.f25788n, i10, campaignEx);
        com.mbridge.msdk.advanced.report.a.a(2, str, this.f25775a, campaignEx);
    }

    public String a(String str) {
        int j10;
        if (this.f25783i != null) {
            try {
                com.mbridge.msdk.videocommon.download.a a10 = com.mbridge.msdk.videocommon.download.b.getInstance().a(this.f25775a, this.f25783i.getId() + this.f25783i.getVideoUrlEncode() + this.f25783i.getBidToken());
                if (a10 == null || (j10 = a10.j()) != 5) {
                    return str;
                }
                String k10 = a10.k();
                if (new File(k10).exists()) {
                    String str2 = f25774z;
                    p0.b(str2, "本地已下载完 拿本地播放地址：" + k10 + " state：" + j10);
                    return k10;
                }
                return str;
            } catch (Exception e10) {
                p0.b(f25774z, e10.getMessage());
                return str;
            }
        }
        return "";
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
                p0.b(f25774z, e10.getMessage());
            }
        }
    }
}
