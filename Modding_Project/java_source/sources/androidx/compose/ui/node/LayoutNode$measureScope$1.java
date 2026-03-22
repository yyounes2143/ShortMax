package androidx.compose.ui.node;

import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: LayoutNode.kt */
@Metadata
/* loaded from: classes.dex */
public final class LayoutNode$measureScope$1 implements MeasureScope, Density {
    final /* synthetic */ LayoutNode this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public LayoutNode$measureScope$1(LayoutNode layoutNode) {
        this.this$0 = layoutNode;
    }

    @Override // androidx.compose.ui.unit.Density
    public float getDensity() {
        return this.this$0.getDensity().getDensity();
    }

    @Override // androidx.compose.ui.unit.Density
    public float getFontScale() {
        return this.this$0.getDensity().getFontScale();
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasureScope
    @NotNull
    public LayoutDirection getLayoutDirection() {
        return this.this$0.getLayoutDirection();
    }
}
