package com.mbridge.msdk.interstitial.adapter;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.db.g;
import com.mbridge.msdk.foundation.db.j;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.foundation.same.c;
import com.mbridge.msdk.foundation.same.net.wrapper.e;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.mbridge.msdk.foundation.tools.b1;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.u0;
import com.mbridge.msdk.interstitial.controller.a;
import com.mbridge.msdk.setting.h;
import com.mbridge.msdk.setting.l;
import com.ss.ttm.player.MediaPlayer;
import com.vungle.ads.internal.Constants;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
/* compiled from: IntersAdapter.java */
/* loaded from: classes5.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private Context f27594a;

    /* renamed from: b  reason: collision with root package name */
    private String f27595b;

    /* renamed from: c  reason: collision with root package name */
    private String f27596c;

    /* renamed from: d  reason: collision with root package name */
    private int f27597d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f27598e;

    /* renamed from: f  reason: collision with root package name */
    private int f27599f;

    /* renamed from: g  reason: collision with root package name */
    private String f27600g;

    /* renamed from: h  reason: collision with root package name */
    private a.b f27601h;

    /* renamed from: i  reason: collision with root package name */
    private l f27602i;

    /* renamed from: j  reason: collision with root package name */
    private Handler f27603j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: IntersAdapter.java */
    /* renamed from: com.mbridge.msdk.interstitial.adapter.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public class HandlerC0380a extends Handler {
        HandlerC0380a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Object obj;
            Object obj2;
            try {
                int i10 = message.what;
                if (i10 != 3) {
                    if (i10 == 4 && a.this.f27601h != null && (obj2 = message.obj) != null && (obj2 instanceof String)) {
                        a.this.f27601h.a(a.this.f27598e, (String) obj2);
                    }
                } else if (a.this.f27601h != null && (obj = message.obj) != null && (obj instanceof String)) {
                    a.this.f27601h.b(a.this.f27598e, (String) obj);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: IntersAdapter.java */
    /* loaded from: classes5.dex */
    public class b extends com.mbridge.msdk.interstitial.request.b {
        b() {
        }

        @Override // com.mbridge.msdk.interstitial.request.b
        public void a(CampaignUnit campaignUnit) {
            try {
                a.this.a(campaignUnit);
            } catch (Exception e10) {
                e10.printStackTrace();
                a.this.b("can't show because unknow error");
                a.this.m();
            }
        }

        @Override // com.mbridge.msdk.interstitial.request.b
        public void b(int i10, String str) {
            p0.b("IntersAdapter", str);
            a.this.b(str);
            a.this.m();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: IntersAdapter.java */
    /* loaded from: classes5.dex */
    public class c extends c.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CampaignEx f27606a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Context f27607b;

        c(CampaignEx campaignEx, Context context, com.mbridge.msdk.foundation.same.report.metrics.callback.a aVar) {
            this.f27606a = campaignEx;
            this.f27607b = context;
        }

        @Override // com.mbridge.msdk.foundation.same.c.a
        public void a(String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar) {
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a(str, cVar, this.f27606a, this.f27607b, (com.mbridge.msdk.foundation.same.report.metrics.callback.a) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: IntersAdapter.java */
    /* loaded from: classes5.dex */
    public class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f27609a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ List f27610b;

        d(List list, List list2) {
            this.f27609a = list;
            this.f27610b = list2;
        }

        @Override // java.lang.Runnable
        public void run() {
            String str;
            List list = this.f27609a;
            if (list == null || list.size() <= 0) {
                a.this.b("no ads available");
            } else {
                a aVar = a.this;
                aVar.a(aVar.f27595b, a.this.a(this.f27609a));
                CampaignEx campaignEx = (CampaignEx) this.f27609a.get(0);
                if (campaignEx != null) {
                    str = campaignEx.getRequestId();
                } else {
                    str = "";
                }
                a.this.c(str);
            }
            j.a(g.a(a.this.f27594a)).a();
            List list2 = this.f27610b;
            if (list2 != null && list2.size() > 0) {
                a.this.c(this.f27610b);
            }
        }
    }

    public a(Context context, String str, String str2, String str3, boolean z10) {
        this.f27594a = context;
        this.f27595b = str;
        this.f27596c = str2;
        this.f27600g = str3;
        this.f27598e = z10;
        l e10 = h.b().e(com.mbridge.msdk.foundation.controller.c.m().b(), str);
        this.f27602i = e10;
        if (e10 == null) {
            this.f27602i = l.h(this.f27595b);
        }
        i();
    }

    private int g() {
        int i10;
        try {
            Map<String, Integer> map = com.mbridge.msdk.interstitial.controller.a.f27617q;
            if (!TextUtils.isEmpty(this.f27595b) && map != null && map.containsKey(this.f27595b)) {
                i10 = map.get(this.f27595b).intValue();
            } else {
                i10 = 1;
            }
            if (i10 <= 0) {
                return 1;
            }
            return i10;
        } catch (Exception e10) {
            e10.printStackTrace();
            return 1;
        }
    }

    private String h() {
        try {
            if (!TextUtils.isEmpty(com.mbridge.msdk.interstitial.controller.a.f27615o)) {
                return com.mbridge.msdk.interstitial.controller.a.f27615o;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return "";
    }

    private void i() {
        this.f27603j = new HandlerC0380a(Looper.getMainLooper());
    }

    private e l() {
        int i10;
        int i11;
        String b10 = com.mbridge.msdk.foundation.controller.c.m().b();
        String md5 = SameMD5.getMD5(com.mbridge.msdk.foundation.controller.c.m().b() + com.mbridge.msdk.foundation.controller.c.m().c());
        if (this.f27598e) {
            i10 = 3;
        } else {
            i10 = 2;
        }
        this.f27599f = 1;
        if (this.f27602i.e() > 0) {
            this.f27599f = this.f27602i.e();
        }
        if (this.f27602i.f() > 0) {
            i11 = this.f27602i.f();
        } else {
            i11 = 1;
        }
        String a10 = com.mbridge.msdk.foundation.same.buffer.b.a(this.f27595b, Constants.PLACEMENT_TYPE_INTERSTITIAL);
        this.f27597d = b();
        String h10 = h();
        if (TextUtils.isEmpty(this.f27600g)) {
            this.f27600g = MBridgeConstans.ENDCARD_URL_TYPE_PL;
        }
        e eVar = new e();
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "app_id", b10);
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, MBridgeConstans.PROPERTIES_UNIT_ID, this.f27595b);
        if (!TextUtils.isEmpty(this.f27596c)) {
            com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, MBridgeConstans.PLACEMENT_ID, this.f27596c);
        }
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "sign", md5);
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "category", this.f27600g);
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "req_type", i10 + "");
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "ad_num", i11 + "");
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "tnum", this.f27599f + "");
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "only_impression", "1");
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "ping_mode", "1");
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, e.f27190g, a10);
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, e.f27191h, c());
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, CampaignEx.JSON_KEY_AD_SOURCE_ID, "1");
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, e.f27192i, h10);
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, "ad_type", MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_HWDEC_SEAMLESS + "");
        com.mbridge.msdk.foundation.same.net.utils.b.a(eVar, TypedValues.CycleType.S_WAVE_OFFSET, this.f27597d + "");
        return eVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m() {
        try {
            if (!TextUtils.isEmpty(this.f27595b)) {
                com.mbridge.msdk.interstitial.controller.a.a(this.f27595b, 0);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void n() {
        try {
            this.f27597d += this.f27599f;
            if (this.f27597d > g()) {
                this.f27597d = 0;
            }
            if (!TextUtils.isEmpty(this.f27595b)) {
                com.mbridge.msdk.interstitial.controller.a.a(this.f27595b, this.f27597d);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public boolean f() {
        return this.f27598e;
    }

    public void j() {
        String str;
        if (this.f27594a == null) {
            b("context is null");
        } else if (TextUtils.isEmpty(this.f27595b)) {
            b("unitid is null");
        } else {
            l lVar = this.f27602i;
            if (lVar == null) {
                b("unitSetting is null please call load");
            } else if (lVar.f() <= 0) {
                b("controller don't request ad");
            } else {
                a();
                List<CampaignEx> e10 = e();
                if (e10 != null && e10.size() > 0) {
                    CampaignEx campaignEx = e10.get(0);
                    if (campaignEx != null) {
                        str = campaignEx.getRequestId();
                    } else {
                        str = "";
                    }
                    c(str);
                    return;
                }
                k();
            }
        }
    }

    public void k() {
        try {
            if (this.f27594a == null) {
                b("context is null");
            } else if (TextUtils.isEmpty(this.f27595b)) {
                b("unitid is null");
            } else if (this.f27602i == null) {
                b("unitSetting is null please call load");
            } else {
                e l10 = l();
                if (l10 == null) {
                    b("request parameter is null");
                    return;
                }
                String d10 = u0.d(this.f27595b);
                if (!TextUtils.isEmpty(d10)) {
                    l10.a(com.mbridge.msdk.foundation.same.report.j.f27256b, d10);
                }
                com.mbridge.msdk.interstitial.request.a aVar = new com.mbridge.msdk.interstitial.request.a(this.f27594a);
                b bVar = new b();
                bVar.setUnitId(this.f27595b);
                bVar.setPlacementId(this.f27596c);
                bVar.setAdType(MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_HWDEC_SEAMLESS);
                aVar.choiceV3OrV5BySetting(1, l10, bVar, "", 30000L);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            b("can't show because unknow error");
            m();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(String str) {
        if (this.f27603j != null) {
            Message obtain = Message.obtain();
            obtain.obj = str;
            obtain.what = 3;
            this.f27603j.sendMessage(obtain);
        }
    }

    private List<CampaignEx> e() {
        try {
            if (com.mbridge.msdk.interstitial.cache.a.a() != null) {
                return com.mbridge.msdk.interstitial.cache.a.a().a(this.f27595b, 1);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return null;
    }

    public CampaignEx d() {
        try {
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        if (TextUtils.isEmpty(this.f27595b)) {
            return null;
        }
        a();
        List<CampaignEx> e11 = e();
        if (e11 != null && e11.size() > 0) {
            for (int i10 = 0; i10 < e11.size(); i10++) {
                CampaignEx campaignEx = e11.get(i10);
                if (campaignEx != null && (!TextUtils.isEmpty(campaignEx.getHtmlUrl()) || !TextUtils.isEmpty(campaignEx.getMraid()))) {
                    return campaignEx;
                }
            }
            return null;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str) {
        try {
            if (this.f27603j != null) {
                Message obtain = Message.obtain();
                obtain.obj = str;
                obtain.what = 4;
                this.f27603j.sendMessage(obtain);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, List<CampaignEx> list) {
        if (com.mbridge.msdk.interstitial.cache.a.a() != null) {
            com.mbridge.msdk.interstitial.cache.a.a().a(str, list);
        }
    }

    private String c() {
        String str = "";
        try {
            JSONArray b10 = u0.b(this.f27594a, this.f27595b);
            if (b10.length() > 0) {
                str = u0.a(b10);
            }
            p0.c("IntersAdapter", "get excludes:" + str);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return str;
    }

    private void a() {
        try {
            if (com.mbridge.msdk.interstitial.cache.a.a() != null) {
                com.mbridge.msdk.setting.g d10 = h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
                if (d10 == null) {
                    d10 = h.b().a();
                }
                com.mbridge.msdk.interstitial.cache.a.a().a(d10.Z() * 1000, this.f27595b);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private List<CampaignEx> b(List<CampaignEx> list) {
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            try {
                if (list.size() > 0) {
                    int e10 = this.f27602i.e();
                    for (int i10 = 0; i10 < list.size() && i10 < this.f27599f && arrayList.size() < e10; i10++) {
                        CampaignEx campaignEx = list.get(i10);
                        int i11 = 1;
                        if ((campaignEx == null || campaignEx.getOfferType() != 1 || !TextUtils.isEmpty(campaignEx.getVideoUrlEncode())) && campaignEx != null && ((!TextUtils.isEmpty(campaignEx.getHtmlUrl()) || campaignEx.isMraid()) && campaignEx.getOfferType() != 99)) {
                            if (u0.c(campaignEx)) {
                                if (!u0.c(this.f27594a, campaignEx.getPackageName())) {
                                    i11 = 2;
                                }
                                campaignEx.setRtinsType(i11);
                            }
                            if (com.mbridge.msdk.foundation.same.c.b(this.f27594a, campaignEx)) {
                                arrayList.add(campaignEx);
                            } else {
                                u0.a(this.f27595b, campaignEx, com.mbridge.msdk.foundation.same.a.f27042x);
                            }
                            a(campaignEx, null, this.f27594a, null);
                        }
                    }
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(List<CampaignEx> list) {
        if (this.f27594a == null || list == null || list.size() == 0) {
            return;
        }
        j a10 = j.a(g.a(this.f27594a));
        for (int i10 = 0; i10 < list.size(); i10++) {
            CampaignEx campaignEx = list.get(i10);
            if (campaignEx != null && a10 != null && !a10.a(campaignEx.getId())) {
                com.mbridge.msdk.foundation.entity.g gVar = new com.mbridge.msdk.foundation.entity.g();
                gVar.a(campaignEx.getId());
                gVar.b(campaignEx.getFca());
                gVar.c(campaignEx.getFcb());
                gVar.a(0);
                gVar.d(0);
                gVar.a(System.currentTimeMillis());
                a10.b(gVar);
            }
        }
    }

    public void a(a.b bVar) {
        this.f27601h = bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(CampaignUnit campaignUnit) {
        if (campaignUnit != null && campaignUnit.getAds() != null && campaignUnit.getAds().size() > 0) {
            ArrayList<CampaignEx> ads = campaignUnit.getAds();
            List<CampaignEx> b10 = b(ads);
            a(campaignUnit.getSessionId());
            n();
            a(ads, b10);
            return;
        }
        b("no server ads available");
    }

    private void a(CampaignEx campaignEx, com.mbridge.msdk.foundation.same.report.metrics.c cVar, Context context, com.mbridge.msdk.foundation.same.report.metrics.callback.a aVar) {
        try {
            com.mbridge.msdk.foundation.same.c.a(campaignEx, this.f27594a, cVar, new c(campaignEx, context, aVar));
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
            }
        }
    }

    private void a(List<CampaignEx> list, List<CampaignEx> list2) {
        new Thread(new d(list2, list)).start();
    }

    private int b() {
        int i10 = 0;
        try {
            int a10 = !TextUtils.isEmpty(this.f27595b) ? com.mbridge.msdk.interstitial.controller.a.a(this.f27595b) : 0;
            if (a10 <= g()) {
                i10 = a10;
            }
            p0.c("IntersAdapter", "getCurrentOffset:" + i10);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<CampaignEx> a(List<CampaignEx> list) {
        FileOutputStream fileOutputStream;
        File file;
        File file2;
        ArrayList arrayList = new ArrayList(list.size());
        for (CampaignEx campaignEx : list) {
            if (campaignEx.isMraid() && !TextUtils.isEmpty(campaignEx.getMraid())) {
                com.mbridge.msdk.foundation.same.report.g.a("m_download_start", campaignEx, "", this.f27595b, "5");
                FileOutputStream fileOutputStream2 = null;
                try {
                    try {
                        String b10 = com.mbridge.msdk.foundation.same.directory.e.b(com.mbridge.msdk.foundation.same.directory.c.MBRIDGE_700_HTML);
                        String md5 = SameMD5.getMD5(b1.b(campaignEx.getMraid()));
                        if (TextUtils.isEmpty(md5)) {
                            md5 = String.valueOf(System.currentTimeMillis());
                        }
                        file2 = new File(b10, md5.concat(".html"));
                        fileOutputStream = new FileOutputStream(file2);
                    } catch (Exception e10) {
                        e = e10;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    fileOutputStream = null;
                }
                try {
                    StringBuilder sb2 = new StringBuilder();
                    String b11 = com.mbridge.msdk.setting.util.a.a().b();
                    if (!TextUtils.isEmpty(b11)) {
                        sb2.append("<script>");
                        sb2.append(b11);
                        sb2.append("</script>");
                    }
                    sb2.append(campaignEx.getMraid());
                    fileOutputStream.write(sb2.toString().getBytes());
                    fileOutputStream.flush();
                    campaignEx.setMraid(file2.getAbsolutePath());
                    com.mbridge.msdk.foundation.same.report.g.a("m_download_end", campaignEx, "", this.f27595b, "5");
                    try {
                        fileOutputStream.close();
                    } catch (Exception e11) {
                        e11.printStackTrace();
                    }
                } catch (Exception e12) {
                    e = e12;
                    fileOutputStream2 = fileOutputStream;
                    e.printStackTrace();
                    campaignEx.setMraid("");
                    com.mbridge.msdk.foundation.same.report.g.a("m_download_end", campaignEx, e.getMessage(), this.f27595b, "5");
                    if (fileOutputStream2 != null) {
                        fileOutputStream2.close();
                    }
                    file = new File(campaignEx.getMraid());
                    if (file.exists()) {
                    }
                    b("mraid resource write fail");
                } catch (Throwable th3) {
                    th = th3;
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (Exception e13) {
                            e13.printStackTrace();
                        }
                    }
                    throw th;
                }
                file = new File(campaignEx.getMraid());
                if (file.exists() || !file.isFile() || !file.canRead()) {
                    b("mraid resource write fail");
                }
            }
            arrayList.add(campaignEx);
        }
        return arrayList;
    }

    private void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        p0.c("IntersAdapter", "onload sessionId:" + str);
        com.mbridge.msdk.interstitial.controller.a.f27615o = str;
    }
}
