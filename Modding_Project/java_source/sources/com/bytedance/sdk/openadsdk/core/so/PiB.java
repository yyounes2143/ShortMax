package com.bytedance.sdk.openadsdk.core.so;

import com.bytedance.sdk.openadsdk.utils.ofl;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class PiB implements com.bytedance.adsdk.ugeno.core.Ry, com.bytedance.sdk.component.adexpress.ZYk.jFA {
    private long Pfn;
    private final String ZYk;
    private final String ex;
    private final com.bytedance.sdk.openadsdk.ex.ex.Pfn oJ;
    private final com.bytedance.sdk.openadsdk.core.model.cY tB;

    public PiB(com.bytedance.sdk.openadsdk.ex.ex.Pfn pfn, String str, com.bytedance.sdk.openadsdk.core.model.cY cYVar, String str2) {
        this.oJ = pfn;
        this.ZYk = str;
        this.ex = str2;
        this.tB = cYVar;
    }

    @Override // com.bytedance.sdk.component.adexpress.ZYk.jFA
    public void Pfn() {
        this.oJ.ZYk();
    }

    @Override // com.bytedance.sdk.component.adexpress.ZYk.jFA
    public void ba(int i10) {
        final String str;
        System.currentTimeMillis();
        if (i10 == 3) {
            this.oJ.cFZ("dynamic_render2_success");
            str = "dynamic2_render";
        } else {
            this.oJ.cFZ("dynamic_render_success");
            str = "dynamic_backup_native_render";
        }
        this.oJ.oJ(true);
        ofl.ZYk(new com.bytedance.sdk.component.so.so("dynamic_success") { // from class: com.bytedance.sdk.openadsdk.core.so.PiB.1
            @Override // java.lang.Runnable
            public void run() {
                com.bytedance.sdk.openadsdk.ex.tB.ZYk(PiB.this.tB, PiB.this.ZYk, str, (JSONObject) null);
            }
        }, 10);
    }

    @Override // com.bytedance.sdk.component.adexpress.ZYk.jFA
    public void cFZ() {
        this.oJ.oJ(true);
        this.oJ.PiB();
        ofl.ZYk(new com.bytedance.sdk.component.so.so("native_success") { // from class: com.bytedance.sdk.openadsdk.core.so.PiB.2
            @Override // java.lang.Runnable
            public void run() {
                com.bytedance.sdk.openadsdk.ex.tB.ZYk(PiB.this.tB, PiB.this.ZYk, "dynamic_backup_render", (JSONObject) null);
            }
        }, 10);
    }

    public void dLZ() {
        this.oJ.dLZ();
        this.oJ.BTZ();
    }

    @Override // com.bytedance.sdk.component.adexpress.ZYk.jFA
    public void ex() {
        this.oJ.oJ();
    }

    @Override // com.bytedance.sdk.component.adexpress.ZYk.jFA
    public void jFA() {
        this.oJ.awB();
    }

    @Override // com.bytedance.sdk.component.adexpress.ZYk.jFA
    public void kkU() {
        this.oJ.ZYk();
    }

    @Override // com.bytedance.sdk.component.adexpress.ZYk.jFA
    public void so() {
        this.oJ.WcQ();
    }

    @Override // com.bytedance.sdk.component.adexpress.ZYk.jFA
    public void tB(int i10) {
        if (i10 == 3) {
            this.oJ.ex("dynamic_sub_analysis2_end");
        } else {
            this.oJ.ex("dynamic_sub_analysis_end");
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.ZYk.jFA
    public void Pfn(int i10) {
        if (i10 == 3) {
            this.oJ.ex("dynamic_sub_render2_end");
        } else {
            this.oJ.ex("dynamic_sub_render_end");
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.ZYk.jFA
    public void ZYk(int i10) {
        if (i10 == 3) {
            this.oJ.ex("dynamic_sub_analysis2_start");
        } else {
            this.oJ.ex("dynamic_sub_analysis_start");
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.ZYk.jFA
    public void ex(int i10) {
        if (i10 == 3) {
            this.oJ.ex("dynamic_sub_render2_start");
        } else {
            this.oJ.ex("dynamic_sub_render_start");
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.ZYk.jFA
    public void oJ(boolean z10) {
        this.oJ.oJ(z10 ? 1 : 0);
    }

    @Override // com.bytedance.sdk.component.adexpress.ZYk.jFA
    public void oJ(int i10, String str) {
        this.oJ.oJ(i10, str);
        dLZ.oJ("Web", i10, str, this.ZYk, this.ex, this.tB);
    }

    @Override // com.bytedance.adsdk.ugeno.core.Ry
    public void tB() {
        this.oJ.Pfn("ugen_sub_render_start");
    }

    @Override // com.bytedance.adsdk.ugeno.core.Ry
    public void ZYk() {
        this.oJ.Pfn("ugen_sub_analysis_end");
    }

    @Override // com.bytedance.sdk.component.adexpress.ZYk.jFA
    public void oJ(int i10) {
        this.Pfn = System.currentTimeMillis();
        if (i10 == 3) {
            this.oJ.tB("dynamic_render2_start");
        } else {
            this.oJ.tB("dynamic_render_start");
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.ZYk.jFA
    public void ba() {
        this.oJ.tB();
    }

    @Override // com.bytedance.sdk.component.adexpress.ZYk.jFA
    public void oJ(int i10, int i11, String str, boolean z10) {
        if (!z10) {
            this.oJ.oJ(true);
        }
        if (i10 == 3) {
            this.oJ.ZYk(i11, "dynamic_render2_error");
        } else {
            this.oJ.ZYk(i11, "dynamic_render_error");
        }
        dLZ.oJ("NDR", i11, str, this.ZYk, this.ex, this.tB);
    }

    @Override // com.bytedance.adsdk.ugeno.core.Ry
    public void oJ() {
        this.oJ.Pfn("ugen_render_start");
        this.oJ.Pfn("ugen_sub_analysis_start");
    }

    @Override // com.bytedance.adsdk.ugeno.core.Ry
    public void oJ(com.bytedance.adsdk.ugeno.core.si siVar) {
        if (siVar.oJ() == 0) {
            this.oJ.Pfn("ugen_sub_render_end");
            this.oJ.ba("ugen_render_success");
        } else {
            this.oJ.tB(siVar.oJ(), "ugen_render_error");
            dLZ.oJ("UGen", siVar.oJ(), siVar.ZYk(), this.ZYk, this.ex, this.tB);
        }
        this.oJ.oJ(true);
    }
}
