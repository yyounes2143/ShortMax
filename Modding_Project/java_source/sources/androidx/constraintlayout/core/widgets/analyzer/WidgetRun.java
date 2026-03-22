package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
/* loaded from: classes.dex */
public abstract class WidgetRun implements Dependency {
    protected ConstraintWidget.DimensionBehaviour mDimensionBehavior;
    RunGroup mRunGroup;
    ConstraintWidget mWidget;
    public int matchConstraintsType;
    DimensionDependency mDimension = new DimensionDependency(this);
    public int orientation = 0;
    boolean mResolved = false;
    public DependencyNode start = new DependencyNode(this);
    public DependencyNode end = new DependencyNode(this);
    protected RunType mRunType = RunType.NONE;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.core.widgets.analyzer.WidgetRun$1  reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type;

        static {
            int[] iArr = new int[ConstraintAnchor.Type.values().length];
            $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type = iArr;
            try {
                iArr[ConstraintAnchor.Type.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type[ConstraintAnchor.Type.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type[ConstraintAnchor.Type.TOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type[ConstraintAnchor.Type.BASELINE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type[ConstraintAnchor.Type.BOTTOM.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* loaded from: classes.dex */
    enum RunType {
        NONE,
        START,
        END,
        CENTER
    }

    public WidgetRun(ConstraintWidget constraintWidget) {
        this.mWidget = constraintWidget;
    }

    private void resolveDimension(int i10, int i11) {
        WidgetRun widgetRun;
        float f10;
        int i12;
        int i13 = this.matchConstraintsType;
        if (i13 != 0) {
            if (i13 != 1) {
                if (i13 != 2) {
                    if (i13 == 3) {
                        ConstraintWidget constraintWidget = this.mWidget;
                        WidgetRun widgetRun2 = constraintWidget.mHorizontalRun;
                        ConstraintWidget.DimensionBehaviour dimensionBehaviour = widgetRun2.mDimensionBehavior;
                        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                        if (dimensionBehaviour == dimensionBehaviour2 && widgetRun2.matchConstraintsType == 3) {
                            VerticalWidgetRun verticalWidgetRun = constraintWidget.mVerticalRun;
                            if (verticalWidgetRun.mDimensionBehavior == dimensionBehaviour2 && verticalWidgetRun.matchConstraintsType == 3) {
                                return;
                            }
                        }
                        if (i10 == 0) {
                            widgetRun2 = constraintWidget.mVerticalRun;
                        }
                        if (widgetRun2.mDimension.resolved) {
                            float dimensionRatio = constraintWidget.getDimensionRatio();
                            if (i10 == 1) {
                                i12 = (int) ((widgetRun2.mDimension.value / dimensionRatio) + 0.5f);
                            } else {
                                i12 = (int) ((dimensionRatio * widgetRun2.mDimension.value) + 0.5f);
                            }
                            this.mDimension.resolve(i12);
                            return;
                        }
                        return;
                    }
                    return;
                }
                ConstraintWidget parent = this.mWidget.getParent();
                if (parent != null) {
                    if (i10 == 0) {
                        widgetRun = parent.mHorizontalRun;
                    } else {
                        widgetRun = parent.mVerticalRun;
                    }
                    DimensionDependency dimensionDependency = widgetRun.mDimension;
                    if (dimensionDependency.resolved) {
                        if (i10 == 0) {
                            f10 = this.mWidget.mMatchConstraintPercentWidth;
                        } else {
                            f10 = this.mWidget.mMatchConstraintPercentHeight;
                        }
                        this.mDimension.resolve(getLimitedDimension((int) ((dimensionDependency.value * f10) + 0.5f), i10));
                        return;
                    }
                    return;
                }
                return;
            }
            this.mDimension.resolve(Math.min(getLimitedDimension(this.mDimension.wrapValue, i10), i11));
            return;
        }
        this.mDimension.resolve(getLimitedDimension(i11, i10));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void addTarget(DependencyNode dependencyNode, DependencyNode dependencyNode2, int i10) {
        dependencyNode.mTargets.add(dependencyNode2);
        dependencyNode.mMargin = i10;
        dependencyNode2.mDependencies.add(dependencyNode);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void apply();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void applyToWidget();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void clear();

    /* JADX INFO: Access modifiers changed from: protected */
    public final int getLimitedDimension(int i10, int i11) {
        int max;
        if (i11 == 0) {
            ConstraintWidget constraintWidget = this.mWidget;
            int i12 = constraintWidget.mMatchConstraintMaxWidth;
            max = Math.max(constraintWidget.mMatchConstraintMinWidth, i10);
            if (i12 > 0) {
                max = Math.min(i12, i10);
            }
            if (max == i10) {
                return i10;
            }
        } else {
            ConstraintWidget constraintWidget2 = this.mWidget;
            int i13 = constraintWidget2.mMatchConstraintMaxHeight;
            max = Math.max(constraintWidget2.mMatchConstraintMinHeight, i10);
            if (i13 > 0) {
                max = Math.min(i13, i10);
            }
            if (max == i10) {
                return i10;
            }
        }
        return max;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final DependencyNode getTarget(ConstraintAnchor constraintAnchor) {
        ConstraintAnchor constraintAnchor2 = constraintAnchor.mTarget;
        if (constraintAnchor2 == null) {
            return null;
        }
        ConstraintWidget constraintWidget = constraintAnchor2.mOwner;
        int i10 = AnonymousClass1.$SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type[constraintAnchor2.mType.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 != 4) {
                        if (i10 != 5) {
                            return null;
                        }
                        return constraintWidget.mVerticalRun.end;
                    }
                    return constraintWidget.mVerticalRun.baseline;
                }
                return constraintWidget.mVerticalRun.start;
            }
            return constraintWidget.mHorizontalRun.end;
        }
        return constraintWidget.mHorizontalRun.start;
    }

    public long getWrapDimension() {
        DimensionDependency dimensionDependency = this.mDimension;
        if (dimensionDependency.resolved) {
            return dimensionDependency.value;
        }
        return 0L;
    }

    public boolean isCenterConnection() {
        int size = this.start.mTargets.size();
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            if (this.start.mTargets.get(i11).mRun != this) {
                i10++;
            }
        }
        int size2 = this.end.mTargets.size();
        for (int i12 = 0; i12 < size2; i12++) {
            if (this.end.mTargets.get(i12).mRun != this) {
                i10++;
            }
        }
        if (i10 < 2) {
            return false;
        }
        return true;
    }

    public boolean isDimensionResolved() {
        return this.mDimension.resolved;
    }

    public boolean isResolved() {
        return this.mResolved;
    }

    abstract void reset();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean supportsWrapComputation();

    /* JADX INFO: Access modifiers changed from: protected */
    public void updateRunCenter(Dependency dependency, ConstraintAnchor constraintAnchor, ConstraintAnchor constraintAnchor2, int i10) {
        float verticalBiasPercent;
        DependencyNode target = getTarget(constraintAnchor);
        DependencyNode target2 = getTarget(constraintAnchor2);
        if (target.resolved && target2.resolved) {
            int margin = target.value + constraintAnchor.getMargin();
            int margin2 = target2.value - constraintAnchor2.getMargin();
            int i11 = margin2 - margin;
            if (!this.mDimension.resolved && this.mDimensionBehavior == ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT) {
                resolveDimension(i10, i11);
            }
            DimensionDependency dimensionDependency = this.mDimension;
            if (!dimensionDependency.resolved) {
                return;
            }
            if (dimensionDependency.value == i11) {
                this.start.resolve(margin);
                this.end.resolve(margin2);
                return;
            }
            if (i10 == 0) {
                verticalBiasPercent = this.mWidget.getHorizontalBiasPercent();
            } else {
                verticalBiasPercent = this.mWidget.getVerticalBiasPercent();
            }
            if (target == target2) {
                margin = target.value;
                margin2 = target2.value;
                verticalBiasPercent = 0.5f;
            }
            this.start.resolve((int) (margin + 0.5f + (((margin2 - margin) - this.mDimension.value) * verticalBiasPercent)));
            this.end.resolve(this.start.value + this.mDimension.value);
        }
    }

    public long wrapSize(int i10) {
        int i11;
        DimensionDependency dimensionDependency = this.mDimension;
        if (dimensionDependency.resolved) {
            long j10 = dimensionDependency.value;
            if (isCenterConnection()) {
                i11 = this.start.mMargin - this.end.mMargin;
            } else if (i10 == 0) {
                i11 = this.start.mMargin;
            } else {
                return j10 - this.end.mMargin;
            }
            return j10 + i11;
        }
        return 0L;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void addTarget(DependencyNode dependencyNode, DependencyNode dependencyNode2, int i10, DimensionDependency dimensionDependency) {
        dependencyNode.mTargets.add(dependencyNode2);
        dependencyNode.mTargets.add(this.mDimension);
        dependencyNode.mMarginFactor = i10;
        dependencyNode.mMarginDependency = dimensionDependency;
        dependencyNode2.mDependencies.add(dependencyNode);
        dimensionDependency.mDependencies.add(dependencyNode);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final DependencyNode getTarget(ConstraintAnchor constraintAnchor, int i10) {
        ConstraintAnchor constraintAnchor2 = constraintAnchor.mTarget;
        if (constraintAnchor2 == null) {
            return null;
        }
        ConstraintWidget constraintWidget = constraintAnchor2.mOwner;
        WidgetRun widgetRun = i10 == 0 ? constraintWidget.mHorizontalRun : constraintWidget.mVerticalRun;
        int i11 = AnonymousClass1.$SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type[constraintAnchor2.mType.ordinal()];
        if (i11 != 1) {
            if (i11 != 2) {
                if (i11 != 3) {
                    if (i11 != 5) {
                        return null;
                    }
                }
            }
            return widgetRun.end;
        }
        return widgetRun.start;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.Dependency
    public void update(Dependency dependency) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void updateRunEnd(Dependency dependency) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void updateRunStart(Dependency dependency) {
    }
}
