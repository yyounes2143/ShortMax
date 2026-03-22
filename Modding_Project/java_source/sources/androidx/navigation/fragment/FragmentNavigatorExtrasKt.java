package androidx.navigation.fragment;

import android.view.View;
import androidx.navigation.fragment.FragmentNavigator;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: FragmentNavigatorExtras.kt */
@Metadata
/* loaded from: classes2.dex */
public final class FragmentNavigatorExtrasKt {
    @NotNull
    public static final FragmentNavigator.Extras FragmentNavigatorExtras(@NotNull Pair<? extends View, String>... sharedElements) {
        Intrinsics.checkParameterIsNotNull(sharedElements, "sharedElements");
        FragmentNavigator.Extras.Builder builder = new FragmentNavigator.Extras.Builder();
        for (Pair<? extends View, String> pair : sharedElements) {
            builder.addSharedElement(pair.b(), pair.d());
        }
        FragmentNavigator.Extras build = builder.build();
        Intrinsics.checkExpressionValueIsNotNull(build, "FragmentNavigator.Extras…      }\n        }.build()");
        return build;
    }
}
