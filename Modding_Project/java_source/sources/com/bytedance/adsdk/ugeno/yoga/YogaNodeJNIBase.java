package com.bytedance.adsdk.ugeno.yoga;

import java.util.ArrayList;
import java.util.List;
@com.bytedance.adsdk.ugeno.yoga.oJ.oJ
/* loaded from: classes3.dex */
public abstract class YogaNodeJNIBase extends kkU implements Cloneable {
    private ZYk Pfn;
    private YogaNodeJNIBase ZYk;
    @com.bytedance.adsdk.ugeno.yoga.oJ.oJ
    private float[] arr;

    /* renamed from: ba  reason: collision with root package name */
    private Object f11727ba;
    private boolean cFZ;
    private cFZ ex;
    @com.bytedance.adsdk.ugeno.yoga.oJ.oJ
    private int mLayoutDirection;
    protected long oJ;
    private List<YogaNodeJNIBase> tB;

    private YogaNodeJNIBase(long j10) {
        this.arr = null;
        this.mLayoutDirection = 0;
        this.cFZ = true;
        if (j10 != 0) {
            this.oJ = j10;
            return;
        }
        throw new IllegalStateException("Failed to allocate native memory");
    }

    @com.bytedance.adsdk.ugeno.yoga.oJ.oJ
    private final long replaceChild(YogaNodeJNIBase yogaNodeJNIBase, int i10) {
        List<YogaNodeJNIBase> list = this.tB;
        if (list != null) {
            list.remove(i10);
            this.tB.add(i10, yogaNodeJNIBase);
            yogaNodeJNIBase.ZYk = this;
            return yogaNodeJNIBase.oJ;
        }
        throw new IllegalStateException("Cannot replace child. YogaNode does not have children");
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.kkU
    public void BTZ(float f10) {
        YogaNative.jni_YGNodeStyleSetAspectRatioJNI(this.oJ, f10);
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.kkU
    public void Pfn(float f10) {
        YogaNative.jni_YGNodeStyleSetWidthPercentJNI(this.oJ, f10);
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.kkU
    public void ba(float f10) {
        YogaNative.jni_YGNodeStyleSetHeightJNI(this.oJ, f10);
    }

    @com.bytedance.adsdk.ugeno.yoga.oJ.oJ
    public final float baseline(float f10, float f11) {
        return this.Pfn.oJ(this, f10, f11);
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.kkU
    public void cFZ(float f10) {
        YogaNative.jni_YGNodeStyleSetHeightPercentJNI(this.oJ, f10);
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.kkU
    /* renamed from: dLZ */
    public YogaNodeJNIBase ZYk() {
        return this.ZYk;
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.kkU
    /* renamed from: ex */
    public YogaNodeJNIBase ZYk(int i10) {
        List<YogaNodeJNIBase> list = this.tB;
        if (list != null) {
            YogaNodeJNIBase remove = list.remove(i10);
            remove.ZYk = null;
            YogaNative.jni_YGNodeRemoveChildJNI(this.oJ, remove.oJ);
            return remove;
        }
        throw new IllegalStateException("Trying to remove a child of a YogaNode that does not have children");
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.kkU
    public void jFA(float f10) {
        YogaNative.jni_YGNodeStyleSetMinHeightJNI(this.oJ, f10);
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.kkU
    public void kkU(float f10) {
        YogaNative.jni_YGNodeStyleSetMaxWidthJNI(this.oJ, f10);
    }

    @com.bytedance.adsdk.ugeno.yoga.oJ.oJ
    public final long measure(float f10, int i10, float f11, int i11) {
        if (BTZ()) {
            return this.ex.oJ(this, f10, so.oJ(i10), f11, so.oJ(i11));
        }
        throw new RuntimeException("Measure function isn't defined!");
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.kkU
    public void so(float f10) {
        YogaNative.jni_YGNodeStyleSetMinWidthJNI(this.oJ, f10);
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.kkU
    /* renamed from: tB */
    public YogaNodeJNIBase oJ(int i10) {
        List<YogaNodeJNIBase> list = this.tB;
        if (list != null) {
            return list.get(i10);
        }
        throw new IllegalStateException("YogaNode does not have children");
    }

    public boolean BTZ() {
        return this.ex != null;
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.kkU
    public void Pfn() {
        YogaNative.jni_YGNodeStyleSetHeightAutoJNI(this.oJ);
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.kkU
    public float ba() {
        float[] fArr = this.arr;
        if (fArr != null) {
            return fArr[3];
        }
        return 0.0f;
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.kkU
    public float cFZ() {
        float[] fArr = this.arr;
        if (fArr != null) {
            return fArr[4];
        }
        return 0.0f;
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.kkU
    public void dLZ(float f10) {
        YogaNative.jni_YGNodeStyleSetMaxHeightJNI(this.oJ, f10);
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.kkU
    public float jFA() {
        float[] fArr = this.arr;
        if (fArr != null) {
            return fArr[2];
        }
        return 0.0f;
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.kkU
    public Object kkU() {
        return this.f11727ba;
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.kkU
    public int oJ() {
        List<YogaNodeJNIBase> list = this.tB;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.kkU
    public float so() {
        float[] fArr = this.arr;
        if (fArr != null) {
            return fArr[1];
        }
        return 0.0f;
    }

    private void ZYk(kkU kku) {
        kkU();
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.kkU
    public void oJ(kkU kku, int i10) {
        if (kku instanceof YogaNodeJNIBase) {
            YogaNodeJNIBase yogaNodeJNIBase = (YogaNodeJNIBase) kku;
            if (yogaNodeJNIBase.ZYk == null) {
                if (this.tB == null) {
                    this.tB = new ArrayList(4);
                }
                this.tB.add(i10, yogaNodeJNIBase);
                yogaNodeJNIBase.ZYk = this;
                YogaNative.jni_YGNodeInsertChildJNI(this.oJ, yogaNodeJNIBase.oJ, i10);
                return;
            }
            throw new IllegalStateException("Child already has a parent, it must be removed first.");
        }
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.kkU
    public void ZYk(oJ oJVar) {
        YogaNative.jni_YGNodeStyleSetAlignSelfJNI(this.oJ, oJVar.oJ());
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.kkU
    public void tB(oJ oJVar) {
        YogaNative.jni_YGNodeStyleSetAlignContentJNI(this.oJ, oJVar.oJ());
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.kkU
    public void ZYk(float f10) {
        YogaNative.jni_YGNodeStyleSetFlexShrinkJNI(this.oJ, f10);
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.kkU
    public void tB(float f10) {
        YogaNative.jni_YGNodeStyleSetFlexBasisJNI(this.oJ, f10);
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.kkU
    public void ZYk(ex exVar, float f10) {
        YogaNative.jni_YGNodeStyleSetPaddingJNI(this.oJ, exVar.oJ(), f10);
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.kkU
    public void ex(float f10) {
        YogaNative.jni_YGNodeStyleSetWidthJNI(this.oJ, f10);
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.kkU
    public void tB() {
        YogaNative.jni_YGNodeStyleSetFlexBasisAutoJNI(this.oJ);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public YogaNodeJNIBase() {
        this(YogaNative.jni_YGNodeNewJNI());
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.kkU
    public void ex() {
        YogaNative.jni_YGNodeStyleSetWidthAutoJNI(this.oJ);
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.kkU
    public void tB(ex exVar, float f10) {
        YogaNative.jni_YGNodeStyleSetPositionJNI(this.oJ, exVar.oJ(), f10);
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.kkU
    public int oJ(kkU kku) {
        List<YogaNodeJNIBase> list = this.tB;
        if (list == null) {
            return -1;
        }
        return list.indexOf(kku);
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.kkU
    public void oJ(float f10, float f11) {
        ZYk((kkU) null);
        ArrayList arrayList = new ArrayList();
        arrayList.add(this);
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            YogaNodeJNIBase yogaNodeJNIBase = (YogaNodeJNIBase) arrayList.get(i10);
            List<YogaNodeJNIBase> list = yogaNodeJNIBase.tB;
            if (list != null) {
                for (YogaNodeJNIBase yogaNodeJNIBase2 : list) {
                    yogaNodeJNIBase2.ZYk(yogaNodeJNIBase);
                    arrayList.add(yogaNodeJNIBase2);
                }
            }
        }
        YogaNodeJNIBase[] yogaNodeJNIBaseArr = (YogaNodeJNIBase[]) arrayList.toArray(new YogaNodeJNIBase[arrayList.size()]);
        long[] jArr = new long[yogaNodeJNIBaseArr.length];
        for (int i11 = 0; i11 < yogaNodeJNIBaseArr.length; i11++) {
            jArr[i11] = yogaNodeJNIBaseArr[i11].oJ;
        }
        YogaNative.jni_YGNodeCalculateLayoutJNI(this.oJ, f10, f11, jArr, yogaNodeJNIBaseArr);
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.kkU
    public void oJ(tB tBVar) {
        YogaNative.jni_YGNodeStyleSetDirectionJNI(this.oJ, tBVar.oJ());
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.kkU
    public void oJ(Pfn pfn) {
        YogaNative.jni_YGNodeStyleSetFlexDirectionJNI(this.oJ, pfn.oJ());
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.kkU
    public void oJ(ba baVar) {
        YogaNative.jni_YGNodeStyleSetJustifyContentJNI(this.oJ, baVar.oJ());
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.kkU
    public void oJ(oJ oJVar) {
        YogaNative.jni_YGNodeStyleSetAlignItemsJNI(this.oJ, oJVar.oJ());
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.kkU
    public void oJ(PiB piB) {
        YogaNative.jni_YGNodeStyleSetPositionTypeJNI(this.oJ, piB.oJ());
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.kkU
    public void oJ(WcQ wcQ) {
        YogaNative.jni_YGNodeStyleSetFlexWrapJNI(this.oJ, wcQ.oJ());
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.kkU
    public void oJ(float f10) {
        YogaNative.jni_YGNodeStyleSetFlexGrowJNI(this.oJ, f10);
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.kkU
    public void oJ(ex exVar, float f10) {
        YogaNative.jni_YGNodeStyleSetMarginJNI(this.oJ, exVar.oJ(), f10);
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.kkU
    public void oJ(cFZ cfz) {
        this.ex = cfz;
        YogaNative.jni_YGNodeSetHasMeasureFuncJNI(this.oJ, cfz != null);
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.kkU
    public void oJ(boolean z10) {
        YogaNative.jni_YGNodeSetAlwaysFormsContainingBlockJNI(this.oJ, z10);
    }

    @Override // com.bytedance.adsdk.ugeno.yoga.kkU
    public void oJ(Object obj) {
        this.f11727ba = obj;
    }
}
