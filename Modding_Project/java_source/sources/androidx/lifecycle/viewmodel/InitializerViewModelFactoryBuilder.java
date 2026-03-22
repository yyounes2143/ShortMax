package androidx.lifecycle.viewmodel;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.viewmodel.internal.CanonicalName_jvmKt;
import androidx.lifecycle.viewmodel.internal.ViewModelProviders;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import org.jetbrains.annotations.NotNull;
/* compiled from: InitializerViewModelFactory.kt */
@Metadata
@ViewModelFactoryDsl
/* loaded from: classes2.dex */
public final class InitializerViewModelFactoryBuilder {
    @NotNull
    private final Map<KClass<?>, ViewModelInitializer<?>> initializers = new LinkedHashMap();

    public final <T extends ViewModel> void addInitializer(@NotNull KClass<T> clazz, @NotNull Function1<? super CreationExtras, ? extends T> initializer) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        Intrinsics.checkNotNullParameter(initializer, "initializer");
        if (!this.initializers.containsKey(clazz)) {
            this.initializers.put(clazz, new ViewModelInitializer<>((KClass<?>) clazz, (Function1<? super CreationExtras, ? extends Object>) initializer));
            return;
        }
        throw new IllegalArgumentException(("A `initializer` with the same `clazz` has already been added: " + CanonicalName_jvmKt.getCanonicalName(clazz) + '.').toString());
    }

    @NotNull
    public final ViewModelProvider.Factory build() {
        return ViewModelProviders.INSTANCE.createInitializerFactory$lifecycle_viewmodel_release(this.initializers.values());
    }
}
