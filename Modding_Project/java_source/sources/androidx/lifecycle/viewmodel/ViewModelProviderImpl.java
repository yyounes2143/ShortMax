package androidx.lifecycle.viewmodel;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.internal.SynchronizedObject;
import androidx.lifecycle.viewmodel.internal.ViewModelProviders;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KClass;
import org.jetbrains.annotations.NotNull;
/* compiled from: ViewModelProviderImpl.kt */
@Metadata
@SourceDebugExtension({"SMAP\nViewModelProviderImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ViewModelProviderImpl.kt\nandroidx/lifecycle/viewmodel/ViewModelProviderImpl\n+ 2 SynchronizedObject.kt\nandroidx/lifecycle/viewmodel/internal/SynchronizedObjectKt\n+ 3 SynchronizedObject.jvm.kt\nandroidx/lifecycle/viewmodel/internal/SynchronizedObject_jvmKt\n*L\n1#1,85:1\n38#2:86\n23#3:87\n*S KotlinDebug\n*F\n+ 1 ViewModelProviderImpl.kt\nandroidx/lifecycle/viewmodel/ViewModelProviderImpl\n*L\n48#1:86\n48#1:87\n*E\n"})
/* loaded from: classes2.dex */
public final class ViewModelProviderImpl {
    @NotNull
    private final CreationExtras defaultExtras;
    @NotNull
    private final ViewModelProvider.Factory factory;
    @NotNull
    private final SynchronizedObject lock;
    @NotNull
    private final ViewModelStore store;

    public ViewModelProviderImpl(@NotNull ViewModelStore store, @NotNull ViewModelProvider.Factory factory, @NotNull CreationExtras defaultExtras) {
        Intrinsics.checkNotNullParameter(store, "store");
        Intrinsics.checkNotNullParameter(factory, "factory");
        Intrinsics.checkNotNullParameter(defaultExtras, "defaultExtras");
        this.store = store;
        this.factory = factory;
        this.defaultExtras = defaultExtras;
        this.lock = new SynchronizedObject();
    }

    public static /* synthetic */ ViewModel getViewModel$lifecycle_viewmodel_release$default(ViewModelProviderImpl viewModelProviderImpl, KClass kClass, String str, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str = ViewModelProviders.INSTANCE.getDefaultKey$lifecycle_viewmodel_release(kClass);
        }
        return viewModelProviderImpl.getViewModel$lifecycle_viewmodel_release(kClass, str);
    }

    @NotNull
    public final <T extends ViewModel> T getViewModel$lifecycle_viewmodel_release(@NotNull KClass<T> modelClass, @NotNull String key) {
        T t10;
        Intrinsics.checkNotNullParameter(modelClass, "modelClass");
        Intrinsics.checkNotNullParameter(key, "key");
        synchronized (this.lock) {
            try {
                t10 = (T) this.store.get(key);
                if (modelClass.isInstance(t10)) {
                    if (this.factory instanceof ViewModelProvider.OnRequeryFactory) {
                        Intrinsics.checkNotNull(t10);
                        ((ViewModelProvider.OnRequeryFactory) this.factory).onRequery(t10);
                    }
                    Intrinsics.checkNotNull(t10, "null cannot be cast to non-null type T of androidx.lifecycle.viewmodel.ViewModelProviderImpl.getViewModel");
                } else {
                    MutableCreationExtras mutableCreationExtras = new MutableCreationExtras(this.defaultExtras);
                    mutableCreationExtras.set(ViewModelProvider.VIEW_MODEL_KEY, key);
                    t10 = (T) ViewModelProviderImpl_androidKt.createViewModel(this.factory, modelClass, mutableCreationExtras);
                    this.store.put(key, t10);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return t10;
    }
}
