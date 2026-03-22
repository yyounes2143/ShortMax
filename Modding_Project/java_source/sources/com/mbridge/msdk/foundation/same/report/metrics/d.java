package com.mbridge.msdk.foundation.same.report.metrics;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.db.g;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.n;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.mbridge.msdk.foundation.tools.l0;
import com.mbridge.msdk.foundation.tools.p0;
import com.mbridge.msdk.foundation.tools.r0;
import com.mbridge.msdk.foundation.tools.u0;
import com.mbridge.msdk.mbbid.common.BidResponsedEx;
import com.mbridge.msdk.tracker.m;
import com.mbridge.msdk.tracker.network.toolbox.h;
import com.mbridge.msdk.tracker.p;
import com.mbridge.msdk.tracker.x;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;
/* compiled from: MetricsManager.java */
/* loaded from: classes5.dex */
public class d {

    /* renamed from: e  reason: collision with root package name */
    private static d f27312e;

    /* renamed from: a  reason: collision with root package name */
    private volatile m f27313a;

    /* renamed from: b  reason: collision with root package name */
    private Map<String, e> f27314b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    private LinkedHashMap<String, c> f27315c = new LinkedHashMap<>();

    /* renamed from: d  reason: collision with root package name */
    private Map<String, e> f27316d = new HashMap();

    private d() {
        if (this.f27313a == null) {
            this.f27313a = m.a("metrics_sdk", com.mbridge.msdk.foundation.controller.c.m().d(), a());
        }
        JSONObject b10 = com.mbridge.msdk.foundation.same.report.c.b();
        if (this.f27313a != null) {
            this.f27313a.a(b10);
            this.f27313a.h();
        }
    }

    public c a(boolean z10, String str, e eVar, CampaignEx campaignEx, String str2) {
        c cVar;
        String a10;
        c cVar2 = new c();
        try {
            a(z10, str2);
            if (TextUtils.isEmpty(str)) {
                a10 = SameMD5.getMD5(u0.d());
            } else {
                a10 = a(str);
            }
            campaignEx.setLocalRequestId(a10);
            cVar2 = b().b(a10);
            if (cVar2 == null) {
                cVar = new c();
                try {
                    b().c().put(a10, cVar);
                    cVar.d(true);
                    b().c().put(a10, cVar);
                    cVar2 = cVar;
                } catch (Exception e10) {
                    e = e10;
                    if (MBridgeConstans.DEBUG) {
                        p0.b("MetricsManager", e.getMessage());
                    }
                    return cVar;
                }
            }
            cVar2.i(a10);
            cVar2.n(str2);
            if (eVar != null) {
                if (eVar.a("adtp")) {
                    cVar2.a(Integer.parseInt((String) eVar.b("adtp")));
                }
                if (eVar.a(CampaignEx.JSON_KEY_HB)) {
                    String str3 = (String) eVar.b(CampaignEx.JSON_KEY_HB);
                    cVar2.h(str3);
                    if (str3.equals("1")) {
                        cVar2.g(str);
                    }
                }
            }
            cVar2.f(z10 ? "2" : "1");
            return cVar2;
        } catch (Exception e11) {
            e = e11;
            cVar = cVar2;
        }
    }

    public void b(c cVar) {
        if (cVar != null) {
            try {
                if (this.f27314b != null) {
                    e eVar = new e();
                    eVar.a("rs_rid", cVar.s());
                    eVar.a("r_stid", cVar.t());
                    eVar.a("rus_rid", cVar.u());
                    eVar.a("u_stid", cVar.x());
                    this.f27314b.put(cVar.w(), eVar);
                }
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    e10.printStackTrace();
                }
            }
        }
    }

    public e c(String str) {
        Map<String, e> map;
        e eVar = new e();
        try {
            return (TextUtils.isEmpty(str) || (map = this.f27314b) == null || !map.containsKey(str)) ? eVar : this.f27314b.get(str);
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
                return eVar;
            }
            return eVar;
        }
    }

    public void d(String str) {
        b(str, "");
    }

    public void e(String str) {
        try {
            JSONObject a10 = com.mbridge.msdk.foundation.same.c.a(str);
            if (a10 != null && a10.length() != 0) {
                String optString = a10.optString("key");
                if (TextUtils.isEmpty(optString)) {
                    return;
                }
                com.mbridge.msdk.tracker.e eVar = new com.mbridge.msdk.tracker.e(optString);
                eVar.a(0);
                eVar.b(0);
                eVar.a(com.mbridge.msdk.foundation.same.report.c.d());
                eVar.a(a10);
                m d10 = b().d();
                if (d10 != null && d10.g()) {
                    d10.d(eVar);
                }
            }
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                p0.b("EventLibraryReport", "reportByTrackManager error: " + e10.getMessage());
            }
        }
    }

    public m d() {
        try {
            JSONObject b10 = com.mbridge.msdk.foundation.same.report.c.b();
            if (this.f27313a == null) {
                this.f27313a = m.a("metrics_sdk", com.mbridge.msdk.foundation.controller.c.m().d(), a());
                if (this.f27313a != null) {
                    this.f27313a.a(b10);
                    this.f27313a.h();
                }
            } else {
                this.f27313a.a(b10);
            }
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
            }
        }
        return this.f27313a;
    }

    public LinkedHashMap<String, c> c() {
        return this.f27315c;
    }

    public static d b() {
        if (f27312e == null) {
            synchronized (d.class) {
                try {
                    if (f27312e == null) {
                        f27312e = new d();
                    }
                } finally {
                }
            }
        }
        return f27312e;
    }

    public void b(String str, c cVar, com.mbridge.msdk.foundation.same.report.metrics.callback.a aVar) {
        a(str, cVar, aVar);
    }

    public void b(String str, e eVar) {
        try {
            c cVar = new c();
            if (eVar.b(MBridgeConstans.PROPERTIES_UNIT_ID) != null) {
                cVar.n(String.valueOf(eVar.b(MBridgeConstans.PROPERTIES_UNIT_ID)));
            }
            if (eVar.b("lrid") != null && (eVar.b("lrid") instanceof String)) {
                cVar.i(String.valueOf(eVar.b("lrid")));
            }
            cVar.a(str, eVar);
            new f().b(str, d(), cVar, null);
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
            }
        }
    }

    public String a(String str) {
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

    public c b(String str) {
        return a(str, "");
    }

    public void b(String str, String str2) {
        LinkedHashMap<String, c> linkedHashMap;
        try {
            String str3 = str + str2;
            if (!TextUtils.isEmpty(str3) && (linkedHashMap = this.f27315c) != null && linkedHashMap.containsKey(str3)) {
                this.f27315c.remove(str3);
            }
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
            }
        }
    }

    private void a(boolean z10, String str) {
        List<String> e10;
        if (z10) {
            try {
                com.mbridge.msdk.foundation.db.e a10 = com.mbridge.msdk.foundation.db.e.a(g.a(com.mbridge.msdk.foundation.controller.c.m().d()));
                if (a10 != null && (e10 = a10.e(str)) != null && e10.size() > 0) {
                    for (String str2 : e10) {
                        b().d(str2);
                    }
                }
                LinkedHashMap<String, c> c10 = b().c();
                if (c10 == null || c10.size() <= 0) {
                    return;
                }
                Iterator<Map.Entry<String, c>> it = c10.entrySet().iterator();
                while (it.hasNext()) {
                    Map.Entry<String, c> next = it.next();
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

    public void a(String str, e eVar) {
        Map<String, e> map = this.f27316d;
        if (map != null) {
            map.put(str, eVar);
        }
    }

    public e a(int i10, int i11, String str, boolean z10, int i12) {
        e eVar = new e();
        try {
            eVar.a(CampaignEx.JSON_KEY_HB, Integer.valueOf(i10));
            eVar.a("adtp", Integer.valueOf(i11));
            eVar.a(MBridgeConstans.PROPERTIES_UNIT_ID, str);
            if (z10) {
                eVar.a("auto_load", Integer.valueOf(i12));
            }
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
            }
        }
        return eVar;
    }

    private x a() {
        try {
            int b10 = r0.a().b("metrics", "t_m_e_t", r0.a().b("t_m_e_t", 604800000));
            int b11 = r0.a().b("metrics", "t_m_e_s", r0.a().b("t_m_e_s", 50));
            int b12 = r0.a().b("metrics", "t_m_r_c", r0.a().b("t_m_r_c", 50));
            int b13 = r0.a().b("metrics", "t_m_t", r0.a().b("t_m_t", 15000));
            int b14 = r0.a().b("metrics", "t_m_r_t_s", r0.a().b("t_m_r_t_s", 2));
            int b15 = r0.a().b("metrics", "t_r_t", r0.a().b("t_r_t", 1));
            if (b15 != 0 && b15 != 1) {
                b15 = 0;
            }
            return new x.b().a(b10).b(b11).d(b12).c(b13).e(b14).a(new com.mbridge.msdk.foundation.same.report.d()).a(com.mbridge.msdk.foundation.same.report.c.c()).a(new n()).a(b15, a(b15)).a();
        } catch (Exception e10) {
            p0.b("EventLibraryReport", "configTrackManager error: " + e10.getMessage());
            return null;
        }
    }

    private p a(int i10) {
        if (i10 == 1) {
            return new p(new com.mbridge.msdk.foundation.same.report.m((byte) 2), com.mbridge.msdk.foundation.same.net.utils.d.h().f27167j, com.mbridge.msdk.foundation.same.net.utils.d.h().f27171n);
        }
        return new p(new h(), com.mbridge.msdk.foundation.same.net.utils.d.h().f27158d, 0);
    }

    public void a(String str, CampaignEx campaignEx, e eVar) {
        c cVar;
        String str2 = "";
        if (campaignEx != null) {
            try {
                str2 = campaignEx.getLocalRequestId();
                cVar = c().get(str2);
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    e10.printStackTrace();
                    return;
                }
                return;
            }
        } else {
            cVar = null;
        }
        if (cVar != null) {
            if (Arrays.asList(b.f27278h).contains(str)) {
                cVar = a(cVar);
            }
        } else {
            cVar = new c();
        }
        cVar.a(campaignEx);
        cVar.i(str2);
        cVar.a(str, eVar);
        a(str, cVar, (com.mbridge.msdk.foundation.same.report.metrics.callback.a) null);
    }

    public void a(String str, CampaignEx campaignEx) {
        String str2 = "";
        if (campaignEx != null) {
            try {
                str2 = campaignEx.getCurrentLocalRid();
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    e10.printStackTrace();
                    return;
                }
                return;
            }
        }
        c cVar = c().get(str2);
        if (cVar == null) {
            cVar = new c();
        }
        if (cVar.j() != null && !cVar.j().isEmpty() && campaignEx != null) {
            int i10 = 0;
            while (true) {
                if (i10 >= cVar.j().size()) {
                    break;
                } else if (cVar.j().get(i10).getId().equals(campaignEx.getId())) {
                    cVar.j().set(i10, campaignEx);
                    break;
                } else {
                    i10++;
                }
            }
        }
        cVar.a(campaignEx);
        cVar.i(str2);
        a(str, cVar, (com.mbridge.msdk.foundation.same.report.metrics.callback.a) null);
    }

    public void a(String str, List<CampaignEx> list, e eVar) {
        CampaignEx campaignEx;
        String str2 = "";
        if (list != null) {
            try {
                if (list.size() > 0 && (campaignEx = list.get(0)) != null) {
                    str2 = campaignEx.getCurrentLocalRid();
                }
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    e10.printStackTrace();
                    return;
                }
                return;
            }
        }
        c cVar = c().get(str2);
        if (cVar == null) {
            cVar = new c();
        }
        cVar.b(list);
        if (list != null && list.size() > 0) {
            cVar.i(list.get(0).getCurrentLocalRid());
        }
        cVar.a(str, eVar);
        a(str, cVar, (com.mbridge.msdk.foundation.same.report.metrics.callback.a) null);
    }

    public void a(com.mbridge.msdk.foundation.entity.n nVar, CampaignEx campaignEx) {
        e eVar = new e();
        eVar.a("result", Integer.valueOf(nVar.x()));
        eVar.a("scenes", nVar.a("scenes", ""));
        eVar.a("resource_type", Integer.valueOf(nVar.y()));
        eVar.a("url", nVar.a("url", ""));
        eVar.a("reason", nVar.t());
        eVar.a("mraid_type", Integer.valueOf(nVar.p()));
        b().a(nVar.n(), campaignEx, eVar);
    }

    public void a(String str, c cVar) {
        try {
            Map<String, e> map = this.f27316d;
            if (map != null && map.containsKey(str) && cVar != null) {
                cVar.a(str, this.f27316d.get(str));
            }
            new f().a(str, d(), cVar, null);
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
            }
        }
    }

    public void a(String str, c cVar, CampaignEx campaignEx, Context context, com.mbridge.msdk.foundation.same.report.metrics.callback.a aVar) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            if (cVar == null) {
                cVar = new c();
            }
            e eVar = new e();
            eVar.a("st", Long.valueOf(System.currentTimeMillis()));
            if (campaignEx != null) {
                eVar.a(BidResponsedEx.KEY_CID, campaignEx.getId());
                eVar.a("lrid", campaignEx.getLocalRequestId());
                eVar.a("rid", campaignEx.getRequestId());
                eVar.a("rid_n", campaignEx.getRequestIdNotice());
                eVar.a("adtp", Integer.valueOf(campaignEx.getAdType()));
                if (!eVar.a(MBridgeConstans.PROPERTIES_UNIT_ID)) {
                    eVar.a(MBridgeConstans.PROPERTIES_UNIT_ID, campaignEx.getCampaignUnitId());
                }
                eVar.a(CampaignEx.JSON_KEY_HB, Integer.valueOf(campaignEx.isBidCampaign() ? 1 : 0));
                eVar.a("bid_tk", campaignEx.getBidToken());
            }
            if (context != null) {
                eVar.a("network_type", Integer.valueOf(l0.s(context)));
            }
            cVar.a(str, eVar);
            a(str, cVar, aVar);
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
            }
        }
    }

    private void a(String str, c cVar, com.mbridge.msdk.foundation.same.report.metrics.callback.a aVar) {
        try {
            if (Arrays.asList(b.f27273c).contains(str)) {
                cVar.d(str);
            }
            Map<String, e> map = this.f27316d;
            if (map != null && map.containsKey(str)) {
                cVar.a(str, this.f27316d.get(str));
            }
            new f().a(str, d(), cVar, aVar);
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
            }
        }
    }

    public c a(String str, String str2) {
        LinkedHashMap<String, c> linkedHashMap;
        try {
            String str3 = str + str2;
            if (!TextUtils.isEmpty(str3) && (linkedHashMap = this.f27315c) != null && linkedHashMap.containsKey(str3)) {
                return this.f27315c.get(str3);
            }
            return null;
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
            }
            return null;
        }
    }

    public c a(c cVar) {
        if (cVar == null) {
            return null;
        }
        try {
            return (c) cVar.clone();
        } catch (CloneNotSupportedException e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
                return null;
            }
            return null;
        }
    }

    public void a(JSONObject jSONObject) {
        if (jSONObject != null) {
            try {
                if (jSONObject.length() == 0) {
                    return;
                }
                String optString = jSONObject.optString("key");
                if (TextUtils.isEmpty(optString)) {
                    return;
                }
                com.mbridge.msdk.tracker.e eVar = new com.mbridge.msdk.tracker.e(optString);
                eVar.a(0);
                eVar.b(0);
                eVar.a(com.mbridge.msdk.foundation.same.report.c.d());
                eVar.a(jSONObject);
                m d10 = b().d();
                if (d10 == null || !d10.g()) {
                    return;
                }
                d10.d(eVar);
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    p0.b("EventLibraryReport", "reportByTrackManager error: " + e10.getMessage());
                }
            }
        }
    }
}
