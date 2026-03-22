package androidx.compose.ui.semantics;

import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.node.LayoutNode;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: SemanticsOwner.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class SemanticsOwner {
    public static final int $stable = 8;
    @NotNull
    private final LayoutNode rootNode;

    public SemanticsOwner(@NotNull LayoutNode rootNode) {
        Intrinsics.checkNotNullParameter(rootNode, "rootNode");
        this.rootNode = rootNode;
    }

    @NotNull
    public final SemanticsNode getRootSemanticsNode() {
        SemanticsEntity outerSemantics = SemanticsNodeKt.getOuterSemantics(this.rootNode);
        Intrinsics.checkNotNull(outerSemantics);
        return new SemanticsNode(outerSemantics, true);
    }

    @NotNull
    public final SemanticsNode getUnmergedRootSemanticsNode() {
        SemanticsEntity outerSemantics = SemanticsNodeKt.getOuterSemantics(this.rootNode);
        Intrinsics.checkNotNull(outerSemantics);
        return new SemanticsNode(outerSemantics, false);
    }
}
