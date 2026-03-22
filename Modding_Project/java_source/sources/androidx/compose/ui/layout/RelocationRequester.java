package androidx.compose.ui.layout;

import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.ExperimentalComposeUiApi;
import androidx.compose.ui.geometry.Rect;
import kotlin.Metadata;
import kotlin.Unit;
import ms.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RelocationRequester.kt */
@StabilityInferred(parameters = 0)
@c
@Metadata
@ExperimentalComposeUiApi
/* loaded from: classes.dex */
public final class RelocationRequester {
    public static final int $stable = 0;

    public static /* synthetic */ Object bringIntoView$default(RelocationRequester relocationRequester, Rect rect, rs.c cVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            rect = null;
        }
        return relocationRequester.bringIntoView(rect, cVar);
    }

    @c
    @Nullable
    public final Object bringIntoView(@Nullable Rect rect, @NotNull rs.c<? super Unit> cVar) {
        return Unit.f60915a;
    }
}
