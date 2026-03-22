package com.mbridge.msdk.videocommon.download;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.db.m;
import com.mbridge.msdk.foundation.download.DownloadError;
import com.mbridge.msdk.foundation.download.DownloadMessage;
import com.mbridge.msdk.foundation.download.DownloadPriority;
import com.mbridge.msdk.foundation.download.DownloadProgress;
import com.mbridge.msdk.foundation.download.DownloadResourceType;
import com.mbridge.msdk.foundation.download.DownloadStatus;
import com.mbridge.msdk.foundation.download.MBDownloadManager;
import com.mbridge.msdk.foundation.download.OnDownloadStateListener;
import com.mbridge.msdk.foundation.download.OnProgressStateListener;
import com.mbridge.msdk.foundation.download.core.DownloadRequest;
import com.mbridge.msdk.foundation.download.utils.Objects;
import com.mbridge.msdk.foundation.download.utils.Utils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.n;
import com.mbridge.msdk.foundation.tools.n0;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.r0;
import com.mbridge.msdk.foundation.tools.u0;
import com.mbridge.msdk.playercommon.exoplayer2.source.chunk.ChunkedTrackBlacklistUtil;
import com.ss.ttvideoengine.model.BarrageMaskInfo;
import java.io.File;
import java.io.Serializable;
import java.net.URL;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* compiled from: CampaignDownLoadTask.java */
/* loaded from: classes6.dex */
public class a implements Serializable {
    private int A;
    private File B;
    private int D;
    private int E;
    private int F;
    private boolean G;
    private com.mbridge.msdk.setting.l H;
    private com.mbridge.msdk.videocommon.setting.c I;
    private com.mbridge.msdk.setting.l J;

    /* renamed from: b  reason: collision with root package name */
    private int f31576b;

    /* renamed from: c  reason: collision with root package name */
    private int f31577c;

    /* renamed from: g  reason: collision with root package name */
    private com.mbridge.msdk.videocommon.listener.a f31581g;

    /* renamed from: h  reason: collision with root package name */
    private com.mbridge.msdk.videocommon.listener.a f31582h;

    /* renamed from: i  reason: collision with root package name */
    private CampaignEx f31583i;

    /* renamed from: j  reason: collision with root package name */
    private String f31584j;

    /* renamed from: k  reason: collision with root package name */
    private Context f31585k;

    /* renamed from: l  reason: collision with root package name */
    private long f31586l;

    /* renamed from: m  reason: collision with root package name */
    private String f31587m;

    /* renamed from: n  reason: collision with root package name */
    private String f31588n;

    /* renamed from: p  reason: collision with root package name */
    private String f31590p;

    /* renamed from: r  reason: collision with root package name */
    private long f31592r;

    /* renamed from: u  reason: collision with root package name */
    private m f31595u;

    /* renamed from: w  reason: collision with root package name */
    private String f31597w;

    /* renamed from: x  reason: collision with root package name */
    private DownloadRequest f31598x;

    /* renamed from: y  reason: collision with root package name */
    private int f31599y;

    /* renamed from: z  reason: collision with root package name */
    private boolean f31600z;

    /* renamed from: a  reason: collision with root package name */
    private boolean f31575a = false;

    /* renamed from: d  reason: collision with root package name */
    private boolean f31578d = false;

    /* renamed from: e  reason: collision with root package name */
    private volatile int f31579e = 0;

    /* renamed from: f  reason: collision with root package name */
    private CopyOnWriteArrayList<c> f31580f = new CopyOnWriteArrayList<>();

    /* renamed from: o  reason: collision with root package name */
    private long f31589o = 0;

    /* renamed from: q  reason: collision with root package name */
    private boolean f31591q = false;

    /* renamed from: s  reason: collision with root package name */
    private int f31593s = 100;

    /* renamed from: t  reason: collision with root package name */
    private boolean f31594t = false;

    /* renamed from: v  reason: collision with root package name */
    private boolean f31596v = false;
    private int C = 1;
    private boolean K = false;
    private boolean L = false;
    private boolean M = false;
    private boolean N = false;
    private boolean O = false;
    private boolean P = false;
    private boolean Q = false;
    private OnDownloadStateListener R = new C0457a();
    private OnProgressStateListener S = new b();

    /* compiled from: CampaignDownLoadTask.java */
    /* loaded from: classes6.dex */
    class b implements OnProgressStateListener {
        b() {
        }

        @Override // com.mbridge.msdk.foundation.download.OnProgressStateListener
        public void onProgress(DownloadMessage downloadMessage, DownloadProgress downloadProgress) {
            try {
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a("cache", a.this.f31598x.get("cache", "2"));
                a aVar = a.this;
                aVar.a(aVar.f31583i, eVar);
                a.this.f31589o = downloadProgress.getCurrent();
                a.this.f31586l = downloadProgress.getTotal();
                a.this.f31599y = downloadProgress.getCurrentDownloadRate();
                if (a.this.f31593s != 100 && downloadProgress.getCurrentDownloadRate() >= a.this.f31593s) {
                    p0.b("CampaignDownLoadTask", "Rate : " + downloadProgress.getCurrentDownloadRate() + " ReadyRate & cdRate = " + a.this.f31593s + " " + a.this.f31577c);
                    if (!a.this.f31578d) {
                        a.this.f31578d = true;
                        if (!a.this.f31600z) {
                            a.this.a(1, true, "");
                            a.this.a(downloadProgress.getCurrent(), false, "");
                        }
                        if (a.this.f31598x != null && a.this.C == 2 && !a.this.f31600z) {
                            a.this.f31598x.cancel(downloadMessage);
                        }
                    }
                }
            } catch (Exception e10) {
                p0.b("CampaignDownLoadTask", e10.getMessage());
            }
        }
    }

    public a(Context context, CampaignEx campaignEx, String str, int i10) {
        this.f31576b = 1;
        this.G = false;
        if (context == null && campaignEx == null) {
            return;
        }
        com.mbridge.msdk.setting.g b10 = com.mbridge.msdk.setting.h.b().b(com.mbridge.msdk.foundation.controller.c.m().b());
        if (b10 != null) {
            this.G = b10.D0();
        }
        this.D = com.mbridge.msdk.foundation.same.a.f27039u;
        this.E = com.mbridge.msdk.foundation.same.a.f27040v;
        this.F = com.mbridge.msdk.foundation.same.a.f27038t;
        this.f31592r = System.currentTimeMillis();
        this.f31585k = com.mbridge.msdk.foundation.controller.c.m().d();
        this.f31583i = campaignEx;
        this.f31584j = str;
        this.f31576b = i10;
        if (campaignEx != null) {
            this.f31587m = campaignEx.getVideoUrlEncode();
        }
        this.f31597w = n0.d(this.f31587m);
        this.f31588n = com.mbridge.msdk.foundation.same.directory.e.b(com.mbridge.msdk.foundation.same.directory.c.MBRIDGE_VC) + File.separator;
        this.f31590p = this.f31588n + this.f31597w;
        p0.c("CampaignDownLoadTask", this.f31583i.getAppName() + " videoLocalPath:" + this.f31590p + " videoUrl: " + this.f31583i.getVideoUrlEncode() + " " + this.f31593s);
        l();
    }

    private void u() {
        m a10 = m.a(com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d()));
        com.mbridge.msdk.foundation.entity.m b10 = a10.b(this.f31587m, "");
        if (b10 != null) {
            this.f31589o = b10.c();
            if (this.f31579e != 2) {
                this.f31579e = b10.b();
            }
            if (this.f31579e == 1) {
                this.f31579e = 2;
            }
            this.f31586l = b10.d();
            if (b10.a() > 0) {
                this.f31592r = b10.a();
            }
            if (this.f31579e == 5) {
                if (Objects.exists(new File(this.f31588n + this.f31597w), this.f31588n, this.f31597w)) {
                    this.f31590p = this.f31588n + this.f31597w;
                } else {
                    a();
                }
            } else if (this.f31579e != 0) {
                this.f31590p = this.f31588n + this.f31597w;
            }
        } else {
            a10.a(this.f31587m, this.f31592r);
        }
        try {
            long j10 = this.f31586l;
            if (j10 > 0 && this.f31589o * 100 >= j10 * c(this.f31583i)) {
                if (c(this.f31583i) != 100 && this.f31579e != 5) {
                    return;
                }
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a("cache", 1);
                a(this.f31583i, eVar);
            }
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
            }
        }
    }

    public boolean o() {
        return this.f31596v;
    }

    public boolean p() {
        return this.L;
    }

    public boolean q() {
        return this.Q;
    }

    public boolean r() {
        return this.N;
    }

    public boolean s() {
        return this.M;
    }

    public void t() {
        if (this.f31580f != null) {
            this.f31580f = null;
        }
    }

    public void v() {
        if (this.Q) {
            return;
        }
        try {
            this.f31600z = true;
            if (this.C == 1) {
                p0.b("CampaignDownLoadTask", "Can not call resume(), because videoCtnType = " + this.C);
            } else if (this.f31576b == 3) {
                p0.b("CampaignDownLoadTask", "Can not call resume(), because dlnet = " + this.f31576b);
            } else {
                p0.b("CampaignDownLoadTask", "resume()");
                this.O = false;
                this.P = false;
                DownloadMessage downloadMessage = new DownloadMessage(new Object(), this.f31587m, this.f31597w, 100, DownloadResourceType.DOWNLOAD_RESOURCE_TYPE_VIDEO);
                downloadMessage.setUseCronetDownload(a(this.f31583i));
                DownloadRequest<?> a10 = a(downloadMessage, this.R, this.S, "2");
                this.f31598x = a10;
                a10.start();
            }
        } catch (Exception e10) {
            p0.b("CampaignDownLoadTask", e10.getMessage());
        }
    }

    public void w() {
        p0.b("CampaignDownLoadTask", "start()");
        try {
            if (TextUtils.isEmpty(this.f31587m)) {
                return;
            }
            if (d() != null) {
                p0.b("CampaignDownLoadTask", new URL(d()).getPath());
            }
            if (this.f31593s == 0 && this.C == 2) {
                p0.b("CampaignDownLoadTask", "Can not start download because readyRate is 0 and videoCtnType is 2");
                return;
            }
            DownloadRequest downloadRequest = this.f31598x;
            if (downloadRequest != null) {
                downloadRequest.start();
            }
        } catch (Throwable unused) {
            com.mbridge.msdk.videocommon.listener.a aVar = this.f31581g;
            if (aVar != null) {
                aVar.a("VideoUrl is not illegal, Please check it.", "");
            }
            com.mbridge.msdk.videocommon.listener.a aVar2 = this.f31582h;
            if (aVar2 != null) {
                aVar2.a("VideoUrl is not illegal, Please check it.", "");
            }
        }
    }

    public void x() {
        p0.b("CampaignDownLoadTask", "startForLoadRefactor()");
        try {
            if (TextUtils.isEmpty(this.f31587m)) {
                com.mbridge.msdk.videocommon.listener.a aVar = this.f31581g;
                if (aVar != null) {
                    aVar.a(this.f31587m);
                    return;
                }
                return;
            }
            if (d() != null) {
                p0.b("CampaignDownLoadTask", new URL(d()).getPath());
            }
            if (this.f31576b == 3) {
                p0.b("CampaignDownLoadTask", "startForLoadRefactor: Dlnet is 3, Will callback.");
                com.mbridge.msdk.videocommon.listener.a aVar2 = this.f31581g;
                if (aVar2 != null) {
                    aVar2.a(this.f31587m);
                }
            } else if (this.f31593s == 0 && this.C == 2) {
                p0.b("CampaignDownLoadTask", "Can not start download because readyRate is 0 and videoCtnType is 2");
                com.mbridge.msdk.videocommon.listener.a aVar3 = this.f31581g;
                if (aVar3 != null) {
                    aVar3.a(this.f31587m);
                }
            } else {
                try {
                    if (this.f31579e == 5 && Utils.getDownloadRate(this.f31586l, this.f31589o) >= this.f31593s) {
                        if (Objects.exists(new File(this.f31588n + this.f31597w), this.f31588n, this.f31597w)) {
                            this.f31590p = this.f31588n + this.f31597w;
                            com.mbridge.msdk.videocommon.listener.a aVar4 = this.f31581g;
                            if (aVar4 != null) {
                                aVar4.a(this.f31587m);
                                return;
                            }
                            return;
                        }
                    }
                } catch (Exception e10) {
                    p0.b("CampaignDownLoadTask", "startForLoadRefactor: " + e10.getMessage());
                }
                DownloadRequest downloadRequest = this.f31598x;
                if (downloadRequest != null) {
                    downloadRequest.start();
                }
            }
        } catch (Throwable unused) {
            com.mbridge.msdk.videocommon.listener.a aVar5 = this.f31581g;
            if (aVar5 != null) {
                aVar5.a("VideoUrl is not illegal, Please check it.", "");
            }
        }
    }

    private void l() {
        File file;
        File file2;
        try {
            if (TextUtils.isEmpty(this.f31587m)) {
                return;
            }
            if (TextUtils.isEmpty(this.f31588n)) {
                file = null;
            } else {
                file = new File(this.f31588n);
                if (!file.exists()) {
                    file.mkdirs();
                }
            }
            if (file != null && file.exists() && ((file2 = this.B) == null || !file2.exists())) {
                File file3 = new File(file + "/.nomedia");
                this.B = file3;
                if (!file3.exists()) {
                    this.B.createNewFile();
                }
            }
            u();
            a(this.f31587m);
        } catch (Exception e10) {
            p0.c("CampaignDownLoadTask", e10.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m() {
        try {
            u0.a(this.f31584j, this.f31583i, com.mbridge.msdk.foundation.same.a.f27042x);
        } catch (Exception e10) {
            p0.b("CampaignDownLoadTask", e10.getMessage());
        }
    }

    public void c(boolean z10) {
        this.L = z10;
    }

    public String d() {
        return this.f31587m;
    }

    public void e(boolean z10) {
        this.N = z10;
    }

    public void f(boolean z10) {
        this.M = z10;
    }

    public String g() {
        if (this.Q) {
            try {
                File file = new File(this.f31590p);
                if (file.exists() && file.isFile()) {
                    return this.f31590p;
                }
                return this.f31587m;
            } catch (Exception e10) {
                p0.b("CampaignDownLoadTask", e10.getMessage());
                return this.f31587m;
            }
        }
        try {
            File file2 = new File(this.f31590p);
            if (Objects.exists(file2, this.f31588n, this.f31597w) && file2.isFile()) {
                return this.f31590p;
            }
        } catch (Exception e11) {
            p0.b("CampaignDownLoadTask", e11.getMessage());
        }
        return this.f31587m;
    }

    public long h() {
        return this.f31589o;
    }

    public long i() {
        return this.f31592r;
    }

    public int j() {
        return this.f31579e;
    }

    public String k() {
        return this.f31590p;
    }

    public boolean n() {
        return this.K;
    }

    public void c(int i10) {
        this.f31576b = i10;
    }

    public void d(boolean z10) {
        this.f31591q = z10;
    }

    public long e() {
        return this.f31586l;
    }

    public String f() {
        String str = "";
        if (this.f31576b == 3) {
            return "";
        }
        String str2 = this.f31588n + this.f31597w;
        File file = new File(str2);
        try {
            if (Objects.exists(file, this.f31588n, this.f31597w)) {
                if (file.isFile()) {
                    if (file.canRead()) {
                        if (file.length() > 0) {
                            this.f31590p = str2;
                        } else {
                            str = "file length is 0 ";
                        }
                    } else {
                        str = "file can not read ";
                    }
                } else {
                    str = "file is not file ";
                }
            } else {
                str = "file is not exist ";
            }
        } catch (Throwable th2) {
            p0.b("CampaignDownLoadTask", th2.getMessage());
            str = th2.getMessage();
        }
        if (this.f31579e == 5 && !TextUtils.isEmpty(str)) {
            a();
        }
        return str;
    }

    public void b(int i10) {
        this.f31577c = i10;
    }

    public CampaignEx c() {
        return this.f31583i;
    }

    public void d(int i10) {
        p0.a("CampaignDownLoadTask", "set ready rate: " + i10);
        this.f31593s = i10;
    }

    public void e(CampaignEx campaignEx) {
        this.f31583i = campaignEx;
    }

    private int c(CampaignEx campaignEx) {
        int d10;
        if (campaignEx == null) {
            return 100;
        }
        if (campaignEx.getReady_rate() != -1) {
            d10 = campaignEx.getReady_rate();
            p0.a("CampaignDownLoadTask", "ready_rate(campaign): " + d10);
        } else {
            d10 = d(campaignEx);
            p0.a("CampaignDownLoadTask", "ready_rate(reward_unit_setting): " + d10);
        }
        try {
            return Math.max(d10, 0);
        } catch (Exception unused) {
            return 100;
        }
    }

    public void b(boolean z10) {
        this.f31596v = z10;
    }

    public void e(int i10) {
        this.C = i10;
    }

    private int d(CampaignEx campaignEx) {
        if (campaignEx == null) {
            return 100;
        }
        try {
            if (campaignEx.getAdType() == 298) {
                if (this.H == null) {
                    this.H = com.mbridge.msdk.setting.h.b().d(com.mbridge.msdk.foundation.controller.c.m().b(), this.f31584j);
                }
                return this.H.C();
            } else if (campaignEx.getAdType() == 42) {
                if (this.J == null) {
                    this.J = com.mbridge.msdk.setting.h.b().e(com.mbridge.msdk.foundation.controller.c.m().b(), this.f31584j);
                }
                return b((CampaignEx) null);
            } else {
                if (this.I == null) {
                    this.I = com.mbridge.msdk.videocommon.setting.b.b().a(com.mbridge.msdk.foundation.controller.c.m().b(), this.f31584j, false);
                }
                return this.I.w();
            }
        } catch (Throwable th2) {
            p0.b("CampaignDownLoadTask", th2.getMessage(), th2);
            return 100;
        }
    }

    public void b(String str) {
        com.mbridge.msdk.videocommon.listener.a aVar = this.f31581g;
        if (aVar != null) {
            aVar.a(str, this.f31587m);
        }
        com.mbridge.msdk.videocommon.listener.a aVar2 = this.f31582h;
        if (aVar2 != null) {
            aVar2.a(str, this.f31587m);
        }
        p0.b("CampaignDownLoadTask", "Video download stop : " + str);
        if (this.f31579e == 4 || this.f31579e == 2 || this.f31579e == 5) {
            return;
        }
        this.f31579e = 4;
        CampaignEx campaignEx = this.f31583i;
        if (campaignEx != null && campaignEx.getRsIgnoreCheckRule() != null && this.f31583i.getRsIgnoreCheckRule().size() > 0 && this.f31583i.getRsIgnoreCheckRule().contains(0)) {
            p0.c("CampaignDownLoadTask", "Is not check video download status");
        } else {
            a(this.f31589o, this.f31579e);
        }
    }

    public void a(boolean z10) {
        this.K = z10;
    }

    public void a(int i10, int i11) {
        this.f31579e = i10;
        if (this.f31595u == null) {
            this.f31595u = m.a(com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d()));
        }
        this.f31595u.a(this.f31587m, i11, i10);
    }

    public void c(String str) {
        m();
        a(2, str, "");
        this.f31579e = 4;
    }

    public void a(int i10) {
        this.A = i10;
    }

    public void a(String str) {
        int i10;
        if (TextUtils.isEmpty(str)) {
            this.f31582h.a("VideoUrl is NULL, Please check it.", "");
        } else if (this.f31579e == 1) {
            p0.a("CampaignDownLoadTask", "Run : Task is RUNNING, Will return.");
        } else if (this.f31579e == 5 && Utils.getDownloadRate(this.f31586l, this.f31589o) >= this.f31593s) {
            p0.a("CampaignDownLoadTask", "Run : Video Done, Will callback.");
            com.mbridge.msdk.videocommon.listener.a aVar = this.f31581g;
            if (aVar != null) {
                aVar.a(this.f31587m);
            }
            com.mbridge.msdk.videocommon.listener.a aVar2 = this.f31582h;
            if (aVar2 != null) {
                aVar2.a(this.f31587m);
            }
            try {
                File file = new File(this.f31590p);
                if (Objects.exists(file, this.f31588n, this.f31597w) && file.isFile()) {
                    file.setLastModified(System.currentTimeMillis());
                }
            } catch (Exception e10) {
                p0.b("CampaignDownLoadTask", e10.getMessage());
            }
            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
            eVar.a("cache", 1);
            a(this.f31583i, eVar);
        } else if (this.f31576b == 3) {
            p0.a("CampaignDownLoadTask", "Run : Dlnet is 3, Will callback.");
            a(0L, false, "");
            com.mbridge.msdk.foundation.same.report.metrics.e eVar2 = new com.mbridge.msdk.foundation.same.report.metrics.e();
            eVar2.a("cache", 1);
            a(this.f31583i, eVar2);
        } else {
            try {
                i10 = c(this.f31583i);
            } catch (Exception unused) {
                i10 = 100;
            }
            d(i10);
            if (i10 == 0) {
                com.mbridge.msdk.videocommon.listener.a aVar3 = this.f31581g;
                if (aVar3 != null) {
                    aVar3.a(this.f31587m);
                }
                com.mbridge.msdk.videocommon.listener.a aVar4 = this.f31582h;
                if (aVar4 != null) {
                    aVar4.a(this.f31587m);
                }
            }
            DownloadMessage downloadMessage = new DownloadMessage(this.f31583i, str, this.f31597w, 100, DownloadResourceType.DOWNLOAD_RESOURCE_TYPE_VIDEO);
            downloadMessage.setUseCronetDownload(a(this.f31583i));
            downloadMessage.addExtra("resource_type", 4);
            this.f31598x = a(downloadMessage, this.R, this.S, "1");
        }
    }

    private int b(CampaignEx campaignEx) {
        try {
            com.mbridge.msdk.setting.l lVar = this.J;
            if (lVar != null) {
                return lVar.C();
            }
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                p0.b("CampaignDownLoadTask", e10.getMessage());
            }
        }
        return 100;
    }

    public void b(com.mbridge.msdk.videocommon.listener.a aVar) {
        this.f31582h = aVar;
    }

    public void b() {
        try {
            a();
            CampaignEx campaignEx = this.f31583i;
            if (campaignEx == null || campaignEx.getPlayable_ads_without_video() != 2) {
                com.mbridge.msdk.videocommon.cache.a a10 = com.mbridge.msdk.videocommon.cache.a.a();
                if (a10 != null) {
                    a10.a(this.f31583i);
                }
            }
        } catch (Exception unused) {
            p0.b("CampaignDownLoadTask", "del file is failed");
        } finally {
            this.f31579e = 0;
        }
    }

    /* compiled from: CampaignDownLoadTask.java */
    /* renamed from: com.mbridge.msdk.videocommon.download.a$a  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    class C0457a implements OnDownloadStateListener {
        C0457a() {
        }

        @Override // com.mbridge.msdk.foundation.download.OnDownloadStateListener
        public void onDownloadComplete(DownloadMessage downloadMessage) {
            String str;
            try {
                p0.b("CampaignDownLoadTask", "onDownloadComplete callback : " + a.this.f31589o + "    " + a.this.f31586l);
                if (a.this.f31595u == null) {
                    a.this.f31595u = m.a(com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d()));
                }
                a.this.f31595u.a(a.this.f31587m, a.this.f31589o, 5);
                if (downloadMessage == null) {
                    str = "";
                } else {
                    str = (String) downloadMessage.getExtra("responseHeaders");
                }
                a aVar = a.this;
                aVar.a(aVar.f31589o, true, str);
                a.this.f31595u.a(a.this.f31587m, a.this.f31589o, 5);
                a aVar2 = a.this;
                aVar2.a(aVar2.f31589o, true, "");
                a.this.a(1, true, "");
            } catch (Exception e10) {
                p0.b("CampaignDownLoadTask", e10.getMessage());
            }
        }

        @Override // com.mbridge.msdk.foundation.download.OnDownloadStateListener
        public void onDownloadError(DownloadMessage downloadMessage, DownloadError downloadError) {
            String str;
            if (a.this.f31598x != null && a.this.f31598x.getStatus() != DownloadStatus.CANCELLED) {
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a("cache", a.this.f31598x.get("cache", "2"));
                a aVar = a.this;
                aVar.a(aVar.f31583i, eVar);
                if (downloadError != null && downloadError.getException() != null) {
                    str = downloadError.getException().getMessage();
                } else {
                    str = "Video Download Error";
                }
                a.this.m();
                a.this.a(3, str, "");
                a.this.b(str);
                a aVar2 = a.this;
                aVar2.a(3, aVar2.f31600z, str);
            }
        }

        @Override // com.mbridge.msdk.foundation.download.OnDownloadStateListener
        public void onDownloadStart(DownloadMessage downloadMessage) {
            a.this.f31579e = 1;
            if (a.this.f31595u == null) {
                a.this.f31595u = m.a(com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d()));
            }
            a.this.f31595u.a(a.this.f31583i, a.this.f31586l, a.this.f31590p, a.this.f31579e);
        }

        @Override // com.mbridge.msdk.foundation.download.OnDownloadStateListener
        public void onCancelDownload(DownloadMessage downloadMessage) {
        }
    }

    private DownloadRequest<?> a(DownloadMessage downloadMessage, OnDownloadStateListener onDownloadStateListener, OnProgressStateListener onProgressStateListener, String str) {
        return MBDownloadManager.getInstance().download(downloadMessage).withReadTimeout(this.D).withConnectTimeout(this.F).withWriteTimeout(this.E).withDownloadPriority(DownloadPriority.HIGH).withHttpRetryCounter(1).withDirectoryPathInternal(this.f31588n).withDownloadStateListener(onDownloadStateListener).withProgressStateListener(onProgressStateListener).withTimeout(ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS).with("do_us_fi_re", Boolean.toString(this.G)).with("download_scene", "download_video").with(CampaignEx.JSON_KEY_READY_RATE, String.valueOf(this.f31593s)).with("scenes", str).build();
    }

    public void a(long j10, boolean z10, String str) {
        m mVar;
        p0.b("CampaignDownLoadTask", "setStateToDone 下载完成  ： mProgressSize" + this.f31589o + "  progressSize " + j10 + "  " + this.f31599y + "%   FileSize : " + this.f31586l + "  " + this.f31583i.getAppName());
        if (this.f31593s == 100 && this.f31576b != 3 && j10 != this.f31586l && !z10) {
            File file = new File(this.f31590p);
            long length = Objects.exists(file, this.f31588n, this.f31597w) ? file.length() : 0L;
            p0.b("CampaignDownLoadTask", "progressSize = " + j10 + " fileSize = " + this.f31586l + " " + z10 + " absFileSize = " + length);
            b("File size is not match witch download size.");
            return;
        }
        this.f31579e = 5;
        if (j10 == this.f31586l) {
            a(1, "", str);
        }
        long j11 = this.f31586l;
        if (j11 != 0 && (mVar = this.f31595u) != null) {
            mVar.b(this.f31587m, j11);
        }
        this.f31575a = false;
        a(j10, this.f31579e);
    }

    public void a(c cVar) {
        CopyOnWriteArrayList<c> copyOnWriteArrayList = this.f31580f;
        if (copyOnWriteArrayList != null) {
            copyOnWriteArrayList.add(cVar);
        }
    }

    public void a(com.mbridge.msdk.videocommon.listener.a aVar) {
        this.f31581g = aVar;
    }

    private void a(long j10, int i10) {
        this.f31589o = j10;
        int i11 = this.f31593s;
        if (100 * j10 >= i11 * this.f31586l && !this.f31594t && i10 != 4) {
            if (i11 == 100 && i10 != 5) {
                this.f31579e = 5;
                return;
            }
            this.f31594t = true;
            p0.b("CampaignDownLoadTask", "UpdateListener : state: " + i10 + " progress : " + j10);
            String f10 = f();
            if (TextUtils.isEmpty(f10)) {
                com.mbridge.msdk.videocommon.listener.a aVar = this.f31581g;
                if (aVar != null) {
                    aVar.a(this.f31587m);
                }
                com.mbridge.msdk.videocommon.listener.a aVar2 = this.f31582h;
                if (aVar2 != null) {
                    aVar2.a(this.f31587m);
                }
            } else {
                com.mbridge.msdk.videocommon.listener.a aVar3 = this.f31581g;
                if (aVar3 != null) {
                    aVar3.a("file is not effective " + f10, this.f31587m);
                }
                com.mbridge.msdk.videocommon.listener.a aVar4 = this.f31582h;
                if (aVar4 != null) {
                    aVar4.a("file is not effective " + f10, this.f31587m);
                }
            }
        }
        if (!this.f31575a && j10 > 0) {
            this.f31575a = true;
            if (this.f31595u == null) {
                this.f31595u = m.a(com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d()));
            }
            this.f31595u.a(this.f31587m, j10, this.f31579e);
        }
        CopyOnWriteArrayList<c> copyOnWriteArrayList = this.f31580f;
        if (copyOnWriteArrayList != null) {
            Iterator<c> it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                c next = it.next();
                if (next != null) {
                    next.onProgress(j10, i10);
                }
            }
        }
    }

    private void a() {
        if (this.f31595u == null) {
            this.f31595u = m.a(com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d()));
        }
        try {
            try {
                this.f31595u.a(this.f31587m);
                if (!r0.a().a("r_d_v_b_l", true)) {
                    File file = new File(this.f31590p);
                    if (file.exists() && file.isFile()) {
                        file.delete();
                    }
                }
            } catch (Throwable unused) {
                p0.b("CampaignDownLoadTask", "del DB or file failed");
            }
        } finally {
            this.f31579e = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i10, String str, String str2) {
        n nVar = new n(this.f31585k, this.f31583i, i10, Long.toString(this.f31592r != 0 ? System.currentTimeMillis() - this.f31592r : 0L), this.f31586l, this.A);
        nVar.b(this.f31583i.getId());
        nVar.v(this.f31583i.getVideoUrlEncode());
        nVar.m(str);
        nVar.n(this.f31583i.getRequestId());
        nVar.k(this.f31583i.getCurrentLocalRid());
        nVar.o(this.f31583i.getRequestIdNotice());
        nVar.u(this.f31584j);
        nVar.q(str2);
        nVar.b(CampaignEx.JSON_KEY_READY_RATE, String.valueOf(this.f31593s));
        nVar.b("url", this.f31583i.getVideoUrlEncode());
        nVar.e(4);
        DownloadRequest downloadRequest = this.f31598x;
        if (downloadRequest != null) {
            nVar.b("scenes", downloadRequest.get("scenes", ""));
            nVar.b("resumed_breakpoint", this.f31598x.get("resumed_breakpoint", ""));
        }
        int i11 = this.A;
        if (i11 == 94 || i11 == 287) {
            return;
        }
        com.mbridge.msdk.foundation.db.n.a(com.mbridge.msdk.foundation.db.g.a(com.mbridge.msdk.foundation.controller.c.m().d())).a(nVar);
    }

    private int a(CampaignEx campaignEx) {
        if (campaignEx != null) {
            try {
                if (campaignEx.getAabEntity() != null) {
                    return campaignEx.getAabEntity().h3c;
                }
            } catch (Throwable th2) {
                p0.b("CampaignDownLoadTask", th2.getMessage());
            }
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i10, boolean z10, String str) {
        if (this.P) {
            return;
        }
        try {
            this.P = true;
            com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
            DownloadRequest downloadRequest = this.f31598x;
            if (downloadRequest != null) {
                eVar.a("scenes", downloadRequest.get("scenes", ""));
                eVar.a("url", this.f31587m);
                eVar.a("resumed_breakpoint", this.f31598x.get("resumed_breakpoint", ""));
                eVar.a("h3c", "");
            }
            eVar.a("resource_type", 4);
            eVar.a(BarrageMaskInfo.KEY_MASK_FILE_SIZE, Long.valueOf(this.f31586l));
            eVar.a(CampaignEx.JSON_KEY_READY_RATE, Integer.valueOf(this.f31593s));
            eVar.a("result", Integer.valueOf(i10));
            eVar.a("reason", str);
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("m_download_end", this.f31583i, eVar);
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(CampaignEx campaignEx, com.mbridge.msdk.foundation.same.report.metrics.e eVar) {
        if (this.O || campaignEx == null || eVar == null) {
            return;
        }
        this.O = true;
        try {
            eVar.a("resource_type", 4);
            DownloadRequest downloadRequest = this.f31598x;
            if (downloadRequest != null) {
                eVar.a("scenes", downloadRequest.get("scenes", "1"));
                eVar.a("resumed_breakpoint", this.f31598x.get("resumed_breakpoint", "2"));
            } else {
                eVar.a("scenes", "1");
                eVar.a("resumed_breakpoint", "1");
            }
            eVar.a("url", campaignEx.getVideoUrlEncode());
            eVar.a(CampaignEx.JSON_KEY_READY_RATE, Integer.valueOf(c(campaignEx)));
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("m_download_start", campaignEx, eVar);
        } catch (Exception e10) {
            p0.b("CampaignDownLoadTask", e10.getMessage());
        }
    }
}
