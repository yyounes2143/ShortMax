package com.mbridge.msdk.reward.candidate;

import android.text.TextUtils;
import com.mbridge.msdk.foundation.cache.a;
import com.mbridge.msdk.foundation.cache.d;
import com.mbridge.msdk.foundation.controller.b;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.metrics.e;
import com.mbridge.msdk.foundation.tools.j0;
import com.mbridge.msdk.foundation.tools.u0;
import com.ss.ttm.player.MediaPlayer;
import com.vungle.ads.internal.presenter.MRAIDPresenter;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: RewardCandidateController.java */
/* loaded from: classes6.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private d f28759a;

    public a(String str, boolean z10) {
        try {
            this.f28759a = b.a().b(str, com.mbridge.msdk.videocommon.setting.b.b().a(c.m().b(), str, z10).B());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void a(List<CampaignEx> list, String str, com.mbridge.msdk.reward.adapter.c cVar, String str2) {
        try {
            if (this.f28759a == null || TextUtils.isEmpty(str)) {
                return;
            }
            this.f28759a.a(com.mbridge.msdk.foundation.cache.a.f26652f, 2, list, this.f28759a.a(list, str) > 0, "", "", -1, str2);
            d dVar = this.f28759a;
            JSONObject c10 = dVar.c(dVar.d(str));
            if (c10 == null || this.f28759a.b(str) <= 0.0d) {
                return;
            }
            a(this.f28759a.a(c10.optInt("max_usage_limit", 10), 0L), c10, c10.optInt("max_cache_num", 20), -1.0d, cVar, new com.mbridge.msdk.foundation.same.report.metrics.c(), str, false, 0);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public com.mbridge.msdk.foundation.cache.c a(String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar, CampaignEx campaignEx, com.mbridge.msdk.foundation.error.b bVar, int i10, com.mbridge.msdk.reward.adapter.c cVar2) {
        String requestId;
        com.mbridge.msdk.foundation.cache.c cVar3 = new com.mbridge.msdk.foundation.cache.c();
        if (campaignEx == null) {
            requestId = "";
        } else {
            try {
                try {
                    requestId = campaignEx.getRequestId();
                } catch (Exception unused) {
                    cVar3.d("getRewardCandidateCampaignList result exception");
                    cVar3.a(com.mbridge.msdk.foundation.cache.c.f26672k);
                    return cVar3;
                }
            } catch (Exception unused2) {
                cVar3.d("getCandidateCampaignList result exception");
                cVar3.a(com.mbridge.msdk.foundation.cache.c.f26672k);
                return cVar3;
            }
        }
        return a(str, cVar, requestId, bVar, i10, cVar2);
    }

    private com.mbridge.msdk.foundation.cache.c a(String str, com.mbridge.msdk.foundation.same.report.metrics.c cVar, String str2, com.mbridge.msdk.foundation.error.b bVar, int i10, com.mbridge.msdk.reward.adapter.c cVar2) {
        String str3;
        int i11;
        String str4;
        if (bVar != null) {
            int c10 = bVar.c();
            str3 = bVar.g();
            i11 = c10;
        } else {
            str3 = null;
            i11 = 0;
        }
        String str5 = str3;
        d dVar = this.f28759a;
        if (dVar == null) {
            com.mbridge.msdk.foundation.cache.c cVar3 = new com.mbridge.msdk.foundation.cache.c();
            cVar3.d("can not get manager");
            cVar3.a(com.mbridge.msdk.foundation.cache.c.f26672k);
            return cVar3;
        }
        com.mbridge.msdk.foundation.cache.c a10 = dVar.a(str);
        if (a10.g() > com.mbridge.msdk.foundation.cache.c.f26671j) {
            return a10;
        }
        String[] split = j0.a(str.split("_")[3]).split("\\|");
        double parseDouble = Double.parseDouble(split[0]);
        if (split.length > 1) {
            str4 = split[1];
        } else {
            str4 = "";
        }
        com.mbridge.msdk.foundation.cache.c a11 = a(parseDouble, str4, cVar2, cVar, str, i10);
        this.f28759a.a(a11.c(), cVar, str2, i11, str5, i10, parseDouble);
        return a11;
    }

    private com.mbridge.msdk.foundation.cache.c a(double d10, String str, com.mbridge.msdk.reward.adapter.c cVar, com.mbridge.msdk.foundation.same.report.metrics.c cVar2, String str2, int i10) {
        com.mbridge.msdk.foundation.cache.c a10 = this.f28759a.a();
        try {
        } catch (Exception unused) {
            a10.d("getHighestCampaigns exception");
            a10.a(com.mbridge.msdk.foundation.cache.c.f26672k);
        }
        if (a10.g() > 0) {
            return a10;
        }
        JSONObject c10 = this.f28759a.c(str);
        if (c10 != null) {
            int optInt = c10.optInt("max_usage_limit", 10);
            int optInt2 = c10.optInt("max_cache_num", 20);
            if (optInt2 > 0) {
                long j10 = 8640000;
                long optLong = c10.optLong("show_interval_time", 8640000L);
                if (optLong != 0) {
                    j10 = optLong;
                }
                List<com.mbridge.msdk.foundation.cache.b> a11 = this.f28759a.a(optInt, System.currentTimeMillis() - (j10 * 1000));
                if (a11 != null && a11.size() > 0) {
                    return a(a11, c10, optInt2, d10, cVar, cVar2, str2, true, i10);
                }
                a10.d("no cache");
                a10.a(com.mbridge.msdk.foundation.cache.c.f26672k);
                a(cVar2, str2, a10, (List<a.b>) null, c10, 2);
            } else {
                a10.d("max cache num error");
                a10.a(com.mbridge.msdk.foundation.cache.c.f26672k);
            }
        } else {
            a10.d("setting config not mapping");
            a10.a(com.mbridge.msdk.foundation.cache.c.f26672k);
        }
        return a10;
    }

    private com.mbridge.msdk.foundation.cache.c a(List<com.mbridge.msdk.foundation.cache.b> list, JSONObject jSONObject, int i10, double d10, com.mbridge.msdk.reward.adapter.c cVar, com.mbridge.msdk.foundation.same.report.metrics.c cVar2, String str, boolean z10, int i11) {
        ArrayList arrayList;
        int i12;
        com.mbridge.msdk.foundation.cache.c cVar3;
        a aVar = this;
        List<com.mbridge.msdk.foundation.cache.b> list2 = list;
        com.mbridge.msdk.foundation.cache.c cVar4 = new com.mbridge.msdk.foundation.cache.c();
        if (jSONObject == null) {
            cVar4.d("config is null");
            cVar4.a(com.mbridge.msdk.foundation.cache.c.f26672k);
            return cVar4;
        } else if (list2 != null && list.size() != 0) {
            int i13 = 0;
            for (int i14 = 0; i14 < list.size(); i14++) {
                com.mbridge.msdk.foundation.cache.b bVar = list2.get(i14);
                if (bVar != null) {
                    cVar4.a(bVar.e());
                }
            }
            if (list.size() > 0 && ((list2 = aVar.a(list2, cVar4)) == null || list2.size() == 0)) {
                cVar4.d("existed");
                cVar4.a(com.mbridge.msdk.foundation.cache.c.f26672k);
            }
            if (list2.size() > 0 && ((list2 = aVar.a(list2, cVar, cVar4)) == null || list2.size() == 0)) {
                cVar4.d("not ready");
                cVar4.a(com.mbridge.msdk.foundation.cache.c.f26672k);
            }
            com.mbridge.msdk.foundation.cache.b bVar2 = null;
            if (list2 == null || list2.size() <= 0) {
                arrayList = null;
            } else {
                ArrayList arrayList2 = new ArrayList();
                double optDouble = jSONObject.optDouble("t_disc", 0.8d);
                double optDouble2 = jSONObject.optDouble("u_disc", 0.95d);
                double d11 = 0.0d;
                double optDouble3 = jSONObject.optDouble("max_ecppv_diff", 0.0d);
                int optInt = jSONObject.optInt("time_interval", MediaPlayer.MEDIA_PLAYER_OPTION_MASK_DELAY_LOADING);
                int size = list2.size();
                while (i13 < size) {
                    List<com.mbridge.msdk.foundation.cache.b> list3 = list2;
                    com.mbridge.msdk.foundation.cache.b bVar3 = list2.get(i13);
                    if (bVar3 != null) {
                        i12 = size;
                        cVar3 = cVar4;
                        double pow = Math.pow(optDouble2, bVar3.f()) * bVar3.b() * Math.pow(optDouble, (System.currentTimeMillis() - bVar3.h()) / (optInt * 1000.0d));
                        arrayList2.add(new a.b(pow, bVar3));
                        if (pow >= d10 - optDouble3 && pow > d11) {
                            bVar2 = bVar3;
                            d11 = pow;
                        }
                    } else {
                        i12 = size;
                        cVar3 = cVar4;
                    }
                    i13++;
                    aVar = this;
                    list2 = list3;
                    size = i12;
                    cVar4 = cVar3;
                }
                com.mbridge.msdk.foundation.cache.c cVar5 = cVar4;
                d dVar = aVar.f28759a;
                if (dVar != null) {
                    dVar.a(arrayList2, i10);
                }
                if (bVar2 != null) {
                    cVar4 = cVar5;
                    cVar4.a(bVar2.a());
                    cVar4.a(com.mbridge.msdk.foundation.cache.c.f26673l);
                } else {
                    cVar4 = cVar5;
                    cVar4.d("no match campaign");
                    cVar4.a(com.mbridge.msdk.foundation.cache.c.f26672k);
                }
                arrayList = arrayList2;
            }
            if (z10) {
                a(cVar2, str, cVar4, arrayList, jSONObject, 2);
            }
            return cVar4;
        } else {
            cVar4.d("candidate is null");
            cVar4.a(com.mbridge.msdk.foundation.cache.c.f26672k);
            return cVar4;
        }
    }

    private List<com.mbridge.msdk.foundation.cache.b> a(List<com.mbridge.msdk.foundation.cache.b> list, com.mbridge.msdk.foundation.cache.c cVar) {
        CopyOnWriteArrayList<CampaignEx> a10;
        if (list == null || list.size() == 0) {
            return list;
        }
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < list.size(); i10++) {
            com.mbridge.msdk.foundation.cache.b bVar = list.get(i10);
            if (bVar != null && (a10 = bVar.a()) != null && a10.size() != 0) {
                int i11 = 0;
                boolean z10 = false;
                while (true) {
                    if (i11 >= a10.size()) {
                        break;
                    }
                    CampaignEx campaignEx = a10.get(i11);
                    boolean c10 = u0.c(c.m().d(), campaignEx.getPackageName());
                    if (c10) {
                        cVar.b(bVar.e());
                        d dVar = this.f28759a;
                        if (dVar != null) {
                            dVar.a(bVar.d(), bVar.e(), 2, campaignEx.getEcppv());
                        }
                        z10 = c10;
                    } else {
                        i11++;
                        z10 = c10;
                    }
                }
                if (!z10) {
                    arrayList.add(bVar);
                }
            }
        }
        return arrayList;
    }

    private List<com.mbridge.msdk.foundation.cache.b> a(List<com.mbridge.msdk.foundation.cache.b> list, com.mbridge.msdk.reward.adapter.c cVar, com.mbridge.msdk.foundation.cache.c cVar2) {
        CopyOnWriteArrayList<CampaignEx> a10;
        if (list == null || list.size() == 0) {
            return list;
        }
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < list.size(); i10++) {
            com.mbridge.msdk.foundation.cache.b bVar = list.get(i10);
            if (bVar != null && (a10 = bVar.a()) != null && a10.size() != 0) {
                int i11 = 0;
                boolean z10 = false;
                while (true) {
                    if (i11 >= a10.size()) {
                        break;
                    }
                    CampaignEx campaignEx = a10.get(i11);
                    if (cVar == null || (z10 = cVar.a(a10, !TextUtils.isEmpty(campaignEx.getCMPTEntryUrl())))) {
                        i11++;
                    } else {
                        cVar2.c(bVar.e());
                        d dVar = this.f28759a;
                        if (dVar != null) {
                            dVar.a(bVar.d(), bVar.e(), 2, campaignEx.getEcppv());
                        }
                    }
                }
                if (z10) {
                    arrayList.add(bVar);
                }
            }
        }
        return arrayList;
    }

    public boolean a(String str) {
        JSONObject c10;
        try {
            d dVar = this.f28759a;
            if (dVar != null && (c10 = dVar.c(dVar.d(str))) != null) {
                return c10.optInt("c_cb", 0) == 1;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return false;
    }

    public void a(String str, String str2, int i10, String str3) {
        d dVar = this.f28759a;
        if (dVar != null) {
            dVar.a(str, str2, i10, str3);
        }
    }

    public void a(com.mbridge.msdk.foundation.same.report.metrics.c cVar, String str, com.mbridge.msdk.foundation.cache.c cVar2, List<a.b> list, JSONObject jSONObject, int i10) {
        String str2;
        try {
            e eVar = new e();
            if (i10 == 1) {
                str2 = "cb";
            } else if (i10 == 2) {
                str2 = "candidate";
            } else if (i10 != 3) {
                str2 = "unknown";
            } else {
                str2 = "track";
            }
            eVar.a("scene", str2);
            d dVar = this.f28759a;
            if (dVar != null) {
                double b10 = dVar.b(str);
                if (b10 >= 0.0d) {
                    eVar.a("bp", j0.b(b10 + ""));
                }
                eVar.a("cb_state", a(str) ? MRAIDPresenter.OPEN : "close");
                try {
                    d dVar2 = this.f28759a;
                    JSONObject c10 = dVar2.c(dVar2.d(str));
                    if (c10 != null) {
                        eVar.a("config", c10.toString());
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            if (cVar2 != null) {
                if (cVar2.g() == com.mbridge.msdk.foundation.cache.c.f26673l) {
                    eVar.a("result", 1);
                } else {
                    eVar.a("result", 2);
                    eVar.a("reason", cVar2.e());
                }
                eVar.a("acr", cVar2.a());
                eVar.a("her", cVar2.d());
                eVar.a("nrr", cVar2.f());
                eVar.a("cer", cVar2.b());
            } else {
                eVar.a("result", 2);
                eVar.a("reason", "candidate result is null");
            }
            if (list != null && list.size() > 0) {
                JSONArray jSONArray = new JSONArray();
                for (int i11 = 0; i11 < list.size(); i11++) {
                    com.mbridge.msdk.foundation.cache.b a10 = list.get(i11).a();
                    if (a10 != null) {
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("ecppv", j0.b(a10.b() + ""));
                        jSONObject2.put("showCount", a10.f());
                        jSONObject2.put("intervalTime", System.currentTimeMillis() - a10.h());
                        jSONArray.put(jSONObject2);
                    }
                }
                eVar.a("data", jSONArray.toString());
            }
            if (cVar != null) {
                cVar.j("m_candidate_data");
                cVar.e("m_candidate_data");
                cVar.a("m_candidate_data", eVar);
                if (cVar2 != null && cVar2.c() != null) {
                    cVar.b(cVar2.c());
                }
            }
            com.mbridge.msdk.foundation.same.report.metrics.d.b().b("m_candidate_data", cVar, null);
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }
}
