package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.Helper;
import androidx.constraintlayout.core.widgets.analyzer.DependencyNode;
import androidx.constraintlayout.core.widgets.analyzer.WidgetRun;
/* loaded from: classes.dex */
public class VerticalWidgetRun extends WidgetRun {
    private static final boolean FORCE_USE = true;
    public DependencyNode baseline;
    DimensionDependency mBaselineDimension;

    /* renamed from: androidx.constraintlayout.core.widgets.analyzer.VerticalWidgetRun$1  reason: invalid class name */
    /* loaded from: classes.dex */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$androidx$constraintlayout$core$widgets$analyzer$WidgetRun$RunType;

        static {
            int[] iArr = new int[WidgetRun.RunType.values().length];
            $SwitchMap$androidx$constraintlayout$core$widgets$analyzer$WidgetRun$RunType = iArr;
            try {
                iArr[WidgetRun.RunType.START.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$widgets$analyzer$WidgetRun$RunType[WidgetRun.RunType.END.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$widgets$analyzer$WidgetRun$RunType[WidgetRun.RunType.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public VerticalWidgetRun(ConstraintWidget constraintWidget) {
        super(constraintWidget);
        DependencyNode dependencyNode = new DependencyNode(this);
        this.baseline = dependencyNode;
        this.mBaselineDimension = null;
        this.start.mType = DependencyNode.Type.TOP;
        this.end.mType = DependencyNode.Type.BOTTOM;
        dependencyNode.mType = DependencyNode.Type.BASELINE;
        this.orientation = 1;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    void apply() {
        ConstraintWidget parent;
        ConstraintWidget parent2;
        ConstraintWidget constraintWidget = this.mWidget;
        if (constraintWidget.measured) {
            this.mDimension.resolve(constraintWidget.getHeight());
        }
        if (!this.mDimension.resolved) {
            this.mDimensionBehavior = this.mWidget.getVerticalDimensionBehaviour();
            if (this.mWidget.hasBaseline()) {
                this.mBaselineDimension = new BaselineDimensionDependency(this);
            }
            ConstraintWidget.DimensionBehaviour dimensionBehaviour = this.mDimensionBehavior;
            if (dimensionBehaviour != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                if (dimensionBehaviour == ConstraintWidget.DimensionBehaviour.MATCH_PARENT && (parent2 = this.mWidget.getParent()) != null && parent2.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.FIXED) {
                    int height = (parent2.getHeight() - this.mWidget.mTop.getMargin()) - this.mWidget.mBottom.getMargin();
                    addTarget(this.start, parent2.mVerticalRun.start, this.mWidget.mTop.getMargin());
                    addTarget(this.end, parent2.mVerticalRun.end, -this.mWidget.mBottom.getMargin());
                    this.mDimension.resolve(height);
                    return;
                } else if (this.mDimensionBehavior == ConstraintWidget.DimensionBehaviour.FIXED) {
                    this.mDimension.resolve(this.mWidget.getHeight());
                }
            }
        } else if (this.mDimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_PARENT && (parent = this.mWidget.getParent()) != null && parent.getVerticalDimensionBehaviour() == ConstraintWidget.DimensionBehaviour.FIXED) {
            addTarget(this.start, parent.mVerticalRun.start, this.mWidget.mTop.getMargin());
            addTarget(this.end, parent.mVerticalRun.end, -this.mWidget.mBottom.getMargin());
            return;
        }
        DimensionDependency dimensionDependency = this.mDimension;
        boolean z10 = dimensionDependency.resolved;
        if (z10) {
            ConstraintWidget constraintWidget2 = this.mWidget;
            if (constraintWidget2.measured) {
                ConstraintAnchor[] constraintAnchorArr = constraintWidget2.mListAnchors;
                ConstraintAnchor constraintAnchor = constraintAnchorArr[2];
                ConstraintAnchor constraintAnchor2 = constraintAnchor.mTarget;
                if (constraintAnchor2 != null && constraintAnchorArr[3].mTarget != null) {
                    if (constraintWidget2.isInVerticalChain()) {
                        this.start.mMargin = this.mWidget.mListAnchors[2].getMargin();
                        this.end.mMargin = -this.mWidget.mListAnchors[3].getMargin();
                    } else {
                        DependencyNode target = getTarget(this.mWidget.mListAnchors[2]);
                        if (target != null) {
                            addTarget(this.start, target, this.mWidget.mListAnchors[2].getMargin());
                        }
                        DependencyNode target2 = getTarget(this.mWidget.mListAnchors[3]);
                        if (target2 != null) {
                            addTarget(this.end, target2, -this.mWidget.mListAnchors[3].getMargin());
                        }
                        this.start.delegateToWidgetRun = true;
                        this.end.delegateToWidgetRun = true;
                    }
                    if (this.mWidget.hasBaseline()) {
                        addTarget(this.baseline, this.start, this.mWidget.getBaselineDistance());
                        return;
                    }
                    return;
                } else if (constraintAnchor2 != null) {
                    DependencyNode target3 = getTarget(constraintAnchor);
                    if (target3 != null) {
                        addTarget(this.start, target3, this.mWidget.mListAnchors[2].getMargin());
                        addTarget(this.end, this.start, this.mDimension.value);
                        if (this.mWidget.hasBaseline()) {
                            addTarget(this.baseline, this.start, this.mWidget.getBaselineDistance());
                            return;
                        }
                        return;
                    }
                    return;
                } else {
                    ConstraintAnchor constraintAnchor3 = constraintAnchorArr[3];
                    if (constraintAnchor3.mTarget != null) {
                        DependencyNode target4 = getTarget(constraintAnchor3);
                        if (target4 != null) {
                            addTarget(this.end, target4, -this.mWidget.mListAnchors[3].getMargin());
                            addTarget(this.start, this.end, -this.mDimension.value);
                        }
                        if (this.mWidget.hasBaseline()) {
                            addTarget(this.baseline, this.start, this.mWidget.getBaselineDistance());
                            return;
                        }
                        return;
                    }
                    ConstraintAnchor constraintAnchor4 = constraintAnchorArr[4];
                    if (constraintAnchor4.mTarget != null) {
                        DependencyNode target5 = getTarget(constraintAnchor4);
                        if (target5 != null) {
                            addTarget(this.baseline, target5, 0);
                            addTarget(this.start, this.baseline, -this.mWidget.getBaselineDistance());
                            addTarget(this.end, this.start, this.mDimension.value);
                            return;
                        }
                        return;
                    } else if ((constraintWidget2 instanceof Helper) || constraintWidget2.getParent() == null || this.mWidget.getAnchor(ConstraintAnchor.Type.CENTER).mTarget != null) {
                        return;
                    } else {
                        addTarget(this.start, this.mWidget.getParent().mVerticalRun.start, this.mWidget.getY());
                        addTarget(this.end, this.start, this.mDimension.value);
                        if (this.mWidget.hasBaseline()) {
                            addTarget(this.baseline, this.start, this.mWidget.getBaselineDistance());
                            return;
                        }
                        return;
                    }
                }
            }
        }
        if (!z10 && this.mDimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            ConstraintWidget constraintWidget3 = this.mWidget;
            int i10 = constraintWidget3.mMatchConstraintDefaultHeight;
            if (i10 != 2) {
                if (i10 == 3 && !constraintWidget3.isInVerticalChain()) {
                    ConstraintWidget constraintWidget4 = this.mWidget;
                    if (constraintWidget4.mMatchConstraintDefaultWidth != 3) {
                        DimensionDependency dimensionDependency2 = constraintWidget4.mHorizontalRun.mDimension;
                        this.mDimension.mTargets.add(dimensionDependency2);
                        dimensionDependency2.mDependencies.add(this.mDimension);
                        DimensionDependency dimensionDependency3 = this.mDimension;
                        dimensionDependency3.delegateToWidgetRun = true;
                        dimensionDependency3.mDependencies.add(this.start);
                        this.mDimension.mDependencies.add(this.end);
                    }
                }
            } else {
                ConstraintWidget parent3 = constraintWidget3.getParent();
                if (parent3 != null) {
                    DimensionDependency dimensionDependency4 = parent3.mVerticalRun.mDimension;
                    this.mDimension.mTargets.add(dimensionDependency4);
                    dimensionDependency4.mDependencies.add(this.mDimension);
                    DimensionDependency dimensionDependency5 = this.mDimension;
                    dimensionDependency5.delegateToWidgetRun = true;
                    dimensionDependency5.mDependencies.add(this.start);
                    this.mDimension.mDependencies.add(this.end);
                }
            }
        } else {
            dimensionDependency.addDependency(this);
        }
        ConstraintWidget constraintWidget5 = this.mWidget;
        ConstraintAnchor[] constraintAnchorArr2 = constraintWidget5.mListAnchors;
        ConstraintAnchor constraintAnchor5 = constraintAnchorArr2[2];
        ConstraintAnchor constraintAnchor6 = constraintAnchor5.mTarget;
        if (constraintAnchor6 != null && constraintAnchorArr2[3].mTarget != null) {
            if (constraintWidget5.isInVerticalChain()) {
                this.start.mMargin = this.mWidget.mListAnchors[2].getMargin();
                this.end.mMargin = -this.mWidget.mListAnchors[3].getMargin();
            } else {
                DependencyNode target6 = getTarget(this.mWidget.mListAnchors[2]);
                DependencyNode target7 = getTarget(this.mWidget.mListAnchors[3]);
                if (target6 != null) {
                    target6.addDependency(this);
                }
                if (target7 != null) {
                    target7.addDependency(this);
                }
                this.mRunType = WidgetRun.RunType.CENTER;
            }
            if (this.mWidget.hasBaseline()) {
                addTarget(this.baseline, this.start, 1, this.mBaselineDimension);
            }
        } else if (constraintAnchor6 != null) {
            DependencyNode target8 = getTarget(constraintAnchor5);
            if (target8 != null) {
                addTarget(this.start, target8, this.mWidget.mListAnchors[2].getMargin());
                addTarget(this.end, this.start, 1, this.mDimension);
                if (this.mWidget.hasBaseline()) {
                    addTarget(this.baseline, this.start, 1, this.mBaselineDimension);
                }
                ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = this.mDimensionBehavior;
                ConstraintWidget.DimensionBehaviour dimensionBehaviour3 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                if (dimensionBehaviour2 == dimensionBehaviour3 && this.mWidget.getDimensionRatio() > 0.0f) {
                    HorizontalWidgetRun horizontalWidgetRun = this.mWidget.mHorizontalRun;
                    if (horizontalWidgetRun.mDimensionBehavior == dimensionBehaviour3) {
                        horizontalWidgetRun.mDimension.mDependencies.add(this.mDimension);
                        this.mDimension.mTargets.add(this.mWidget.mHorizontalRun.mDimension);
                        this.mDimension.updateDelegate = this;
                    }
                }
            }
        } else {
            ConstraintAnchor constraintAnchor7 = constraintAnchorArr2[3];
            if (constraintAnchor7.mTarget != null) {
                DependencyNode target9 = getTarget(constraintAnchor7);
                if (target9 != null) {
                    addTarget(this.end, target9, -this.mWidget.mListAnchors[3].getMargin());
                    addTarget(this.start, this.end, -1, this.mDimension);
                    if (this.mWidget.hasBaseline()) {
                        addTarget(this.baseline, this.start, 1, this.mBaselineDimension);
                    }
                }
            } else {
                ConstraintAnchor constraintAnchor8 = constraintAnchorArr2[4];
                if (constraintAnchor8.mTarget != null) {
                    DependencyNode target10 = getTarget(constraintAnchor8);
                    if (target10 != null) {
                        addTarget(this.baseline, target10, 0);
                        addTarget(this.start, this.baseline, -1, this.mBaselineDimension);
                        addTarget(this.end, this.start, 1, this.mDimension);
                    }
                } else if (!(constraintWidget5 instanceof Helper) && constraintWidget5.getParent() != null) {
                    addTarget(this.start, this.mWidget.getParent().mVerticalRun.start, this.mWidget.getY());
                    addTarget(this.end, this.start, 1, this.mDimension);
                    if (this.mWidget.hasBaseline()) {
                        addTarget(this.baseline, this.start, 1, this.mBaselineDimension);
                    }
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour4 = this.mDimensionBehavior;
                    ConstraintWidget.DimensionBehaviour dimensionBehaviour5 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                    if (dimensionBehaviour4 == dimensionBehaviour5 && this.mWidget.getDimensionRatio() > 0.0f) {
                        HorizontalWidgetRun horizontalWidgetRun2 = this.mWidget.mHorizontalRun;
                        if (horizontalWidgetRun2.mDimensionBehavior == dimensionBehaviour5) {
                            horizontalWidgetRun2.mDimension.mDependencies.add(this.mDimension);
                            this.mDimension.mTargets.add(this.mWidget.mHorizontalRun.mDimension);
                            this.mDimension.updateDelegate = this;
                        }
                    }
                }
            }
        }
        if (this.mDimension.mTargets.size() == 0) {
            this.mDimension.readyToSolve = true;
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public void applyToWidget() {
        DependencyNode dependencyNode = this.start;
        if (dependencyNode.resolved) {
            this.mWidget.setY(dependencyNode.value);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public void clear() {
        this.mRunGroup = null;
        this.start.clear();
        this.end.clear();
        this.baseline.clear();
        this.mDimension.clear();
        this.mResolved = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    public void reset() {
        this.mResolved = false;
        this.start.clear();
        this.start.resolved = false;
        this.end.clear();
        this.end.resolved = false;
        this.baseline.clear();
        this.baseline.resolved = false;
        this.mDimension.resolved = false;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun
    boolean supportsWrapComputation() {
        if (this.mDimensionBehavior != ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT || this.mWidget.mMatchConstraintDefaultHeight == 0) {
            return true;
        }
        return false;
    }

    public String toString() {
        return "VerticalRun " + this.mWidget.getDebugName();
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.WidgetRun, androidx.constraintlayout.core.widgets.analyzer.Dependency
    public void update(Dependency dependency) {
        DimensionDependency dimensionDependency;
        float f10;
        float dimensionRatio;
        float f11;
        int i10;
        ConstraintWidget constraintWidget;
        int i11 = AnonymousClass1.$SwitchMap$androidx$constraintlayout$core$widgets$analyzer$WidgetRun$RunType[this.mRunType.ordinal()];
        if (i11 != 1) {
            if (i11 != 2) {
                if (i11 == 3) {
                    ConstraintWidget constraintWidget2 = this.mWidget;
                    updateRunCenter(dependency, constraintWidget2.mTop, constraintWidget2.mBottom, 1);
                    return;
                }
            } else {
                updateRunEnd(dependency);
            }
        } else {
            updateRunStart(dependency);
        }
        DimensionDependency dimensionDependency2 = this.mDimension;
        if (dimensionDependency2.readyToSolve && !dimensionDependency2.resolved && this.mDimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
            ConstraintWidget constraintWidget3 = this.mWidget;
            int i12 = constraintWidget3.mMatchConstraintDefaultHeight;
            if (i12 != 2) {
                if (i12 == 3 && constraintWidget3.mHorizontalRun.mDimension.resolved) {
                    int dimensionRatioSide = constraintWidget3.getDimensionRatioSide();
                    if (dimensionRatioSide != -1) {
                        if (dimensionRatioSide != 0) {
                            if (dimensionRatioSide != 1) {
                                i10 = 0;
                                this.mDimension.resolve(i10);
                            } else {
                                ConstraintWidget constraintWidget4 = this.mWidget;
                                f10 = constraintWidget4.mHorizontalRun.mDimension.value;
                                dimensionRatio = constraintWidget4.getDimensionRatio();
                            }
                        } else {
                            f11 = constraintWidget.mHorizontalRun.mDimension.value * this.mWidget.getDimensionRatio();
                            i10 = (int) (f11 + 0.5f);
                            this.mDimension.resolve(i10);
                        }
                    } else {
                        ConstraintWidget constraintWidget5 = this.mWidget;
                        f10 = constraintWidget5.mHorizontalRun.mDimension.value;
                        dimensionRatio = constraintWidget5.getDimensionRatio();
                    }
                    f11 = f10 / dimensionRatio;
                    i10 = (int) (f11 + 0.5f);
                    this.mDimension.resolve(i10);
                }
            } else {
                ConstraintWidget parent = constraintWidget3.getParent();
                if (parent != null) {
                    if (parent.mVerticalRun.mDimension.resolved) {
                        this.mDimension.resolve((int) ((dimensionDependency.value * this.mWidget.mMatchConstraintPercentHeight) + 0.5f));
                    }
                }
            }
        }
        DependencyNode dependencyNode = this.start;
        if (dependencyNode.readyToSolve) {
            DependencyNode dependencyNode2 = this.end;
            if (dependencyNode2.readyToSolve) {
                if (dependencyNode.resolved && dependencyNode2.resolved && this.mDimension.resolved) {
                    return;
                }
                if (!this.mDimension.resolved && this.mDimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                    ConstraintWidget constraintWidget6 = this.mWidget;
                    if (constraintWidget6.mMatchConstraintDefaultWidth == 0 && !constraintWidget6.isInVerticalChain()) {
                        int i13 = this.start.mTargets.get(0).value;
                        DependencyNode dependencyNode3 = this.start;
                        int i14 = i13 + dependencyNode3.mMargin;
                        int i15 = this.end.mTargets.get(0).value + this.end.mMargin;
                        dependencyNode3.resolve(i14);
                        this.end.resolve(i15);
                        this.mDimension.resolve(i15 - i14);
                        return;
                    }
                }
                if (!this.mDimension.resolved && this.mDimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT && this.matchConstraintsType == 1 && this.start.mTargets.size() > 0 && this.end.mTargets.size() > 0) {
                    int i16 = (this.end.mTargets.get(0).value + this.end.mMargin) - (this.start.mTargets.get(0).value + this.start.mMargin);
                    DimensionDependency dimensionDependency3 = this.mDimension;
                    int i17 = dimensionDependency3.wrapValue;
                    if (i16 < i17) {
                        dimensionDependency3.resolve(i16);
                    } else {
                        dimensionDependency3.resolve(i17);
                    }
                }
                if (this.mDimension.resolved && this.start.mTargets.size() > 0 && this.end.mTargets.size() > 0) {
                    DependencyNode dependencyNode4 = this.start.mTargets.get(0);
                    DependencyNode dependencyNode5 = this.end.mTargets.get(0);
                    int i18 = dependencyNode4.value + this.start.mMargin;
                    int i19 = dependencyNode5.value + this.end.mMargin;
                    float verticalBiasPercent = this.mWidget.getVerticalBiasPercent();
                    if (dependencyNode4 == dependencyNode5) {
                        i18 = dependencyNode4.value;
                        i19 = dependencyNode5.value;
                        verticalBiasPercent = 0.5f;
                    }
                    this.start.resolve((int) (i18 + 0.5f + (((i19 - i18) - this.mDimension.value) * verticalBiasPercent)));
                    this.end.resolve(this.start.value + this.mDimension.value);
                }
            }
        }
    }
}
