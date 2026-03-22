package androidx.compose.foundation.gestures;

import androidx.compose.foundation.MutatePriority;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: ScrollableState.kt */
@Metadata
/* loaded from: classes.dex */
public interface ScrollableState {

    /* compiled from: ScrollableState.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
    }

    static /* synthetic */ Object scroll$default(ScrollableState scrollableState, MutatePriority mutatePriority, Function2 function2, c cVar, int i10, Object obj) {
        if (obj == null) {
            if ((i10 & 1) != 0) {
                mutatePriority = MutatePriority.Default;
            }
            return scrollableState.scroll(mutatePriority, function2, cVar);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: scroll");
    }

    float dispatchRawDelta(float f10);

    boolean isScrollInProgress();

    @Nullable
    Object scroll(@NotNull MutatePriority mutatePriority, @NotNull Function2<? super ScrollScope, ? super c<? super Unit>, ? extends Object> function2, @NotNull c<? super Unit> cVar);
}
