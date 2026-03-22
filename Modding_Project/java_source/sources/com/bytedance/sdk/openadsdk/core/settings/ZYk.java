package com.bytedance.sdk.openadsdk.core.settings;

import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ZYk {
    public int BTZ;
    public int HL;
    public int IUZ;
    public int Id;
    public int Jc;
    public boolean Ln;
    public boolean LpP;
    public int Pfn;
    public int PiB;
    public int QSm;
    public int RZ;
    public int Ry;
    public JSONObject UN;
    public int WcQ;
    public int Xe;
    public int ZYk;
    public int awB;

    /* renamed from: ba  reason: collision with root package name */
    public int f13248ba;
    public int cFZ;
    public List<String> cY;
    public int dLZ;
    public int eZI;
    public int ex;
    public int jFA;

    /* renamed from: jr  reason: collision with root package name */
    public int f13249jr;
    public int kkU;
    public boolean nke;
    public String oJ;

    /* renamed from: oq  reason: collision with root package name */
    public boolean f13250oq;

    /* renamed from: si  reason: collision with root package name */
    public int f13251si;

    /* renamed from: so  reason: collision with root package name */
    public int f13252so;
    public int tB;

    /* renamed from: tb  reason: collision with root package name */
    public int f13253tb;

    public ZYk(JSONObject jSONObject) {
        this.ZYk = 1;
        this.tB = 1;
        this.ex = 2;
        this.Pfn = 1;
        this.f13248ba = 100;
        this.cFZ = 0;
        this.f13252so = 2;
        this.jFA = 1;
        this.kkU = 3;
        this.dLZ = 30;
        this.BTZ = 30;
        this.PiB = 1;
        this.WcQ = 1;
        this.awB = 2;
        this.eZI = 1500;
        this.f13251si = 2;
        this.Ry = 3500;
        this.RZ = 0;
        this.QSm = 5;
        this.f13250oq = false;
        this.Id = 0;
        this.f13249jr = 2;
        this.Xe = -1;
        this.f13253tb = 0;
        this.HL = 0;
        this.IUZ = 5;
        this.Ln = true;
        this.LpP = false;
        this.nke = false;
        this.Jc = -1;
        new JSONObject();
        this.UN = jSONObject;
        if (jSONObject == null) {
            return;
        }
        this.oJ = jSONObject.optString("code_id");
        this.ZYk = jSONObject.optInt("auto_play", 1);
        this.Jc = jSONObject.optInt("endcard_close_time", -1);
        this.tB = jSONObject.optInt("voice_control", 1);
        this.ex = jSONObject.optInt("rv_preload", 2);
        this.Pfn = jSONObject.optInt("nv_preload", 1);
        this.f13248ba = Math.min(100, Math.max(0, jSONObject.optInt("proportion_watching", 100)));
        this.cFZ = jSONObject.optInt("skip_time_displayed", 0);
        this.f13252so = jSONObject.optInt("video_skip_result", 2);
        this.jFA = jSONObject.optInt("reg_creative_control", 1);
        this.kkU = jSONObject.optInt("play_bar_show_time", 3);
        int optInt = jSONObject.optInt("rv_skip_time", 30);
        this.dLZ = optInt;
        if (optInt < 0) {
            this.dLZ = 30;
        }
        this.PiB = jSONObject.optInt("voice_control", 2);
        this.WcQ = jSONObject.optInt("if_show_win", 1);
        this.awB = jSONObject.optInt("sp_preload", 2);
        this.eZI = jSONObject.optInt("stop_time", 1500);
        this.f13251si = jSONObject.optInt("native_playable_delay", 2);
        this.Ry = jSONObject.optInt("time_out_control", -1);
        this.Xe = jSONObject.optInt("playable_close_time", -1);
        this.RZ = jSONObject.optInt("playable_reward_type", 0);
        this.Id = jSONObject.optInt("reward_is_callback", 0);
        int optInt2 = jSONObject.optInt("iv_skip_time", 5);
        this.QSm = optInt2;
        if (optInt2 < 0) {
            this.QSm = 5;
        }
        oJ(jSONObject.optJSONArray("parent_tpl_ids"));
        this.f13249jr = jSONObject.optInt("slot_type", 2);
        this.f13250oq = jSONObject.optBoolean("close_on_click", false);
        this.f13253tb = jSONObject.optInt("allow_system_back", 0);
        this.HL = jSONObject.optInt("splash_skip_time", 0);
        this.IUZ = jSONObject.optInt("splash_image_count_down_time", 5);
        this.LpP = jSONObject.optBoolean("splash_count_down_time_off", false);
        this.nke = jSONObject.optBoolean("splash_close_on_click", false);
        this.Ln = jSONObject.optBoolean("allow_mediaview_click", true);
        if (!oJ(this.tB)) {
            this.tB = 1;
        }
        if (!oJ(this.PiB)) {
            this.PiB = 1;
        }
        this.BTZ = jSONObject.optInt("multi_rv_skip_time", 30);
    }

    private static boolean oJ(int i10) {
        return i10 == 1 || i10 == 2;
    }

    public void oJ(JSONArray jSONArray) {
        if (jSONArray == null || jSONArray.length() == 0) {
            return;
        }
        this.cY = new ArrayList();
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            try {
                this.cY.add(jSONArray.get(i10).toString());
            } catch (Exception unused) {
                return;
            }
        }
    }

    public ZYk(String str, int i10) {
        this.ZYk = 1;
        this.tB = 1;
        this.ex = 2;
        this.Pfn = 1;
        this.f13248ba = 100;
        this.cFZ = 0;
        this.f13252so = 2;
        this.jFA = 1;
        this.kkU = 3;
        this.dLZ = 30;
        this.BTZ = 30;
        this.PiB = 1;
        this.WcQ = 1;
        this.awB = 2;
        this.eZI = 1500;
        this.f13251si = 2;
        this.Ry = 3500;
        this.RZ = 0;
        this.QSm = 5;
        this.f13250oq = false;
        this.Id = 0;
        this.f13249jr = 2;
        this.Xe = -1;
        this.f13253tb = 0;
        this.HL = 0;
        this.IUZ = 5;
        this.Ln = true;
        this.LpP = false;
        this.nke = false;
        this.Jc = -1;
        this.UN = new JSONObject();
        this.oJ = str;
        this.tB = i10;
    }
}
