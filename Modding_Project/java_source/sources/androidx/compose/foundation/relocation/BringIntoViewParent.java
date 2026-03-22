package androidx.compose.foundation.relocation;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinates;
import kotlin.Metadata;
import kotlin.Unit;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: BringIntoView.kt */
@Metadata
/* loaded from: classes.dex */
public interface BringIntoViewParent {
    @Nullable
    Object bringChildIntoView(@NotNull Rect rect, @NotNull LayoutCoordinates layoutCoordinates, @NotNull c<? super Unit> cVar);
}
