package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.ExperimentalFoundationApi;
import androidx.compose.ui.layout.SubcomposeSlotReusePolicy;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LazyLayout.kt */
@ExperimentalFoundationApi
@Metadata
/* loaded from: classes.dex */
final class LazyLayoutItemReusePolicy implements SubcomposeSlotReusePolicy {
    @NotNull
    private final Map<Object, Integer> countPerType;
    @NotNull
    private final LazyLayoutItemContentFactory factory;

    public LazyLayoutItemReusePolicy(@NotNull LazyLayoutItemContentFactory factory) {
        Intrinsics.checkNotNullParameter(factory, "factory");
        this.factory = factory;
        this.countPerType = new LinkedHashMap();
    }

    @Override // androidx.compose.ui.layout.SubcomposeSlotReusePolicy
    public boolean areCompatible(@Nullable Object obj, @Nullable Object obj2) {
        return Intrinsics.areEqual(this.factory.getContentType(obj), this.factory.getContentType(obj2));
    }

    @Override // androidx.compose.ui.layout.SubcomposeSlotReusePolicy
    public void getSlotsToRetain(@NotNull SubcomposeSlotReusePolicy.SlotIdsSet slotIds) {
        int i10;
        Intrinsics.checkNotNullParameter(slotIds, "slotIds");
        this.countPerType.clear();
        Iterator<Object> it = slotIds.iterator();
        while (it.hasNext()) {
            Object contentType = this.factory.getContentType(it.next());
            Integer num = this.countPerType.get(contentType);
            if (num != null) {
                i10 = num.intValue();
            } else {
                i10 = 0;
            }
            if (i10 == 7) {
                it.remove();
            } else {
                this.countPerType.put(contentType, Integer.valueOf(i10 + 1));
            }
        }
    }
}
