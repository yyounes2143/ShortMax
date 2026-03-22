package androidx.compose.foundation;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinates;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import ms.c;
import org.jetbrains.annotations.NotNull;
/* compiled from: ExcludeFromSystemGesture.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class ExcludeFromSystemGesture_androidKt {
    @c
    @NotNull
    public static final Modifier excludeFromSystemGesture(@NotNull Modifier modifier) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        return SystemGestureExclusionKt.systemGestureExclusion(modifier);
    }

    @c
    @NotNull
    public static final Modifier excludeFromSystemGesture(@NotNull Modifier modifier, @NotNull Function1<? super LayoutCoordinates, Rect> exclusion) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(exclusion, "exclusion");
        return SystemGestureExclusionKt.systemGestureExclusion(modifier, exclusion);
    }
}
