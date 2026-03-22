package com.bytedance.adsdk.ugeno.yoga.ZYk;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.bytedance.adsdk.ugeno.ZYk.oJ;
import com.bytedance.adsdk.ugeno.cFZ.so;
import com.bytedance.adsdk.ugeno.oJ;
import com.bytedance.adsdk.ugeno.yoga.Pfn;
import com.bytedance.adsdk.ugeno.yoga.PiB;
import com.bytedance.adsdk.ugeno.yoga.WcQ;
import com.bytedance.adsdk.ugeno.yoga.ZYk.tB;
import com.bytedance.adsdk.ugeno.yoga.ba;
import com.bytedance.adsdk.ugeno.yoga.ex;
import com.bytedance.adsdk.ugeno.yoga.kkU;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
/* loaded from: classes3.dex */
public class oJ extends com.bytedance.adsdk.ugeno.ZYk.oJ<tB> {
    private WcQ BWx;
    private ba JJ;
    private kkU Qzd;
    private Pfn YF;
    private com.bytedance.adsdk.ugeno.yoga.oJ hwh;

    /* renamed from: ib  reason: collision with root package name */
    private com.bytedance.adsdk.ugeno.yoga.oJ f11728ib;

    /* renamed from: com.bytedance.adsdk.ugeno.yoga.ZYk.oJ$oJ  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static class C0153oJ extends oJ.C0141oJ {
        public float HL;
        private boolean HyG;
        public float IUZ;
        public int Jc;
        private boolean Jm;
        public int Ln;
        public float LpP;
        private boolean Qu;
        private boolean Rl;
        public int UN;
        public int XAo;
        private boolean cdg;

        /* renamed from: mu  reason: collision with root package name */
        public int f11729mu;
        public int nke;
        public float ofl;

        /* renamed from: tb  reason: collision with root package name */
        public int f11730tb;

        /* renamed from: wd  reason: collision with root package name */
        private boolean f11731wd;

        public C0153oJ(com.bytedance.adsdk.ugeno.ZYk.oJ oJVar) {
            super(oJVar);
            this.f11730tb = 1;
            this.HL = 0.0f;
            this.IUZ = 1.0f;
            this.Ln = com.bytedance.adsdk.ugeno.yoga.oJ.AUTO.oJ();
            this.LpP = -1.0f;
            this.nke = PiB.RELATIVE.oJ();
        }

        private void ex() {
            com.bytedance.adsdk.ugeno.ZYk.oJ oJVar = this.Xe;
            if (oJVar instanceof oJ) {
                if (((oJ) oJVar).LS() == Pfn.ROW && this.Xe.XAo() == -2 && this.oJ == -1.0f && !this.Xe.Qu()) {
                    this.oJ = -2.0f;
                    this.IUZ = 1.0f;
                    this.HL = 1.0f;
                    this.f11731wd = true;
                    this.LpP = -1.0f;
                }
                if (((oJ) this.Xe).LS() == Pfn.COLUMN && this.Xe.ofl() == -2 && this.ZYk == -1.0f && !this.Xe.Qu()) {
                    this.ZYk = -2.0f;
                    this.IUZ = 1.0f;
                    this.HL = 1.0f;
                    this.f11731wd = true;
                    this.LpP = -1.0f;
                }
            }
        }

        @Override // com.bytedance.adsdk.ugeno.ZYk.oJ.C0141oJ
        /* renamed from: ZYk */
        public tB.oJ oJ() {
            float f10;
            float f11;
            float f12;
            float f13;
            ex();
            tB.oJ oJVar = new tB.oJ((int) this.oJ, (int) this.ZYk);
            if (this.QSm) {
                f10 = this.f11623ba;
            } else {
                f10 = this.Pfn;
            }
            oJVar.BTZ((int) f10);
            if (this.f11625oq) {
                f11 = this.cFZ;
            } else {
                f11 = this.Pfn;
            }
            oJVar.WcQ((int) f11);
            if (this.Id) {
                f12 = this.f11627so;
            } else {
                f12 = this.Pfn;
            }
            oJVar.dLZ((int) f12);
            if (this.cY) {
                f13 = this.jFA;
            } else {
                f13 = this.Pfn;
            }
            oJVar.PiB((int) f13);
            oJVar.oJ(this.f11730tb);
            oJVar.Pfn(this.Ln);
            oJVar.ZYk(this.HL);
            oJVar.tB(this.IUZ);
            oJVar.eZI(this.tB);
            oJVar.si(this.ex);
            if (this.f11731wd) {
                oJVar.ex(this.LpP);
            }
            oJVar.ba(this.nke);
            if (this.HyG) {
                oJVar.cFZ(this.Jc);
            }
            if (this.cdg) {
                oJVar.jFA(this.UN);
            }
            if (this.Rl) {
                oJVar.so(this.f11729mu);
            }
            if (this.Jm) {
                oJVar.kkU(this.XAo);
            }
            if (this.Qu && tB()) {
                float f14 = this.ofl;
                if (f14 > 0.0f) {
                    oJVar.awB(f14);
                    oJVar.tB(0.0f);
                    oJVar.ZYk(0.0f);
                }
            }
            return oJVar;
        }

        public boolean tB() {
            float f10 = this.oJ;
            if (f10 == -1.0f && this.ZYk == -1.0f) {
                return false;
            }
            if (f10 != -2.0f && this.ZYk != -2.0f) {
                return false;
            }
            return true;
        }

        @Override // com.bytedance.adsdk.ugeno.ZYk.oJ.C0141oJ
        public String toString() {
            return "LayoutParams{mOrder=" + this.f11730tb + ", mFlexGrow=" + this.HL + ", mFlexShrink=" + this.IUZ + ", mAlignSelf=" + this.Ln + ", mFlexBasis=" + this.LpP + ", mPosition=" + this.nke + ", mTop=" + this.Jc + ", mBottom=" + this.UN + ", mLeft=" + this.f11729mu + ", mRight=" + this.XAo + '}';
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
                case -1783760955:
                    if (str.equals("flexBasis")) {
                        c10 = 0;
                        break;
                    }
                    break;
                case -1383228885:
                    if (str.equals("bottom")) {
                        c10 = 1;
                        break;
                    }
                    break;
                case 115029:
                    if (str.equals("top")) {
                        c10 = 2;
                        break;
                    }
                    break;
                case 3317767:
                    if (str.equals(TtmlNode.LEFT)) {
                        c10 = 3;
                        break;
                    }
                    break;
                case 106006350:
                    if (str.equals("order")) {
                        c10 = 4;
                        break;
                    }
                    break;
                case 108285963:
                    if (str.equals("ratio")) {
                        c10 = 5;
                        break;
                    }
                    break;
                case 108511772:
                    if (str.equals(TtmlNode.RIGHT)) {
                        c10 = 6;
                        break;
                    }
                    break;
                case 747804969:
                    if (str.equals("position")) {
                        c10 = 7;
                        break;
                    }
                    break;
                case 1031115618:
                    if (str.equals("flexShrink")) {
                        c10 = '\b';
                        break;
                    }
                    break;
                case 1743739820:
                    if (str.equals("flexGrow")) {
                        c10 = '\t';
                        break;
                    }
                    break;
                case 1767100401:
                    if (str.equals("alignSelf")) {
                        c10 = '\n';
                        break;
                    }
                    break;
            }
            switch (c10) {
                case 0:
                    this.f11731wd = true;
                    float oJ = com.bytedance.adsdk.ugeno.cFZ.tB.oJ(str2, -1.0f);
                    this.LpP = oJ;
                    this.LpP = so.oJ(context, oJ);
                    return;
                case 1:
                    this.cdg = true;
                    this.UN = (int) so.oJ(context, com.bytedance.adsdk.ugeno.cFZ.tB.oJ(str2, 0));
                    return;
                case 2:
                    this.HyG = true;
                    this.Jc = (int) so.oJ(context, com.bytedance.adsdk.ugeno.cFZ.tB.oJ(str2, 0));
                    return;
                case 3:
                    this.Rl = true;
                    this.f11729mu = (int) so.oJ(context, com.bytedance.adsdk.ugeno.cFZ.tB.oJ(str2, 0));
                    return;
                case 4:
                    this.f11730tb = com.bytedance.adsdk.ugeno.cFZ.tB.oJ(str2, 1);
                    return;
                case 5:
                    this.Qu = true;
                    this.ofl = com.bytedance.adsdk.ugeno.cFZ.tB.oJ(str2, 0.0f);
                    return;
                case 6:
                    this.Jm = true;
                    this.XAo = (int) so.oJ(context, com.bytedance.adsdk.ugeno.cFZ.tB.oJ(str2, 0));
                    return;
                case 7:
                    this.nke = PiB.oJ(str2).oJ();
                    return;
                case '\b':
                    this.IUZ = com.bytedance.adsdk.ugeno.cFZ.tB.oJ(str2, 1.0f);
                    return;
                case '\t':
                    this.HL = com.bytedance.adsdk.ugeno.cFZ.tB.oJ(str2, 0.0f);
                    return;
                case '\n':
                    this.Ln = com.bytedance.adsdk.ugeno.yoga.oJ.oJ(str2).oJ();
                    return;
                default:
                    return;
            }
        }
    }

    public oJ(Context context) {
        super(context);
        this.YF = Pfn.ROW;
        this.BWx = WcQ.NO_WRAP;
        this.JJ = ba.FLEX_START;
        com.bytedance.adsdk.ugeno.yoga.oJ oJVar = com.bytedance.adsdk.ugeno.yoga.oJ.STRETCH;
        this.hwh = oJVar;
        this.f11728ib = oJVar;
    }

    @Override // com.bytedance.adsdk.ugeno.ZYk.tB
    protected void IUZ() {
        ImageView.ScaleType scaleType;
        if (this.Rl) {
            com.bytedance.adsdk.ugeno.Pfn.oJ().ZYk().oJ(this.jFA, this.f11640wd, new oJ.InterfaceC0148oJ() { // from class: com.bytedance.adsdk.ugeno.yoga.ZYk.oJ.1
                @Override // com.bytedance.adsdk.ugeno.oJ.InterfaceC0148oJ
                public void oJ(Bitmap bitmap) {
                    if (bitmap == null) {
                        if (((com.bytedance.adsdk.ugeno.ZYk.tB) oJ.this).yQF != null) {
                            com.bytedance.adsdk.ugeno.core.ba unused = ((com.bytedance.adsdk.ugeno.ZYk.tB) oJ.this).yQF;
                            String unused2 = ((com.bytedance.adsdk.ugeno.ZYk.tB) oJ.this).f11640wd;
                            return;
                        }
                        return;
                    }
                    if (((com.bytedance.adsdk.ugeno.ZYk.tB) oJ.this).yQF != null) {
                        com.bytedance.adsdk.ugeno.core.ba unused3 = ((com.bytedance.adsdk.ugeno.ZYk.tB) oJ.this).yQF;
                        String unused4 = ((com.bytedance.adsdk.ugeno.ZYk.tB) oJ.this).f11640wd;
                    }
                    final Bitmap oJ = so.oJ(((com.bytedance.adsdk.ugeno.ZYk.tB) oJ.this).ZYk, bitmap, (int) ((com.bytedance.adsdk.ugeno.ZYk.tB) oJ.this).cdg);
                    if (oJ != null) {
                        so.oJ(new Runnable() { // from class: com.bytedance.adsdk.ugeno.yoga.ZYk.oJ.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                oJ.this.oJ(new BitmapDrawable(oJ));
                            }
                        });
                    }
                }
            });
            return;
        }
        com.bytedance.adsdk.ugeno.jFA.ex.oJ oJVar = new com.bytedance.adsdk.ugeno.jFA.ex.oJ(this.ZYk);
        com.bytedance.adsdk.ugeno.Pfn.oJ().ZYk().oJ(this.jFA, this.f11640wd, oJVar, this.Pfn.getWidth(), this.Pfn.getHeight(), new oJ.InterfaceC0148oJ() { // from class: com.bytedance.adsdk.ugeno.yoga.ZYk.oJ.2
            @Override // com.bytedance.adsdk.ugeno.oJ.InterfaceC0148oJ
            public void oJ(Bitmap bitmap) {
                if (bitmap == null) {
                    if (((com.bytedance.adsdk.ugeno.ZYk.tB) oJ.this).yQF != null) {
                        com.bytedance.adsdk.ugeno.core.ba unused = ((com.bytedance.adsdk.ugeno.ZYk.tB) oJ.this).yQF;
                        String unused2 = ((com.bytedance.adsdk.ugeno.ZYk.tB) oJ.this).f11640wd;
                    }
                } else if (((com.bytedance.adsdk.ugeno.ZYk.tB) oJ.this).yQF != null) {
                    com.bytedance.adsdk.ugeno.core.ba unused3 = ((com.bytedance.adsdk.ugeno.ZYk.tB) oJ.this).yQF;
                    String unused4 = ((com.bytedance.adsdk.ugeno.ZYk.tB) oJ.this).f11640wd;
                }
            }
        });
        if (this.Jm && (scaleType = this.HyG) != ImageView.ScaleType.FIT_XY) {
            oJVar.setScaleType(scaleType);
        } else {
            oJVar.setScaleType(ImageView.ScaleType.FIT_XY);
        }
        oJVar.setCornerRadius(this.Qu);
        tB.oJ oJVar2 = new tB.oJ(-1, -1);
        oJVar2.ba(PiB.ABSOLUTE.oJ());
        T t10 = this.Pfn;
        if (t10 instanceof tB) {
            ((tB) t10).addView(oJVar, 0, oJVar2);
            oJ(oJVar);
        }
    }

    public Pfn LS() {
        return this.YF;
    }

    @Override // com.bytedance.adsdk.ugeno.ZYk.tB
    protected void WcQ() {
        if (this.nke) {
            this.Qzd.ZYk(ex.ALL, this.f11638tb);
        }
        if (this.Jc) {
            this.Qzd.ZYk(ex.LEFT, this.HL);
        }
        if (this.UN) {
            this.Qzd.ZYk(ex.RIGHT, this.IUZ);
        }
        if (this.f11631mu) {
            this.Qzd.ZYk(ex.TOP, this.Ln);
        }
        if (this.XAo) {
            this.Qzd.ZYk(ex.BOTTOM, this.LpP);
        }
    }

    @Override // com.bytedance.adsdk.ugeno.ZYk.oJ, com.bytedance.adsdk.ugeno.ZYk.tB
    public void ZYk() {
        super.ZYk();
        this.Qzd.oJ(this.YF);
        this.Qzd.oJ(this.BWx);
        this.Qzd.oJ(this.JJ);
        this.Qzd.oJ(this.hwh);
        this.Qzd.tB(this.f11728ib);
        this.Qzd.oJ(true);
    }

    @Override // com.bytedance.adsdk.ugeno.ZYk.oJ
    /* renamed from: ex */
    public C0153oJ kkU() {
        return new C0153oJ(this);
    }

    @Override // com.bytedance.adsdk.ugeno.ZYk.tB
    /* renamed from: tB */
    public tB oJ() {
        tB tBVar = new tB(this.ZYk);
        tBVar.oJ(this);
        this.Qzd = tBVar.getYogaNode();
        return tBVar;
    }

    @Override // com.bytedance.adsdk.ugeno.ZYk.tB
    protected void oJ(Drawable drawable) {
        ImageView.ScaleType scaleType;
        com.bytedance.adsdk.ugeno.jFA.ex.oJ oJVar = new com.bytedance.adsdk.ugeno.jFA.ex.oJ(this.ZYk);
        oJVar.setImageDrawable(drawable);
        if (this.Jm && (scaleType = this.HyG) != ImageView.ScaleType.FIT_XY) {
            oJVar.setScaleType(scaleType);
        } else {
            oJVar.setScaleType(ImageView.ScaleType.FIT_XY);
        }
        oJVar.setCornerRadius(this.Qu);
        tB.oJ oJVar2 = new tB.oJ(-1, -1);
        oJVar2.ba(PiB.ABSOLUTE.oJ());
        T t10 = this.Pfn;
        if (t10 instanceof tB) {
            ((tB) t10).addView(oJVar, 0, oJVar2);
            oJ(oJVar);
        }
    }

    private void oJ(final com.bytedance.adsdk.ugeno.jFA.ex.oJ oJVar) {
        this.Pfn.post(new Runnable() { // from class: com.bytedance.adsdk.ugeno.yoga.ZYk.oJ.3
            @Override // java.lang.Runnable
            public void run() {
                kkU oJ;
                if (((com.bytedance.adsdk.ugeno.ZYk.tB) oJ.this).Pfn == null || (oJ = ((tB) ((com.bytedance.adsdk.ugeno.ZYk.tB) oJ.this).Pfn).oJ(oJVar)) == null) {
                    return;
                }
                oJ.ex(((com.bytedance.adsdk.ugeno.ZYk.tB) oJ.this).Pfn.getWidth());
                oJ.ba(((com.bytedance.adsdk.ugeno.ZYk.tB) oJ.this).Pfn.getHeight());
                oJVar.setCornerRadius(((com.bytedance.adsdk.ugeno.ZYk.tB) oJ.this).Qu);
                ((com.bytedance.adsdk.ugeno.ZYk.tB) oJ.this).Pfn.requestLayout();
            }
        });
    }

    @Override // com.bytedance.adsdk.ugeno.ZYk.oJ
    public void oJ(com.bytedance.adsdk.ugeno.ZYk.tB tBVar) {
        super.oJ(tBVar);
    }

    @Override // com.bytedance.adsdk.ugeno.ZYk.oJ
    public void oJ(com.bytedance.adsdk.ugeno.ZYk.tB tBVar, ViewGroup.LayoutParams layoutParams) {
        if (tBVar == null) {
            return;
        }
        ((com.bytedance.adsdk.ugeno.ZYk.oJ) this).oJ.add(tBVar);
        View dLZ = tBVar.dLZ();
        if (dLZ != null) {
            ((tB) this.Pfn).addView(dLZ, layoutParams);
        }
    }

    @Override // com.bytedance.adsdk.ugeno.ZYk.tB
    public void oJ(String str, String str2) {
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
                this.hwh = com.bytedance.adsdk.ugeno.yoga.oJ.oJ(str2);
                return;
            case 1:
                this.YF = Pfn.oJ(str2);
                return;
            case 2:
                this.f11728ib = com.bytedance.adsdk.ugeno.yoga.oJ.oJ(str2);
                return;
            case 3:
                this.BWx = WcQ.oJ(str2);
                return;
            case 4:
                this.JJ = ba.oJ(str2);
                return;
            default:
                return;
        }
    }
}
