package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintWidgetContainer;
import java.util.ArrayList;
import java.util.Iterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class RunGroup {
    public static final int BASELINE = 2;
    public static final int END = 1;
    public static final int START = 0;
    public static int index;
    int mDirection;
    WidgetRun mFirstRun;
    int mGroupIndex;
    WidgetRun mLastRun;
    public int position = 0;
    public boolean dual = false;
    ArrayList<WidgetRun> mRuns = new ArrayList<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunGroup(WidgetRun widgetRun, int i10) {
        this.mFirstRun = null;
        this.mLastRun = null;
        int i11 = index;
        this.mGroupIndex = i11;
        index = i11 + 1;
        this.mFirstRun = widgetRun;
        this.mLastRun = widgetRun;
        this.mDirection = i10;
    }

    private boolean defineTerminalWidget(WidgetRun widgetRun, int i10) {
        DependencyNode dependencyNode;
        WidgetRun widgetRun2;
        DependencyNode dependencyNode2;
        WidgetRun widgetRun3;
        if (!widgetRun.mWidget.isTerminalWidget[i10]) {
            return false;
        }
        for (Dependency dependency : widgetRun.start.mDependencies) {
            if ((dependency instanceof DependencyNode) && (widgetRun3 = (dependencyNode2 = (DependencyNode) dependency).mRun) != widgetRun && dependencyNode2 == widgetRun3.start) {
                if (widgetRun instanceof ChainRun) {
                    Iterator<WidgetRun> it = ((ChainRun) widgetRun).mWidgets.iterator();
                    while (it.hasNext()) {
                        defineTerminalWidget(it.next(), i10);
                    }
                } else if (!(widgetRun instanceof HelperReferences)) {
                    widgetRun.mWidget.isTerminalWidget[i10] = false;
                }
                defineTerminalWidget(dependencyNode2.mRun, i10);
            }
        }
        for (Dependency dependency2 : widgetRun.end.mDependencies) {
            if ((dependency2 instanceof DependencyNode) && (widgetRun2 = (dependencyNode = (DependencyNode) dependency2).mRun) != widgetRun && dependencyNode == widgetRun2.start) {
                if (widgetRun instanceof ChainRun) {
                    Iterator<WidgetRun> it2 = ((ChainRun) widgetRun).mWidgets.iterator();
                    while (it2.hasNext()) {
                        defineTerminalWidget(it2.next(), i10);
                    }
                } else if (!(widgetRun instanceof HelperReferences)) {
                    widgetRun.mWidget.isTerminalWidget[i10] = false;
                }
                defineTerminalWidget(dependencyNode.mRun, i10);
            }
        }
        return false;
    }

    private long traverseEnd(DependencyNode dependencyNode, long j10) {
        WidgetRun widgetRun = dependencyNode.mRun;
        if (widgetRun instanceof HelperReferences) {
            return j10;
        }
        int size = dependencyNode.mDependencies.size();
        long j11 = j10;
        for (int i10 = 0; i10 < size; i10++) {
            Dependency dependency = dependencyNode.mDependencies.get(i10);
            if (dependency instanceof DependencyNode) {
                DependencyNode dependencyNode2 = (DependencyNode) dependency;
                if (dependencyNode2.mRun != widgetRun) {
                    j11 = Math.min(j11, traverseEnd(dependencyNode2, dependencyNode2.mMargin + j10));
                }
            }
        }
        if (dependencyNode == widgetRun.end) {
            long wrapDimension = j10 - widgetRun.getWrapDimension();
            return Math.min(Math.min(j11, traverseEnd(widgetRun.start, wrapDimension)), wrapDimension - widgetRun.start.mMargin);
        }
        return j11;
    }

    private long traverseStart(DependencyNode dependencyNode, long j10) {
        WidgetRun widgetRun = dependencyNode.mRun;
        if (widgetRun instanceof HelperReferences) {
            return j10;
        }
        int size = dependencyNode.mDependencies.size();
        long j11 = j10;
        for (int i10 = 0; i10 < size; i10++) {
            Dependency dependency = dependencyNode.mDependencies.get(i10);
            if (dependency instanceof DependencyNode) {
                DependencyNode dependencyNode2 = (DependencyNode) dependency;
                if (dependencyNode2.mRun != widgetRun) {
                    j11 = Math.max(j11, traverseStart(dependencyNode2, dependencyNode2.mMargin + j10));
                }
            }
        }
        if (dependencyNode == widgetRun.start) {
            long wrapDimension = j10 + widgetRun.getWrapDimension();
            return Math.max(Math.max(j11, traverseStart(widgetRun.end, wrapDimension)), wrapDimension - widgetRun.end.mMargin);
        }
        return j11;
    }

    public void add(WidgetRun widgetRun) {
        this.mRuns.add(widgetRun);
        this.mLastRun = widgetRun;
    }

    public long computeWrapSize(ConstraintWidgetContainer constraintWidgetContainer, int i10) {
        WidgetRun widgetRun;
        WidgetRun widgetRun2;
        WidgetRun widgetRun3;
        long wrapDimension;
        int i11;
        DependencyNode dependencyNode;
        DependencyNode dependencyNode2;
        WidgetRun widgetRun4;
        WidgetRun widgetRun5 = this.mFirstRun;
        long j10 = 0;
        if (widgetRun5 instanceof ChainRun) {
            if (((ChainRun) widgetRun5).orientation != i10) {
                return 0L;
            }
        } else if (i10 == 0) {
            if (!(widgetRun5 instanceof HorizontalWidgetRun)) {
                return 0L;
            }
        } else if (!(widgetRun5 instanceof VerticalWidgetRun)) {
            return 0L;
        }
        if (i10 == 0) {
            widgetRun = constraintWidgetContainer.mHorizontalRun;
        } else {
            widgetRun = constraintWidgetContainer.mVerticalRun;
        }
        DependencyNode dependencyNode3 = widgetRun.start;
        if (i10 == 0) {
            widgetRun2 = constraintWidgetContainer.mHorizontalRun;
        } else {
            widgetRun2 = constraintWidgetContainer.mVerticalRun;
        }
        DependencyNode dependencyNode4 = widgetRun2.end;
        boolean contains = widgetRun5.start.mTargets.contains(dependencyNode3);
        boolean contains2 = this.mFirstRun.end.mTargets.contains(dependencyNode4);
        long wrapDimension2 = this.mFirstRun.getWrapDimension();
        if (contains && contains2) {
            long traverseStart = traverseStart(this.mFirstRun.start, 0L);
            long traverseEnd = traverseEnd(this.mFirstRun.end, 0L);
            long j11 = traverseStart - wrapDimension2;
            WidgetRun widgetRun6 = this.mFirstRun;
            int i12 = widgetRun6.end.mMargin;
            if (j11 >= (-i12)) {
                j11 += i12;
            }
            int i13 = widgetRun6.start.mMargin;
            long j12 = ((-traverseEnd) - wrapDimension2) - i13;
            if (j12 >= i13) {
                j12 -= i13;
            }
            float biasPercent = widgetRun6.mWidget.getBiasPercent(i10);
            if (biasPercent > 0.0f) {
                j10 = (((float) j12) / biasPercent) + (((float) j11) / (1.0f - biasPercent));
            }
            float f10 = (float) j10;
            long j13 = (f10 * biasPercent) + 0.5f + wrapDimension2 + (f10 * (1.0f - biasPercent)) + 0.5f;
            wrapDimension = widgetRun4.start.mMargin + j13;
            i11 = this.mFirstRun.end.mMargin;
        } else if (contains) {
            return Math.max(traverseStart(this.mFirstRun.start, dependencyNode2.mMargin), this.mFirstRun.start.mMargin + wrapDimension2);
        } else if (contains2) {
            return Math.max(-traverseEnd(this.mFirstRun.end, dependencyNode.mMargin), (-this.mFirstRun.end.mMargin) + wrapDimension2);
        } else {
            wrapDimension = widgetRun3.start.mMargin + this.mFirstRun.getWrapDimension();
            i11 = this.mFirstRun.end.mMargin;
        }
        return wrapDimension - i11;
    }

    public void defineTerminalWidgets(boolean z10, boolean z11) {
        if (z10) {
            WidgetRun widgetRun = this.mFirstRun;
            if (widgetRun instanceof HorizontalWidgetRun) {
                defineTerminalWidget(widgetRun, 0);
            }
        }
        if (z11) {
            WidgetRun widgetRun2 = this.mFirstRun;
            if (widgetRun2 instanceof VerticalWidgetRun) {
                defineTerminalWidget(widgetRun2, 1);
            }
        }
    }
}
