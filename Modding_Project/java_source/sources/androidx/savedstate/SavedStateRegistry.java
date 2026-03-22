package androidx.savedstate;

import android.os.Bundle;
import androidx.annotation.MainThread;
import androidx.savedstate.Recreator;
import androidx.savedstate.internal.SavedStateRegistryImpl;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SavedStateRegistry.android.kt */
@Metadata
/* loaded from: classes2.dex */
public final class SavedStateRegistry {
    @NotNull
    private final SavedStateRegistryImpl impl;
    @Nullable
    private Recreator.SavedStateProvider recreatorProvider;

    /* compiled from: SavedStateRegistry.android.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public interface AutoRecreated {
        void onRecreated(@NotNull SavedStateRegistryOwner savedStateRegistryOwner);
    }

    /* compiled from: SavedStateRegistry.android.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public interface SavedStateProvider {
        @NotNull
        Bundle saveState();
    }

    public SavedStateRegistry(@NotNull SavedStateRegistryImpl impl) {
        Intrinsics.checkNotNullParameter(impl, "impl");
        this.impl = impl;
    }

    @MainThread
    @Nullable
    public final Bundle consumeRestoredStateForKey(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return this.impl.consumeRestoredStateForKey(key);
    }

    @Nullable
    public final SavedStateProvider getSavedStateProvider(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return this.impl.getSavedStateProvider(key);
    }

    @MainThread
    public final boolean isRestored() {
        return this.impl.isRestored();
    }

    @MainThread
    public final void registerSavedStateProvider(@NotNull String key, @NotNull SavedStateProvider provider) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(provider, "provider");
        this.impl.registerSavedStateProvider(key, provider);
    }

    @MainThread
    public final void runOnNextRecreation(@NotNull Class<? extends AutoRecreated> clazz) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        if (this.impl.isAllowingSavingState$savedstate_release()) {
            Recreator.SavedStateProvider savedStateProvider = this.recreatorProvider;
            if (savedStateProvider == null) {
                savedStateProvider = new Recreator.SavedStateProvider(this);
            }
            this.recreatorProvider = savedStateProvider;
            try {
                clazz.getDeclaredConstructor(new Class[0]);
                Recreator.SavedStateProvider savedStateProvider2 = this.recreatorProvider;
                if (savedStateProvider2 != null) {
                    String name = clazz.getName();
                    Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                    savedStateProvider2.add(name);
                    return;
                }
                return;
            } catch (NoSuchMethodException e10) {
                throw new IllegalArgumentException("Class " + clazz.getSimpleName() + " must have default constructor in order to be automatically recreated", e10);
            }
        }
        throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
    }

    @MainThread
    public final void unregisterSavedStateProvider(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        this.impl.unregisterSavedStateProvider(key);
    }
}
