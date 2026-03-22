package com.mbridge.msdk.foundation.same.report.metrics;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.io.Serializable;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
/* compiled from: MetricsData.java */
/* loaded from: classes5.dex */
public class c implements Serializable, Cloneable {
    private int A;
    private int B;
    private CampaignEx C;
    private CopyOnWriteArrayList<CampaignEx> D;

    /* renamed from: a  reason: collision with root package name */
    private boolean f27286a;

    /* renamed from: b  reason: collision with root package name */
    private Map<String, Map<String, String>> f27287b;

    /* renamed from: c  reason: collision with root package name */
    private Map<String, Map<String, String>> f27288c;

    /* renamed from: d  reason: collision with root package name */
    private Map<String, Map<String, String>> f27289d;

    /* renamed from: e  reason: collision with root package name */
    private Map<String, Long> f27290e;

    /* renamed from: f  reason: collision with root package name */
    private com.mbridge.msdk.foundation.error.b f27291f;

    /* renamed from: g  reason: collision with root package name */
    private String f27292g;

    /* renamed from: h  reason: collision with root package name */
    private CopyOnWriteArrayList<CampaignEx> f27293h;

    /* renamed from: i  reason: collision with root package name */
    private String f27294i;

    /* renamed from: j  reason: collision with root package name */
    private int f27295j;

    /* renamed from: k  reason: collision with root package name */
    private String f27296k;

    /* renamed from: l  reason: collision with root package name */
    private String f27297l;

    /* renamed from: m  reason: collision with root package name */
    private String f27298m;

    /* renamed from: n  reason: collision with root package name */
    private String f27299n;

    /* renamed from: o  reason: collision with root package name */
    private String f27300o;

    /* renamed from: p  reason: collision with root package name */
    private String f27301p;

    /* renamed from: q  reason: collision with root package name */
    private String f27302q;

    /* renamed from: r  reason: collision with root package name */
    private String f27303r;

    /* renamed from: s  reason: collision with root package name */
    private int f27304s;

    /* renamed from: t  reason: collision with root package name */
    private int f27305t;

    /* renamed from: u  reason: collision with root package name */
    private boolean f27306u;

    /* renamed from: v  reason: collision with root package name */
    private boolean f27307v;

    /* renamed from: w  reason: collision with root package name */
    private boolean f27308w;

    /* renamed from: x  reason: collision with root package name */
    private boolean f27309x;

    /* renamed from: y  reason: collision with root package name */
    private int f27310y;

    /* renamed from: z  reason: collision with root package name */
    private int f27311z;

    public c() {
        this.f27286a = false;
        this.f27287b = new HashMap();
        this.f27288c = new HashMap();
        this.f27289d = new HashMap();
        this.f27290e = new HashMap();
        this.f27292g = "";
        this.f27293h = new CopyOnWriteArrayList<>();
        this.f27304s = -1;
        this.f27306u = false;
        this.f27308w = false;
        this.D = new CopyOnWriteArrayList<>();
    }

    public boolean A() {
        return this.f27307v;
    }

    public boolean B() {
        return this.f27286a;
    }

    public void a(boolean z10) {
        this.f27306u = z10;
    }

    public void b(List<CampaignEx> list) {
        if (list != null) {
            try {
                if (list.size() > 0) {
                    if (!this.D.isEmpty()) {
                        this.D.clear();
                    }
                    this.D.addAll(list);
                }
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    e10.printStackTrace();
                }
            }
        }
    }

    public String c() {
        return this.f27302q;
    }

    @NonNull
    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    public void d(String str) {
        if (this.f27290e == null || TextUtils.isEmpty(str)) {
            return;
        }
        this.f27290e.put(str, Long.valueOf(System.currentTimeMillis()));
    }

    public void e(int i10) {
        this.f27304s = i10;
    }

    public void f(String str) {
        this.f27302q = str;
    }

    public List<CampaignEx> g() {
        return this.f27293h;
    }

    public void h(String str) {
        this.f27301p = str;
    }

    public void i(String str) {
        this.f27292g = str;
    }

    public void j(String str) {
        this.f27303r = str;
    }

    public void k(String str) {
        this.f27297l = str;
    }

    public int l() {
        return this.f27304s;
    }

    public void m(String str) {
        this.f27298m = str;
    }

    public void n(String str) {
        this.f27294i = str;
    }

    public String o() {
        return this.f27292g;
    }

    public com.mbridge.msdk.foundation.error.b p() {
        return this.f27291f;
    }

    public Map<String, Map<String, String>> q() {
        return this.f27289d;
    }

    public Map<String, Map<String, String>> r() {
        return this.f27287b;
    }

    public String s() {
        return this.f27297l;
    }

    public String t() {
        return this.f27300o;
    }

    public String u() {
        return this.f27298m;
    }

    public int v() {
        return this.B;
    }

    public String w() {
        Map<String, String> map;
        if (!TextUtils.isEmpty(this.f27294i)) {
            return this.f27294i;
        }
        try {
            if (TextUtils.isEmpty(this.f27294i)) {
                String str = this.f27292g + this.f27303r;
                Map<String, Map<String, String>> map2 = this.f27287b;
                if (map2 != null && map2.containsKey(str) && (map = this.f27287b.get(str)) != null && map.containsKey(MBridgeConstans.PROPERTIES_UNIT_ID)) {
                    this.f27294i = map.get(MBridgeConstans.PROPERTIES_UNIT_ID);
                }
            }
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
            }
        }
        return this.f27294i;
    }

    public String x() {
        return this.f27299n;
    }

    public boolean y() {
        return this.f27306u;
    }

    public boolean z() {
        return this.f27308w;
    }

    public void a(List<CampaignEx> list) {
        if (list != null) {
            try {
                if (list.isEmpty()) {
                    return;
                }
                if (!this.f27293h.isEmpty()) {
                    this.f27293h.clear();
                }
                this.f27293h.addAll(list);
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    e10.printStackTrace();
                }
            }
        }
    }

    public Map<String, String> c(String str) {
        com.mbridge.msdk.foundation.error.b p10;
        com.mbridge.msdk.foundation.error.b p11;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        e eVar = new e();
        try {
            this.f27303r = str;
            eVar.a(CampaignEx.JSON_KEY_ST_TS, Long.valueOf(System.currentTimeMillis()));
            if (!TextUtils.isEmpty(w())) {
                eVar.a(MBridgeConstans.PROPERTIES_UNIT_ID, w());
            }
            if (this.f27295j != 0) {
                eVar.a("adtp", Integer.valueOf(a()));
            }
            if (!TextUtils.isEmpty(n())) {
                eVar.a(CampaignEx.JSON_KEY_HB, n());
            }
            if (!TextUtils.isEmpty(f())) {
                eVar.a("bid_tk", f());
            }
            if (!TextUtils.isEmpty(str)) {
                eVar.a("key", str);
            }
            if (Arrays.asList(b.f27271a).contains(str)) {
                eVar.a("from_cache", y() ? "1" : "2");
            }
            if ("2000047".contains(str) && (p11 = p()) != null) {
                eVar.a("type", Integer.valueOf(p11.c()));
                eVar.a("reason", p11.g());
                if (!TextUtils.isEmpty(p11.h())) {
                    eVar.a("reason_d", p11.h());
                    eVar.a("type_d", Integer.valueOf(p11.i()));
                }
            }
            if ("2000048".contains(str) && (p10 = p()) != null && !TextUtils.isEmpty(p10.h())) {
                eVar.a("type", Integer.valueOf(p10.i()));
                eVar.a("reason", p10.h());
            }
            if (this.f27295j == 296) {
                eVar.a("auto_load", c());
                eVar.a("auto_refresh", Integer.valueOf(b()));
                eVar.a("auto_refresh_interval", Integer.valueOf(e()));
                eVar.a("content_type", Integer.valueOf(k()));
                eVar.a("temp_display_type", Integer.valueOf(v()));
            }
            a(eVar);
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
            }
        }
        return eVar.a();
    }

    public void e(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            String str2 = this.f27292g + str;
            Map<String, Map<String, String>> map = this.f27287b;
            if (map == null || !map.containsKey(str2)) {
                return;
            }
            this.f27287b.remove(str2);
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
            }
        }
    }

    public String f() {
        return this.f27296k;
    }

    public void g(String str) {
        this.f27296k = str;
    }

    public CampaignEx i() {
        return this.C;
    }

    public List<CampaignEx> j() {
        return this.D;
    }

    public int k() {
        return this.A;
    }

    public void l(String str) {
        this.f27300o = str;
    }

    public int m() {
        return this.f27305t;
    }

    public String n() {
        return this.f27301p;
    }

    public void o(String str) {
        this.f27299n = str;
    }

    public void d(boolean z10) {
        this.f27309x = z10;
    }

    public void f(int i10) {
        this.f27305t = i10;
    }

    public void g(int i10) {
        this.B = i10;
    }

    public void d(int i10) {
        this.A = i10;
    }

    public void b(String str, e eVar) {
        Map<String, String> map;
        if (TextUtils.isEmpty(str) || eVar == null) {
            return;
        }
        try {
            String str2 = this.f27292g + str;
            Map<String, Map<String, String>> map2 = this.f27288c;
            if (map2 != null) {
                if (map2.containsKey(str2) && (map = this.f27288c.get(str2)) != null) {
                    map.putAll(eVar.a());
                } else {
                    this.f27288c.put(str2, eVar.a());
                }
            }
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
            }
        }
    }

    public void a(CampaignEx campaignEx) {
        this.C = campaignEx;
        if (campaignEx == null) {
            return;
        }
        try {
            CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList = this.D;
            if (copyOnWriteArrayList != null && !copyOnWriteArrayList.isEmpty()) {
                int i10 = 0;
                while (true) {
                    if (i10 >= this.D.size()) {
                        break;
                    }
                    if (this.D.get(i10) != null && this.D.get(i10).getId().equals(campaignEx.getId())) {
                        this.D.set(i10, campaignEx);
                        break;
                    }
                    i10++;
                }
            }
            CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList2 = this.f27293h;
            if (copyOnWriteArrayList2 == null || copyOnWriteArrayList2.isEmpty()) {
                return;
            }
            for (int i11 = 0; i11 < this.f27293h.size(); i11++) {
                if (this.f27293h.get(i11) != null && this.f27293h.get(i11).getId().equals(campaignEx.getId())) {
                    this.f27293h.set(i11, campaignEx);
                    return;
                }
            }
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
            }
        }
    }

    public int e() {
        return this.f27311z;
    }

    public c(boolean z10) {
        this.f27286a = false;
        this.f27287b = new HashMap();
        this.f27288c = new HashMap();
        this.f27289d = new HashMap();
        this.f27290e = new HashMap();
        this.f27292g = "";
        this.f27293h = new CopyOnWriteArrayList<>();
        this.f27304s = -1;
        this.f27306u = false;
        this.f27308w = false;
        this.D = new CopyOnWriteArrayList<>();
        this.f27286a = z10;
    }

    public long b(String str) {
        Map<String, Long> map;
        try {
            if (TextUtils.isEmpty(str) || (map = this.f27290e) == null || !map.containsKey(str)) {
                return 0L;
            }
            Long l10 = this.f27290e.get(str);
            return System.currentTimeMillis() - (l10 != null ? l10.longValue() : 0L);
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
                return 0L;
            }
            return 0L;
        }
    }

    public int a() {
        return this.f27295j;
    }

    public void a(int i10) {
        this.f27295j = i10;
    }

    public Map<String, String> a(String str) {
        return this.f27288c.containsKey(str) ? this.f27288c.remove(str) : new HashMap();
    }

    public void b(boolean z10) {
        this.f27308w = z10;
    }

    public int b() {
        return this.f27310y;
    }

    public void a(String str, e eVar) {
        Map<String, String> map;
        if (TextUtils.isEmpty(str) || eVar == null) {
            return;
        }
        try {
            String str2 = this.f27292g + str;
            Map<String, Map<String, String>> map2 = this.f27287b;
            if (map2 != null) {
                if (map2.containsKey(str2) && (map = this.f27287b.get(str2)) != null) {
                    map.putAll(eVar.a());
                } else {
                    this.f27287b.put(str2, eVar.a());
                }
            }
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
            }
        }
    }

    public void b(int i10) {
        this.f27310y = i10;
    }

    private void a(e eVar) {
        if ("2000126".equals(this.f27303r)) {
            String a10 = com.mbridge.msdk.foundation.same.net.d.a(f());
            if (eVar != null) {
                eVar.a("dns_ty", Integer.valueOf(com.mbridge.msdk.setting.e.a().a(a10)));
                eVar.a("dns_hs", a10);
            }
        }
    }

    public void a(com.mbridge.msdk.foundation.error.b bVar) {
        this.f27291f = bVar;
    }

    public void c(boolean z10) {
        this.f27307v = z10;
    }

    public void c(int i10) {
        this.f27311z = i10;
    }
}
