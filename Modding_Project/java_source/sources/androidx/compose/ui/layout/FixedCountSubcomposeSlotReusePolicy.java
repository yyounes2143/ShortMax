package androidx.compose.ui.layout;

import androidx.compose.ui.layout.SubcomposeSlotReusePolicy;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SubcomposeLayout.kt */
@Metadata
/* loaded from: classes.dex */
final class FixedCountSubcomposeSlotReusePolicy implements SubcomposeSlotReusePolicy {
    private final int maxSlotsToRetainForReuse;

    public FixedCountSubcomposeSlotReusePolicy(int i10) {
        this.maxSlotsToRetainForReuse = i10;
    }

    @Override // androidx.compose.ui.layout.SubcomposeSlotReusePolicy
    public boolean areCompatible(@Nullable Object obj, @Nullable Object obj2) {
        return true;
    }

    @Override // androidx.compose.ui.layout.SubcomposeSlotReusePolicy
    public void getSlotsToRetain(@NotNull SubcomposeSlotReusePolicy.SlotIdsSet slotIds) {
        Intrinsics.checkNotNullParameter(slotIds, "slotIds");
        if (slotIds.size() > this.maxSlotsToRetainForReuse) {
            Iterator<Object> it = slotIds.iterator();
            int i10 = 0;
            while (it.hasNext()) {
                it.next();
                i10++;
                if (i10 > this.maxSlotsToRetainForReuse) {
                    it.remove();
                }
            }
        }
    }
}
