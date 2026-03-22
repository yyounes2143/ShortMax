package androidx.fragment.app;

import android.view.View;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: View.kt */
@Metadata
/* loaded from: classes2.dex */
public final class ViewKt {
    @NotNull
    public static final <F extends Fragment> F findFragment(@NotNull View findFragment) {
        Intrinsics.checkParameterIsNotNull(findFragment, "$this$findFragment");
        F f10 = (F) FragmentManager.findFragment(findFragment);
        Intrinsics.checkExpressionValueIsNotNull(f10, "FragmentManager.findFragment(this)");
        return f10;
    }
}
