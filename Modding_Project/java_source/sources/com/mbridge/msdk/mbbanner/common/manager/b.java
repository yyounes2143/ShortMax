package com.mbridge.msdk.mbbanner.common.manager;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.db.g;
import com.mbridge.msdk.foundation.db.j;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.foundation.same.c;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.mbridge.msdk.foundation.tools.b1;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.u0;
import com.mbridge.msdk.foundation.tools.x;
import com.mbridge.msdk.foundation.tools.z0;
import com.mbridge.msdk.mbbanner.common.util.BannerUtils;
import com.mbridge.msdk.out.MBridgeIds;
import com.ss.ttm.player.MediaPlayer;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
/* compiled from: BannerLoader.java */
/* loaded from: classes5.dex */
public class b {

    /* renamed from: n  reason: collision with root package name */
    private static final String f27768n = "b";

    /* renamed from: a  reason: collision with root package name */
    private Context f27769a;

    /* renamed from: c  reason: collision with root package name */
    private com.mbridge.msdk.mbbanner.common.data.b f27771c;

    /* renamed from: d  reason: collision with root package name */
    private com.mbridge.msdk.mbbanner.common.util.a f27772d;

    /* renamed from: e  reason: collision with root package name */
    private com.mbridge.msdk.mbbanner.common.listener.b f27773e;

    /* renamed from: f  reason: collision with root package name */
    private com.mbridge.msdk.mbbanner.common.listener.d f27774f;

    /* renamed from: b  reason: collision with root package name */
    private int f27770b = 0;

    /* renamed from: g  reason: collision with root package name */
    private volatile boolean f27775g = false;

    /* renamed from: h  reason: collision with root package name */
    private Timer f27776h = new Timer();

    /* renamed from: i  reason: collision with root package name */
    private volatile List<String> f27777i = new ArrayList();

    /* renamed from: j  reason: collision with root package name */
    private volatile boolean f27778j = false;

    /* renamed from: k  reason: collision with root package name */
    private volatile boolean f27779k = false;

    /* renamed from: l  reason: collision with root package name */
    private volatile boolean f27780l = false;

    /* renamed from: m  reason: collision with root package name */
    private String f27781m = "";

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BannerLoader.java */
    /* loaded from: classes5.dex */
    public class a extends TimerTask {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f27782a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ CampaignEx f27783b;

        a(String str, CampaignEx campaignEx) {
            this.f27782a = str;
            this.f27783b = campaignEx;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            if (!b.this.f27775g) {
                b.this.f27775g = true;
                b.this.a(this.f27782a, -1, "", false, this.f27783b);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BannerLoader.java */
    /* loaded from: classes5.dex */
    public class c extends c.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f27787a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ CampaignEx f27788b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Context f27789c;

        c(String str, CampaignEx campaignEx, Context context, com.mbridge.msdk.foundation.same.report.metrics.callback.a aVar) {
            this.f27787a = str;
            this.f27788b = campaignEx;
            this.f27789c = context;
        }

        @Override // com.mbridge.msdk.foundation.same.c.a
        public void a(String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            if (!TextUtils.isEmpty(str)) {
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a(MBridgeConstans.PROPERTIES_UNIT_ID, this.f27787a);
                cVar.a(str, eVar);
                com.mbridge.msdk.mbbanner.common.report.a.a(str, cVar, this.f27788b, this.f27789c, null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BannerLoader.java */
    /* loaded from: classes5.dex */
    public class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CampaignUnit f27791a;

        d(CampaignUnit campaignUnit) {
            this.f27791a = campaignUnit;
        }

        @Override // java.lang.Runnable
        public void run() {
            p0.c(b.f27768n, "在单独子线程保存数据库 开始");
            j.a(g.a(b.this.f27769a)).a();
            CampaignUnit campaignUnit = this.f27791a;
            if (campaignUnit != null && campaignUnit.getAds() != null && this.f27791a.getAds().size() > 0) {
                BannerUtils.uisList(b.this.f27769a, this.f27791a.getAds());
            }
            p0.c(b.f27768n, "在单独子线程保存数据库 完成");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: BannerLoader.java */
    /* loaded from: classes5.dex */
    public static class e implements com.mbridge.msdk.foundation.same.image.c {

        /* renamed from: a  reason: collision with root package name */
        private b f27793a;

        /* renamed from: b  reason: collision with root package name */
        private String f27794b;

        /* renamed from: c  reason: collision with root package name */
        private CampaignEx f27795c;

        public e(b bVar, String str, CampaignEx campaignEx) {
            this.f27793a = bVar;
            this.f27794b = str;
            this.f27795c = campaignEx;
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onFailedLoad(String str, String str2) {
            if (MBridgeConstans.DEBUG) {
                p0.c(b.f27768n, "DownloadImageListener campaign image fail");
            }
            b bVar = this.f27793a;
            if (bVar != null) {
                bVar.a(this.f27794b, 1, str2, false, this.f27795c);
            }
            try {
                com.mbridge.msdk.foundation.same.report.metrics.c a10 = com.mbridge.msdk.mbbanner.common.report.a.a(this.f27794b, this.f27795c.getCurrentLocalRid());
                a10.a(this.f27795c);
                a10.e(10);
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                a10.e(10);
                eVar.a("resource_type", 10);
                eVar.a("result", 3);
                eVar.a("url", str2);
                com.mbridge.msdk.mbbanner.common.report.a.a("m_download_end", a10, eVar);
            } catch (Throwable th2) {
                p0.b(b.f27768n, th2.getMessage());
            }
        }

        @Override // com.mbridge.msdk.foundation.same.image.c
        public void onSuccessLoad(Bitmap bitmap, String str) {
            if (MBridgeConstans.DEBUG) {
                p0.c(b.f27768n, "DownloadImageListener campaign image success");
            }
            b bVar = this.f27793a;
            if (bVar != null) {
                bVar.a(this.f27794b, 1, str, true, this.f27795c);
            }
            try {
                com.mbridge.msdk.foundation.same.report.metrics.c a10 = com.mbridge.msdk.mbbanner.common.report.a.a(this.f27794b, this.f27795c.getCurrentLocalRid());
                a10.a(this.f27795c);
                a10.e(10);
                a10.e(10);
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a("resource_type", 10);
                eVar.a("result", 1);
                eVar.a("url", str);
                com.mbridge.msdk.mbbanner.common.report.a.a("m_download_end", a10, eVar);
            } catch (Throwable th2) {
                p0.b(b.f27768n, th2.getMessage());
            }
        }
    }

    public b(Context context, com.mbridge.msdk.mbbanner.common.data.b bVar, com.mbridge.msdk.mbbanner.common.listener.b bVar2, com.mbridge.msdk.mbbanner.common.util.a aVar) {
        this.f27769a = context.getApplicationContext();
        this.f27771c = bVar;
        this.f27773e = bVar2;
        this.f27772d = aVar;
    }

    private void b(String str, List<CampaignEx> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (CampaignEx campaignEx : list) {
            if (!TextUtils.isEmpty(campaignEx.getImageUrl())) {
                this.f27777i.add(campaignEx.getImageUrl());
                com.mbridge.msdk.foundation.same.image.b.a(this.f27769a).a(campaignEx.getImageUrl(), new e(this, str, campaignEx));
                com.mbridge.msdk.foundation.same.report.metrics.c a10 = com.mbridge.msdk.mbbanner.common.report.a.a(str, campaignEx.getCurrentLocalRid());
                a10.a(campaignEx);
                a10.e(10);
                com.mbridge.msdk.foundation.same.report.metrics.e eVar = new com.mbridge.msdk.foundation.same.report.metrics.e();
                eVar.a("resource_type", 10);
                com.mbridge.msdk.mbbanner.common.report.a.a("m_download_start", a10, eVar);
            }
        }
    }

    private void a(String str, int i10) {
        if (this.f27780l) {
            return;
        }
        if ((this.f27778j || this.f27779k) && this.f27777i.size() == 0) {
            p0.c(f27768n, "在子线程处理业务逻辑 完成");
            this.f27775g = true;
            this.f27780l = true;
            this.f27776h.cancel();
            this.f27772d.a(this.f27773e, str, i10);
            this.f27774f.a(str);
        }
    }

    private void a(String str, CampaignEx campaignEx) {
        String str2 = f27768n;
        p0.c(str2, "在子线程处理业务逻辑 完成");
        p0.c(str2, "downloadResource--> Fail");
        this.f27775g = true;
        com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880027);
        MBridgeIds mBridgeIds = new MBridgeIds();
        mBridgeIds.setUnitId(str);
        bVar.a(mBridgeIds);
        bVar.b(this.f27771c.a());
        bVar.a(campaignEx);
        this.f27772d.b(this.f27773e, bVar);
        this.f27774f.a(str);
    }

    /* compiled from: BannerLoader.java */
    /* renamed from: com.mbridge.msdk.mbbanner.common.manager.b$b  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    class C0383b extends com.mbridge.msdk.mbbanner.common.response.a {

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ com.mbridge.msdk.mbbanner.common.data.a f27785c;

        C0383b(com.mbridge.msdk.mbbanner.common.data.a aVar) {
            this.f27785c = aVar;
        }

        @Override // com.mbridge.msdk.mbbanner.common.response.a
        public void a(CampaignUnit campaignUnit) {
            try {
                p0.c(b.f27768n, "requestCampaign--> Succeed");
                campaignUnit.setLocalRequestId(this.f27785c.b());
                b.this.f27772d.a(b.this.f27773e, campaignUnit, this.unitId);
                b.this.a(this.unitId, this.f27785c.b(), campaignUnit);
            } catch (Exception e10) {
                String str = b.f27768n;
                p0.c(str, "requestCampaign--> Fail with exception = " + e10.getMessage());
                com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880000);
                bVar.a(new MBridgeIds(this.placementId, this.unitId));
                bVar.b(this.f27785c.b());
                bVar.a((campaignUnit == null || campaignUnit.getAds() == null || campaignUnit.getAds().isEmpty()) ? null : campaignUnit.getAds().get(0));
                bVar.a((Throwable) e10);
                b.this.f27772d.a(b.this.f27773e, bVar);
                b.this.f27774f.a(this.unitId);
            }
        }

        @Override // com.mbridge.msdk.mbbanner.common.response.a
        public void a(int i10, String str) {
            String str2 = b.f27768n;
            p0.c(str2, "requestCampaign--> Fail errorCode:" + i10 + " msg:" + str);
            com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880003);
            bVar.c(i10 + "#" + str);
            bVar.a(new MBridgeIds(this.placementId, this.unitId));
            bVar.b(this.f27785c.b());
            b.this.f27772d.a(b.this.f27773e, bVar);
            b.this.f27774f.a(this.unitId);
        }
    }

    private void b(String str, String str2, CampaignEx campaignEx) {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        a(str, 3, str2, true, campaignEx);
    }

    private String b() {
        return this.f27771c.d();
    }

    private void b(String str) {
        this.f27771c.b(str);
    }

    public void a(String str, int i10, String str2, boolean z10, CampaignEx campaignEx) {
        if (!z10) {
            if (i10 == -1) {
                String str3 = f27768n;
                p0.b(str3, " unitId =" + str + " --> time out!");
            }
            this.f27776h.cancel();
            a(str, campaignEx);
        } else if (i10 == 1) {
            p0.c(f27768n, "downloadResource--> Success Image");
            synchronized (this) {
                try {
                    this.f27777i.remove(str2);
                    if (this.f27777i.size() == 0) {
                        a(str, i10);
                    }
                } finally {
                }
            }
        } else if (i10 == 2) {
            p0.c(f27768n, "downloadResource--> Success banner_html");
            this.f27779k = true;
            a(str, i10);
        } else if (i10 == 3) {
            p0.c(f27768n, "downloadResource--> Success banner_url");
            this.f27778j = true;
            a(str, i10);
        }
    }

    private void a(String str, int i10, CampaignEx campaignEx) {
        this.f27776h.schedule(new a(str, campaignEx), i10);
    }

    public void a(String str, String str2, com.mbridge.msdk.mbbanner.common.data.a aVar, com.mbridge.msdk.mbbanner.common.listener.d dVar) {
        boolean z10;
        try {
            p0.c(f27768n, "requestCampaign--> started");
            this.f27774f = dVar;
            C0383b c0383b = new C0383b(aVar);
            c0383b.setUnitId(str2);
            c0383b.setPlacementId(str);
            c0383b.setAdType(MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_BUFFER_THRESHOLD_CONTROL);
            com.mbridge.msdk.mbbanner.common.request.a aVar2 = new com.mbridge.msdk.mbbanner.common.request.a(this.f27769a);
            this.f27770b = a(str2);
            com.mbridge.msdk.foundation.same.net.wrapper.e a10 = com.mbridge.msdk.mbbanner.common.data.c.a(false, this.f27769a, str2, b(), this.f27770b, aVar);
            String d10 = u0.d(str2);
            if (!TextUtils.isEmpty(d10)) {
                a10.a(com.mbridge.msdk.foundation.same.report.j.f27256b, d10);
            }
            String a11 = aVar.a();
            if (TextUtils.isEmpty(a11)) {
                z10 = false;
            } else {
                c0383b.a(a11);
                z10 = true;
            }
            this.f27772d.a(z10);
            aVar2.choiceV3OrV5BySetting(1, a10, c0383b, a11, 30000L);
        } catch (Exception e10) {
            p0.b(f27768n, e10.getMessage());
            com.mbridge.msdk.foundation.error.b bVar = new com.mbridge.msdk.foundation.error.b(880002);
            bVar.a(new MBridgeIds(str, str2));
            this.f27772d.a(this.f27773e, bVar);
            this.f27774f.a(str2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, String str2, CampaignUnit campaignUnit) {
        com.mbridge.msdk.foundation.error.b bVar;
        CampaignEx campaignEx;
        if (campaignUnit == null) {
            com.mbridge.msdk.foundation.error.b bVar2 = new com.mbridge.msdk.foundation.error.b(880003);
            MBridgeIds mBridgeIds = new MBridgeIds();
            mBridgeIds.setUnitId(str);
            bVar2.a(mBridgeIds);
            bVar2.b(str2);
            this.f27772d.a(this.f27773e, bVar2);
            this.f27774f.a(str);
            return;
        }
        List<CampaignEx> a10 = a(str, campaignUnit);
        a(campaignUnit);
        int i10 = 0;
        if (a10 != null && a10.size() != 0) {
            p0.c(f27768n, "在子线程处理业务逻辑 开始");
            CampaignEx campaignEx2 = a10.get(0);
            a(str, 60000, campaignEx2);
            b(campaignUnit.getSessionId());
            a(str, a10);
            String trim = campaignEx2.getBannerUrl().trim();
            if (!TextUtils.isEmpty(trim)) {
                b(str, trim, campaignEx2);
                if (a10.size() > 0) {
                    while (i10 < a10.size()) {
                        a10.get(i10).setBannerUrl(campaignEx2.getBannerUrl());
                        a10.get(i10).setHasMBTplMark(true);
                        i10++;
                    }
                }
            } else {
                String trim2 = campaignEx2.getBannerHtml().trim();
                if (!TextUtils.isEmpty(trim2)) {
                    String a11 = a(str, trim2, campaignEx2);
                    if (a10.size() > 0) {
                        while (i10 < a10.size()) {
                            a10.get(i10).setBannerHtml(a11);
                            a10.get(i10).setHasMBTplMark(trim2.contains("<MBTPLMARK>"));
                            i10++;
                        }
                    }
                } else {
                    this.f27779k = true;
                    this.f27778j = true;
                }
            }
            b(str, a10);
            return;
        }
        p0.c(f27768n, "tryDownloadOnLoadSuccess 返回的campaign 没有符合下载规则的");
        if (this.f27781m.contains("INSTALLED")) {
            bVar = new com.mbridge.msdk.foundation.error.b(880021, "APP ALREADY INSTALLED");
        } else {
            bVar = new com.mbridge.msdk.foundation.error.b(880003);
        }
        MBridgeIds mBridgeIds2 = new MBridgeIds();
        mBridgeIds2.setUnitId(str);
        bVar.a(mBridgeIds2);
        bVar.b(str2);
        if (campaignUnit.getAds() != null && campaignUnit.getAds().size() > 0 && (campaignEx = campaignUnit.getAds().get(0)) != null) {
            bVar.a(campaignEx);
        }
        this.f27772d.a(this.f27773e, bVar);
        this.f27774f.a(str);
    }

    private List<CampaignEx> a(String str, CampaignUnit campaignUnit) {
        ArrayList arrayList = new ArrayList();
        if (campaignUnit != null) {
            try {
                if (campaignUnit.getAds() != null && campaignUnit.getAds().size() > 0) {
                    ArrayList<CampaignEx> ads = campaignUnit.getAds();
                    String str2 = f27768n;
                    p0.c(str2, "getNeedShowList 总共返回的campaign有：" + ads.size());
                    x.a(ads);
                    for (int i10 = 0; i10 < ads.size(); i10++) {
                        CampaignEx campaignEx = ads.get(i10);
                        if (campaignEx != null) {
                            if (campaignEx.getOfferType() != 99) {
                                if (TextUtils.isEmpty(campaignEx.getBannerUrl()) && TextUtils.isEmpty(campaignEx.getBannerHtml()) && TextUtils.isEmpty(campaignEx.getImageUrl())) {
                                }
                                if (u0.c(campaignEx)) {
                                    campaignEx.setRtinsType(u0.c(this.f27769a, campaignEx.getPackageName()) ? 1 : 2);
                                }
                                if (com.mbridge.msdk.foundation.same.c.b(this.f27769a, campaignEx)) {
                                    arrayList.add(campaignEx);
                                } else {
                                    u0.a(str, campaignEx, com.mbridge.msdk.foundation.same.a.f27042x);
                                    this.f27781m = "APP ALREADY INSTALLED";
                                }
                                a(campaignEx, this.f27769a, (com.mbridge.msdk.foundation.same.report.metrics.c) null, str, (com.mbridge.msdk.foundation.same.report.metrics.callback.a) null);
                            }
                        }
                    }
                    String str3 = f27768n;
                    p0.c(str3, "getNeedShowList 返回有以下带有视频素材的campaign：" + arrayList.size());
                }
            } catch (Exception e10) {
                p0.b(f27768n, e10.getMessage());
            }
        }
        return arrayList;
    }

    private void a(CampaignEx campaignEx, Context context, com.mbridge.msdk.foundation.same.report.metrics.c cVar, String str, com.mbridge.msdk.foundation.same.report.metrics.callback.a aVar) {
        try {
            com.mbridge.msdk.foundation.same.c.a(campaignEx, context, cVar, new c(str, campaignEx, context, aVar));
        } catch (Exception e10) {
            p0.b(f27768n, e10.getMessage());
        }
    }

    private String a(String str, String str2, CampaignEx campaignEx) {
        File file;
        Throwable th2;
        FileOutputStream fileOutputStream;
        File file2;
        String str3 = "";
        if (!TextUtils.isEmpty(str2)) {
            FileOutputStream fileOutputStream2 = null;
            try {
                try {
                    try {
                        String b10 = com.mbridge.msdk.foundation.same.directory.e.b(com.mbridge.msdk.foundation.same.directory.c.MBRIDGE_700_HTML);
                        String md5 = SameMD5.getMD5(b1.b(str2));
                        if (TextUtils.isEmpty(md5)) {
                            md5 = String.valueOf(System.currentTimeMillis());
                        }
                        file2 = new File(b10, md5.concat(".html"));
                        Uri.parse(str2).getPath();
                        fileOutputStream = new FileOutputStream(file2);
                    } catch (Throwable th3) {
                        th2 = th3;
                        fileOutputStream = null;
                    }
                } catch (Exception e10) {
                    e = e10;
                }
            } catch (Exception e11) {
                p0.b(f27768n, e11.getMessage());
            }
            try {
                fileOutputStream.write(str2.getBytes());
                fileOutputStream.flush();
                str3 = file2.getAbsolutePath();
                fileOutputStream.close();
            } catch (Exception e12) {
                e = e12;
                fileOutputStream2 = fileOutputStream;
                p0.b(f27768n, e.getMessage());
                if (fileOutputStream2 != null) {
                    fileOutputStream2.close();
                }
                file = new File(str3);
                if (!file.exists()) {
                }
                a(str, 2, str2, false, campaignEx);
                return str3;
            } catch (Throwable th4) {
                th2 = th4;
                if (fileOutputStream != null) {
                    try {
                        fileOutputStream.close();
                    } catch (Exception e13) {
                        p0.b(f27768n, e13.getMessage());
                    }
                }
                throw th2;
            }
            file = new File(str3);
            if (!file.exists() && file.isFile() && file.canRead()) {
                a(str, 2, str2, true, campaignEx);
            } else {
                a(str, 2, str2, false, campaignEx);
            }
        }
        return str3;
    }

    private void a(CampaignUnit campaignUnit) {
        new Thread(new d(campaignUnit)).start();
    }

    private int a(String str) {
        try {
            int c10 = this.f27771c.c();
            if (c10 > this.f27771c.b()) {
                return 0;
            }
            return c10;
        } catch (Exception e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    private void a(String str, List<CampaignEx> list) {
        int i10 = this.f27770b;
        if (list != null) {
            try {
                if (list.size() > 0) {
                    i10 += list.size();
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                return;
            }
        }
        if (i10 > this.f27771c.b()) {
            p0.c(f27768n, "saveNextOffset 重置offset为0");
            i10 = 0;
        }
        String str2 = f27768n;
        p0.c(str2, "saveNextOffset 算出 下次的offset是:" + i10);
        if (z0.b(str)) {
            this.f27771c.a(i10);
        }
    }
}
