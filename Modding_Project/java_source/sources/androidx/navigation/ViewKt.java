package androidx.navigation;

import android.view.View;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: View.kt */
@Metadata
/* loaded from: classes2.dex */
public final class ViewKt {
    @NotNull
    public static final NavController findNavController(@NotNull View findNavController) {
        Intrinsics.checkParameterIsNotNull(findNavController, "$this$findNavController");
        NavController findNavController2 = Navigation.findNavController(findNavController);
        Intrinsics.checkExpressionValueIsNotNull(findNavController2, "Navigation.findNavController(this)");
        return findNavController2;
    }
}
