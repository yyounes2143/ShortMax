package androidx.compose.foundation.relocation;

import androidx.compose.foundation.ExperimentalFoundationApi;
import androidx.compose.ui.geometry.Rect;
import kotlin.Metadata;
import kotlin.Unit;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: BringIntoViewRequester.kt */
@ExperimentalFoundationApi
@Metadata
/* loaded from: classes.dex */
public interface BringIntoViewRequester {
    static /* synthetic */ Object bringIntoView$default(BringIntoViewRequester bringIntoViewRequester, Rect rect, c cVar, int i10, Object obj) {
        if (obj == null) {
            if ((i10 & 1) != 0) {
                rect = null;
            }
            return bringIntoViewRequester.bringIntoView(rect, cVar);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: bringIntoView");
    }

    @Nullable
    Object bringIntoView(@Nullable Rect rect, @NotNull c<? super Unit> cVar);
}
