package androidx.savedstate;

import android.os.Bundle;
import androidx.annotation.MainThread;
import androidx.savedstate.SavedStateRegistryController;
import androidx.savedstate.internal.SavedStateRegistryImpl;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SavedStateRegistryController.android.kt */
@Metadata
/* loaded from: classes2.dex */
public final class SavedStateRegistryController {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final SavedStateRegistryImpl impl;
    @NotNull
    private final SavedStateRegistry savedStateRegistry;

    /* compiled from: SavedStateRegistryController.android.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit create$lambda$0(SavedStateRegistryOwner savedStateRegistryOwner) {
            savedStateRegistryOwner.getLifecycle().addObserver(new Recreator(savedStateRegistryOwner));
            return Unit.f60915a;
        }

        @NotNull
        public final SavedStateRegistryController create(@NotNull final SavedStateRegistryOwner owner) {
            Intrinsics.checkNotNullParameter(owner, "owner");
            return new SavedStateRegistryController(new SavedStateRegistryImpl(owner, new Function0() { // from class: androidx.savedstate.a
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit create$lambda$0;
                    create$lambda$0 = SavedStateRegistryController.Companion.create$lambda$0(SavedStateRegistryOwner.this);
                    return create$lambda$0;
                }
            }), null);
        }

        private Companion() {
        }
    }

    public /* synthetic */ SavedStateRegistryController(SavedStateRegistryImpl savedStateRegistryImpl, DefaultConstructorMarker defaultConstructorMarker) {
        this(savedStateRegistryImpl);
    }

    @NotNull
    public static final SavedStateRegistryController create(@NotNull SavedStateRegistryOwner savedStateRegistryOwner) {
        return Companion.create(savedStateRegistryOwner);
    }

    @NotNull
    public final SavedStateRegistry getSavedStateRegistry() {
        return this.savedStateRegistry;
    }

    @MainThread
    public final void performAttach() {
        this.impl.performAttach();
    }

    @MainThread
    public final void performRestore(@Nullable Bundle bundle) {
        this.impl.performRestore$savedstate_release(bundle);
    }

    @MainThread
    public final void performSave(@NotNull Bundle outBundle) {
        Intrinsics.checkNotNullParameter(outBundle, "outBundle");
        this.impl.performSave$savedstate_release(outBundle);
    }

    private SavedStateRegistryController(SavedStateRegistryImpl savedStateRegistryImpl) {
        this.impl = savedStateRegistryImpl;
        this.savedStateRegistry = new SavedStateRegistry(savedStateRegistryImpl);
    }
}
