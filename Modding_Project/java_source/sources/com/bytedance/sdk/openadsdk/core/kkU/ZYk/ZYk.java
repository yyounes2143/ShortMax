package com.bytedance.sdk.openadsdk.core.kkU.ZYk;

import android.content.Context;
import android.text.TextUtils;
/* loaded from: classes3.dex */
public class ZYk extends com.bytedance.adsdk.ugeno.jFA.ba.ZYk {
    private String BWx;
    private String JJ;

    public ZYk(Context context) {
        super(context);
    }

    @Override // com.bytedance.adsdk.ugeno.jFA.ba.ZYk, com.bytedance.adsdk.ugeno.ZYk.tB
    public void ZYk() {
        super.ZYk();
        if (TextUtils.isEmpty(this.JJ) || TextUtils.equals(this.JJ, "null")) {
            this.JJ = "";
        }
        if (TextUtils.isEmpty(this.BWx) || TextUtils.equals(this.BWx, "null")) {
            this.BWx = "";
        }
        String str = this.BWx + this.JJ;
        ((com.bytedance.adsdk.ugeno.jFA.ba.ZYk) this).oJ = str;
        ((com.bytedance.adsdk.ugeno.jFA.ba.oJ) this.Pfn).setText(str);
        ((com.bytedance.adsdk.ugeno.jFA.ba.oJ) this.Pfn).setGravity(17);
    }

    @Override // com.bytedance.adsdk.ugeno.jFA.ba.ZYk
    public void dLZ(String str) {
        float f10;
        float f11;
        str = (TextUtils.isEmpty(str) || TextUtils.equals(str, "null")) ? "" : "";
        if (TextUtils.isEmpty(this.JJ) || TextUtils.equals(this.JJ, "null")) {
            this.JJ = "";
        }
        if (TextUtils.isEmpty(this.BWx) || TextUtils.equals(this.BWx, "null")) {
            this.BWx = "";
        }
        String str2 = this.BWx + str + this.JJ;
        ((com.bytedance.adsdk.ugeno.jFA.ba.ZYk) this).oJ = str2;
        ((com.bytedance.adsdk.ugeno.jFA.ba.oJ) this.Pfn).setText(str2);
        try {
            if (this.Jc) {
                f10 = this.HL;
            } else {
                f10 = this.f11638tb;
            }
            if (this.UN) {
                f11 = this.IUZ;
            } else {
                f11 = this.f11638tb;
            }
            float measureText = ((com.bytedance.adsdk.ugeno.jFA.ba.oJ) this.Pfn).getPaint().measureText(((com.bytedance.adsdk.ugeno.jFA.ba.ZYk) this).oJ);
            if (measureText >= 0.0f) {
                Pfn((int) (f10 + measureText + f11));
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.bytedance.adsdk.ugeno.jFA.ba.ZYk, com.bytedance.adsdk.ugeno.ZYk.tB
    public void oJ(String str, String str2) {
        super.oJ(str, str2);
        str.hashCode();
        if (!str.equals("before")) {
            if (str.equals("after")) {
                this.JJ = str2;
                return;
            }
            return;
        }
        this.BWx = str2;
    }
}
