package androidx.compose.ui.node;

import androidx.compose.ui.input.pointer.PointerInputModifier;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: PointerInputEntity.kt */
@Metadata
/* loaded from: classes.dex */
public final class PointerInputEntity extends LayoutNodeEntity<PointerInputEntity, PointerInputModifier> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PointerInputEntity(@NotNull LayoutNodeWrapper layoutNodeWrapper, @NotNull PointerInputModifier modifier) {
        super(layoutNodeWrapper, modifier);
        Intrinsics.checkNotNullParameter(layoutNodeWrapper, "layoutNodeWrapper");
        Intrinsics.checkNotNullParameter(modifier, "modifier");
    }

    @Override // androidx.compose.ui.node.LayoutNodeEntity
    public void onAttach() {
        super.onAttach();
        getModifier().getPointerInputFilter().setLayoutCoordinates$ui_release(getLayoutNodeWrapper());
        getModifier().getPointerInputFilter().setAttached$ui_release(true);
    }

    @Override // androidx.compose.ui.node.LayoutNodeEntity
    public void onDetach() {
        super.onDetach();
        getModifier().getPointerInputFilter().setAttached$ui_release(false);
    }

    public final boolean shouldSharePointerInputWithSiblings() {
        boolean z10;
        if (!getModifier().getPointerInputFilter().getShareWithSiblings()) {
            PointerInputEntity next = getNext();
            if (next != null) {
                z10 = next.shouldSharePointerInputWithSiblings();
            } else {
                z10 = false;
            }
            if (!z10) {
                return false;
            }
        }
        return true;
    }
}
