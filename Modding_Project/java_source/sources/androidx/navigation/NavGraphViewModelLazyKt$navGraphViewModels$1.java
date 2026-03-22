package androidx.navigation;

import androidx.lifecycle.ViewModelProvider;
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
public final class NavGraphViewModelLazyKt$navGraphViewModels$1 extends Lambda implements Function0<ViewModelProvider.Factory> {
    final /* synthetic */ i $backStackEntry;
    final /* synthetic */ KProperty $backStackEntry$metadata;
    final /* synthetic */ Function0 $factoryProducer;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavGraphViewModelLazyKt$navGraphViewModels$1(Function0 function0, i iVar, KProperty kProperty) {
        super(0);
        this.$factoryProducer = function0;
        this.$backStackEntry = iVar;
        this.$backStackEntry$metadata = kProperty;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    @NotNull
    public final ViewModelProvider.Factory invoke() {
        ViewModelProvider.Factory factory;
        Function0 function0 = this.$factoryProducer;
        if (function0 == null || (factory = (ViewModelProvider.Factory) function0.invoke()) == null) {
            NavBackStackEntry backStackEntry = (NavBackStackEntry) this.$backStackEntry.getValue();
            Intrinsics.checkExpressionValueIsNotNull(backStackEntry, "backStackEntry");
            ViewModelProvider.Factory defaultViewModelProviderFactory = backStackEntry.getDefaultViewModelProviderFactory();
            Intrinsics.checkExpressionValueIsNotNull(defaultViewModelProviderFactory, "backStackEntry.defaultViewModelProviderFactory");
            return defaultViewModelProviderFactory;
        }
        return factory;
    }
}
