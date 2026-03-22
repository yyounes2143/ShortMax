package androidx.compose.ui.node;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: LayoutNode.kt */
@Metadata
/* loaded from: classes.dex */
public final class LayoutNodeKt {
    private static final boolean DebugChanges = false;

    public static final void add(@NotNull LayoutNode layoutNode, @NotNull LayoutNode child) {
        Intrinsics.checkNotNullParameter(layoutNode, "<this>");
        Intrinsics.checkNotNullParameter(child, "child");
        layoutNode.insertAt$ui_release(layoutNode.getChildren$ui_release().size(), child);
    }

    @NotNull
    public static final Owner requireOwner(@NotNull LayoutNode layoutNode) {
        Intrinsics.checkNotNullParameter(layoutNode, "<this>");
        Owner owner$ui_release = layoutNode.getOwner$ui_release();
        if (owner$ui_release != null) {
            return owner$ui_release;
        }
        throw new IllegalStateException("LayoutNode should be attached to an owner");
    }
}
