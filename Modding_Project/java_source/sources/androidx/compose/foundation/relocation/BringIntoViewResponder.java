package androidx.compose.foundation.relocation;

import androidx.compose.foundation.ExperimentalFoundationApi;
import androidx.compose.ui.geometry.Rect;
import kotlin.Metadata;
import kotlin.Unit;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: BringIntoViewResponder.kt */
@ExperimentalFoundationApi
@Metadata
/* loaded from: classes.dex */
public interface BringIntoViewResponder {
    @ExperimentalFoundationApi
    @Nullable
    Object bringChildIntoView(@NotNull Rect rect, @NotNull c<? super Unit> cVar);

    @ExperimentalFoundationApi
    @NotNull
    Rect calculateRectForParent(@NotNull Rect rect);
}
