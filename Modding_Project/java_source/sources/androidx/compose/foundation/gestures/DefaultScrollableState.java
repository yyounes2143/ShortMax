package androidx.compose.foundation.gestures;

import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.MutatorMutex;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: ScrollableState.kt */
@Metadata
/* loaded from: classes.dex */
final class DefaultScrollableState implements ScrollableState {
    @NotNull
    private final MutableState<Boolean> isScrollingState;
    @NotNull
    private final Function1<Float, Float> onDelta;
    @NotNull
    private final MutatorMutex scrollMutex;
    @NotNull
    private final ScrollScope scrollScope;

    /* JADX WARN: Multi-variable type inference failed */
    public DefaultScrollableState(@NotNull Function1<? super Float, Float> onDelta) {
        MutableState<Boolean> mutableStateOf$default;
        Intrinsics.checkNotNullParameter(onDelta, "onDelta");
        this.onDelta = onDelta;
        this.scrollScope = new ScrollScope() { // from class: androidx.compose.foundation.gestures.DefaultScrollableState$scrollScope$1
            @Override // androidx.compose.foundation.gestures.ScrollScope
            public float scrollBy(float f10) {
                return DefaultScrollableState.this.getOnDelta().invoke(Float.valueOf(f10)).floatValue();
            }
        };
        this.scrollMutex = new MutatorMutex();
        mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.FALSE, null, 2, null);
        this.isScrollingState = mutableStateOf$default;
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public float dispatchRawDelta(float f10) {
        return this.onDelta.invoke(Float.valueOf(f10)).floatValue();
    }

    @NotNull
    public final Function1<Float, Float> getOnDelta() {
        return this.onDelta;
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public boolean isScrollInProgress() {
        return this.isScrollingState.getValue().booleanValue();
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    @Nullable
    public Object scroll(@NotNull MutatePriority mutatePriority, @NotNull Function2<? super ScrollScope, ? super c<? super Unit>, ? extends Object> function2, @NotNull c<? super Unit> cVar) {
        Object f10 = i.f(new DefaultScrollableState$scroll$2(this, mutatePriority, function2, null), cVar);
        if (f10 == a.f()) {
            return f10;
        }
        return Unit.f60915a;
    }
}
