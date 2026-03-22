package androidx.compose.foundation.gestures;

import androidx.compose.foundation.MutatePriority;
import androidx.compose.runtime.State;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.nestedscroll.NestedScrollSource;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Scrollable.kt */
@Metadata
/* loaded from: classes.dex */
public final class ScrollDraggableState implements PointerAwareDraggableState, PointerAwareDragScope {
    @NotNull
    private ScrollScope latestScrollScope;
    @NotNull
    private final State<ScrollingLogic> scrollLogic;

    public ScrollDraggableState(@NotNull State<ScrollingLogic> scrollLogic) {
        ScrollScope scrollScope;
        Intrinsics.checkNotNullParameter(scrollLogic, "scrollLogic");
        this.scrollLogic = scrollLogic;
        scrollScope = ScrollableKt.NoOpScrollScope;
        this.latestScrollScope = scrollScope;
    }

    @Override // androidx.compose.foundation.gestures.PointerAwareDraggableState
    public void dispatchRawDelta(float f10) {
        ScrollingLogic value = this.scrollLogic.getValue();
        value.m351performRawScrollMKHz9U(value.m355toOffsettuRUvjQ(f10));
    }

    @Override // androidx.compose.foundation.gestures.PointerAwareDraggableState
    @Nullable
    public Object drag(@NotNull MutatePriority mutatePriority, @NotNull Function2<? super PointerAwareDragScope, ? super c<? super Unit>, ? extends Object> function2, @NotNull c<? super Unit> cVar) {
        Object scroll = this.scrollLogic.getValue().getScrollableState().scroll(mutatePriority, new ScrollDraggableState$drag$2(this, function2, null), cVar);
        if (scroll == a.f()) {
            return scroll;
        }
        return Unit.f60915a;
    }

    @Override // androidx.compose.foundation.gestures.PointerAwareDragScope
    /* renamed from: dragBy-Uv8p0NA */
    public void mo310dragByUv8p0NA(float f10, long j10) {
        ScrollingLogic value = this.scrollLogic.getValue();
        value.m349dispatchScrollf0eR0lY(this.latestScrollScope, value.m355toOffsettuRUvjQ(f10), Offset.m1595boximpl(j10), NestedScrollSource.Companion.m3109getDragWNlRxjI());
    }

    @NotNull
    public final ScrollScope getLatestScrollScope() {
        return this.latestScrollScope;
    }

    @NotNull
    public final State<ScrollingLogic> getScrollLogic() {
        return this.scrollLogic;
    }

    public final void setLatestScrollScope(@NotNull ScrollScope scrollScope) {
        Intrinsics.checkNotNullParameter(scrollScope, "<set-?>");
        this.latestScrollScope = scrollScope;
    }
}
