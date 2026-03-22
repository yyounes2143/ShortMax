package com.bytedance.sdk.openadsdk.core.dLZ;

import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.bytedance.sdk.openadsdk.core.dLZ.ZYk.ZYk;
import com.bytedance.sdk.openadsdk.core.dLZ.ZYk.oJ;
import com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB;
import com.bytedance.sdk.openadsdk.core.model.cY;
import com.google.ads.mediation.inmobi.InMobiNetworkValues;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ex {
    private String Id;
    private boolean QSm;
    private boolean RZ;
    private boolean Ry;
    private boolean awB;
    private long eZI;

    /* renamed from: oq  reason: collision with root package name */
    private String f13131oq;

    /* renamed from: si  reason: collision with root package name */
    private cY f13132si;
    private final AtomicBoolean PiB = new AtomicBoolean(false);
    private final AtomicBoolean WcQ = new AtomicBoolean(false);
    public List<com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB> oJ = new ArrayList();
    public List<com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB> ZYk = new ArrayList();
    public List<com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB> tB = new ArrayList();
    public List<com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB> ex = new ArrayList();
    public List<com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB> Pfn = new ArrayList();

    /* renamed from: ba  reason: collision with root package name */
    public List<com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB> f13130ba = new ArrayList();
    public List<com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB> cFZ = new ArrayList();

    /* renamed from: so  reason: collision with root package name */
    public List<com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB> f13133so = new ArrayList();
    public List<com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB> jFA = new ArrayList();
    public List<com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB> kkU = new ArrayList();
    public List<com.bytedance.sdk.openadsdk.core.dLZ.ZYk.ZYk> dLZ = new ArrayList();
    public List<com.bytedance.sdk.openadsdk.core.dLZ.ZYk.oJ> BTZ = new ArrayList();

    public void BTZ(List<com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB> list) {
        this.kkU.addAll(list);
    }

    public void Pfn(long j10) {
        if (this.WcQ.compareAndSet(false, true)) {
            oJ(j10, this.f13130ba, (com.bytedance.sdk.openadsdk.core.dLZ.oJ.oJ) null);
        }
    }

    public void ZYk(long j10) {
        if (!oJ(j10, this.tB, null, this.awB ? null : new tB.ZYk(CampaignEx.JSON_NATIVE_VIDEO_PAUSE, this.f13132si, (float) j10)) || this.awB) {
            return;
        }
        com.bytedance.sdk.openadsdk.ex.tB.ZYk(this.f13132si, this.f13131oq, "track_pause", (JSONObject) null);
    }

    public void ba(long j10) {
        if (!oJ(j10, this.cFZ, null, this.awB ? null : new tB.ZYk("skip", this.f13132si)) || this.awB) {
            return;
        }
        com.bytedance.sdk.openadsdk.ex.tB.ZYk(this.f13132si, this.f13131oq, "track_skip", (JSONObject) null);
    }

    public void cFZ(long j10) {
        if (!oJ(j10, this.f13133so, null, new tB.ZYk(this.awB ? "click" : "clickTracking", this.f13132si)) || this.awB) {
            return;
        }
        com.bytedance.sdk.openadsdk.ex.tB.ZYk(this.f13132si, this.f13131oq, "track_video_click", (JSONObject) null);
    }

    public void dLZ(List<com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB> list) {
        this.jFA.addAll(list);
    }

    public void ex(long j10) {
        if (!oJ(j10, this.Pfn, null, new tB.ZYk(this.awB ? "video_progress" : CampaignEx.JSON_NATIVE_VIDEO_COMPLETE, this.f13132si, 1.0f)) || this.awB) {
            return;
        }
        com.bytedance.sdk.openadsdk.ex.tB.ZYk(this.f13132si, this.f13131oq, "track_complete", (JSONObject) null);
    }

    public void jFA(long j10) {
        if (!oJ(j10, this.kkU, null, this.awB ? null : new tB.ZYk(CampaignEx.JSON_NATIVE_VIDEO_UNMUTE, this.f13132si, (float) j10)) || this.awB) {
            return;
        }
        com.bytedance.sdk.openadsdk.ex.tB.ZYk(this.f13132si, this.f13131oq, "track_unmute", (JSONObject) null);
    }

    public void kkU(List<com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB> list) {
        this.oJ.addAll(list);
    }

    public void oJ(com.bytedance.sdk.openadsdk.core.dLZ.oJ.oJ oJVar) {
        if (!oJ(-1L, this.oJ, oJVar, this.awB ? null : new tB.ZYk("error", this.f13132si, 0.0f)) || this.awB) {
            return;
        }
        com.bytedance.sdk.openadsdk.ex.tB.ZYk(this.f13132si, this.f13131oq, "track_error", (JSONObject) null);
    }

    public void so(long j10) {
        if (!oJ(j10, this.jFA, null, this.awB ? null : new tB.ZYk("mute", this.f13132si, (float) j10)) || this.awB) {
            return;
        }
        com.bytedance.sdk.openadsdk.ex.tB.ZYk(this.f13132si, this.f13131oq, "track_mute", (JSONObject) null);
    }

    public void tB(long j10) {
        if (!oJ(j10, this.ex, null, this.awB ? null : new tB.ZYk(CampaignEx.JSON_NATIVE_VIDEO_RESUME, this.f13132si, (float) j10)) || this.awB) {
            return;
        }
        com.bytedance.sdk.openadsdk.ex.tB.ZYk(this.f13132si, this.f13131oq, "track_resume", (JSONObject) null);
    }

    public void Pfn(List<com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB> list) {
        this.f13130ba.addAll(list);
    }

    private String ZYk() {
        if (this.Id == null) {
            this.Id = UUID.randomUUID().toString();
        }
        return this.Id;
    }

    public void ba(List<com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB> list) {
        this.cFZ.addAll(list);
    }

    public void cFZ(List<com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB> list) {
        this.f13133so.addAll(list);
    }

    public void ex(List<com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB> list) {
        this.Pfn.addAll(list);
    }

    public void jFA(List<com.bytedance.sdk.openadsdk.core.dLZ.ZYk.oJ> list) {
        this.BTZ.addAll(list);
        Collections.sort(this.BTZ);
    }

    public void oJ(long j10) {
        if (this.PiB.compareAndSet(false, true)) {
            if (!oJ(j10, this.ZYk, null, new tB.ZYk(this.awB ? "show_impression" : "impression", this.f13132si)) || this.awB) {
                return;
            }
            com.bytedance.sdk.openadsdk.ex.tB.ZYk(this.f13132si, this.f13131oq, "track_impression", (JSONObject) null);
        }
    }

    public void so(List<com.bytedance.sdk.openadsdk.core.dLZ.ZYk.ZYk> list) {
        this.dLZ.addAll(list);
        Collections.sort(this.dLZ);
    }

    public void tB(List<com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB> list) {
        this.ex.addAll(list);
    }

    private JSONArray ex() throws JSONException {
        JSONArray jSONArray = new JSONArray();
        for (com.bytedance.sdk.openadsdk.core.dLZ.ZYk.oJ oJVar : this.BTZ) {
            jSONArray.put(oJVar.ZYk());
        }
        return jSONArray;
    }

    private JSONArray tB() throws JSONException {
        JSONArray jSONArray = new JSONArray();
        for (com.bytedance.sdk.openadsdk.core.dLZ.ZYk.ZYk zYk : this.dLZ) {
            jSONArray.put(zYk.ZYk());
        }
        return jSONArray;
    }

    public void ZYk(List<com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB> list) {
        this.tB.addAll(list);
    }

    public void oJ(long j10, long j11, ba baVar) {
        tB.ZYk zYk;
        if (System.currentTimeMillis() - this.eZI >= 1000 && j10 >= 0 && j11 > 0) {
            this.eZI = System.currentTimeMillis();
            float f10 = ((float) j10) / ((float) j11);
            List<com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB> oJ = oJ(j10, f10);
            float f11 = 0.25f;
            if (f10 >= 0.25f && !this.Ry) {
                oJ("firstQuartile");
                this.Ry = true;
                if (baVar != null) {
                    oJ(baVar, 6);
                }
                if (!this.awB) {
                    zYk = new tB.ZYk("firstQuartile", this.f13132si, 0.25f);
                    f10 = f11;
                }
                f10 = f11;
                zYk = null;
            } else {
                f11 = 0.5f;
                if (f10 >= 0.5f && !this.RZ) {
                    oJ(CampaignEx.JSON_NATIVE_VIDEO_MIDPOINT);
                    this.RZ = true;
                    if (baVar != null) {
                        oJ(baVar, 7);
                    }
                    if (!this.awB) {
                        zYk = new tB.ZYk(CampaignEx.JSON_NATIVE_VIDEO_MIDPOINT, this.f13132si, 0.5f);
                        f10 = f11;
                    }
                    f10 = f11;
                    zYk = null;
                } else {
                    f11 = 0.75f;
                    if (f10 >= 0.75f && !this.QSm) {
                        oJ("thirdQuartile");
                        this.QSm = true;
                        if (baVar != null) {
                            oJ(baVar, 8);
                        }
                        if (!this.awB) {
                            zYk = new tB.ZYk("thirdQuartile", this.f13132si, 0.75f);
                            f10 = f11;
                        }
                        f10 = f11;
                    }
                    zYk = null;
                }
            }
            if (f10 < 0.03f) {
                f10 = 0.0f;
            }
            if (!this.awB && !oJ.isEmpty()) {
                com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB tBVar = oJ.get(0);
                if ((tBVar instanceof com.bytedance.sdk.openadsdk.core.dLZ.ZYk.oJ) && ((com.bytedance.sdk.openadsdk.core.dLZ.ZYk.oJ) tBVar).oJ() == 0) {
                    com.bytedance.sdk.openadsdk.ex.tB.ZYk(this.f13132si, this.f13131oq, "track_start", (JSONObject) null);
                    zYk = new tB.ZYk("start", this.f13132si, f10);
                }
            }
            if (oJ.isEmpty()) {
                return;
            }
            oJ(j10, oJ, null, zYk != null ? zYk : new tB.ZYk("video_progress", this.f13132si, f10));
        }
    }

    private void oJ(final ba baVar, final int i10) {
        com.bytedance.sdk.component.utils.jFA.ZYk().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.dLZ.ex.1
            @Override // java.lang.Runnable
            public void run() {
                ba baVar2 = baVar;
                if (baVar2 != null) {
                    baVar2.oJ(i10);
                }
            }
        });
    }

    private void oJ(String str) {
        try {
            if (this.awB) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(NotificationCompat.CATEGORY_EVENT, str);
                com.bytedance.sdk.openadsdk.ex.tB.ZYk(this.f13132si, this.f13131oq, "vast_play_track", jSONObject);
            } else if ("firstQuartile".equals(str)) {
                com.bytedance.sdk.openadsdk.ex.tB.ZYk(this.f13132si, this.f13131oq, "track_first_quartile", (JSONObject) null);
            } else if (CampaignEx.JSON_NATIVE_VIDEO_MIDPOINT.equals(str)) {
                com.bytedance.sdk.openadsdk.ex.tB.ZYk(this.f13132si, this.f13131oq, "track_midpoint", (JSONObject) null);
            } else if ("thirdQuartile".equals(str)) {
                com.bytedance.sdk.openadsdk.ex.tB.ZYk(this.f13132si, this.f13131oq, "track_third_quartile", (JSONObject) null);
            }
        } catch (Throwable unused) {
        }
    }

    private boolean oJ(long j10, List<com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB> list, com.bytedance.sdk.openadsdk.core.dLZ.oJ.oJ oJVar, tB.ZYk zYk) {
        com.bykv.vk.openvk.oJ.oJ.oJ.tB.ZYk ib2;
        cY cYVar = this.f13132si;
        String str = null;
        if (cYVar != null && (ib2 = cYVar.ib()) != null) {
            str = ib2.dLZ();
        }
        return com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB.oJ(this.f13132si, list, oJVar, j10, str, zYk, ZYk());
    }

    private boolean oJ(long j10, List<com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB> list, com.bytedance.sdk.openadsdk.core.dLZ.oJ.oJ oJVar) {
        return oJ(j10, list, oJVar, null);
    }

    public List<com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB> oJ(long j10, float f10) {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < this.dLZ.size(); i10++) {
            com.bytedance.sdk.openadsdk.core.dLZ.ZYk.ZYk zYk = this.dLZ.get(i10);
            if (zYk.oJ(f10)) {
                arrayList.add(zYk);
            }
        }
        for (int i11 = 0; i11 < this.BTZ.size(); i11++) {
            com.bytedance.sdk.openadsdk.core.dLZ.ZYk.oJ oJVar = this.BTZ.get(i11);
            if (oJVar.oJ(j10)) {
                arrayList.add(oJVar);
            }
        }
        return arrayList;
    }

    public void oJ(List<com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB> list) {
        this.ZYk.addAll(list);
    }

    public JSONObject oJ() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("errorTrackers", com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB.oJ(this.oJ));
        jSONObject.put(InMobiNetworkValues.IMPRESSION_TRACKERS, com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB.oJ(this.ZYk));
        jSONObject.put("pauseTrackers", com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB.oJ(this.tB));
        jSONObject.put("resumeTrackers", com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB.oJ(this.ex));
        jSONObject.put("completeTrackers", com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB.oJ(this.Pfn));
        jSONObject.put("closeTrackers", com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB.oJ(this.f13130ba));
        jSONObject.put("skipTrackers", com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB.oJ(this.cFZ));
        jSONObject.put("clickTrackers", com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB.oJ(this.f13133so));
        jSONObject.put("muteTrackers", com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB.oJ(this.jFA));
        jSONObject.put("unMuteTrackers", com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB.oJ(this.kkU));
        jSONObject.put("fractionalTrackers", tB());
        jSONObject.put("absoluteTrackers", ex());
        return jSONObject;
    }

    public void oJ(JSONObject jSONObject) {
        kkU(com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB.oJ(jSONObject.optJSONArray("errorTrackers")));
        oJ(com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB.oJ(jSONObject.optJSONArray(InMobiNetworkValues.IMPRESSION_TRACKERS)));
        ZYk(com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB.oJ(jSONObject.optJSONArray("pauseTrackers"), true));
        tB(com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB.oJ(jSONObject.optJSONArray("resumeTrackers"), true));
        ex(com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB.oJ(jSONObject.optJSONArray("completeTrackers")));
        Pfn(com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB.oJ(jSONObject.optJSONArray("closeTrackers")));
        ba(com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB.oJ(jSONObject.optJSONArray("skipTrackers")));
        cFZ(com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB.oJ(jSONObject.optJSONArray("clickTrackers")));
        dLZ(com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB.oJ(jSONObject.optJSONArray("muteTrackers"), true));
        BTZ(com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB.oJ(jSONObject.optJSONArray("unMuteTrackers"), true));
        so(com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB.ZYk(jSONObject.optJSONArray("fractionalTrackers")));
        jFA(com.bytedance.sdk.openadsdk.core.dLZ.ZYk.tB.tB(jSONObject.optJSONArray("absoluteTrackers")));
    }

    public void oJ(cY cYVar) {
        this.f13132si = cYVar;
        this.f13131oq = cYVar.ex();
        this.awB = cYVar.Br();
    }

    public void oJ(String str, long j10) {
        if (TextUtils.isEmpty(str) || j10 < 0) {
            return;
        }
        jFA(Collections.singletonList(new oJ.C0208oJ(str, j10).oJ()));
    }

    public void oJ(String str, float f10) {
        if (TextUtils.isEmpty(str) || f10 < 0.0f) {
            return;
        }
        so(Collections.singletonList(new ZYk.oJ(str, f10).oJ()));
    }

    public void oJ(ex exVar) {
        kkU(exVar.oJ);
        oJ(exVar.ZYk);
        ZYk(exVar.tB);
        tB(exVar.ex);
        ex(exVar.Pfn);
        Pfn(exVar.f13130ba);
        ba(exVar.cFZ);
        cFZ(exVar.f13133so);
        dLZ(exVar.jFA);
        BTZ(exVar.kkU);
        so(exVar.dLZ);
        jFA(exVar.BTZ);
    }
}
