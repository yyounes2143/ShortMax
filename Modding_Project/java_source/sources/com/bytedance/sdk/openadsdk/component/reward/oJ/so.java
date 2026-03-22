package com.bytedance.sdk.openadsdk.component.reward.oJ;

import android.webkit.DownloadListener;
import androidx.annotation.Nullable;
import com.bytedance.sdk.openadsdk.core.model.Ln;
import com.bytedance.sdk.openadsdk.core.model.cY;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class so {
    public static int ZYk = 1;
    public static int oJ = 0;
    public static int tB = 2;
    @Nullable
    private kkU Pfn;
    @Nullable

    /* renamed from: ba  reason: collision with root package name */
    private jFA f13036ba;
    private final boolean ex;

    public so(oJ oJVar, cY cYVar) {
        kkU kku;
        boolean wHC = cYVar.wHC();
        this.ex = wHC;
        if (wHC) {
            if (Ln.ba(cYVar)) {
                kku = new cFZ(oJVar);
            } else {
                kku = new kkU(oJVar);
            }
            this.Pfn = kku;
            return;
        }
        this.f13036ba = new jFA(oJVar);
    }

    public void BTZ() {
        jFA jfa = this.f13036ba;
        if (jfa != null) {
            jfa.ex();
        }
    }

    public void Pfn() {
        jFA jfa = this.f13036ba;
        if (jfa != null) {
            jfa.ba();
        }
    }

    public void PiB() {
        if (this.ex) {
            kkU kku = this.Pfn;
            if (kku != null) {
                kku.ex();
                return;
            }
            return;
        }
        jFA jfa = this.f13036ba;
        if (jfa != null) {
            jfa.dLZ();
        }
    }

    public void Ry() {
        kkU kku = this.Pfn;
        if (kku != null) {
            kku.tB();
        }
    }

    public void WcQ() {
        if (this.ex) {
            kkU kku = this.Pfn;
            if (kku != null) {
                kku.so();
                return;
            }
            return;
        }
        jFA jfa = this.f13036ba;
        if (jfa != null) {
            jfa.PiB();
        }
    }

    public float ZYk() {
        jFA jfa = this.f13036ba;
        if (jfa != null) {
            return jfa.kkU();
        }
        return 0.0f;
    }

    public void awB() {
        if (this.ex) {
            kkU kku = this.Pfn;
            if (kku != null) {
                kku.oJ();
                return;
            }
            return;
        }
        jFA jfa = this.f13036ba;
        if (jfa != null) {
            jfa.oJ();
        }
    }

    public void ba() {
        jFA jfa = this.f13036ba;
        if (jfa != null) {
            jfa.cFZ();
        }
    }

    public boolean cFZ() {
        jFA jfa = this.f13036ba;
        if (jfa != null) {
            return jfa.awB();
        }
        return false;
    }

    public com.bytedance.sdk.openadsdk.BTZ.Pfn dLZ() {
        jFA jfa = this.f13036ba;
        if (jfa != null) {
            return jfa.WcQ();
        }
        return null;
    }

    public void eZI() {
        if (this.ex) {
            kkU kku = this.Pfn;
            if (kku != null) {
                kku.Pfn();
                return;
            }
            return;
        }
        jFA jfa = this.f13036ba;
        if (jfa != null) {
            jfa.BTZ();
        }
    }

    public com.bytedance.sdk.openadsdk.QSm.so ex() {
        jFA jfa = this.f13036ba;
        if (jfa != null) {
            return jfa.Ry();
        }
        return null;
    }

    public long jFA() {
        jFA jfa = this.f13036ba;
        if (jfa != null) {
            return jfa.jFA();
        }
        return 0L;
    }

    public void kkU() {
        jFA jfa = this.f13036ba;
        if (jfa != null) {
            jfa.Pfn();
        }
    }

    public boolean oJ() {
        jFA jfa = this.f13036ba;
        return jfa != null && jfa.si();
    }

    public void si() {
        kkU kku = this.Pfn;
        if (kku != null) {
            kku.dLZ();
        }
    }

    public void so() {
        jFA jfa = this.f13036ba;
        if (jfa != null) {
            jfa.ZYk();
        }
    }

    public boolean tB() {
        jFA jfa = this.f13036ba;
        if (jfa != null) {
            return jfa.eZI();
        }
        return true;
    }

    public void oJ(int i10) {
        jFA jfa = this.f13036ba;
        if (jfa != null) {
            jfa.oJ(i10);
        }
    }

    public void Pfn(boolean z10) {
        jFA jfa = this.f13036ba;
        if (jfa != null) {
            jfa.Pfn(z10);
        }
    }

    public int ZYk(int i10) {
        jFA jfa = this.f13036ba;
        if (jfa != null) {
            return jfa.tB(i10);
        }
        return 0;
    }

    public void ba(int i10) {
        if (this.ex) {
            kkU kku = this.Pfn;
            if (kku != null) {
                kku.oJ(i10);
                return;
            }
            return;
        }
        jFA jfa = this.f13036ba;
        if (jfa != null) {
            jfa.Pfn(i10);
        }
    }

    public void cFZ(int i10) {
        kkU kku;
        if (this.ex && i10 != tB && (kku = this.Pfn) != null) {
            kku.ba();
            return;
        }
        jFA jfa = this.f13036ba;
        if (jfa == null || i10 == ZYk) {
            return;
        }
        jfa.tB();
    }

    public void ex(boolean z10) {
        jFA jfa = this.f13036ba;
        if (jfa != null) {
            jfa.ex(z10);
        }
    }

    public boolean so(int i10) {
        if (this.ex && i10 == ZYk) {
            kkU kku = this.Pfn;
            if (kku != null) {
                return kku.kkU();
            }
            return false;
        }
        jFA jfa = this.f13036ba;
        if (jfa != null) {
            return jfa.so();
        }
        return false;
    }

    public void tB(int i10) {
        jFA jfa = this.f13036ba;
        if (jfa != null) {
            jfa.ZYk(i10);
        }
    }

    public void oJ(boolean z10) {
        jFA jfa = this.f13036ba;
        if (jfa != null) {
            jfa.ZYk(z10);
        }
    }

    public void Pfn(int i10) {
        if (this.ex) {
            kkU kku = this.Pfn;
            if (kku != null) {
                kku.oJ(i10);
                return;
            }
            return;
        }
        jFA jfa = this.f13036ba;
        if (jfa != null) {
            jfa.oJ(i10);
        }
    }

    public void ZYk(boolean z10) {
        jFA jfa = this.f13036ba;
        if (jfa != null) {
            jfa.ba(z10);
        }
    }

    public boolean ex(int i10) {
        if (this.ex) {
            kkU kku = this.Pfn;
            if (kku != null) {
                return kku.jFA();
            }
        } else {
            jFA jfa = this.f13036ba;
            if (jfa != null && jfa.jFA() - this.f13036ba.kkU() >= i10) {
                return true;
            }
        }
        return false;
    }

    public void tB(boolean z10) {
        jFA jfa = this.f13036ba;
        if (jfa != null) {
            jfa.oJ(z10);
        }
    }

    public void oJ(JSONObject jSONObject) {
        jFA jfa = this.f13036ba;
        if (jfa != null) {
            jfa.oJ(jSONObject);
        }
    }

    public void ZYk(String str) {
        jFA jfa = this.f13036ba;
        if (jfa != null) {
            jfa.ZYk(str);
        }
    }

    public void tB(String str) {
        jFA jfa = this.f13036ba;
        if (jfa != null) {
            jfa.oJ(str);
        }
    }

    public void ba(boolean z10) {
        kkU kku = this.Pfn;
        if (kku != null) {
            kku.tB(z10);
        }
    }

    public void oJ(int i10, cY cYVar, boolean z10) {
        jFA jfa = this.f13036ba;
        if (jfa != null) {
            jfa.oJ(i10, cYVar, z10);
        }
    }

    public void oJ(DownloadListener downloadListener) {
        jFA jfa = this.f13036ba;
        if (jfa != null) {
            jfa.oJ(downloadListener);
        }
    }

    public void oJ(String str) {
        jFA jfa = this.f13036ba;
        if (jfa != null) {
            jfa.tB(str);
        }
    }

    public void oJ(int i10, String str, String str2) {
        jFA jfa = this.f13036ba;
        if (jfa != null) {
            jfa.oJ(i10, str, str2);
        }
    }

    public void oJ(boolean z10, String str, int i10) {
        jFA jfa = this.f13036ba;
        if (jfa != null) {
            jfa.oJ(z10, str, i10);
        }
    }

    public void oJ(com.bytedance.sdk.openadsdk.core.ZYk.Pfn pfn) {
        if (this.ex) {
            kkU kku = this.Pfn;
            if (kku != null) {
                kku.oJ(pfn);
                return;
            }
            return;
        }
        jFA jfa = this.f13036ba;
        if (jfa != null) {
            jfa.oJ(pfn);
        }
    }

    public void oJ(com.bytedance.sdk.openadsdk.BTZ.ba baVar, boolean z10) {
        if (this.ex) {
            kkU kku = this.Pfn;
            if (kku != null) {
                kku.ZYk(z10);
                return;
            }
            return;
        }
        jFA jfa = this.f13036ba;
        if (jfa != null) {
            jfa.oJ(baVar, z10);
        }
    }
}
