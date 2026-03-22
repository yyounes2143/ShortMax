package androidx.compose.runtime.saveable;

import androidx.compose.runtime.RememberObserver;
import androidx.compose.runtime.saveable.SaveableStateRegistry;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RememberSaveable.kt */
@Metadata
@SourceDebugExtension({"SMAP\nRememberSaveable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RememberSaveable.kt\nandroidx/compose/runtime/saveable/SaveableHolder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,391:1\n1#2:392\n*E\n"})
/* loaded from: classes.dex */
public final class SaveableHolder<T> implements SaverScope, RememberObserver {
    @Nullable
    private SaveableStateRegistry.Entry entry;
    @NotNull
    private Object[] inputs;
    @NotNull
    private String key;
    @Nullable
    private SaveableStateRegistry registry;
    @NotNull
    private Saver<T, Object> saver;
    private T value;
    @NotNull
    private final Function0<Object> valueProvider = new Function0() { // from class: androidx.compose.runtime.saveable.f
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            Object valueProvider$lambda$2;
            valueProvider$lambda$2 = SaveableHolder.valueProvider$lambda$2(SaveableHolder.this);
            return valueProvider$lambda$2;
        }
    };

    public SaveableHolder(@NotNull Saver<T, Object> saver, @Nullable SaveableStateRegistry saveableStateRegistry, @NotNull String str, T t10, @NotNull Object[] objArr) {
        this.saver = saver;
        this.registry = saveableStateRegistry;
        this.key = str;
        this.value = t10;
        this.inputs = objArr;
    }

    private final void register() {
        SaveableStateRegistry saveableStateRegistry = this.registry;
        if (this.entry == null) {
            if (saveableStateRegistry != null) {
                RememberSaveableKt.requireCanBeSaved(saveableStateRegistry, this.valueProvider.invoke());
                this.entry = saveableStateRegistry.registerProvider(this.key, this.valueProvider);
                return;
            }
            return;
        }
        throw new IllegalArgumentException(("entry(" + this.entry + ") is not null").toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object valueProvider$lambda$2(SaveableHolder saveableHolder) {
        Saver<T, Object> saver = saveableHolder.saver;
        T t10 = saveableHolder.value;
        if (t10 != null) {
            return saver.save(saveableHolder, t10);
        }
        throw new IllegalArgumentException("Value should be initialized");
    }

    @Override // androidx.compose.runtime.saveable.SaverScope
    public boolean canBeSaved(@NotNull Object obj) {
        SaveableStateRegistry saveableStateRegistry = this.registry;
        if (saveableStateRegistry != null && !saveableStateRegistry.canBeSaved(obj)) {
            return false;
        }
        return true;
    }

    @Nullable
    public final T getValueIfInputsDidntChange(@NotNull Object[] objArr) {
        if (Arrays.equals(objArr, this.inputs)) {
            return this.value;
        }
        return null;
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onAbandoned() {
        SaveableStateRegistry.Entry entry = this.entry;
        if (entry != null) {
            entry.unregister();
        }
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onForgotten() {
        SaveableStateRegistry.Entry entry = this.entry;
        if (entry != null) {
            entry.unregister();
        }
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onRemembered() {
        register();
    }

    public final void update(@NotNull Saver<T, Object> saver, @Nullable SaveableStateRegistry saveableStateRegistry, @NotNull String str, T t10, @NotNull Object[] objArr) {
        boolean z10;
        boolean z11 = true;
        if (this.registry != saveableStateRegistry) {
            this.registry = saveableStateRegistry;
            z10 = true;
        } else {
            z10 = false;
        }
        if (!Intrinsics.areEqual(this.key, str)) {
            this.key = str;
        } else {
            z11 = z10;
        }
        this.saver = saver;
        this.value = t10;
        this.inputs = objArr;
        SaveableStateRegistry.Entry entry = this.entry;
        if (entry != null && z11) {
            if (entry != null) {
                entry.unregister();
            }
            this.entry = null;
            register();
        }
    }
}
