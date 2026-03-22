package com.bytedance.adsdk.ugeno.Pfn;

import android.content.Context;
import android.text.TextUtils;
import android.view.ViewGroup;
import androidx.core.view.ViewCompat;
import com.bytedance.adsdk.ugeno.Pfn.Pfn;
import com.bytedance.adsdk.ugeno.ZYk.oJ;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
/* loaded from: classes3.dex */
public class ba extends com.bytedance.adsdk.ugeno.ZYk.oJ<Pfn> {
    private int BWx;
    private int JJ;
    private int YF;
    private int hwh;

    /* renamed from: ib  reason: collision with root package name */
    private int f11612ib;

    /* loaded from: classes3.dex */
    public static class oJ extends oJ.C0141oJ {
        public float HL;
        public float IUZ;
        public int Jc;
        public int Ln;
        public float LpP;
        public int UN;

        /* renamed from: mu  reason: collision with root package name */
        public int f11613mu;
        public int nke;

        /* renamed from: tb  reason: collision with root package name */
        public int f11614tb;

        public oJ(com.bytedance.adsdk.ugeno.ZYk.oJ oJVar) {
            super(oJVar);
            this.f11614tb = 1;
            this.HL = 0.0f;
            this.IUZ = 0.0f;
            this.Ln = -1;
            this.LpP = -1.0f;
            this.nke = -1;
            this.Jc = -1;
            this.UN = ViewCompat.MEASURED_SIZE_MASK;
            this.f11613mu = ViewCompat.MEASURED_SIZE_MASK;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        private int Pfn(String str) {
            boolean z10;
            str.hashCode();
            switch (str.hashCode()) {
                case -1881872635:
                    if (str.equals("stretch")) {
                        z10 = false;
                        break;
                    }
                    z10 = true;
                    break;
                case -1720785339:
                    if (str.equals("baseline")) {
                        z10 = true;
                        break;
                    }
                    z10 = true;
                    break;
                case -1364013995:
                    if (str.equals(TtmlNode.CENTER)) {
                        z10 = true;
                        break;
                    }
                    z10 = true;
                    break;
                case 1384876188:
                    if (str.equals("flex_start")) {
                        z10 = true;
                        break;
                    }
                    z10 = true;
                    break;
                case 1744442261:
                    if (str.equals("flex_end")) {
                        z10 = true;
                        break;
                    }
                    z10 = true;
                    break;
                default:
                    z10 = true;
                    break;
            }
            switch (z10) {
                case false:
                    return 4;
                case true:
                    return 3;
                case true:
                    return 2;
                case true:
                    return 0;
                case true:
                    return 1;
                default:
                    return -1;
            }
        }

        private float ZYk(String str) {
            try {
                return Float.parseFloat(str);
            } catch (Exception unused) {
                return 0.0f;
            }
        }

        private float ex(String str) {
            try {
                return Float.parseFloat(str);
            } catch (Exception unused) {
                return -1.0f;
            }
        }

        private float tB(String str) {
            try {
                return Float.parseFloat(str);
            } catch (Exception unused) {
                return 0.0f;
            }
        }

        @Override // com.bytedance.adsdk.ugeno.ZYk.oJ.C0141oJ
        public String toString() {
            return "LayoutParams{mWidth=" + this.oJ + ", mHeight=" + this.ZYk + ", mMargin=" + this.Pfn + ", mMarginLeft=" + this.f11623ba + ", mMarginRight=" + this.cFZ + ", mMarginTop=" + this.f11627so + ", mMarginBottom=" + this.jFA + ", mParams=" + this.f11624jr + ", mOrder=" + this.f11614tb + ", mFlexGrow=" + this.HL + ", mFlexShrink=" + this.IUZ + ", mAlignSelf=" + this.Ln + ", mFlexBasisPercent=" + this.LpP + ", mMinWidth=" + this.nke + ", mMinHeight=" + this.Jc + ", mMaxWidth=" + this.UN + ", mMaxHeight=" + this.f11613mu + "} " + super.toString();
        }

        @Override // com.bytedance.adsdk.ugeno.ZYk.oJ.C0141oJ
        /* renamed from: ZYk */
        public Pfn.oJ oJ() {
            Pfn.oJ oJVar = new Pfn.oJ((int) this.oJ, (int) this.ZYk);
            ((ViewGroup.MarginLayoutParams) oJVar).leftMargin = (int) this.f11623ba;
            ((ViewGroup.MarginLayoutParams) oJVar).rightMargin = (int) this.cFZ;
            ((ViewGroup.MarginLayoutParams) oJVar).topMargin = (int) this.f11627so;
            ((ViewGroup.MarginLayoutParams) oJVar).bottomMargin = (int) this.jFA;
            oJVar.tB(this.f11614tb);
            oJVar.ex(this.Ln);
            oJVar.oJ(this.HL);
            oJVar.ZYk(this.IUZ);
            oJVar.tB(this.LpP);
            return oJVar;
        }

        @Override // com.bytedance.adsdk.ugeno.ZYk.oJ.C0141oJ
        public void oJ(Context context, String str, String str2) {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            super.oJ(context, str, str2);
            str.hashCode();
            char c10 = 65535;
            switch (str.hashCode()) {
                case -1962496832:
                    if (str.equals("flexBasisPercent")) {
                        c10 = 0;
                        break;
                    }
                    break;
                case 106006350:
                    if (str.equals("order")) {
                        c10 = 1;
                        break;
                    }
                    break;
                case 1031115618:
                    if (str.equals("flexShrink")) {
                        c10 = 2;
                        break;
                    }
                    break;
                case 1743739820:
                    if (str.equals("flexGrow")) {
                        c10 = 3;
                        break;
                    }
                    break;
                case 1767100401:
                    if (str.equals("alignSelf")) {
                        c10 = 4;
                        break;
                    }
                    break;
            }
            switch (c10) {
                case 0:
                    this.LpP = ex(str2);
                    return;
                case 1:
                    this.f11614tb = oJ(str2);
                    return;
                case 2:
                    this.IUZ = tB(str2);
                    return;
                case 3:
                    this.HL = ZYk(str2);
                    return;
                case 4:
                    this.Ln = Pfn(str2);
                    return;
                default:
                    return;
            }
        }

        private int oJ(String str) {
            try {
                return Integer.parseInt(str);
            } catch (NumberFormatException unused) {
                return 1;
            }
        }
    }

    public ba(Context context) {
        super(context);
    }

    private int BTZ(String str) {
        str.hashCode();
        if (!str.equals("wrap")) {
            return 0;
        }
        return 1;
    }

    private int PiB(String str) {
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1364013995:
                if (str.equals(TtmlNode.CENTER)) {
                    c10 = 0;
                    break;
                }
                break;
            case -932331738:
                if (str.equals("space_around")) {
                    c10 = 1;
                    break;
                }
                break;
            case 1682480591:
                if (str.equals("space_between")) {
                    c10 = 2;
                    break;
                }
                break;
            case 1744442261:
                if (str.equals("flex_end")) {
                    c10 = 3;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return 2;
            case 1:
                return 4;
            case 2:
                return 3;
            case 3:
                return 1;
            default:
                return 0;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private int WcQ(String str) {
        char c10;
        switch (str.hashCode()) {
            case -1881872635:
                if (str.equals("stretch")) {
                    c10 = 4;
                    break;
                }
                c10 = 65535;
                break;
            case -1720785339:
                if (str.equals("baseline")) {
                    c10 = 3;
                    break;
                }
                c10 = 65535;
                break;
            case -1364013995:
                if (str.equals(TtmlNode.CENTER)) {
                    c10 = 2;
                    break;
                }
                c10 = 65535;
                break;
            case 1384876188:
                if (str.equals("flex_start")) {
                    c10 = 0;
                    break;
                }
                c10 = 65535;
                break;
            case 1744442261:
                if (str.equals("flex_end")) {
                    c10 = 1;
                    break;
                }
                c10 = 65535;
                break;
            default:
                c10 = 65535;
                break;
        }
        if (c10 == 0) {
            return 0;
        }
        if (c10 == 1) {
            return 1;
        }
        if (c10 == 2) {
            return 2;
        }
        if (c10 != 3) {
            return 4;
        }
        return 3;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private int awB(String str) {
        char c10;
        switch (str.hashCode()) {
            case -1881872635:
                if (str.equals("stretch")) {
                    c10 = 5;
                    break;
                }
                c10 = 65535;
                break;
            case -1364013995:
                if (str.equals(TtmlNode.CENTER)) {
                    c10 = 2;
                    break;
                }
                c10 = 65535;
                break;
            case -932331738:
                if (str.equals("space_around")) {
                    c10 = 3;
                    break;
                }
                c10 = 65535;
                break;
            case 1384876188:
                if (str.equals("flex_start")) {
                    c10 = 0;
                    break;
                }
                c10 = 65535;
                break;
            case 1682480591:
                if (str.equals("space_between")) {
                    c10 = 4;
                    break;
                }
                c10 = 65535;
                break;
            case 1744442261:
                if (str.equals("flex_end")) {
                    c10 = 1;
                    break;
                }
                c10 = 65535;
                break;
            default:
                c10 = 65535;
                break;
        }
        if (c10 == 0) {
            return 0;
        }
        if (c10 == 1) {
            return 1;
        }
        if (c10 == 2) {
            return 2;
        }
        if (c10 == 3) {
            return 4;
        }
        if (c10 != 4) {
            return 5;
        }
        return 3;
    }

    @Override // com.bytedance.adsdk.ugeno.ZYk.oJ, com.bytedance.adsdk.ugeno.ZYk.tB
    public void ZYk() {
        super.ZYk();
        ((Pfn) this.Pfn).setFlexDirection(this.YF);
        ((Pfn) this.Pfn).setFlexWrap(this.BWx);
        ((Pfn) this.Pfn).setJustifyContent(this.JJ);
        ((Pfn) this.Pfn).setAlignItems(this.hwh);
        ((Pfn) this.Pfn).setAlignContent(this.f11612ib);
    }

    int dLZ(String str) {
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1781065991:
                if (str.equals("column_reverse")) {
                    c10 = 0;
                    break;
                }
                break;
            case -1354837162:
                if (str.equals("column")) {
                    c10 = 1;
                    break;
                }
                break;
            case -207799939:
                if (str.equals("row_reverse")) {
                    c10 = 2;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return 3;
            case 1:
                return 2;
            case 2:
                return 1;
            default:
                return 0;
        }
    }

    @Override // com.bytedance.adsdk.ugeno.ZYk.oJ
    public oJ.C0141oJ kkU() {
        return new oJ(this);
    }

    @Override // com.bytedance.adsdk.ugeno.ZYk.tB
    /* renamed from: tB */
    public Pfn oJ() {
        Pfn pfn = new Pfn(this.ZYk);
        pfn.oJ(this);
        return pfn;
    }

    @Override // com.bytedance.adsdk.ugeno.ZYk.tB
    public void oJ(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        super.oJ(str, str2);
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1063257157:
                if (str.equals("alignItems")) {
                    c10 = 0;
                    break;
                }
                break;
            case -975171706:
                if (str.equals("flexDirection")) {
                    c10 = 1;
                    break;
                }
                break;
            case -752601676:
                if (str.equals("alignContent")) {
                    c10 = 2;
                    break;
                }
                break;
            case 1744216035:
                if (str.equals("flexWrap")) {
                    c10 = 3;
                    break;
                }
                break;
            case 1860657097:
                if (str.equals("justifyContent")) {
                    c10 = 4;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                this.hwh = WcQ(str2);
                return;
            case 1:
                this.YF = dLZ(str2);
                return;
            case 2:
                this.f11612ib = awB(str2);
                return;
            case 3:
                this.BWx = BTZ(str2);
                return;
            case 4:
                this.JJ = PiB(str2);
                return;
            default:
                return;
        }
    }
}
