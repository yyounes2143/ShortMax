package androidx.savedstate.serialization;

import android.os.Bundle;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.internal.CanonicalName_jvmKt;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.properties.d;
import kotlin.reflect.KProperty;
import kotlinx.serialization.KSerializer;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SavedStateRegistryOwnerDelegate.kt */
@Metadata
/* loaded from: classes2.dex */
public final class SavedStateRegistryOwnerDelegate<T> implements d<Object, T> {
    @NotNull
    private final SavedStateConfiguration configuration;
    @NotNull
    private final Function0<T> init;
    @Nullable
    private final String key;
    @NotNull
    private final SavedStateRegistry registry;
    @NotNull
    private final KSerializer<T> serializer;
    private T value;

    /* JADX WARN: Multi-variable type inference failed */
    public SavedStateRegistryOwnerDelegate(@NotNull SavedStateRegistry registry, @NotNull KSerializer<T> serializer, @Nullable String str, @NotNull SavedStateConfiguration configuration, @NotNull Function0<? extends T> init) {
        Intrinsics.checkNotNullParameter(registry, "registry");
        Intrinsics.checkNotNullParameter(serializer, "serializer");
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        Intrinsics.checkNotNullParameter(init, "init");
        this.registry = registry;
        this.serializer = serializer;
        this.key = str;
        this.configuration = configuration;
        this.init = init;
    }

    private final String createDefaultKey(Object obj, KProperty<?> kProperty) {
        String str;
        if (obj != null) {
            str = CanonicalName_jvmKt.getCanonicalName(Reflection.getOrCreateKotlinClass(obj.getClass())) + '.';
        } else {
            str = "";
        }
        return str + kProperty.getName();
    }

    private final T loadValue(String str) {
        Bundle consumeRestoredStateForKey = this.registry.consumeRestoredStateForKey(str);
        if (consumeRestoredStateForKey != null) {
            return (T) SavedStateDecoderKt.decodeFromSavedState(this.serializer, consumeRestoredStateForKey, this.configuration);
        }
        return null;
    }

    private final void registerSave(String str) {
        this.registry.registerSavedStateProvider(str, new SavedStateRegistry.SavedStateProvider() { // from class: androidx.savedstate.serialization.b
            @Override // androidx.savedstate.SavedStateRegistry.SavedStateProvider
            public final Bundle saveState() {
                Bundle registerSave$lambda$1;
                registerSave$lambda$1 = SavedStateRegistryOwnerDelegate.registerSave$lambda$1(SavedStateRegistryOwnerDelegate.this);
                return registerSave$lambda$1;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Bundle registerSave$lambda$1(SavedStateRegistryOwnerDelegate savedStateRegistryOwnerDelegate) {
        KSerializer<T> kSerializer = savedStateRegistryOwnerDelegate.serializer;
        Object obj = savedStateRegistryOwnerDelegate.value;
        if (obj == null) {
            Intrinsics.throwUninitializedPropertyAccessException(AppMeasurementSdk.ConditionalUserProperty.VALUE);
            obj = Unit.f60915a;
        }
        return SavedStateEncoderKt.encodeToSavedState(kSerializer, obj, savedStateRegistryOwnerDelegate.configuration);
    }

    @Override // kotlin.properties.c
    @NotNull
    public T getValue(@Nullable Object obj, @NotNull KProperty<?> property) {
        Intrinsics.checkNotNullParameter(property, "property");
        if (this.value == null) {
            String str = this.key;
            if (str == null) {
                str = createDefaultKey(obj, property);
            }
            registerSave(str);
            T loadValue = loadValue(str);
            if (loadValue == null) {
                loadValue = this.init.invoke();
            }
            this.value = loadValue;
        }
        T t10 = this.value;
        if (t10 == null) {
            Intrinsics.throwUninitializedPropertyAccessException(AppMeasurementSdk.ConditionalUserProperty.VALUE);
            return (T) Unit.f60915a;
        }
        return t10;
    }

    public void setValue(@Nullable Object obj, @NotNull KProperty<?> property, @NotNull T value) {
        Intrinsics.checkNotNullParameter(property, "property");
        Intrinsics.checkNotNullParameter(value, "value");
        if (this.value == null) {
            String str = this.key;
            if (str == null) {
                str = createDefaultKey(obj, property);
            }
            registerSave(str);
        }
        this.value = value;
    }
}
