package com.bytedance.adsdk.ZYk.oJ.oJ;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import android.util.LongSparseArray;
import com.ss.ttvideoengine.TTVideoEngineInterface;
/* loaded from: classes3.dex */
public class jFA extends oJ {
    private final com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<PointF, PointF> BTZ;
    private final boolean Pfn;
    private final com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<PointF, PointF> PiB;
    private com.bytedance.adsdk.ZYk.oJ.ZYk.si WcQ;

    /* renamed from: ba  reason: collision with root package name */
    private final LongSparseArray<LinearGradient> f11548ba;
    private final LongSparseArray<RadialGradient> cFZ;
    private final com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<com.bytedance.adsdk.ZYk.tB.ZYk.ex, com.bytedance.adsdk.ZYk.tB.ZYk.ex> dLZ;
    private final String ex;
    private final com.bytedance.adsdk.ZYk.tB.ZYk.cFZ jFA;
    private final int kkU;

    /* renamed from: so  reason: collision with root package name */
    private final RectF f11549so;

    public jFA(com.bytedance.adsdk.ZYk.jFA jfa, com.bytedance.adsdk.ZYk.tB.tB.oJ oJVar, com.bytedance.adsdk.ZYk.tB.ZYk.ba baVar) {
        super(jfa, oJVar, baVar.so().oJ(), baVar.jFA().oJ(), baVar.BTZ(), baVar.ex(), baVar.cFZ(), baVar.kkU(), baVar.dLZ());
        this.f11548ba = new LongSparseArray<>();
        this.cFZ = new LongSparseArray<>();
        this.f11549so = new RectF();
        this.ex = baVar.oJ();
        this.jFA = baVar.ZYk();
        this.Pfn = baVar.PiB();
        this.kkU = (int) (jfa.tb().Pfn() / 32.0f);
        com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<com.bytedance.adsdk.ZYk.tB.ZYk.ex, com.bytedance.adsdk.ZYk.tB.ZYk.ex> oJ = baVar.tB().oJ();
        this.dLZ = oJ;
        oJ.oJ(this);
        oJVar.oJ(oJ);
        com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<PointF, PointF> oJ2 = baVar.Pfn().oJ();
        this.BTZ = oJ2;
        oJ2.oJ(this);
        oJVar.oJ(oJ2);
        com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<PointF, PointF> oJ3 = baVar.ba().oJ();
        this.PiB = oJ3;
        oJ3.oJ(this);
        oJVar.oJ(oJ3);
    }

    private LinearGradient ZYk() {
        long ex = ex();
        LinearGradient linearGradient = this.f11548ba.get(ex);
        if (linearGradient != null) {
            return linearGradient;
        }
        PointF cFZ = this.BTZ.cFZ();
        PointF cFZ2 = this.PiB.cFZ();
        com.bytedance.adsdk.ZYk.tB.ZYk.ex cFZ3 = this.dLZ.cFZ();
        LinearGradient linearGradient2 = new LinearGradient(cFZ.x, cFZ.y, cFZ2.x, cFZ2.y, oJ(cFZ3.ZYk()), cFZ3.oJ(), Shader.TileMode.CLAMP);
        this.f11548ba.put(ex, linearGradient2);
        return linearGradient2;
    }

    private int ex() {
        int i10;
        int round = Math.round(this.BTZ.so() * this.kkU);
        int round2 = Math.round(this.PiB.so() * this.kkU);
        int round3 = Math.round(this.dLZ.so() * this.kkU);
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
        float f10;
        float f11;
        long ex = ex();
        RadialGradient radialGradient = this.cFZ.get(ex);
        if (radialGradient != null) {
            return radialGradient;
        }
        PointF cFZ = this.BTZ.cFZ();
        PointF cFZ2 = this.PiB.cFZ();
        com.bytedance.adsdk.ZYk.tB.ZYk.ex cFZ3 = this.dLZ.cFZ();
        int[] oJ = oJ(cFZ3.ZYk());
        float[] oJ2 = cFZ3.oJ();
        RadialGradient radialGradient2 = new RadialGradient(cFZ.x, cFZ.y, (float) Math.hypot(cFZ2.x - f10, cFZ2.y - f11), oJ, oJ2, Shader.TileMode.CLAMP);
        this.cFZ.put(ex, radialGradient2);
        return radialGradient2;
    }

    @Override // com.bytedance.adsdk.ZYk.oJ.oJ.oJ, com.bytedance.adsdk.ZYk.oJ.oJ.Pfn
    public void oJ(Canvas canvas, Matrix matrix, int i10) {
        Shader tB;
        if (this.Pfn) {
            return;
        }
        oJ(this.f11549so, matrix, false);
        if (this.jFA == com.bytedance.adsdk.ZYk.tB.ZYk.cFZ.LINEAR) {
            tB = ZYk();
        } else {
            tB = tB();
        }
        tB.setLocalMatrix(matrix);
        this.ZYk.setShader(tB);
        super.oJ(canvas, matrix, i10);
    }

    private int[] oJ(int[] iArr) {
        if (this.WcQ == null) {
            return iArr;
        }
        throw null;
    }
}
