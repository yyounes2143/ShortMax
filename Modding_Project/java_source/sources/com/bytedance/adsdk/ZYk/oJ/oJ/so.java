package com.bytedance.adsdk.ZYk.oJ.oJ;

import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import android.util.LongSparseArray;
import com.bytedance.adsdk.ZYk.oJ.ZYk.oJ;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class so implements oJ.InterfaceC0139oJ, Pfn, dLZ {
    private final com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<com.bytedance.adsdk.ZYk.tB.ZYk.ex, com.bytedance.adsdk.ZYk.tB.ZYk.ex> BTZ;
    private final com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<Integer, Integer> PiB;
    private com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<Float, Float> QSm;
    private final int RZ;
    private final com.bytedance.adsdk.ZYk.jFA Ry;
    private final com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<PointF, PointF> WcQ;
    private final String ZYk;
    private final com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<PointF, PointF> awB;
    private final Path cFZ;
    private final com.bytedance.adsdk.ZYk.tB.ZYk.cFZ dLZ;
    private com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<ColorFilter, ColorFilter> eZI;
    private final com.bytedance.adsdk.ZYk.tB.tB.oJ ex;
    private final RectF jFA;
    private final List<PiB> kkU;
    float oJ;

    /* renamed from: oq  reason: collision with root package name */
    private com.bytedance.adsdk.ZYk.oJ.ZYk.tB f11555oq;

    /* renamed from: si  reason: collision with root package name */
    private com.bytedance.adsdk.ZYk.oJ.ZYk.si f11556si;

    /* renamed from: so  reason: collision with root package name */
    private final Paint f11557so;
    private final boolean tB;
    private final LongSparseArray<LinearGradient> Pfn = new LongSparseArray<>();

    /* renamed from: ba  reason: collision with root package name */
    private final LongSparseArray<RadialGradient> f11554ba = new LongSparseArray<>();

    public so(com.bytedance.adsdk.ZYk.jFA jfa, com.bytedance.adsdk.ZYk.cFZ cfz, com.bytedance.adsdk.ZYk.tB.tB.oJ oJVar, com.bytedance.adsdk.ZYk.tB.ZYk.Pfn pfn) {
        Path path = new Path();
        this.cFZ = path;
        this.f11557so = new com.bytedance.adsdk.ZYk.oJ.oJ(1);
        this.jFA = new RectF();
        this.kkU = new ArrayList();
        this.oJ = 0.0f;
        this.ex = oJVar;
        this.ZYk = pfn.oJ();
        this.tB = pfn.so();
        this.Ry = jfa;
        this.dLZ = pfn.ZYk();
        path.setFillType(pfn.tB());
        this.RZ = (int) (cfz.Pfn() / 32.0f);
        com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<com.bytedance.adsdk.ZYk.tB.ZYk.ex, com.bytedance.adsdk.ZYk.tB.ZYk.ex> oJ = pfn.ex().oJ();
        this.BTZ = oJ;
        oJ.oJ(this);
        oJVar.oJ(oJ);
        com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<Integer, Integer> oJ2 = pfn.Pfn().oJ();
        this.PiB = oJ2;
        oJ2.oJ(this);
        oJVar.oJ(oJ2);
        com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<PointF, PointF> oJ3 = pfn.ba().oJ();
        this.WcQ = oJ3;
        oJ3.oJ(this);
        oJVar.oJ(oJ3);
        com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<PointF, PointF> oJ4 = pfn.cFZ().oJ();
        this.awB = oJ4;
        oJ4.oJ(this);
        oJVar.oJ(oJ4);
        if (oJVar.kkU() != null) {
            com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<Float, Float> oJ5 = oJVar.kkU().oJ().oJ();
            this.QSm = oJ5;
            oJ5.oJ(this);
            oJVar.oJ(this.QSm);
        }
        if (oJVar.dLZ() != null) {
            this.f11555oq = new com.bytedance.adsdk.ZYk.oJ.ZYk.tB(this, oJVar, oJVar.dLZ());
        }
    }

    private LinearGradient ZYk() {
        long ex = ex();
        LinearGradient linearGradient = this.Pfn.get(ex);
        if (linearGradient != null) {
            return linearGradient;
        }
        PointF cFZ = this.WcQ.cFZ();
        PointF cFZ2 = this.awB.cFZ();
        com.bytedance.adsdk.ZYk.tB.ZYk.ex cFZ3 = this.BTZ.cFZ();
        LinearGradient linearGradient2 = new LinearGradient(cFZ.x, cFZ.y, cFZ2.x, cFZ2.y, oJ(cFZ3.ZYk()), cFZ3.oJ(), Shader.TileMode.CLAMP);
        this.Pfn.put(ex, linearGradient2);
        return linearGradient2;
    }

    private int ex() {
        int i10;
        int round = Math.round(this.WcQ.so() * this.RZ);
        int round2 = Math.round(this.awB.so() * this.RZ);
        int round3 = Math.round(this.BTZ.so() * this.RZ);
        if (round != 0) {
            i10 = round * TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER;
        } else {
            i10 = 17;
        }
        if (round2 != 0) {
            i10 = i10 * 31 * round2;
        }
        if (round3 != 0) {
            return i10 * 31 * round3;
        }
        return i10;
    }

    private RadialGradient tB() {
        long ex = ex();
        RadialGradient radialGradient = this.f11554ba.get(ex);
        if (radialGradient != null) {
            return radialGradient;
        }
        PointF cFZ = this.WcQ.cFZ();
        PointF cFZ2 = this.awB.cFZ();
        com.bytedance.adsdk.ZYk.tB.ZYk.ex cFZ3 = this.BTZ.cFZ();
        int[] oJ = oJ(cFZ3.ZYk());
        float[] oJ2 = cFZ3.oJ();
        float f10 = cFZ.x;
        float f11 = cFZ.y;
        float hypot = (float) Math.hypot(cFZ2.x - f10, cFZ2.y - f11);
        if (hypot <= 0.0f) {
            hypot = 0.001f;
        }
        RadialGradient radialGradient2 = new RadialGradient(f10, f11, hypot, oJ, oJ2, Shader.TileMode.CLAMP);
        this.f11554ba.put(ex, radialGradient2);
        return radialGradient2;
    }

    @Override // com.bytedance.adsdk.ZYk.oJ.ZYk.oJ.InterfaceC0139oJ
    public void oJ() {
        this.Ry.invalidateSelf();
    }

    @Override // com.bytedance.adsdk.ZYk.oJ.oJ.tB
    public void oJ(List<tB> list, List<tB> list2) {
        for (int i10 = 0; i10 < list2.size(); i10++) {
            tB tBVar = list2.get(i10);
            if (tBVar instanceof PiB) {
                this.kkU.add((PiB) tBVar);
            }
        }
    }

    @Override // com.bytedance.adsdk.ZYk.oJ.oJ.Pfn
    public void oJ(Canvas canvas, Matrix matrix, int i10) {
        Shader tB;
        if (this.tB) {
            return;
        }
        com.bytedance.adsdk.ZYk.Pfn.oJ("GradientFillContent#draw");
        this.cFZ.reset();
        for (int i11 = 0; i11 < this.kkU.size(); i11++) {
            this.cFZ.addPath(this.kkU.get(i11).ex(), matrix);
        }
        this.cFZ.computeBounds(this.jFA, false);
        if (this.dLZ == com.bytedance.adsdk.ZYk.tB.ZYk.cFZ.LINEAR) {
            tB = ZYk();
        } else {
            tB = tB();
        }
        tB.setLocalMatrix(matrix);
        this.f11557so.setShader(tB);
        com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<ColorFilter, ColorFilter> oJVar = this.eZI;
        if (oJVar != null) {
            this.f11557so.setColorFilter(oJVar.cFZ());
        }
        com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<Float, Float> oJVar2 = this.QSm;
        if (oJVar2 != null) {
            float floatValue = oJVar2.cFZ().floatValue();
            if (floatValue == 0.0f) {
                this.f11557so.setMaskFilter(null);
            } else if (floatValue != this.oJ) {
                this.f11557so.setMaskFilter(new BlurMaskFilter(floatValue, BlurMaskFilter.Blur.NORMAL));
            }
            this.oJ = floatValue;
        }
        com.bytedance.adsdk.ZYk.oJ.ZYk.tB tBVar = this.f11555oq;
        if (tBVar != null) {
            tBVar.oJ(this.f11557so);
        }
        this.f11557so.setAlpha(com.bytedance.adsdk.ZYk.ba.Pfn.oJ((int) ((((i10 / 255.0f) * this.PiB.cFZ().intValue()) / 100.0f) * 255.0f), 0, 255));
        canvas.drawPath(this.cFZ, this.f11557so);
        com.bytedance.adsdk.ZYk.Pfn.ZYk("GradientFillContent#draw");
    }

    @Override // com.bytedance.adsdk.ZYk.oJ.oJ.Pfn
    public void oJ(RectF rectF, Matrix matrix, boolean z10) {
        this.cFZ.reset();
        for (int i10 = 0; i10 < this.kkU.size(); i10++) {
            this.cFZ.addPath(this.kkU.get(i10).ex(), matrix);
        }
        this.cFZ.computeBounds(rectF, false);
        rectF.set(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f);
    }

    private int[] oJ(int[] iArr) {
        if (this.f11556si == null) {
            return iArr;
        }
        throw null;
    }
}
