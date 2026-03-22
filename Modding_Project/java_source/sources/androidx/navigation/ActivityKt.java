package androidx.navigation;

import android.app.Activity;
import androidx.annotation.IdRes;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Activity.kt */
@Metadata
/* loaded from: classes2.dex */
public final class ActivityKt {
    @NotNull
    public static final NavController findNavController(@NotNull Activity findNavController, @IdRes int i10) {
        Intrinsics.checkParameterIsNotNull(findNavController, "$this$findNavController");
        NavController findNavController2 = Navigation.findNavController(findNavController, i10);
        Intrinsics.checkExpressionValueIsNotNull(findNavController2, "Navigation.findNavController(this, viewId)");
        return findNavController2;
    }
}
