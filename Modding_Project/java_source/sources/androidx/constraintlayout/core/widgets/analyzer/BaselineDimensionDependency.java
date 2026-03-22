package androidx.constraintlayout.core.widgets.analyzer;
/* loaded from: classes.dex */
class BaselineDimensionDependency extends DimensionDependency {
    /* JADX INFO: Access modifiers changed from: package-private */
    public BaselineDimensionDependency(WidgetRun widgetRun) {
        super(widgetRun);
    }

    public void update(DependencyNode dependencyNode) {
        WidgetRun widgetRun = this.mRun;
        ((VerticalWidgetRun) widgetRun).baseline.mMargin = widgetRun.mWidget.getBaselineDistance();
        this.resolved = true;
    }
}
