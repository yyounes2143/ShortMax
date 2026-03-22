package androidx.compose.ui.graphics.vector;

import androidx.compose.runtime.AbstractApplier;
import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: VectorCompose.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public final class VectorApplier extends AbstractApplier<VNode> {
    public static final int $stable = 0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VectorApplier(@NotNull VNode root) {
        super(root);
        Intrinsics.checkNotNullParameter(root, "root");
    }

    private final GroupComponent asGroup(VNode vNode) {
        if (vNode instanceof GroupComponent) {
            return (GroupComponent) vNode;
        }
        throw new IllegalStateException("Cannot only insert VNode into Group");
    }

    @Override // androidx.compose.runtime.Applier
    public void insertBottomUp(int i10, @NotNull VNode instance) {
        Intrinsics.checkNotNullParameter(instance, "instance");
    }

    @Override // androidx.compose.runtime.Applier
    public void move(int i10, int i11, int i12) {
        asGroup(getCurrent()).move(i10, i11, i12);
    }

    @Override // androidx.compose.runtime.AbstractApplier
    protected void onClear() {
        GroupComponent asGroup = asGroup(getRoot());
        asGroup.remove(0, asGroup.getNumChildren());
    }

    @Override // androidx.compose.runtime.Applier
    public void remove(int i10, int i11) {
        asGroup(getCurrent()).remove(i10, i11);
    }

    @Override // androidx.compose.runtime.Applier
    public void insertTopDown(int i10, @NotNull VNode instance) {
        Intrinsics.checkNotNullParameter(instance, "instance");
        asGroup(getCurrent()).insertAt(i10, instance);
    }
}
