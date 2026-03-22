package androidx.navigation;

import androidx.lifecycle.ViewModelStore;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.KProperty;
import ms.i;
import org.jetbrains.annotations.NotNull;
/* compiled from: NavGraphViewModelLazy.kt */
@Metadata
/* loaded from: classes2.dex */
public final class NavGraphViewModelLazyKt$navGraphViewModels$storeProducer$1 extends Lambda implements Function0<ViewModelStore> {
    final /* synthetic */ i $backStackEntry;
    final /* synthetic */ KProperty $backStackEntry$metadata;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavGraphViewModelLazyKt$navGraphViewModels$storeProducer$1(i iVar, KProperty kProperty) {
        super(0);
        this.$backStackEntry = iVar;
        this.$backStackEntry$metadata = kProperty;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    @NotNull
    public final ViewModelStore invoke() {
        NavBackStackEntry backStackEntry = (NavBackStackEntry) this.$backStackEntry.getValue();
        Intrinsics.checkExpressionValueIsNotNull(backStackEntry, "backStackEntry");
        ViewModelStore viewModelStore = backStackEntry.getViewModelStore();
        Intrinsics.checkExpressionValueIsNotNull(viewModelStore, "backStackEntry.viewModelStore");
        return viewModelStore;
    }
}
