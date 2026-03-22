package androidx.navigation;

import androidx.fragment.app.Fragment;
import androidx.navigation.fragment.FragmentKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;
/* compiled from: NavGraphViewModelLazy.kt */
@Metadata
/* loaded from: classes2.dex */
public final class NavGraphViewModelLazyKt$navGraphViewModels$backStackEntry$2 extends Lambda implements Function0<NavBackStackEntry> {
    final /* synthetic */ int $navGraphId;
    final /* synthetic */ Fragment $this_navGraphViewModels;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavGraphViewModelLazyKt$navGraphViewModels$backStackEntry$2(Fragment fragment, int i10) {
        super(0);
        this.$this_navGraphViewModels = fragment;
        this.$navGraphId = i10;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    @NotNull
    public final NavBackStackEntry invoke() {
        return FragmentKt.findNavController(this.$this_navGraphViewModels).getBackStackEntry(this.$navGraphId);
    }
}
