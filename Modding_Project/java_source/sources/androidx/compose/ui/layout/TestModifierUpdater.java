package androidx.compose.ui.layout;

import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.LayoutNode;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import ms.c;
import org.jetbrains.annotations.NotNull;
/* compiled from: TestModifierUpdater.kt */
@StabilityInferred(parameters = 0)
@c
@Metadata
/* loaded from: classes.dex */
public final class TestModifierUpdater {
    public static final int $stable = 8;
    @NotNull
    private final LayoutNode node;

    public TestModifierUpdater(@NotNull LayoutNode node) {
        Intrinsics.checkNotNullParameter(node, "node");
        this.node = node;
    }

    public final void updateModifier(@NotNull Modifier modifier) {
        Intrinsics.checkNotNullParameter(modifier, "modifier");
        this.node.setModifier(modifier);
    }
}
