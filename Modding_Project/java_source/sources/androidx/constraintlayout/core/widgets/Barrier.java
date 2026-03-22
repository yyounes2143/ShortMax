package androidx.constraintlayout.core.widgets;

import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.SolverVariable;
import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import java.util.HashMap;
/* loaded from: classes.dex */
public class Barrier extends HelperWidget {
    public static final int BOTTOM = 3;
    public static final int LEFT = 0;
    public static final int RIGHT = 1;
    public static final int TOP = 2;
    private static final boolean USE_RELAX_GONE = false;
    private static final boolean USE_RESOLUTION = true;
    private int mBarrierType = 0;
    private boolean mAllowsGoneWidget = true;
    private int mMargin = 0;
    boolean mResolved = false;

    public Barrier() {
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public void addToSolver(LinearSystem linearSystem, boolean z10) {
        ConstraintAnchor[] constraintAnchorArr;
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        ConstraintAnchor[] constraintAnchorArr2 = this.mListAnchors;
        constraintAnchorArr2[0] = this.mLeft;
        constraintAnchorArr2[2] = this.mTop;
        constraintAnchorArr2[1] = this.mRight;
        constraintAnchorArr2[3] = this.mBottom;
        int i15 = 0;
        while (true) {
            constraintAnchorArr = this.mListAnchors;
            if (i15 >= constraintAnchorArr.length) {
                break;
            }
            ConstraintAnchor constraintAnchor = constraintAnchorArr[i15];
            constraintAnchor.mSolverVariable = linearSystem.createObjectVariable(constraintAnchor);
            i15++;
        }
        int i16 = this.mBarrierType;
        if (i16 >= 0 && i16 < 4) {
            ConstraintAnchor constraintAnchor2 = constraintAnchorArr[i16];
            if (!this.mResolved) {
                allSolved();
            }
            if (this.mResolved) {
                this.mResolved = false;
                int i17 = this.mBarrierType;
                if (i17 != 0 && i17 != 1) {
                    if (i17 == 2 || i17 == 3) {
                        linearSystem.addEquality(this.mTop.mSolverVariable, this.mY);
                        linearSystem.addEquality(this.mBottom.mSolverVariable, this.mY);
                        return;
                    }
                    return;
                }
                linearSystem.addEquality(this.mLeft.mSolverVariable, this.mX);
                linearSystem.addEquality(this.mRight.mSolverVariable, this.mX);
                return;
            }
            for (int i18 = 0; i18 < this.mWidgetsCount; i18++) {
                ConstraintWidget constraintWidget = this.mWidgets[i18];
                if ((this.mAllowsGoneWidget || constraintWidget.allowedInBarrier()) && ((((i13 = this.mBarrierType) == 0 || i13 == 1) && constraintWidget.getHorizontalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.mLeft.mTarget != null && constraintWidget.mRight.mTarget != null) || (((i14 = this.mBarrierType) == 2 || i14 == 3) && constraintWidget.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && constraintWidget.mTop.mTarget != null && constraintWidget.mBottom.mTarget != null))) {
                    z11 = true;
                    break;
                }
            }
            z11 = false;
            if (!this.mLeft.hasCenteredDependents() && !this.mRight.hasCenteredDependents()) {
                z12 = false;
            } else {
                z12 = true;
            }
            if (!this.mTop.hasCenteredDependents() && !this.mBottom.hasCenteredDependents()) {
                z13 = false;
            } else {
                z13 = true;
            }
            if (!z11 && (((i12 = this.mBarrierType) == 0 && z12) || ((i12 == 2 && z13) || ((i12 == 1 && z12) || (i12 == 3 && z13))))) {
                z14 = true;
            } else {
                z14 = false;
            }
            if (!z14) {
                i10 = 4;
            } else {
                i10 = 5;
            }
            for (int i19 = 0; i19 < this.mWidgetsCount; i19++) {
                ConstraintWidget constraintWidget2 = this.mWidgets[i19];
                if (this.mAllowsGoneWidget || constraintWidget2.allowedInBarrier()) {
                    SolverVariable createObjectVariable = linearSystem.createObjectVariable(constraintWidget2.mListAnchors[this.mBarrierType]);
                    ConstraintAnchor[] constraintAnchorArr3 = constraintWidget2.mListAnchors;
                    int i20 = this.mBarrierType;
                    ConstraintAnchor constraintAnchor3 = constraintAnchorArr3[i20];
                    constraintAnchor3.mSolverVariable = createObjectVariable;
                    ConstraintAnchor constraintAnchor4 = constraintAnchor3.mTarget;
                    if (constraintAnchor4 != null && constraintAnchor4.mOwner == this) {
                        i11 = constraintAnchor3.mMargin;
                    } else {
                        i11 = 0;
                    }
                    if (i20 != 0 && i20 != 2) {
                        linearSystem.addGreaterBarrier(constraintAnchor2.mSolverVariable, createObjectVariable, this.mMargin + i11, z11);
                    } else {
                        linearSystem.addLowerBarrier(constraintAnchor2.mSolverVariable, createObjectVariable, this.mMargin - i11, z11);
                    }
                    linearSystem.addEquality(constraintAnchor2.mSolverVariable, createObjectVariable, this.mMargin + i11, i10);
                }
            }
            int i21 = this.mBarrierType;
            if (i21 == 0) {
                linearSystem.addEquality(this.mRight.mSolverVariable, this.mLeft.mSolverVariable, 0, 8);
                linearSystem.addEquality(this.mLeft.mSolverVariable, this.mParent.mRight.mSolverVariable, 0, 4);
                linearSystem.addEquality(this.mLeft.mSolverVariable, this.mParent.mLeft.mSolverVariable, 0, 0);
            } else if (i21 == 1) {
                linearSystem.addEquality(this.mLeft.mSolverVariable, this.mRight.mSolverVariable, 0, 8);
                linearSystem.addEquality(this.mLeft.mSolverVariable, this.mParent.mLeft.mSolverVariable, 0, 4);
                linearSystem.addEquality(this.mLeft.mSolverVariable, this.mParent.mRight.mSolverVariable, 0, 0);
            } else if (i21 == 2) {
                linearSystem.addEquality(this.mBottom.mSolverVariable, this.mTop.mSolverVariable, 0, 8);
                linearSystem.addEquality(this.mTop.mSolverVariable, this.mParent.mBottom.mSolverVariable, 0, 4);
                linearSystem.addEquality(this.mTop.mSolverVariable, this.mParent.mTop.mSolverVariable, 0, 0);
            } else if (i21 == 3) {
                linearSystem.addEquality(this.mTop.mSolverVariable, this.mBottom.mSolverVariable, 0, 8);
                linearSystem.addEquality(this.mTop.mSolverVariable, this.mParent.mTop.mSolverVariable, 0, 4);
                linearSystem.addEquality(this.mTop.mSolverVariable, this.mParent.mBottom.mSolverVariable, 0, 0);
            }
        }
    }

    public boolean allSolved() {
        int i10;
        int i11;
        int i12;
        boolean z10 = true;
        int i13 = 0;
        while (true) {
            i10 = this.mWidgetsCount;
            if (i13 >= i10) {
                break;
            }
            ConstraintWidget constraintWidget = this.mWidgets[i13];
            if ((this.mAllowsGoneWidget || constraintWidget.allowedInBarrier()) && ((((i11 = this.mBarrierType) == 0 || i11 == 1) && !constraintWidget.isResolvedHorizontally()) || (((i12 = this.mBarrierType) == 2 || i12 == 3) && !constraintWidget.isResolvedVertically()))) {
                z10 = false;
            }
            i13++;
        }
        if (!z10 || i10 <= 0) {
            return false;
        }
        int i14 = 0;
        boolean z11 = false;
        for (int i15 = 0; i15 < this.mWidgetsCount; i15++) {
            ConstraintWidget constraintWidget2 = this.mWidgets[i15];
            if (this.mAllowsGoneWidget || constraintWidget2.allowedInBarrier()) {
                if (!z11) {
                    int i16 = this.mBarrierType;
                    if (i16 == 0) {
                        i14 = constraintWidget2.getAnchor(ConstraintAnchor.Type.LEFT).getFinalValue();
                    } else if (i16 == 1) {
                        i14 = constraintWidget2.getAnchor(ConstraintAnchor.Type.RIGHT).getFinalValue();
                    } else if (i16 == 2) {
                        i14 = constraintWidget2.getAnchor(ConstraintAnchor.Type.TOP).getFinalValue();
                    } else if (i16 == 3) {
                        i14 = constraintWidget2.getAnchor(ConstraintAnchor.Type.BOTTOM).getFinalValue();
                    }
                    z11 = true;
                }
                int i17 = this.mBarrierType;
                if (i17 == 0) {
                    i14 = Math.min(i14, constraintWidget2.getAnchor(ConstraintAnchor.Type.LEFT).getFinalValue());
                } else if (i17 == 1) {
                    i14 = Math.max(i14, constraintWidget2.getAnchor(ConstraintAnchor.Type.RIGHT).getFinalValue());
                } else if (i17 == 2) {
                    i14 = Math.min(i14, constraintWidget2.getAnchor(ConstraintAnchor.Type.TOP).getFinalValue());
                } else if (i17 == 3) {
                    i14 = Math.max(i14, constraintWidget2.getAnchor(ConstraintAnchor.Type.BOTTOM).getFinalValue());
                }
            }
        }
        int i18 = i14 + this.mMargin;
        int i19 = this.mBarrierType;
        if (i19 != 0 && i19 != 1) {
            setFinalVertical(i18, i18);
        } else {
            setFinalHorizontal(i18, i18);
        }
        this.mResolved = true;
        return true;
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public boolean allowedInBarrier() {
        return true;
    }

    @Deprecated
    public boolean allowsGoneWidget() {
        return this.mAllowsGoneWidget;
    }

    @Override // androidx.constraintlayout.core.widgets.HelperWidget, androidx.constraintlayout.core.widgets.ConstraintWidget
    public void copy(ConstraintWidget constraintWidget, HashMap<ConstraintWidget, ConstraintWidget> hashMap) {
        super.copy(constraintWidget, hashMap);
        Barrier barrier = (Barrier) constraintWidget;
        this.mBarrierType = barrier.mBarrierType;
        this.mAllowsGoneWidget = barrier.mAllowsGoneWidget;
        this.mMargin = barrier.mMargin;
    }

    public boolean getAllowsGoneWidget() {
        return this.mAllowsGoneWidget;
    }

    public int getBarrierType() {
        return this.mBarrierType;
    }

    public int getMargin() {
        return this.mMargin;
    }

    public int getOrientation() {
        int i10 = this.mBarrierType;
        if (i10 != 0 && i10 != 1) {
            if (i10 == 2 || i10 == 3) {
                return 1;
            }
            return -1;
        }
        return 0;
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public boolean isResolvedHorizontally() {
        return this.mResolved;
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public boolean isResolvedVertically() {
        return this.mResolved;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void markWidgets() {
        for (int i10 = 0; i10 < this.mWidgetsCount; i10++) {
            ConstraintWidget constraintWidget = this.mWidgets[i10];
            if (this.mAllowsGoneWidget || constraintWidget.allowedInBarrier()) {
                int i11 = this.mBarrierType;
                if (i11 != 0 && i11 != 1) {
                    if (i11 == 2 || i11 == 3) {
                        constraintWidget.setInBarrier(1, true);
                    }
                } else {
                    constraintWidget.setInBarrier(0, true);
                }
            }
        }
    }

    public void setAllowsGoneWidget(boolean z10) {
        this.mAllowsGoneWidget = z10;
    }

    public void setBarrierType(int i10) {
        this.mBarrierType = i10;
    }

    public void setMargin(int i10) {
        this.mMargin = i10;
    }

    @Override // androidx.constraintlayout.core.widgets.ConstraintWidget
    public String toString() {
        String str = "[Barrier] " + getDebugName() + " {";
        for (int i10 = 0; i10 < this.mWidgetsCount; i10++) {
            ConstraintWidget constraintWidget = this.mWidgets[i10];
            if (i10 > 0) {
                str = str + ", ";
            }
            str = str + constraintWidget.getDebugName();
        }
        return str + "}";
    }

    public Barrier(String str) {
        setDebugName(str);
    }
}
