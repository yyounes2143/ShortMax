package androidx.navigation.fragment;

import androidx.fragment.app.Fragment;
import androidx.navigation.NavController;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Fragment.kt */
@Metadata
/* loaded from: classes2.dex */
public final class FragmentKt {
    @NotNull
    public static final NavController findNavController(@NotNull Fragment findNavController) {
        Intrinsics.checkParameterIsNotNull(findNavController, "$this$findNavController");
        NavController findNavController2 = NavHostFragment.findNavController(findNavController);
        Intrinsics.checkExpressionValueIsNotNull(findNavController2, "NavHostFragment.findNavController(this)");
        return findNavController2;
    }
}
