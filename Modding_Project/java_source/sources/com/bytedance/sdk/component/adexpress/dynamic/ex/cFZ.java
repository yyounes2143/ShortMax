package com.bytedance.sdk.component.adexpress.dynamic.ex;

import android.graphics.Color;
import android.text.TextUtils;
import androidx.core.view.GravityCompat;
import androidx.core.view.ViewCompat;
import com.adjust.sdk.Constants;
import com.bytedance.sdk.component.adexpress.dynamic.Pfn.dLZ;
import com.google.android.gms.fido.fido2.api.common.DevicePublicKeyStringDef;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class cFZ {
    private Pfn Pfn;
    public String ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private String f12700ba;
    private ba ex;
    public int oJ;
    public JSONObject tB;

    public cFZ(Pfn pfn) {
        this.Pfn = pfn;
        this.oJ = pfn.oJ();
        this.ZYk = pfn.tB();
        this.tB = pfn.Pfn().VSB();
        this.f12700ba = pfn.ex();
        if (com.bytedance.sdk.component.adexpress.ex.tB() == 1) {
            this.ex = pfn.cFZ();
        } else {
            this.ex = pfn.Pfn();
        }
        if (com.bytedance.sdk.component.adexpress.ex.ZYk()) {
            this.ex = pfn.Pfn();
        }
    }

    private boolean BHY() {
        if (com.bytedance.sdk.component.adexpress.ex.ZYk()) {
            return false;
        }
        if ((TextUtils.isEmpty(this.ZYk) || !this.ZYk.contains("adx:")) && !dLZ.ZYk()) {
            return false;
        }
        return true;
    }

    private boolean YQ() {
        if ((com.bytedance.sdk.component.adexpress.ex.ZYk() && (this.Pfn.ZYk().contains("logo-union") || this.Pfn.ZYk().contains("logounion") || this.Pfn.ZYk().contains("logoad"))) || "logo-union".equals(this.Pfn.ZYk()) || "logounion".equals(this.Pfn.ZYk()) || "logoad".equals(this.Pfn.ZYk())) {
            return true;
        }
        return false;
    }

    public String BTZ() {
        return this.f12700ba;
    }

    public int Dex() {
        return this.ex.Jc();
    }

    public String EP() {
        return this.ex.Xe();
    }

    public int HL() {
        String wd2 = this.ex.wd();
        if (!"skip-with-time-skip-btn".equals(this.Pfn.ZYk()) && !"skip".equals(this.Pfn.ZYk()) && !TextUtils.equals("skip-with-countdowns-skip-btn", this.Pfn.ZYk())) {
            if (!"skip-with-time-countdown".equals(this.Pfn.ZYk()) && !"skip-with-time".equals(this.Pfn.ZYk())) {
                if (this.oJ == 10 && TextUtils.equals(this.ex.HyG(), "click")) {
                    return 5;
                }
                if (YQ() && BHY()) {
                    return 0;
                }
                if (YQ()) {
                    return 7;
                }
                if ("feedback-dislike".equals(this.Pfn.ZYk())) {
                    return 3;
                }
                if (!TextUtils.isEmpty(wd2) && !wd2.equals(DevicePublicKeyStringDef.NONE)) {
                    if (!wd2.equals("video") && (this.Pfn.oJ() != 7 || !TextUtils.equals(wd2, Constants.NORMAL))) {
                        if (wd2.equals(Constants.NORMAL)) {
                            return 1;
                        }
                        if (!wd2.equals("creative") && !"slide".equals(this.ex.HyG())) {
                            return 0;
                        }
                        return 2;
                    } else if (com.bytedance.sdk.component.adexpress.ex.ZYk() && this.Pfn.Pfn() != null && this.Pfn.Pfn().ZMY()) {
                        return 11;
                    } else {
                        return 4;
                    }
                }
            }
            return 0;
        }
        return 6;
    }

    public int HyG() {
        return this.ex.VJm();
    }

    public int IUZ() {
        return oJ(this.ex.cY());
    }

    public boolean Id() {
        return this.ex.Jm();
    }

    public int Jc() {
        return this.ex.Pfn();
    }

    public boolean Jm() {
        return this.ex.PdF();
    }

    public String LS() {
        return this.ex.BWx();
    }

    public double Ln() {
        return this.ex.so();
    }

    public int LpP() {
        return this.ex.tB();
    }

    public double MoK() {
        return this.ex.mu();
    }

    public String NO() {
        return this.ex.Zjw();
    }

    public float Pfn() {
        return this.ex.Ry();
    }

    public double PiB() {
        if (this.oJ == 11) {
            try {
                double parseDouble = Double.parseDouble(this.ZYk);
                if (!com.bytedance.sdk.component.adexpress.ex.ZYk()) {
                    return (int) parseDouble;
                }
                return parseDouble;
            } catch (NumberFormatException unused) {
            }
        }
        return -1.0d;
    }

    public boolean QSm() {
        return this.ex.Zzm();
    }

    public int Qu() {
        return this.ex.cFZ();
    }

    public int RZ() {
        return this.ex.oo();
    }

    public String Rl() {
        return this.ex.ofl();
    }

    public int Ry() {
        return this.ex.sQ();
    }

    public double TA() {
        return this.ex.XAo();
    }

    public int UF() {
        return this.ex.oG();
    }

    public int UK() {
        return this.ex.JJ();
    }

    public int UN() {
        return this.ex.ex();
    }

    public int VJm() {
        return this.ex.eXp();
    }

    public String VSB() {
        return this.ex.yB();
    }

    public double WcQ() {
        return this.ex.RZ();
    }

    public String XAo() {
        return this.ex.kkU();
    }

    public String Xe() {
        return this.ex.LE();
    }

    public int Yg() {
        return this.ex.XQY();
    }

    public int ZYk() {
        return (int) this.ex.si();
    }

    public float awB() {
        return this.ex.dLZ();
    }

    public int bD() {
        return this.ex.yQF();
    }

    public String ba() {
        if (this.oJ == 0) {
            if (!TextUtils.isEmpty(this.ZYk)) {
                return this.ZYk;
            }
            return this.tB.optString(com.bytedance.sdk.component.adexpress.ex.cFZ.tB(com.bytedance.sdk.component.adexpress.ex.oJ()));
        }
        return "";
    }

    public int bgF() {
        return this.ex.NX();
    }

    public int cFZ() {
        return oJ(this.ex.Id());
    }

    public int cY() {
        return this.ex.Qu();
    }

    public int cdg() {
        return this.ex.UF();
    }

    public String dLZ() {
        if (this.oJ == 1) {
            return this.ZYk;
        }
        return "";
    }

    public int eZI() {
        return oJ(this.ex.tb());
    }

    public int ex() {
        return (int) this.ex.eZI();
    }

    public boolean jB() {
        return this.ex.PiB();
    }

    public int jFA() {
        int so2 = so();
        if (so2 == 4) {
            return 17;
        }
        if (so2 == 3) {
            return GravityCompat.END;
        }
        return GravityCompat.START;
    }

    public String jXJ() {
        return this.ex.SCr();
    }

    public String jr() {
        return this.ex.wd();
    }

    public String kkU() {
        int i10 = this.oJ;
        if (i10 != 2 && i10 != 13) {
            return "";
        }
        return this.ZYk;
    }

    public int lY() {
        return this.ex.Uf();
    }

    public int mu() {
        return this.ex.jFA();
    }

    public boolean mwH() {
        return this.ex.YF();
    }

    public int nQI() {
        return this.ex.MVA();
    }

    public int nke() {
        return this.ex.ZYk();
    }

    public boolean oCU() {
        return this.ex.YF();
    }

    public int oIC() {
        return this.ex.UN();
    }

    public int oJ() {
        return (int) this.ex.WcQ();
    }

    public String oTd() {
        return this.ex.Ln();
    }

    public String ofl() {
        return this.ex.HyG();
    }

    public String oq() {
        return this.ex.jr();
    }

    public String sH() {
        return this.ex.LpP();
    }

    public float si() {
        return this.ex.BTZ();
    }

    public int so() {
        String oq2 = this.ex.oq();
        if (TtmlNode.LEFT.equals(oq2)) {
            return 17;
        }
        if (TtmlNode.CENTER.equals(oq2)) {
            return 4;
        }
        if (TtmlNode.RIGHT.equals(oq2)) {
            return 3;
        }
        return 2;
    }

    public int tB() {
        return (int) this.ex.awB();
    }

    public long tb() {
        return this.ex.WGj();
    }

    public boolean uvK() {
        return this.ex.Wek();
    }

    public boolean wd() {
        return this.ex.uvK();
    }

    public boolean yz() {
        return this.ex.nke();
    }

    public static float[] ZYk(String str) {
        String[] split = str.substring(str.indexOf("(") + 1, str.indexOf(")")).split(",");
        if (split != null && split.length == 4) {
            return new float[]{Float.parseFloat(split[0]), Float.parseFloat(split[1]), Float.parseFloat(split[2]), Float.parseFloat(split[3])};
        }
        return new float[]{0.0f, 0.0f, 0.0f, 0.0f};
    }

    public void oJ(float f10) {
        this.ex.oJ(f10);
    }

    public static int oJ(String str) {
        String[] split;
        if (TextUtils.isEmpty(str)) {
            return ViewCompat.MEASURED_STATE_MASK;
        }
        if (str.equals("transparent")) {
            return 0;
        }
        if (str.charAt(0) == '#' && str.length() == 7) {
            return Color.parseColor(str);
        }
        if (str.charAt(0) == '#' && str.length() == 9) {
            return Color.parseColor(str);
        }
        if (str.startsWith("rgba") && (split = str.substring(str.indexOf("(") + 1, str.indexOf(")")).split(",")) != null) {
            try {
                if (split.length == 4) {
                    return (((int) ((Float.parseFloat(split[3]) * 255.0f) + 0.5f)) << 24) | (((int) Float.parseFloat(split[0])) << 16) | (((int) Float.parseFloat(split[1])) << 8) | ((int) Float.parseFloat(split[2]));
                }
            } catch (NumberFormatException unused) {
                return 0;
            }
        }
        return ViewCompat.MEASURED_STATE_MASK;
    }

    public boolean oJ(int i10) {
        Pfn pfn = this.Pfn;
        if (pfn == null) {
            return false;
        }
        if (i10 == 1) {
            this.ex = pfn.cFZ();
        } else {
            this.ex = pfn.Pfn();
        }
        return this.ex != null;
    }
}
