package com.bykv.vk.openvk.oJ.oJ.oJ.tB;

import android.text.TextUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.ss.ttvideoengine.model.BarrageMaskInfo;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ZYk {
    private int BTZ;
    private String Pfn;
    private int PiB;
    private int ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private String f11015ba;
    private String cFZ;
    private double dLZ;
    private double ex;
    private String jFA;
    private String kkU;
    private int oJ;

    /* renamed from: so  reason: collision with root package name */
    private String f11017so;
    private long tB;
    private float WcQ = -1.0f;
    private int awB = 0;
    private int eZI = 0;

    /* renamed from: si  reason: collision with root package name */
    private int f11016si = 0;
    private int Ry = 0;
    private int RZ = 307200;
    private int QSm = 1;

    public String BTZ() {
        return this.f11017so;
    }

    public int Id() {
        return this.QSm;
    }

    public long Pfn() {
        return this.tB;
    }

    public String PiB() {
        return this.jFA;
    }

    public int QSm() {
        return this.eZI;
    }

    public int RZ() {
        return this.awB;
    }

    public JSONObject Ry() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("cover_height", ZYk());
            jSONObject.put("cover_url", kkU());
            jSONObject.put("cover_width", tB());
            jSONObject.put(CampaignEx.JSON_NATIVE_VIDEO_ENDCARD, BTZ());
            jSONObject.put(BarrageMaskInfo.KEY_MASK_FILE_HASH, WcQ());
            jSONObject.put("resolution", jFA());
            jSONObject.put("size", Pfn());
            jSONObject.put("video_duration", ba());
            jSONObject.put(CampaignEx.JSON_KEY_VIDEO_URL, dLZ());
            jSONObject.put("playable_download_url", PiB());
            jSONObject.put("if_playable_loading_show", RZ());
            jSONObject.put("remove_loading_page_type", QSm());
            jSONObject.put("fallback_endcard_judge", oJ());
            jSONObject.put("video_preload_size", awB());
            jSONObject.put("reward_video_cached_type", eZI());
            jSONObject.put("execute_cached_type", si());
            jSONObject.put("endcard_render", ex());
            jSONObject.put("replay_time", Id());
            jSONObject.put("play_speed_ratio", so());
            if (cFZ() > 0.0d) {
                jSONObject.put("start", cFZ());
            }
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public String WcQ() {
        if (TextUtils.isEmpty(this.kkU)) {
            this.kkU = com.bykv.vk.openvk.oJ.oJ.oJ.cFZ.ZYk.oJ(this.cFZ);
        }
        return this.kkU;
    }

    public int ZYk() {
        return this.oJ;
    }

    public int awB() {
        if (this.RZ < 0) {
            this.RZ = 307200;
        }
        long j10 = this.tB;
        if (this.RZ > j10) {
            this.RZ = (int) j10;
        }
        return this.RZ;
    }

    public double ba() {
        return this.ex;
    }

    public double cFZ() {
        return this.dLZ;
    }

    public String dLZ() {
        return this.cFZ;
    }

    public int eZI() {
        return this.f11016si;
    }

    public int ex() {
        return this.PiB;
    }

    public String jFA() {
        return this.Pfn;
    }

    public String kkU() {
        return this.f11015ba;
    }

    public int oJ() {
        return this.BTZ;
    }

    public boolean oq() {
        if (this.f11016si == 0) {
            return true;
        }
        return false;
    }

    public int si() {
        return this.Ry;
    }

    public float so() {
        return this.WcQ;
    }

    public int tB() {
        return this.ZYk;
    }

    public void Pfn(String str) {
        this.jFA = str;
    }

    public void ZYk(int i10) {
        this.oJ = i10;
    }

    public void ba(String str) {
        this.kkU = str;
    }

    public void cFZ(int i10) {
        this.Ry = i10;
    }

    public void ex(int i10) {
        this.PiB = i10;
    }

    public void jFA(int i10) {
        this.eZI = i10;
    }

    public void kkU(int i10) {
        this.QSm = Math.min(4, Math.max(1, i10));
    }

    public void oJ(int i10) {
        this.BTZ = i10;
    }

    public void so(int i10) {
        this.awB = i10;
    }

    public void tB(int i10) {
        this.ZYk = i10;
    }

    public void Pfn(int i10) {
        this.RZ = i10;
    }

    public void ZYk(String str) {
        this.f11015ba = str;
    }

    public void ba(int i10) {
        this.f11016si = i10;
    }

    public void ex(String str) {
        this.f11017so = str;
    }

    public void oJ(long j10) {
        this.tB = j10;
    }

    public void tB(String str) {
        this.cFZ = str;
    }

    public void oJ(double d10) {
        this.ex = d10;
    }

    public void oJ(String str) {
        this.Pfn = str;
    }
}
