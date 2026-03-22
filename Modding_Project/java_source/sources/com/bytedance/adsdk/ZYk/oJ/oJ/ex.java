package com.bytedance.adsdk.ZYk.oJ.oJ;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import com.bytedance.adsdk.ZYk.oJ.ZYk.oJ;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class ex implements oJ.InterfaceC0139oJ, Pfn, PiB {
    private final RectF Pfn;
    private final RectF ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private final String f11546ba;
    private final boolean cFZ;
    private com.bytedance.adsdk.ZYk.oJ.ZYk.eZI dLZ;
    private final Path ex;
    private final com.bytedance.adsdk.ZYk.jFA jFA;
    private List<PiB> kkU;
    private final Paint oJ;

    /* renamed from: so  reason: collision with root package name */
    private final List<tB> f11547so;
    private final Matrix tB;

    public ex(com.bytedance.adsdk.ZYk.jFA jfa, com.bytedance.adsdk.ZYk.tB.tB.oJ oJVar, com.bytedance.adsdk.ZYk.tB.ZYk.eZI ezi, com.bytedance.adsdk.ZYk.cFZ cfz) {
        this(jfa, oJVar, ezi.oJ(), ezi.tB(), oJ(jfa, cfz, oJVar, ezi.ZYk()), oJ(ezi.ZYk()));
    }

    private boolean Pfn() {
        int i10 = 0;
        for (int i11 = 0; i11 < this.f11547so.size(); i11++) {
            if ((this.f11547so.get(i11) instanceof Pfn) && (i10 = i10 + 1) >= 2) {
                return true;
            }
        }
        return false;
    }

    private static List<tB> oJ(com.bytedance.adsdk.ZYk.jFA jfa, com.bytedance.adsdk.ZYk.cFZ cfz, com.bytedance.adsdk.ZYk.tB.tB.oJ oJVar, List<com.bytedance.adsdk.ZYk.tB.ZYk.tB> list) {
        ArrayList arrayList = new ArrayList(list.size());
        for (int i10 = 0; i10 < list.size(); i10++) {
            tB oJ = list.get(i10).oJ(jfa, cfz, oJVar);
            if (oJ != null) {
                arrayList.add(oJ);
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<PiB> ZYk() {
        if (this.kkU == null) {
            this.kkU = new ArrayList();
            for (int i10 = 0; i10 < this.f11547so.size(); i10++) {
                tB tBVar = this.f11547so.get(i10);
                if (tBVar instanceof PiB) {
                    this.kkU.add((PiB) tBVar);
                }
            }
        }
        return this.kkU;
    }

    @Override // com.bytedance.adsdk.ZYk.oJ.oJ.PiB
    public Path ex() {
        this.tB.reset();
        com.bytedance.adsdk.ZYk.oJ.ZYk.eZI ezi = this.dLZ;
        if (ezi != null) {
            this.tB.set(ezi.ex());
        }
        this.ex.reset();
        if (this.cFZ) {
            return this.ex;
        }
        for (int size = this.f11547so.size() - 1; size >= 0; size--) {
            tB tBVar = this.f11547so.get(size);
            if (tBVar instanceof PiB) {
                this.ex.addPath(((PiB) tBVar).ex(), this.tB);
            }
        }
        return this.ex;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Matrix tB() {
        com.bytedance.adsdk.ZYk.oJ.ZYk.eZI ezi = this.dLZ;
        if (ezi != null) {
            return ezi.ex();
        }
        this.tB.reset();
        return this.tB;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ex(com.bytedance.adsdk.ZYk.jFA jfa, com.bytedance.adsdk.ZYk.tB.tB.oJ oJVar, String str, boolean z10, List<tB> list, com.bytedance.adsdk.ZYk.tB.oJ.BTZ btz) {
        this.oJ = new com.bytedance.adsdk.ZYk.oJ.oJ();
        this.ZYk = new RectF();
        this.tB = new Matrix();
        this.ex = new Path();
        this.Pfn = new RectF();
        this.f11546ba = str;
        this.jFA = jfa;
        this.cFZ = z10;
        this.f11547so = list;
        if (btz != null) {
            com.bytedance.adsdk.ZYk.oJ.ZYk.eZI kkU = btz.kkU();
            this.dLZ = kkU;
            kkU.oJ(oJVar);
            this.dLZ.oJ(this);
        }
        ArrayList arrayList = new ArrayList();
        for (int size = list.size() - 1; size >= 0; size--) {
            tB tBVar = list.get(size);
            if (tBVar instanceof kkU) {
                arrayList.add((kkU) tBVar);
            }
        }
        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
            ((kkU) arrayList.get(size2)).oJ(list.listIterator(list.size()));
        }
    }

    static com.bytedance.adsdk.ZYk.tB.oJ.BTZ oJ(List<com.bytedance.adsdk.ZYk.tB.ZYk.tB> list) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            com.bytedance.adsdk.ZYk.tB.ZYk.tB tBVar = list.get(i10);
            if (tBVar instanceof com.bytedance.adsdk.ZYk.tB.oJ.BTZ) {
                return (com.bytedance.adsdk.ZYk.tB.oJ.BTZ) tBVar;
            }
        }
        return null;
    }

    @Override // com.bytedance.adsdk.ZYk.oJ.ZYk.oJ.InterfaceC0139oJ
    public void oJ() {
        this.jFA.invalidateSelf();
    }

    @Override // com.bytedance.adsdk.ZYk.oJ.oJ.tB
    public void oJ(List<tB> list, List<tB> list2) {
        ArrayList arrayList = new ArrayList(list.size() + this.f11547so.size());
        arrayList.addAll(list);
        for (int size = this.f11547so.size() - 1; size >= 0; size--) {
            tB tBVar = this.f11547so.get(size);
            tBVar.oJ(arrayList, this.f11547so.subList(0, size));
            arrayList.add(tBVar);
        }
    }

    @Override // com.bytedance.adsdk.ZYk.oJ.oJ.Pfn
    public void oJ(Canvas canvas, Matrix matrix, int i10) {
        if (this.cFZ) {
            return;
        }
        this.tB.set(matrix);
        com.bytedance.adsdk.ZYk.oJ.ZYk.eZI ezi = this.dLZ;
        if (ezi != null) {
            this.tB.preConcat(ezi.ex());
            i10 = (int) (((((this.dLZ.oJ() == null ? 100 : this.dLZ.oJ().cFZ().intValue()) / 100.0f) * i10) / 255.0f) * 255.0f);
        }
        boolean z10 = this.jFA.jFA() && Pfn() && i10 != 255;
        if (z10) {
            this.ZYk.set(0.0f, 0.0f, 0.0f, 0.0f);
            oJ(this.ZYk, this.tB, true);
            this.oJ.setAlpha(i10);
            com.bytedance.adsdk.ZYk.ba.ba.oJ(canvas, this.ZYk, this.oJ);
        }
        if (z10) {
            i10 = 255;
        }
        for (int size = this.f11547so.size() - 1; size >= 0; size--) {
            tB tBVar = this.f11547so.get(size);
            if (tBVar instanceof Pfn) {
                ((Pfn) tBVar).oJ(canvas, this.tB, i10);
            }
        }
        if (z10) {
            canvas.restore();
        }
    }

    @Override // com.bytedance.adsdk.ZYk.oJ.oJ.Pfn
    public void oJ(RectF rectF, Matrix matrix, boolean z10) {
        this.tB.set(matrix);
        com.bytedance.adsdk.ZYk.oJ.ZYk.eZI ezi = this.dLZ;
        if (ezi != null) {
            this.tB.preConcat(ezi.ex());
        }
        this.Pfn.set(0.0f, 0.0f, 0.0f, 0.0f);
        for (int size = this.f11547so.size() - 1; size >= 0; size--) {
            tB tBVar = this.f11547so.get(size);
            if (tBVar instanceof Pfn) {
                ((Pfn) tBVar).oJ(this.Pfn, this.tB, z10);
                rectF.union(this.Pfn);
            }
        }
    }
}
