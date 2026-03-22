package androidx.compose.foundation.lazy;

import androidx.compose.foundation.lazy.LazyListBeyondBoundsInfo;
import androidx.compose.foundation.lazy.layout.PinnableParent;
import androidx.compose.foundation.lazy.layout.PinnableParentKt;
import androidx.compose.ui.layout.Remeasurement;
import androidx.compose.ui.modifier.ModifierLocalConsumer;
import androidx.compose.ui.modifier.ModifierLocalProvider;
import androidx.compose.ui.modifier.ModifierLocalReadScope;
import androidx.compose.ui.modifier.ProvidableModifierLocal;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LazyListPinningModifier.kt */
@Metadata
/* loaded from: classes.dex */
final class LazyListPinningModifier implements ModifierLocalProvider<PinnableParent>, ModifierLocalConsumer, PinnableParent {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final LazyListPinningModifier$Companion$EmptyPinnedItemsHandle$1 EmptyPinnedItemsHandle = new PinnableParent.PinnedItemsHandle() { // from class: androidx.compose.foundation.lazy.LazyListPinningModifier$Companion$EmptyPinnedItemsHandle$1
        @Override // androidx.compose.foundation.lazy.layout.PinnableParent.PinnedItemsHandle
        public void unpin() {
        }
    };
    @NotNull
    private final LazyListBeyondBoundsInfo beyondBoundsInfo;
    @Nullable
    private PinnableParent pinnableGrandParent;
    @NotNull
    private final LazyListState state;

    /* compiled from: LazyListPinningModifier.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public LazyListPinningModifier(@NotNull LazyListState state, @NotNull LazyListBeyondBoundsInfo beyondBoundsInfo) {
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(beyondBoundsInfo, "beyondBoundsInfo");
        this.state = state;
        this.beyondBoundsInfo = beyondBoundsInfo;
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalProvider
    @NotNull
    public ProvidableModifierLocal<PinnableParent> getKey() {
        return PinnableParentKt.getModifierLocalPinnableParent();
    }

    @Nullable
    public final PinnableParent getPinnableGrandParent() {
        return this.pinnableGrandParent;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.compose.ui.modifier.ModifierLocalProvider
    @NotNull
    public PinnableParent getValue() {
        return this;
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalConsumer
    public void onModifierLocalsUpdated(@NotNull ModifierLocalReadScope scope) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.pinnableGrandParent = (PinnableParent) scope.getCurrent(PinnableParentKt.getModifierLocalPinnableParent());
    }

    @Override // androidx.compose.foundation.lazy.layout.PinnableParent
    @NotNull
    public PinnableParent.PinnedItemsHandle pinItems() {
        PinnableParent.PinnedItemsHandle pinItems;
        final LazyListBeyondBoundsInfo lazyListBeyondBoundsInfo = this.beyondBoundsInfo;
        if (lazyListBeyondBoundsInfo.hasIntervals()) {
            return new PinnableParent.PinnedItemsHandle(lazyListBeyondBoundsInfo) { // from class: androidx.compose.foundation.lazy.LazyListPinningModifier$pinItems$1$1
                final /* synthetic */ LazyListBeyondBoundsInfo $this_with;
                @NotNull
                private final LazyListBeyondBoundsInfo.Interval interval;
                @Nullable
                private final PinnableParent.PinnedItemsHandle parentPinnedItemsHandle;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    PinnableParent.PinnedItemsHandle pinnedItemsHandle;
                    this.$this_with = lazyListBeyondBoundsInfo;
                    PinnableParent pinnableGrandParent = LazyListPinningModifier.this.getPinnableGrandParent();
                    if (pinnableGrandParent != null) {
                        pinnedItemsHandle = pinnableGrandParent.pinItems();
                    } else {
                        pinnedItemsHandle = null;
                    }
                    this.parentPinnedItemsHandle = pinnedItemsHandle;
                    this.interval = lazyListBeyondBoundsInfo.addInterval(lazyListBeyondBoundsInfo.getStart(), lazyListBeyondBoundsInfo.getEnd());
                }

                @NotNull
                public final LazyListBeyondBoundsInfo.Interval getInterval() {
                    return this.interval;
                }

                @Nullable
                public final PinnableParent.PinnedItemsHandle getParentPinnedItemsHandle() {
                    return this.parentPinnedItemsHandle;
                }

                @Override // androidx.compose.foundation.lazy.layout.PinnableParent.PinnedItemsHandle
                public void unpin() {
                    LazyListState lazyListState;
                    this.$this_with.removeInterval(this.interval);
                    PinnableParent.PinnedItemsHandle pinnedItemsHandle = this.parentPinnedItemsHandle;
                    if (pinnedItemsHandle != null) {
                        pinnedItemsHandle.unpin();
                    }
                    lazyListState = LazyListPinningModifier.this.state;
                    Remeasurement remeasurement$foundation_release = lazyListState.getRemeasurement$foundation_release();
                    if (remeasurement$foundation_release != null) {
                        remeasurement$foundation_release.forceRemeasure();
                    }
                }
            };
        }
        PinnableParent pinnableParent = this.pinnableGrandParent;
        if (pinnableParent == null || (pinItems = pinnableParent.pinItems()) == null) {
            return EmptyPinnedItemsHandle;
        }
        return pinItems;
    }

    public final void setPinnableGrandParent(@Nullable PinnableParent pinnableParent) {
        this.pinnableGrandParent = pinnableParent;
    }
}
