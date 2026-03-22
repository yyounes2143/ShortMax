package com.bytedance.adsdk.ugeno.jFA.Pfn;

import android.content.Context;
import android.graphics.Color;
import com.bytedance.adsdk.ugeno.ZYk.tB;
/* loaded from: classes3.dex */
public class ZYk extends tB<oJ> {
    private float BWx;
    private float JJ;
    private int YF;
    private float hwh;
    private int oJ;

    /* renamed from: ib  reason: collision with root package name */
    private static final int f11676ib = Color.parseColor("#FFC642");
    private static final int Qzd = Color.parseColor("#e3e3e4");

    public ZYk(Context context) {
        super(context);
        this.oJ = f11676ib;
        this.YF = Qzd;
        this.BWx = 4.0f;
        this.JJ = 20.0f;
    }

    @Override // com.bytedance.adsdk.ugeno.ZYk.tB
    public void ZYk() {
        super.ZYk();
        if (nke()) {
            ((oJ) this.Pfn).oJ(this.BWx, this.oJ, this.YF, this.JJ, (int) this.hwh);
        } else {
            ((oJ) this.Pfn).oJ(this.BWx, this.oJ, this.YF, this.JJ, 5);
        }
    }

    @Override // com.bytedance.adsdk.ugeno.ZYk.tB
    /* renamed from: tB */
    public oJ oJ() {
        oJ oJVar = new oJ(this.ZYk);
        oJVar.oJ(this);
        return oJVar;
    }

    @Override // com.bytedance.adsdk.ugeno.ZYk.tB
    public void oJ(String str, String str2) {
        super.oJ(str, str2);
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1810866385:
                if (str.equals("highLightColor")) {
                    c10 = 0;
                    break;
                }
                break;
            case -1804390815:
                if (str.equals("lowLightColor")) {
                    c10 = 1;
                    break;
                }
                break;
            case 102102:
                if (str.equals("gap")) {
                    c10 = 2;
                    break;
                }
                break;
            case 3530753:
                if (str.equals("size")) {
                    c10 = 3;
                    break;
                }
                break;
            case 109264530:
                if (str.equals("score")) {
                    c10 = 4;
                    break;
                }
                break;
            case 490636047:
                if (str.equals("highlightColor")) {
                    c10 = 5;
                    break;
                }
                break;
            case 497111617:
                if (str.equals("lowlightColor")) {
                    c10 = 6;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
            case 5:
                this.oJ = com.bytedance.adsdk.ugeno.cFZ.oJ.oJ(str2);
                return;
            case 1:
            case 6:
                this.YF = com.bytedance.adsdk.ugeno.cFZ.oJ.oJ(str2, Qzd);
                return;
            case 2:
                this.hwh = com.bytedance.adsdk.ugeno.cFZ.tB.oJ(str2, 0.0f);
                return;
            case 3:
                this.JJ = com.bytedance.adsdk.ugeno.cFZ.tB.oJ(str2, 20.0f);
                return;
            case 4:
                this.BWx = com.bytedance.adsdk.ugeno.cFZ.tB.oJ(str2, 4.0f);
                return;
            default:
                return;
        }
    }
}
