package com.bytedance.adsdk.ZYk.tB.tB;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.LongSparseArray;
import com.bytedance.adsdk.ZYk.tB.tB.Pfn;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class ZYk extends oJ {
    private boolean BTZ;
    private com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<Float, Float> cFZ;
    private final Paint dLZ;
    private final RectF jFA;
    private final RectF kkU;

    /* renamed from: so  reason: collision with root package name */
    private final List<oJ> f11582so;

    /* renamed from: com.bytedance.adsdk.ZYk.tB.tB.ZYk$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] oJ;

        static {
            int[] iArr = new int[Pfn.ZYk.values().length];
            oJ = iArr;
            try {
                iArr[Pfn.ZYk.ADD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                oJ[Pfn.ZYk.INVERT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public ZYk(com.bytedance.adsdk.ZYk.jFA jfa, Pfn pfn, List<Pfn> list, com.bytedance.adsdk.ZYk.cFZ cfz, Context context) {
        super(jfa, pfn);
        int i10;
        oJ oJVar;
        Pfn.ZYk BTZ;
        int i11;
        this.f11582so = new ArrayList();
        this.jFA = new RectF();
        this.kkU = new RectF();
        this.dLZ = new Paint();
        this.BTZ = true;
        com.bytedance.adsdk.ZYk.tB.oJ.ZYk oq2 = pfn.oq();
        if (oq2 != null) {
            com.bytedance.adsdk.ZYk.oJ.ZYk.oJ<Float, Float> oJ = oq2.oJ();
            this.cFZ = oJ;
            oJ(oJ);
            this.cFZ.oJ(this);
        } else {
            this.cFZ = null;
        }
        LongSparseArray longSparseArray = new LongSparseArray(cfz.PiB().size());
        int size = list.size() - 1;
        oJ oJVar2 = null;
        while (true) {
            if (size < 0) {
                break;
            }
            Pfn pfn2 = list.get(size);
            oJ oJ2 = oJ.oJ(this, pfn2, jfa, cfz, context);
            if (oJ2 != null) {
                longSparseArray.put(oJ2.ZYk().Pfn(), oJ2);
                if (oJVar2 != null) {
                    oJVar2.oJ(oJ2);
                    oJVar2 = null;
                } else {
                    this.f11582so.add(0, oJ2);
                    if (pfn2 != null && (BTZ = pfn2.BTZ()) != null && ((i11 = AnonymousClass1.oJ[BTZ.ordinal()]) == 1 || i11 == 2)) {
                        oJVar2 = oJ2;
                    }
                }
            }
            size--;
        }
        for (i10 = 0; i10 < longSparseArray.size(); i10++) {
            oJ oJVar3 = (oJ) longSparseArray.get(longSparseArray.keyAt(i10));
            if (oJVar3 != null && (oJVar = (oJ) longSparseArray.get(oJVar3.ZYk().PiB())) != null) {
                oJVar3.ZYk(oJVar);
            }
        }
    }

    public List<oJ> BTZ() {
        return this.f11582so;
    }

    public void ZYk(boolean z10) {
        this.BTZ = z10;
    }

    @Override // com.bytedance.adsdk.ZYk.tB.tB.oJ
    public void oJ(boolean z10) {
        super.oJ(z10);
        for (oJ oJVar : this.f11582so) {
            oJVar.oJ(z10);
        }
    }

    @Override // com.bytedance.adsdk.ZYk.tB.tB.oJ
    public void ZYk(Canvas canvas, Matrix matrix, int i10) {
        super.ZYk(canvas, matrix, i10);
        com.bytedance.adsdk.ZYk.Pfn.oJ("CompositionLayer#draw");
        this.kkU.set(0.0f, 0.0f, this.tB.so(), this.tB.jFA());
        matrix.mapRect(this.kkU);
        boolean z10 = this.ZYk.jFA() && this.f11582so.size() > 1 && i10 != 255;
        if (z10) {
            this.dLZ.setAlpha(i10);
            com.bytedance.adsdk.ZYk.ba.ba.oJ(canvas, this.kkU, this.dLZ);
        } else {
            canvas.save();
        }
        if (z10) {
            i10 = 255;
        }
        for (int size = this.f11582so.size() - 1; size >= 0; size--) {
            if (((this.BTZ || !"__container".equals(this.tB.ba())) && !this.kkU.isEmpty()) ? canvas.clipRect(this.kkU) : true) {
                this.f11582so.get(size).oJ(canvas, matrix, i10);
            }
        }
        canvas.restore();
        com.bytedance.adsdk.ZYk.Pfn.ZYk("CompositionLayer#draw");
    }

    @Override // com.bytedance.adsdk.ZYk.tB.tB.oJ, com.bytedance.adsdk.ZYk.oJ.oJ.Pfn
    public void oJ(RectF rectF, Matrix matrix, boolean z10) {
        super.oJ(rectF, matrix, z10);
        for (int size = this.f11582so.size() - 1; size >= 0; size--) {
            this.jFA.set(0.0f, 0.0f, 0.0f, 0.0f);
            this.f11582so.get(size).oJ(this.jFA, this.oJ, true);
            rectF.union(this.jFA);
        }
    }

    @Override // com.bytedance.adsdk.ZYk.tB.tB.oJ
    public void oJ(float f10) {
        super.oJ(f10);
        if (this.cFZ != null) {
            f10 = ((this.cFZ.cFZ().floatValue() * this.tB.oJ().BTZ()) - this.tB.oJ().ba()) / (this.ZYk.tb().si() + 0.01f);
        }
        if (this.cFZ == null) {
            f10 -= this.tB.tB();
        }
        if (this.tB.ZYk() != 0.0f && !"__container".equals(this.tB.ba())) {
            f10 /= this.tB.ZYk();
        }
        for (int size = this.f11582so.size() - 1; size >= 0; size--) {
            this.f11582so.get(size).oJ(f10);
        }
    }
}
