package androidx.lifecycle;

import android.os.Bundle;
import androidx.annotation.MainThread;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.SavedStateRegistryOwner;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KClass;
import org.jetbrains.annotations.NotNull;
/* compiled from: SavedStateHandleSupport.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSavedStateHandleSupport.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SavedStateHandleSupport.kt\nandroidx/lifecycle/SavedStateHandleSupport\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CreationExtras.kt\nandroidx/lifecycle/viewmodel/CreationExtras$Companion\n*L\n1#1,240:1\n1#2:241\n68#3:242\n68#3:243\n68#3:244\n*S KotlinDebug\n*F\n+ 1 SavedStateHandleSupport.kt\nandroidx/lifecycle/SavedStateHandleSupport\n*L\n230#1:242\n235#1:243\n239#1:244\n*E\n"})
/* loaded from: classes2.dex */
public final class SavedStateHandleSupport {
    @NotNull
    public static final CreationExtras.Key<Bundle> DEFAULT_ARGS_KEY;
    @NotNull
    public static final String SAVED_STATE_KEY = "androidx.lifecycle.internal.SavedStateHandlesProvider";
    @NotNull
    public static final CreationExtras.Key<SavedStateRegistryOwner> SAVED_STATE_REGISTRY_OWNER_KEY;
    @NotNull
    public static final String VIEWMODEL_KEY = "androidx.lifecycle.internal.SavedStateHandlesVM";
    @NotNull
    public static final CreationExtras.Key<ViewModelStoreOwner> VIEW_MODEL_STORE_OWNER_KEY;

    static {
        CreationExtras.Companion companion = CreationExtras.Companion;
        SAVED_STATE_REGISTRY_OWNER_KEY = new CreationExtras.Key<SavedStateRegistryOwner>() { // from class: androidx.lifecycle.SavedStateHandleSupport$special$$inlined$Key$1
        };
        VIEW_MODEL_STORE_OWNER_KEY = new CreationExtras.Key<ViewModelStoreOwner>() { // from class: androidx.lifecycle.SavedStateHandleSupport$special$$inlined$Key$2
        };
        DEFAULT_ARGS_KEY = new CreationExtras.Key<Bundle>() { // from class: androidx.lifecycle.SavedStateHandleSupport$special$$inlined$Key$3
        };
    }

    private static final SavedStateHandle createSavedStateHandle(SavedStateRegistryOwner savedStateRegistryOwner, ViewModelStoreOwner viewModelStoreOwner, String str, Bundle bundle) {
        SavedStateHandlesProvider savedStateHandlesProvider = getSavedStateHandlesProvider(savedStateRegistryOwner);
        SavedStateHandlesVM savedStateHandlesVM = getSavedStateHandlesVM(viewModelStoreOwner);
        SavedStateHandle savedStateHandle = savedStateHandlesVM.getHandles().get(str);
        if (savedStateHandle == null) {
            SavedStateHandle createHandle = SavedStateHandle.Companion.createHandle(savedStateHandlesProvider.consumeRestoredStateForKey(str), bundle);
            savedStateHandlesVM.getHandles().put(str, createHandle);
            return createHandle;
        }
        return savedStateHandle;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @MainThread
    public static final <T extends SavedStateRegistryOwner & ViewModelStoreOwner> void enableSavedStateHandles(@NotNull T t10) {
        Intrinsics.checkNotNullParameter(t10, "<this>");
        Lifecycle.State currentState = t10.getLifecycle().getCurrentState();
        if (currentState != Lifecycle.State.INITIALIZED && currentState != Lifecycle.State.CREATED) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        if (t10.getSavedStateRegistry().getSavedStateProvider(SAVED_STATE_KEY) == null) {
            SavedStateHandlesProvider savedStateHandlesProvider = new SavedStateHandlesProvider(t10.getSavedStateRegistry(), t10);
            t10.getSavedStateRegistry().registerSavedStateProvider(SAVED_STATE_KEY, savedStateHandlesProvider);
            t10.getLifecycle().addObserver(new SavedStateHandleAttacher(savedStateHandlesProvider));
        }
    }

    @NotNull
    public static final SavedStateHandlesProvider getSavedStateHandlesProvider(@NotNull SavedStateRegistryOwner savedStateRegistryOwner) {
        SavedStateHandlesProvider savedStateHandlesProvider;
        Intrinsics.checkNotNullParameter(savedStateRegistryOwner, "<this>");
        SavedStateRegistry.SavedStateProvider savedStateProvider = savedStateRegistryOwner.getSavedStateRegistry().getSavedStateProvider(SAVED_STATE_KEY);
        if (savedStateProvider instanceof SavedStateHandlesProvider) {
            savedStateHandlesProvider = (SavedStateHandlesProvider) savedStateProvider;
        } else {
            savedStateHandlesProvider = null;
        }
        if (savedStateHandlesProvider != null) {
            return savedStateHandlesProvider;
        }
        throw new IllegalStateException("enableSavedStateHandles() wasn't called prior to createSavedStateHandle() call");
    }

    @NotNull
    public static final SavedStateHandlesVM getSavedStateHandlesVM(@NotNull ViewModelStoreOwner viewModelStoreOwner) {
        Intrinsics.checkNotNullParameter(viewModelStoreOwner, "<this>");
        return (SavedStateHandlesVM) ViewModelProvider.Companion.create$default(ViewModelProvider.Companion, viewModelStoreOwner, new ViewModelProvider.Factory() { // from class: androidx.lifecycle.SavedStateHandleSupport$savedStateHandlesVM$1
            @Override // androidx.lifecycle.ViewModelProvider.Factory
            public <T extends ViewModel> T create(KClass<T> modelClass, CreationExtras extras) {
                Intrinsics.checkNotNullParameter(modelClass, "modelClass");
                Intrinsics.checkNotNullParameter(extras, "extras");
                return new SavedStateHandlesVM();
            }
        }, (CreationExtras) null, 4, (Object) null).get(VIEWMODEL_KEY, Reflection.getOrCreateKotlinClass(SavedStateHandlesVM.class));
    }

    @MainThread
    @NotNull
    public static final SavedStateHandle createSavedStateHandle(@NotNull CreationExtras creationExtras) {
        Intrinsics.checkNotNullParameter(creationExtras, "<this>");
        SavedStateRegistryOwner savedStateRegistryOwner = (SavedStateRegistryOwner) creationExtras.get(SAVED_STATE_REGISTRY_OWNER_KEY);
        if (savedStateRegistryOwner != null) {
            ViewModelStoreOwner viewModelStoreOwner = (ViewModelStoreOwner) creationExtras.get(VIEW_MODEL_STORE_OWNER_KEY);
            if (viewModelStoreOwner != null) {
                Bundle bundle = (Bundle) creationExtras.get(DEFAULT_ARGS_KEY);
                String str = (String) creationExtras.get(ViewModelProvider.VIEW_MODEL_KEY);
                if (str != null) {
                    return createSavedStateHandle(savedStateRegistryOwner, viewModelStoreOwner, str, bundle);
                }
                throw new IllegalArgumentException("CreationExtras must have a value by `VIEW_MODEL_KEY`");
            }
            throw new IllegalArgumentException("CreationExtras must have a value by `VIEW_MODEL_STORE_OWNER_KEY`");
        }
        throw new IllegalArgumentException("CreationExtras must have a value by `SAVED_STATE_REGISTRY_OWNER_KEY`");
    }
}
