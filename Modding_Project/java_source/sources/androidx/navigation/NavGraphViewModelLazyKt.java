package androidx.navigation;

import androidx.annotation.IdRes;
import androidx.annotation.MainThread;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import kotlin.Metadata;
import kotlin.c;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: NavGraphViewModelLazy.kt */
@Metadata
/* loaded from: classes2.dex */
public final class NavGraphViewModelLazyKt {
    @MainThread
    @NotNull
    public static final /* synthetic */ <VM extends ViewModel> i<VM> navGraphViewModels(@NotNull Fragment navGraphViewModels, @IdRes int i10, @Nullable Function0<? extends ViewModelProvider.Factory> function0) {
        Intrinsics.checkParameterIsNotNull(navGraphViewModels, "$this$navGraphViewModels");
        i b10 = c.b(new NavGraphViewModelLazyKt$navGraphViewModels$backStackEntry$2(navGraphViewModels, i10));
        NavGraphViewModelLazyKt$navGraphViewModels$storeProducer$1 navGraphViewModelLazyKt$navGraphViewModels$storeProducer$1 = new NavGraphViewModelLazyKt$navGraphViewModels$storeProducer$1(b10, null);
        Intrinsics.reifiedOperationMarker(4, "VM");
        return FragmentViewModelLazyKt.createViewModelLazy(navGraphViewModels, Reflection.getOrCreateKotlinClass(ViewModel.class), navGraphViewModelLazyKt$navGraphViewModels$storeProducer$1, new NavGraphViewModelLazyKt$navGraphViewModels$1(function0, b10, null));
    }

    public static /* synthetic */ i navGraphViewModels$default(Fragment navGraphViewModels, int i10, Function0 function0, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            function0 = null;
        }
        Intrinsics.checkParameterIsNotNull(navGraphViewModels, "$this$navGraphViewModels");
        i b10 = c.b(new NavGraphViewModelLazyKt$navGraphViewModels$backStackEntry$2(navGraphViewModels, i10));
        NavGraphViewModelLazyKt$navGraphViewModels$storeProducer$1 navGraphViewModelLazyKt$navGraphViewModels$storeProducer$1 = new NavGraphViewModelLazyKt$navGraphViewModels$storeProducer$1(b10, null);
        Intrinsics.reifiedOperationMarker(4, "VM");
        return FragmentViewModelLazyKt.createViewModelLazy(navGraphViewModels, Reflection.getOrCreateKotlinClass(ViewModel.class), navGraphViewModelLazyKt$navGraphViewModels$storeProducer$1, new NavGraphViewModelLazyKt$navGraphViewModels$1(function0, b10, null));
    }
}
