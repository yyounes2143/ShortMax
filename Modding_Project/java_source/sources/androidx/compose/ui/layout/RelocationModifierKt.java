package androidx.compose.ui.layout;

import androidx.compose.ui.ExperimentalComposeUiApi;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import at.n;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import ms.c;
import org.jetbrains.annotations.NotNull;
/* compiled from: RelocationModifier.kt */
@Metadata
/* loaded from: classes.dex */
public final class RelocationModifierKt {
    @c
    @ExperimentalComposeUiApi
    @NotNull
    public static final Modifier onRelocationRequest(@NotNull Modifier modifier, @NotNull Function2<? super Rect, ? super LayoutCoordinates, Rect> onProvideDestination, @NotNull n<? super Rect, ? super Rect, ? super rs.c<? super Unit>, ? extends Object> onPerformRelocation) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(onProvideDestination, "onProvideDestination");
        Intrinsics.checkNotNullParameter(onPerformRelocation, "onPerformRelocation");
        return modifier;
    }
}
