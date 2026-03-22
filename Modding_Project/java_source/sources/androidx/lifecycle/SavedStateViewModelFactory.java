package androidx.lifecycle;

import android.annotation.SuppressLint;
import android.app.Application;
import android.os.Bundle;
import androidx.annotation.RestrictTo;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.SavedStateRegistryOwner;
import java.lang.reflect.Constructor;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SavedStateViewModelFactory.android.kt */
@Metadata
/* loaded from: classes2.dex */
public final class SavedStateViewModelFactory extends ViewModelProvider.OnRequeryFactory implements ViewModelProvider.Factory {
    @Nullable
    private Application application;
    @Nullable
    private Bundle defaultArgs;
    @NotNull
    private final ViewModelProvider.Factory factory;
    @Nullable
    private Lifecycle lifecycle;
    @Nullable
    private SavedStateRegistry savedStateRegistry;

    public SavedStateViewModelFactory() {
        this.factory = new ViewModelProvider.AndroidViewModelFactory();
    }

    @Override // androidx.lifecycle.ViewModelProvider.Factory
    @NotNull
    public <T extends ViewModel> T create(@NotNull KClass<T> modelClass, @NotNull CreationExtras extras) {
        Intrinsics.checkNotNullParameter(modelClass, "modelClass");
        Intrinsics.checkNotNullParameter(extras, "extras");
        return (T) create(zs.a.b(modelClass), extras);
    }

    @Override // androidx.lifecycle.ViewModelProvider.OnRequeryFactory
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void onRequery(@NotNull ViewModel viewModel) {
        Intrinsics.checkNotNullParameter(viewModel, "viewModel");
        if (this.lifecycle != null) {
            SavedStateRegistry savedStateRegistry = this.savedStateRegistry;
            Intrinsics.checkNotNull(savedStateRegistry);
            Lifecycle lifecycle = this.lifecycle;
            Intrinsics.checkNotNull(lifecycle);
            LegacySavedStateHandleController.attachHandleIfNeeded(viewModel, savedStateRegistry, lifecycle);
        }
    }

    @Override // androidx.lifecycle.ViewModelProvider.Factory
    @NotNull
    public <T extends ViewModel> T create(@NotNull Class<T> modelClass, @NotNull CreationExtras extras) {
        Constructor findMatchingConstructor;
        Intrinsics.checkNotNullParameter(modelClass, "modelClass");
        Intrinsics.checkNotNullParameter(extras, "extras");
        String str = (String) extras.get(ViewModelProvider.VIEW_MODEL_KEY);
        if (str != null) {
            if (extras.get(SavedStateHandleSupport.SAVED_STATE_REGISTRY_OWNER_KEY) != null && extras.get(SavedStateHandleSupport.VIEW_MODEL_STORE_OWNER_KEY) != null) {
                Application application = (Application) extras.get(ViewModelProvider.AndroidViewModelFactory.APPLICATION_KEY);
                boolean isAssignableFrom = AndroidViewModel.class.isAssignableFrom(modelClass);
                if (isAssignableFrom && application != null) {
                    findMatchingConstructor = SavedStateViewModelFactory_androidKt.findMatchingConstructor(modelClass, SavedStateViewModelFactory_androidKt.access$getANDROID_VIEWMODEL_SIGNATURE$p());
                } else {
                    findMatchingConstructor = SavedStateViewModelFactory_androidKt.findMatchingConstructor(modelClass, SavedStateViewModelFactory_androidKt.access$getVIEWMODEL_SIGNATURE$p());
                }
                if (findMatchingConstructor == null) {
                    return (T) this.factory.create(modelClass, extras);
                }
                if (isAssignableFrom && application != null) {
                    return (T) SavedStateViewModelFactory_androidKt.newInstance(modelClass, findMatchingConstructor, application, SavedStateHandleSupport.createSavedStateHandle(extras));
                }
                return (T) SavedStateViewModelFactory_androidKt.newInstance(modelClass, findMatchingConstructor, SavedStateHandleSupport.createSavedStateHandle(extras));
            } else if (this.lifecycle != null) {
                return (T) create(str, modelClass);
            } else {
                throw new IllegalStateException("SAVED_STATE_REGISTRY_OWNER_KEY andVIEW_MODEL_STORE_OWNER_KEY must be provided in the creation extras tosuccessfully create a ViewModel.");
            }
        }
        throw new IllegalStateException("VIEW_MODEL_KEY must always be provided by ViewModelProvider");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SavedStateViewModelFactory(@Nullable Application application, @NotNull SavedStateRegistryOwner owner) {
        this(application, owner, null);
        Intrinsics.checkNotNullParameter(owner, "owner");
    }

    @SuppressLint({"LambdaLast"})
    public SavedStateViewModelFactory(@Nullable Application application, @NotNull SavedStateRegistryOwner owner, @Nullable Bundle bundle) {
        ViewModelProvider.AndroidViewModelFactory androidViewModelFactory;
        Intrinsics.checkNotNullParameter(owner, "owner");
        this.savedStateRegistry = owner.getSavedStateRegistry();
        this.lifecycle = owner.getLifecycle();
        this.defaultArgs = bundle;
        this.application = application;
        if (application != null) {
            androidViewModelFactory = ViewModelProvider.AndroidViewModelFactory.Companion.getInstance(application);
        } else {
            androidViewModelFactory = new ViewModelProvider.AndroidViewModelFactory();
        }
        this.factory = androidViewModelFactory;
    }

    @NotNull
    public final <T extends ViewModel> T create(@NotNull String key, @NotNull Class<T> modelClass) {
        Constructor findMatchingConstructor;
        T t10;
        Application application;
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(modelClass, "modelClass");
        Lifecycle lifecycle = this.lifecycle;
        if (lifecycle != null) {
            boolean isAssignableFrom = AndroidViewModel.class.isAssignableFrom(modelClass);
            if (isAssignableFrom && this.application != null) {
                findMatchingConstructor = SavedStateViewModelFactory_androidKt.findMatchingConstructor(modelClass, SavedStateViewModelFactory_androidKt.access$getANDROID_VIEWMODEL_SIGNATURE$p());
            } else {
                findMatchingConstructor = SavedStateViewModelFactory_androidKt.findMatchingConstructor(modelClass, SavedStateViewModelFactory_androidKt.access$getVIEWMODEL_SIGNATURE$p());
            }
            if (findMatchingConstructor == null) {
                return this.application != null ? (T) this.factory.create(modelClass) : (T) ViewModelProvider.NewInstanceFactory.Companion.getInstance().create(modelClass);
            }
            SavedStateRegistry savedStateRegistry = this.savedStateRegistry;
            Intrinsics.checkNotNull(savedStateRegistry);
            SavedStateHandleController create = LegacySavedStateHandleController.create(savedStateRegistry, lifecycle, key, this.defaultArgs);
            if (isAssignableFrom && (application = this.application) != null) {
                Intrinsics.checkNotNull(application);
                t10 = (T) SavedStateViewModelFactory_androidKt.newInstance(modelClass, findMatchingConstructor, application, create.getHandle());
            } else {
                t10 = (T) SavedStateViewModelFactory_androidKt.newInstance(modelClass, findMatchingConstructor, create.getHandle());
            }
            t10.addCloseable(LegacySavedStateHandleController.TAG_SAVED_STATE_HANDLE_CONTROLLER, create);
            return t10;
        }
        throw new UnsupportedOperationException("SavedStateViewModelFactory constructed with empty constructor supports only calls to create(modelClass: Class<T>, extras: CreationExtras).");
    }

    @Override // androidx.lifecycle.ViewModelProvider.Factory
    @NotNull
    public <T extends ViewModel> T create(@NotNull Class<T> modelClass) {
        Intrinsics.checkNotNullParameter(modelClass, "modelClass");
        String canonicalName = modelClass.getCanonicalName();
        if (canonicalName != null) {
            return (T) create(canonicalName, modelClass);
        }
        throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
    }
}
