package androidx.lifecycle.viewmodel;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.viewmodel.internal.ViewModelProviders;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import org.jetbrains.annotations.NotNull;
import zs.a;
/* compiled from: InitializerViewModelFactory.android.kt */
@Metadata
/* loaded from: classes2.dex */
public final class InitializerViewModelFactory implements ViewModelProvider.Factory {
    @NotNull
    private final ViewModelInitializer<?>[] initializers;

    public InitializerViewModelFactory(@NotNull ViewModelInitializer<?>... initializers) {
        Intrinsics.checkNotNullParameter(initializers, "initializers");
        this.initializers = initializers;
    }

    @Override // androidx.lifecycle.ViewModelProvider.Factory
    @NotNull
    public <VM extends ViewModel> VM create(@NotNull Class<VM> modelClass, @NotNull CreationExtras extras) {
        Intrinsics.checkNotNullParameter(modelClass, "modelClass");
        Intrinsics.checkNotNullParameter(extras, "extras");
        ViewModelProviders viewModelProviders = ViewModelProviders.INSTANCE;
        KClass<VM> d10 = a.d(modelClass);
        ViewModelInitializer<?>[] viewModelInitializerArr = this.initializers;
        return (VM) viewModelProviders.createViewModelFromInitializers$lifecycle_viewmodel_release(d10, extras, (ViewModelInitializer[]) Arrays.copyOf(viewModelInitializerArr, viewModelInitializerArr.length));
    }
}
