package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.LinearSystem;
import androidx.constraintlayout.core.Metrics;
import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import androidx.constraintlayout.core.widgets.Guideline;
import androidx.constraintlayout.core.widgets.Helper;
import androidx.constraintlayout.core.widgets.Optimizer;
import androidx.constraintlayout.core.widgets.VirtualLayout;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class BasicMeasure {
    public static final int AT_MOST = Integer.MIN_VALUE;
    private static final boolean DEBUG = false;
    private static final boolean DO_NOT_USE = false;
    public static final int EXACTLY = 1073741824;
    public static final int FIXED = -3;
    public static final int MATCH_PARENT = -1;
    private static final int MODE_SHIFT = 30;
    public static final int UNSPECIFIED = 0;
    public static final int WRAP_CONTENT = -2;
    private ConstraintWidgetContainer mConstraintWidgetContainer;
    private final ArrayList<ConstraintWidget> mVariableDimensionsWidgets = new ArrayList<>();
    private Measure mMeasure = new Measure();

    /* loaded from: classes.dex */
    public static class Measure {
        public static int SELF_DIMENSIONS = 0;
        public static int TRY_GIVEN_DIMENSIONS = 1;
        public static int USE_GIVEN_DIMENSIONS = 2;
        public ConstraintWidget.DimensionBehaviour horizontalBehavior;
        public int horizontalDimension;
        public int measureStrategy;
        public int measuredBaseline;
        public boolean measuredHasBaseline;
        public int measuredHeight;
        public boolean measuredNeedsSolverPass;
        public int measuredWidth;
        public ConstraintWidget.DimensionBehaviour verticalBehavior;
        public int verticalDimension;
    }

    /* loaded from: classes.dex */
    public interface Measurer {
        void didMeasures();

        void measure(ConstraintWidget constraintWidget, Measure measure);
    }

    public BasicMeasure(ConstraintWidgetContainer constraintWidgetContainer) {
        this.mConstraintWidgetContainer = constraintWidgetContainer;
    }

    private boolean measure(Measurer measurer, ConstraintWidget constraintWidget, int i10) {
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        this.mMeasure.horizontalBehavior = constraintWidget.getHorizontalDimensionBehaviour();
        this.mMeasure.verticalBehavior = constraintWidget.getVerticalDimensionBehaviour();
        this.mMeasure.horizontalDimension = constraintWidget.getWidth();
        this.mMeasure.verticalDimension = constraintWidget.getHeight();
        Measure measure = this.mMeasure;
        measure.measuredNeedsSolverPass = false;
        measure.measureStrategy = i10;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour = measure.horizontalBehavior;
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
        if (dimensionBehaviour == dimensionBehaviour2) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (measure.verticalBehavior == dimensionBehaviour2) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (z10 && constraintWidget.mDimensionRatio > 0.0f) {
            z12 = true;
        } else {
            z12 = false;
        }
        if (z11 && constraintWidget.mDimensionRatio > 0.0f) {
            z13 = true;
        } else {
            z13 = false;
        }
        if (z12 && constraintWidget.mResolvedMatchConstraintDefault[0] == 4) {
            measure.horizontalBehavior = ConstraintWidget.DimensionBehaviour.FIXED;
        }
        if (z13 && constraintWidget.mResolvedMatchConstraintDefault[1] == 4) {
            measure.verticalBehavior = ConstraintWidget.DimensionBehaviour.FIXED;
        }
        measurer.measure(constraintWidget, measure);
        constraintWidget.setWidth(this.mMeasure.measuredWidth);
        constraintWidget.setHeight(this.mMeasure.measuredHeight);
        constraintWidget.setHasBaseline(this.mMeasure.measuredHasBaseline);
        constraintWidget.setBaselineDistance(this.mMeasure.measuredBaseline);
        Measure measure2 = this.mMeasure;
        measure2.measureStrategy = Measure.SELF_DIMENSIONS;
        return measure2.measuredNeedsSolverPass;
    }

    /* JADX WARN: Code restructure failed: missing block: B:52:0x008e, code lost:
        if (r8 != r9) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0095, code lost:
        if (r5.mDimensionRatio <= 0.0f) goto L58;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void measureChildren(androidx.constraintlayout.core.widgets.ConstraintWidgetContainer r13) {
        /*
            r12 = this;
            java.util.ArrayList<androidx.constraintlayout.core.widgets.ConstraintWidget> r0 = r13.mChildren
            int r0 = r0.size()
            r1 = 64
            boolean r1 = r13.optimizeFor(r1)
            androidx.constraintlayout.core.widgets.analyzer.BasicMeasure$Measurer r2 = r13.getMeasurer()
            r3 = 0
            r4 = r3
        L12:
            if (r4 >= r0) goto Lb0
            java.util.ArrayList<androidx.constraintlayout.core.widgets.ConstraintWidget> r5 = r13.mChildren
            java.lang.Object r5 = r5.get(r4)
            androidx.constraintlayout.core.widgets.ConstraintWidget r5 = (androidx.constraintlayout.core.widgets.ConstraintWidget) r5
            boolean r6 = r5 instanceof androidx.constraintlayout.core.widgets.Guideline
            if (r6 == 0) goto L22
            goto Lac
        L22:
            boolean r6 = r5 instanceof androidx.constraintlayout.core.widgets.Barrier
            if (r6 == 0) goto L28
            goto Lac
        L28:
            boolean r6 = r5.isInVirtualLayout()
            if (r6 == 0) goto L30
            goto Lac
        L30:
            if (r1 == 0) goto L48
            androidx.constraintlayout.core.widgets.analyzer.HorizontalWidgetRun r6 = r5.mHorizontalRun
            if (r6 == 0) goto L48
            androidx.constraintlayout.core.widgets.analyzer.VerticalWidgetRun r7 = r5.mVerticalRun
            if (r7 == 0) goto L48
            androidx.constraintlayout.core.widgets.analyzer.DimensionDependency r6 = r6.mDimension
            boolean r6 = r6.resolved
            if (r6 == 0) goto L48
            androidx.constraintlayout.core.widgets.analyzer.DimensionDependency r6 = r7.mDimension
            boolean r6 = r6.resolved
            if (r6 == 0) goto L48
            goto Lac
        L48:
            androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour r6 = r5.getDimensionBehaviour(r3)
            r7 = 1
            androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour r8 = r5.getDimensionBehaviour(r7)
            androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour r9 = androidx.constraintlayout.core.widgets.ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT
            if (r6 != r9) goto L61
            int r10 = r5.mMatchConstraintDefaultWidth
            if (r10 == r7) goto L61
            if (r8 != r9) goto L61
            int r10 = r5.mMatchConstraintDefaultHeight
            if (r10 == r7) goto L61
            r10 = r7
            goto L62
        L61:
            r10 = r3
        L62:
            if (r10 != 0) goto L98
            boolean r11 = r13.optimizeFor(r7)
            if (r11 == 0) goto L98
            boolean r11 = r5 instanceof androidx.constraintlayout.core.widgets.VirtualLayout
            if (r11 != 0) goto L98
            if (r6 != r9) goto L7d
            int r11 = r5.mMatchConstraintDefaultWidth
            if (r11 != 0) goto L7d
            if (r8 == r9) goto L7d
            boolean r11 = r5.isInHorizontalChain()
            if (r11 != 0) goto L7d
            r10 = r7
        L7d:
            if (r8 != r9) goto L8c
            int r11 = r5.mMatchConstraintDefaultHeight
            if (r11 != 0) goto L8c
            if (r6 == r9) goto L8c
            boolean r11 = r5.isInHorizontalChain()
            if (r11 != 0) goto L8c
            r10 = r7
        L8c:
            if (r6 == r9) goto L90
            if (r8 != r9) goto L98
        L90:
            float r6 = r5.mDimensionRatio
            r8 = 0
            int r6 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r6 <= 0) goto L98
            goto L99
        L98:
            r7 = r10
        L99:
            if (r7 == 0) goto L9c
            goto Lac
        L9c:
            int r6 = androidx.constraintlayout.core.widgets.analyzer.BasicMeasure.Measure.SELF_DIMENSIONS
            r12.measure(r2, r5, r6)
            androidx.constraintlayout.core.Metrics r5 = r13.mMetrics
            if (r5 == 0) goto Lac
            long r6 = r5.measuredWidgets
            r8 = 1
            long r6 = r6 + r8
            r5.measuredWidgets = r6
        Lac:
            int r4 = r4 + 1
            goto L12
        Lb0:
            r2.didMeasures()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.widgets.analyzer.BasicMeasure.measureChildren(androidx.constraintlayout.core.widgets.ConstraintWidgetContainer):void");
    }

    private void solveLinearSystem(ConstraintWidgetContainer constraintWidgetContainer, String str, int i10, int i11, int i12) {
        long j10;
        if (constraintWidgetContainer.mMetrics != null) {
            j10 = System.nanoTime();
        } else {
            j10 = 0;
        }
        int minWidth = constraintWidgetContainer.getMinWidth();
        int minHeight = constraintWidgetContainer.getMinHeight();
        constraintWidgetContainer.setMinWidth(0);
        constraintWidgetContainer.setMinHeight(0);
        constraintWidgetContainer.setWidth(i11);
        constraintWidgetContainer.setHeight(i12);
        constraintWidgetContainer.setMinWidth(minWidth);
        constraintWidgetContainer.setMinHeight(minHeight);
        this.mConstraintWidgetContainer.setPass(i10);
        this.mConstraintWidgetContainer.layout();
        if (constraintWidgetContainer.mMetrics != null) {
            long nanoTime = System.nanoTime();
            Metrics metrics = constraintWidgetContainer.mMetrics;
            metrics.mSolverPasses++;
            metrics.measuresLayoutDuration += nanoTime - j10;
        }
    }

    public long solverMeasure(ConstraintWidgetContainer constraintWidgetContainer, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18) {
        boolean z10;
        boolean z11;
        boolean z12;
        int i19;
        long j10;
        int i20;
        boolean z13;
        boolean z14;
        boolean z15;
        boolean z16;
        int i21;
        int i22;
        int i23;
        boolean z17;
        boolean z18;
        boolean z19;
        Metrics metrics;
        boolean z20;
        boolean z21;
        boolean z22;
        BasicMeasure basicMeasure = this;
        Measurer measurer = constraintWidgetContainer.getMeasurer();
        int size = constraintWidgetContainer.mChildren.size();
        int width = constraintWidgetContainer.getWidth();
        int height = constraintWidgetContainer.getHeight();
        boolean enabled = Optimizer.enabled(i10, 128);
        if (!enabled && !Optimizer.enabled(i10, 64)) {
            z10 = false;
        } else {
            z10 = true;
        }
        if (z10) {
            for (int i24 = 0; i24 < size; i24++) {
                ConstraintWidget constraintWidget = constraintWidgetContainer.mChildren.get(i24);
                ConstraintWidget.DimensionBehaviour horizontalDimensionBehaviour = constraintWidget.getHorizontalDimensionBehaviour();
                ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
                if (horizontalDimensionBehaviour == dimensionBehaviour) {
                    z20 = true;
                } else {
                    z20 = false;
                }
                if (constraintWidget.getVerticalDimensionBehaviour() == dimensionBehaviour) {
                    z21 = true;
                } else {
                    z21 = false;
                }
                if (z20 && z21 && constraintWidget.getDimensionRatio() > 0.0f) {
                    z22 = true;
                } else {
                    z22 = false;
                }
                if ((constraintWidget.isInHorizontalChain() && z22) || ((constraintWidget.isInVerticalChain() && z22) || (constraintWidget instanceof VirtualLayout) || constraintWidget.isInHorizontalChain() || constraintWidget.isInVerticalChain())) {
                    z10 = false;
                    break;
                }
            }
        }
        if (z10 && (metrics = LinearSystem.sMetrics) != null) {
            metrics.measures++;
        }
        if ((i13 == 1073741824 && i15 == 1073741824) || enabled) {
            z11 = true;
        } else {
            z11 = false;
        }
        boolean z23 = z10 & z11;
        int i25 = 2;
        if (z23) {
            int min = Math.min(constraintWidgetContainer.getMaxWidth(), i14);
            int min2 = Math.min(constraintWidgetContainer.getMaxHeight(), i16);
            if (i13 == 1073741824 && constraintWidgetContainer.getWidth() != min) {
                constraintWidgetContainer.setWidth(min);
                constraintWidgetContainer.invalidateGraph();
            }
            if (i15 == 1073741824 && constraintWidgetContainer.getHeight() != min2) {
                constraintWidgetContainer.setHeight(min2);
                constraintWidgetContainer.invalidateGraph();
            }
            if (i13 == 1073741824 && i15 == 1073741824) {
                z12 = constraintWidgetContainer.directMeasure(enabled);
                i19 = 2;
            } else {
                boolean directMeasureSetup = constraintWidgetContainer.directMeasureSetup(enabled);
                if (i13 == 1073741824) {
                    directMeasureSetup &= constraintWidgetContainer.directMeasureWithOrientation(enabled, 0);
                    i19 = 1;
                } else {
                    i19 = 0;
                }
                if (i15 == 1073741824) {
                    z12 = constraintWidgetContainer.directMeasureWithOrientation(enabled, 1) & directMeasureSetup;
                    i19++;
                } else {
                    z12 = directMeasureSetup;
                }
            }
            if (z12) {
                if (i13 == 1073741824) {
                    z18 = true;
                } else {
                    z18 = false;
                }
                if (i15 == 1073741824) {
                    z19 = true;
                } else {
                    z19 = false;
                }
                constraintWidgetContainer.updateFromRuns(z18, z19);
            }
        } else {
            z12 = false;
            i19 = 0;
        }
        long j11 = 0;
        if (!z12 || i19 != 2) {
            int optimizationLevel = constraintWidgetContainer.getOptimizationLevel();
            if (size > 0) {
                measureChildren(constraintWidgetContainer);
            }
            if (constraintWidgetContainer.mMetrics != null) {
                j11 = System.nanoTime();
            }
            updateHierarchy(constraintWidgetContainer);
            int size2 = basicMeasure.mVariableDimensionsWidgets.size();
            if (size > 0) {
                solveLinearSystem(constraintWidgetContainer, "First pass", 0, width, height);
            }
            if (size2 > 0) {
                ConstraintWidget.DimensionBehaviour horizontalDimensionBehaviour2 = constraintWidgetContainer.getHorizontalDimensionBehaviour();
                ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
                if (horizontalDimensionBehaviour2 == dimensionBehaviour2) {
                    z13 = true;
                } else {
                    z13 = false;
                }
                if (constraintWidgetContainer.getVerticalDimensionBehaviour() == dimensionBehaviour2) {
                    z14 = true;
                } else {
                    z14 = false;
                }
                int max = Math.max(constraintWidgetContainer.getWidth(), basicMeasure.mConstraintWidgetContainer.getMinWidth());
                int max2 = Math.max(constraintWidgetContainer.getHeight(), basicMeasure.mConstraintWidgetContainer.getMinHeight());
                int i26 = 0;
                boolean z24 = false;
                while (i26 < size2) {
                    ConstraintWidget constraintWidget2 = basicMeasure.mVariableDimensionsWidgets.get(i26);
                    long j12 = j11;
                    if (!(constraintWidget2 instanceof VirtualLayout)) {
                        i22 = width;
                        i23 = height;
                        i21 = optimizationLevel;
                    } else {
                        int width2 = constraintWidget2.getWidth();
                        int height2 = constraintWidget2.getHeight();
                        i21 = optimizationLevel;
                        boolean measure = z24 | basicMeasure.measure(measurer, constraintWidget2, Measure.TRY_GIVEN_DIMENSIONS);
                        Metrics metrics2 = constraintWidgetContainer.mMetrics;
                        i22 = width;
                        i23 = height;
                        if (metrics2 != null) {
                            metrics2.measuredMatchWidgets++;
                        }
                        int width3 = constraintWidget2.getWidth();
                        int height3 = constraintWidget2.getHeight();
                        if (width3 != width2) {
                            constraintWidget2.setWidth(width3);
                            if (z13 && constraintWidget2.getRight() > max) {
                                max = Math.max(max, constraintWidget2.getRight() + constraintWidget2.getAnchor(ConstraintAnchor.Type.RIGHT).getMargin());
                            }
                            z17 = true;
                        } else {
                            z17 = measure;
                        }
                        if (height3 != height2) {
                            constraintWidget2.setHeight(height3);
                            if (z14 && constraintWidget2.getBottom() > max2) {
                                max2 = Math.max(max2, constraintWidget2.getBottom() + constraintWidget2.getAnchor(ConstraintAnchor.Type.BOTTOM).getMargin());
                            }
                            z17 = true;
                        }
                        z24 = z17 | ((VirtualLayout) constraintWidget2).needSolverPass();
                    }
                    i26++;
                    optimizationLevel = i21;
                    j11 = j12;
                    width = i22;
                    height = i23;
                    i25 = 2;
                }
                j10 = j11;
                int i27 = width;
                int i28 = height;
                int i29 = optimizationLevel;
                int i30 = i25;
                int i31 = 0;
                while (i31 < i30) {
                    int i32 = 0;
                    while (i32 < size2) {
                        ConstraintWidget constraintWidget3 = basicMeasure.mVariableDimensionsWidgets.get(i32);
                        if (((constraintWidget3 instanceof Helper) && !(constraintWidget3 instanceof VirtualLayout)) || (constraintWidget3 instanceof Guideline) || constraintWidget3.getVisibility() == 8 || ((z23 && constraintWidget3.mHorizontalRun.mDimension.resolved && constraintWidget3.mVerticalRun.mDimension.resolved) || (constraintWidget3 instanceof VirtualLayout))) {
                            z15 = z23;
                        } else {
                            int width4 = constraintWidget3.getWidth();
                            int height4 = constraintWidget3.getHeight();
                            int baselineDistance = constraintWidget3.getBaselineDistance();
                            int i33 = Measure.TRY_GIVEN_DIMENSIONS;
                            if (i31 == 1) {
                                i33 = Measure.USE_GIVEN_DIMENSIONS;
                            }
                            boolean measure2 = z24 | basicMeasure.measure(measurer, constraintWidget3, i33);
                            Metrics metrics3 = constraintWidgetContainer.mMetrics;
                            z15 = z23;
                            if (metrics3 != null) {
                                metrics3.measuredMatchWidgets++;
                            }
                            int width5 = constraintWidget3.getWidth();
                            int height5 = constraintWidget3.getHeight();
                            if (width5 != width4) {
                                constraintWidget3.setWidth(width5);
                                if (z13 && constraintWidget3.getRight() > max) {
                                    max = Math.max(max, constraintWidget3.getRight() + constraintWidget3.getAnchor(ConstraintAnchor.Type.RIGHT).getMargin());
                                }
                                z16 = true;
                            } else {
                                z16 = measure2;
                            }
                            if (height5 != height4) {
                                constraintWidget3.setHeight(height5);
                                if (z14 && constraintWidget3.getBottom() > max2) {
                                    max2 = Math.max(max2, constraintWidget3.getBottom() + constraintWidget3.getAnchor(ConstraintAnchor.Type.BOTTOM).getMargin());
                                }
                                z16 = true;
                            }
                            if (constraintWidget3.hasBaseline() && baselineDistance != constraintWidget3.getBaselineDistance()) {
                                z24 = true;
                            } else {
                                z24 = z16;
                            }
                        }
                        i32++;
                        basicMeasure = this;
                        z23 = z15;
                    }
                    boolean z25 = z23;
                    if (!z24) {
                        break;
                    }
                    i31++;
                    solveLinearSystem(constraintWidgetContainer, "intermediate pass", i31, i27, i28);
                    i30 = 2;
                    z24 = false;
                    basicMeasure = this;
                    z23 = z25;
                }
                i20 = i29;
            } else {
                j10 = j11;
                i20 = optimizationLevel;
            }
            constraintWidgetContainer.setOptimizationLevel(i20);
            j11 = j10;
        }
        if (constraintWidgetContainer.mMetrics != null) {
            return System.nanoTime() - j11;
        }
        return j11;
    }

    public void updateHierarchy(ConstraintWidgetContainer constraintWidgetContainer) {
        this.mVariableDimensionsWidgets.clear();
        int size = constraintWidgetContainer.mChildren.size();
        for (int i10 = 0; i10 < size; i10++) {
            ConstraintWidget constraintWidget = constraintWidgetContainer.mChildren.get(i10);
            ConstraintWidget.DimensionBehaviour horizontalDimensionBehaviour = constraintWidget.getHorizontalDimensionBehaviour();
            ConstraintWidget.DimensionBehaviour dimensionBehaviour = ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT;
            if (horizontalDimensionBehaviour == dimensionBehaviour || constraintWidget.getVerticalDimensionBehaviour() == dimensionBehaviour) {
                this.mVariableDimensionsWidgets.add(constraintWidget);
            }
        }
        constraintWidgetContainer.invalidateGraph();
    }
}
