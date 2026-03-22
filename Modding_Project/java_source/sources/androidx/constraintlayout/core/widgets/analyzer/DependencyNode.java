package androidx.constraintlayout.core.widgets.analyzer;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class DependencyNode implements Dependency {
    int mMargin;
    WidgetRun mRun;
    public int value;
    public Dependency updateDelegate = null;
    public boolean delegateToWidgetRun = false;
    public boolean readyToSolve = false;
    Type mType = Type.UNKNOWN;
    int mMarginFactor = 1;
    DimensionDependency mMarginDependency = null;
    public boolean resolved = false;
    List<Dependency> mDependencies = new ArrayList();
    List<DependencyNode> mTargets = new ArrayList();

    /* loaded from: classes.dex */
    enum Type {
        UNKNOWN,
        HORIZONTAL_DIMENSION,
        VERTICAL_DIMENSION,
        LEFT,
        RIGHT,
        TOP,
        BOTTOM,
        BASELINE
    }

    public DependencyNode(WidgetRun widgetRun) {
        this.mRun = widgetRun;
    }

    public void addDependency(Dependency dependency) {
        this.mDependencies.add(dependency);
        if (this.resolved) {
            dependency.update(dependency);
        }
    }

    public void clear() {
        this.mTargets.clear();
        this.mDependencies.clear();
        this.resolved = false;
        this.value = 0;
        this.readyToSolve = false;
        this.delegateToWidgetRun = false;
    }

    public String name() {
        String str;
        String debugName = this.mRun.mWidget.getDebugName();
        Type type = this.mType;
        if (type != Type.LEFT && type != Type.RIGHT) {
            str = debugName + "_VERTICAL";
        } else {
            str = debugName + "_HORIZONTAL";
        }
        return str + ":" + this.mType.name();
    }

    public void resolve(int i10) {
        if (this.resolved) {
            return;
        }
        this.resolved = true;
        this.value = i10;
        for (Dependency dependency : this.mDependencies) {
            dependency.update(dependency);
        }
    }

    public String toString() {
        Object obj;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.mRun.mWidget.getDebugName());
        sb2.append(":");
        sb2.append(this.mType);
        sb2.append("(");
        if (this.resolved) {
            obj = Integer.valueOf(this.value);
        } else {
            obj = "unresolved";
        }
        sb2.append(obj);
        sb2.append(") <t=");
        sb2.append(this.mTargets.size());
        sb2.append(":d=");
        sb2.append(this.mDependencies.size());
        sb2.append(">");
        return sb2.toString();
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.Dependency
    public void update(Dependency dependency) {
        for (DependencyNode dependencyNode : this.mTargets) {
            if (!dependencyNode.resolved) {
                return;
            }
        }
        this.readyToSolve = true;
        Dependency dependency2 = this.updateDelegate;
        if (dependency2 != null) {
            dependency2.update(this);
        }
        if (this.delegateToWidgetRun) {
            this.mRun.update(this);
            return;
        }
        DependencyNode dependencyNode2 = null;
        int i10 = 0;
        for (DependencyNode dependencyNode3 : this.mTargets) {
            if (!(dependencyNode3 instanceof DimensionDependency)) {
                i10++;
                dependencyNode2 = dependencyNode3;
            }
        }
        if (dependencyNode2 != null && i10 == 1 && dependencyNode2.resolved) {
            DimensionDependency dimensionDependency = this.mMarginDependency;
            if (dimensionDependency != null) {
                if (dimensionDependency.resolved) {
                    this.mMargin = this.mMarginFactor * dimensionDependency.value;
                } else {
                    return;
                }
            }
            resolve(dependencyNode2.value + this.mMargin);
        }
        Dependency dependency3 = this.updateDelegate;
        if (dependency3 != null) {
            dependency3.update(this);
        }
    }
}
