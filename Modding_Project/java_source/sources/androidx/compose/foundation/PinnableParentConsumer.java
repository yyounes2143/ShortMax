package androidx.compose.foundation;

import androidx.compose.foundation.lazy.layout.PinnableParent;
import androidx.compose.foundation.lazy.layout.PinnableParentKt;
import androidx.compose.runtime.Stable;
import androidx.compose.ui.modifier.ModifierLocalConsumer;
import androidx.compose.ui.modifier.ModifierLocalReadScope;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Focusable.kt */
@Stable
@ExperimentalFoundationApi
@Metadata
/* loaded from: classes.dex */
final class PinnableParentConsumer implements ModifierLocalConsumer {
    @NotNull
    private final Function1<PinnableParent, Unit> onPinnableParentAvailable;

    /* JADX WARN: Multi-variable type inference failed */
    public PinnableParentConsumer(@NotNull Function1<? super PinnableParent, Unit> onPinnableParentAvailable) {
        Intrinsics.checkNotNullParameter(onPinnableParentAvailable, "onPinnableParentAvailable");
        this.onPinnableParentAvailable = onPinnableParentAvailable;
    }

    public boolean equals(@Nullable Object obj) {
        if ((obj instanceof PinnableParentConsumer) && Intrinsics.areEqual(((PinnableParentConsumer) obj).onPinnableParentAvailable, this.onPinnableParentAvailable)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final Function1<PinnableParent, Unit> getOnPinnableParentAvailable() {
        return this.onPinnableParentAvailable;
    }

    public int hashCode() {
        return this.onPinnableParentAvailable.hashCode();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.compose.ui.modifier.ModifierLocalConsumer
    public void onModifierLocalsUpdated(@NotNull ModifierLocalReadScope scope) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.onPinnableParentAvailable.invoke(scope.getCurrent(PinnableParentKt.getModifierLocalPinnableParent()));
    }
}
