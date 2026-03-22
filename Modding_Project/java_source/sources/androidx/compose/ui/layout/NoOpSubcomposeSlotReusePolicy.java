package androidx.compose.ui.layout;

import androidx.compose.ui.layout.SubcomposeSlotReusePolicy;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SubcomposeLayout.kt */
@Metadata
/* loaded from: classes.dex */
final class NoOpSubcomposeSlotReusePolicy implements SubcomposeSlotReusePolicy {
    @NotNull
    public static final NoOpSubcomposeSlotReusePolicy INSTANCE = new NoOpSubcomposeSlotReusePolicy();

    private NoOpSubcomposeSlotReusePolicy() {
    }

    @Override // androidx.compose.ui.layout.SubcomposeSlotReusePolicy
    public boolean areCompatible(@Nullable Object obj, @Nullable Object obj2) {
        return false;
    }

    @Override // androidx.compose.ui.layout.SubcomposeSlotReusePolicy
    public void getSlotsToRetain(@NotNull SubcomposeSlotReusePolicy.SlotIdsSet slotIds) {
        Intrinsics.checkNotNullParameter(slotIds, "slotIds");
        slotIds.clear();
    }
}
