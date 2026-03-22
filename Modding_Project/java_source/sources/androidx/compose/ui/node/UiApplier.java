package androidx.compose.ui.node;

import androidx.compose.runtime.AbstractApplier;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: UiApplier.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class UiApplier extends AbstractApplier<LayoutNode> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UiApplier(@NotNull LayoutNode root) {
        super(root);
        Intrinsics.checkNotNullParameter(root, "root");
    }

    @Override // androidx.compose.runtime.Applier
    public void insertTopDown(int i10, @NotNull LayoutNode instance) {
        Intrinsics.checkNotNullParameter(instance, "instance");
    }

    @Override // androidx.compose.runtime.Applier
    public void move(int i10, int i11, int i12) {
        getCurrent().move$ui_release(i10, i11, i12);
    }

    @Override // androidx.compose.runtime.AbstractApplier
    protected void onClear() {
        getRoot().removeAll$ui_release();
    }

    @Override // androidx.compose.runtime.Applier
    public void onEndChanges() {
        super.onEndChanges();
        Owner owner$ui_release = getRoot().getOwner$ui_release();
        if (owner$ui_release != null) {
            owner$ui_release.onEndApplyChanges();
        }
    }

    @Override // androidx.compose.runtime.Applier
    public void remove(int i10, int i11) {
        getCurrent().removeAt$ui_release(i10, i11);
    }

    @Override // androidx.compose.runtime.Applier
    public void insertBottomUp(int i10, @NotNull LayoutNode instance) {
        Intrinsics.checkNotNullParameter(instance, "instance");
        getCurrent().insertAt$ui_release(i10, instance);
    }
}
