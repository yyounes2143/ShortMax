package androidx.lifecycle.viewmodel.internal;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.viewmodel.CreationExtras;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import org.jetbrains.annotations.NotNull;
import zs.a;
/* compiled from: DefaultViewModelProviderFactory.jvm.kt */
@Metadata
/* loaded from: classes2.dex */
public final class DefaultViewModelProviderFactory implements ViewModelProvider.Factory {
    @NotNull
    public static final DefaultViewModelProviderFactory INSTANCE = new DefaultViewModelProviderFactory();

    private DefaultViewModelProviderFactory() {
    }

    @Override // androidx.lifecycle.ViewModelProvider.Factory
    @NotNull
    public <T extends ViewModel> T create(@NotNull KClass<T> modelClass, @NotNull CreationExtras extras) {
        Intrinsics.checkNotNullParameter(modelClass, "modelClass");
        Intrinsics.checkNotNullParameter(extras, "extras");
        return (T) JvmViewModelProviders.INSTANCE.createViewModel(a.b(modelClass));
    }
}
