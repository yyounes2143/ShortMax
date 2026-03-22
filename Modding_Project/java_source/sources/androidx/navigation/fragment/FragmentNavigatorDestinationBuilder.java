package androidx.navigation.fragment;

import androidx.annotation.IdRes;
import androidx.fragment.app.Fragment;
import androidx.navigation.NavDestinationBuilder;
import androidx.navigation.NavDestinationDsl;
import androidx.navigation.fragment.FragmentNavigator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import org.jetbrains.annotations.NotNull;
import zs.a;
/* compiled from: FragmentNavigatorDestinationBuilder.kt */
@NavDestinationDsl
@Metadata
/* loaded from: classes2.dex */
public final class FragmentNavigatorDestinationBuilder extends NavDestinationBuilder<FragmentNavigator.Destination> {
    private final KClass<? extends Fragment> fragmentClass;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FragmentNavigatorDestinationBuilder(@NotNull FragmentNavigator navigator, @IdRes int i10, @NotNull KClass<? extends Fragment> fragmentClass) {
        super(navigator, i10);
        Intrinsics.checkParameterIsNotNull(navigator, "navigator");
        Intrinsics.checkParameterIsNotNull(fragmentClass, "fragmentClass");
        this.fragmentClass = fragmentClass;
    }

    @Override // androidx.navigation.NavDestinationBuilder
    @NotNull
    public FragmentNavigator.Destination build() {
        FragmentNavigator.Destination destination = (FragmentNavigator.Destination) super.build();
        destination.setClassName(a.b(this.fragmentClass).getName());
        return destination;
    }
}
