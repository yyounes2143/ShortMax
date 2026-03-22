package androidx.savedstate.internal;

import android.os.Bundle;
import androidx.annotation.MainThread;
import androidx.core.os.BundleKt;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.savedstate.SavedStateReader;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.SavedStateRegistryOwner;
import androidx.savedstate.SavedStateWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.p0;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import ms.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SavedStateRegistryImpl.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSavedStateRegistryImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SavedStateRegistryImpl.kt\nandroidx/savedstate/internal/SavedStateRegistryImpl\n+ 2 SavedState.kt\nandroidx/savedstate/SavedStateKt__SavedStateKt\n+ 3 SynchronizedObject.kt\nandroidx/savedstate/internal/SynchronizedObjectKt\n+ 4 SynchronizedObject.jvm.kt\nandroidx/savedstate/internal/SynchronizedObject_jvmKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 SavedState.android.kt\nandroidx/savedstate/SavedStateKt__SavedState_androidKt\n+ 7 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 8 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,154:1\n90#2:155\n106#2:156\n90#2:157\n90#2:165\n106#2:186\n90#2:189\n106#2:190\n41#3:158\n41#3:160\n41#3:162\n41#3:187\n23#4:159\n23#4:161\n23#4:163\n23#4:188\n1#5:164\n1#5:185\n27#6:166\n46#6:167\n32#6,4:168\n31#6,7:178\n126#7:172\n153#7,3:173\n37#8,2:176\n*S KotlinDebug\n*F\n+ 1 SavedStateRegistryImpl.kt\nandroidx/savedstate/internal/SavedStateRegistryImpl\n*L\n55#1:155\n56#1:156\n57#1:157\n121#1:165\n135#1:186\n144#1:189\n145#1:190\n66#1:158\n75#1:160\n84#1:162\n137#1:187\n66#1:159\n75#1:161\n84#1:163\n137#1:188\n135#1:185\n135#1:166\n135#1:167\n135#1:168,4\n135#1:178,7\n135#1:172\n135#1:173,3\n135#1:176,2\n*E\n"})
/* loaded from: classes2.dex */
public final class SavedStateRegistryImpl {
    @NotNull
    private static final Companion Companion = new Companion(null);
    @NotNull
    private static final String SAVED_COMPONENTS_KEY = "androidx.lifecycle.BundlableSavedStateRegistry.key";
    private boolean attached;
    private boolean isAllowingSavingState;
    private boolean isRestored;
    @NotNull
    private final Map<String, SavedStateRegistry.SavedStateProvider> keyToProviders;
    @NotNull
    private final SynchronizedObject lock;
    @NotNull
    private final Function0<Unit> onAttach;
    @NotNull
    private final SavedStateRegistryOwner owner;
    @Nullable
    private Bundle restoredState;

    /* compiled from: SavedStateRegistryImpl.kt */
    @Metadata
    /* loaded from: classes2.dex */
    private static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public SavedStateRegistryImpl(@NotNull SavedStateRegistryOwner owner, @NotNull Function0<Unit> onAttach) {
        Intrinsics.checkNotNullParameter(owner, "owner");
        Intrinsics.checkNotNullParameter(onAttach, "onAttach");
        this.owner = owner;
        this.onAttach = onAttach;
        this.lock = new SynchronizedObject();
        this.keyToProviders = new LinkedHashMap();
        this.isAllowingSavingState = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void performAttach$lambda$12(SavedStateRegistryImpl savedStateRegistryImpl, LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        Intrinsics.checkNotNullParameter(lifecycleOwner, "<unused var>");
        Intrinsics.checkNotNullParameter(event, "event");
        if (event == Lifecycle.Event.ON_START) {
            savedStateRegistryImpl.isAllowingSavingState = true;
        } else if (event == Lifecycle.Event.ON_STOP) {
            savedStateRegistryImpl.isAllowingSavingState = false;
        }
    }

    @MainThread
    @Nullable
    public final Bundle consumeRestoredStateForKey(@NotNull String key) {
        Bundle bundle;
        Intrinsics.checkNotNullParameter(key, "key");
        if (this.isRestored) {
            Bundle bundle2 = this.restoredState;
            if (bundle2 == null) {
                return null;
            }
            Bundle m4338constructorimpl = SavedStateReader.m4338constructorimpl(bundle2);
            if (SavedStateReader.m4339containsimpl(m4338constructorimpl, key)) {
                bundle = SavedStateReader.m4395getSavedStateimpl(m4338constructorimpl, key);
            } else {
                bundle = null;
            }
            SavedStateWriter.m4460removeimpl(SavedStateWriter.m4424constructorimpl(bundle2), key);
            if (SavedStateReader.m4416isEmptyimpl(SavedStateReader.m4338constructorimpl(bundle2))) {
                this.restoredState = null;
            }
            return bundle;
        }
        throw new IllegalStateException("You can 'consumeRestoredStateForKey' only after the corresponding component has moved to the 'CREATED' state");
    }

    @NotNull
    public final Function0<Unit> getOnAttach$savedstate_release() {
        return this.onAttach;
    }

    @Nullable
    public final SavedStateRegistry.SavedStateProvider getSavedStateProvider(@NotNull String key) {
        SavedStateRegistry.SavedStateProvider savedStateProvider;
        Intrinsics.checkNotNullParameter(key, "key");
        synchronized (this.lock) {
            Iterator it = this.keyToProviders.entrySet().iterator();
            do {
                savedStateProvider = null;
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry entry = (Map.Entry) it.next();
                SavedStateRegistry.SavedStateProvider savedStateProvider2 = (SavedStateRegistry.SavedStateProvider) entry.getValue();
                if (Intrinsics.areEqual((String) entry.getKey(), key)) {
                    savedStateProvider = savedStateProvider2;
                    continue;
                }
            } while (savedStateProvider == null);
        }
        return savedStateProvider;
    }

    public final boolean isAllowingSavingState$savedstate_release() {
        return this.isAllowingSavingState;
    }

    @MainThread
    public final boolean isRestored() {
        return this.isRestored;
    }

    @MainThread
    public final void performAttach() {
        if (this.owner.getLifecycle().getCurrentState() == Lifecycle.State.INITIALIZED) {
            if (!this.attached) {
                this.onAttach.invoke();
                this.owner.getLifecycle().addObserver(new LifecycleEventObserver() { // from class: androidx.savedstate.internal.a
                    @Override // androidx.lifecycle.LifecycleEventObserver
                    public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                        SavedStateRegistryImpl.performAttach$lambda$12(SavedStateRegistryImpl.this, lifecycleOwner, event);
                    }
                });
                this.attached = true;
                return;
            }
            throw new IllegalStateException("SavedStateRegistry was already attached.");
        }
        throw new IllegalStateException("Restarter must be created only during owner's initialization stage");
    }

    @MainThread
    public final void performRestore$savedstate_release(@Nullable Bundle bundle) {
        if (!this.attached) {
            performAttach();
        }
        if (!this.owner.getLifecycle().getCurrentState().isAtLeast(Lifecycle.State.STARTED)) {
            if (!this.isRestored) {
                Bundle bundle2 = null;
                if (bundle != null) {
                    Bundle m4338constructorimpl = SavedStateReader.m4338constructorimpl(bundle);
                    if (SavedStateReader.m4339containsimpl(m4338constructorimpl, SAVED_COMPONENTS_KEY)) {
                        bundle2 = SavedStateReader.m4395getSavedStateimpl(m4338constructorimpl, SAVED_COMPONENTS_KEY);
                    }
                }
                this.restoredState = bundle2;
                this.isRestored = true;
                return;
            }
            throw new IllegalStateException("SavedStateRegistry was already restored.");
        }
        throw new IllegalStateException(("performRestore cannot be called when owner is " + this.owner.getLifecycle().getCurrentState()).toString());
    }

    @MainThread
    public final void performSave$savedstate_release(@NotNull Bundle outBundle) {
        Pair[] pairArr;
        Intrinsics.checkNotNullParameter(outBundle, "outBundle");
        Map i10 = p0.i();
        if (i10.isEmpty()) {
            pairArr = new Pair[0];
        } else {
            ArrayList arrayList = new ArrayList(i10.size());
            for (Map.Entry entry : i10.entrySet()) {
                arrayList.add(k.a((String) entry.getKey(), entry.getValue()));
            }
            pairArr = (Pair[]) arrayList.toArray(new Pair[0]);
        }
        Bundle bundleOf = BundleKt.bundleOf((Pair[]) Arrays.copyOf(pairArr, pairArr.length));
        Bundle m4424constructorimpl = SavedStateWriter.m4424constructorimpl(bundleOf);
        Bundle bundle = this.restoredState;
        if (bundle != null) {
            SavedStateWriter.m4428putAllimpl(m4424constructorimpl, bundle);
        }
        synchronized (this.lock) {
            try {
                for (Map.Entry entry2 : this.keyToProviders.entrySet()) {
                    SavedStateWriter.m4451putSavedStateimpl(m4424constructorimpl, (String) entry2.getKey(), ((SavedStateRegistry.SavedStateProvider) entry2.getValue()).saveState());
                }
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (!SavedStateReader.m4416isEmptyimpl(SavedStateReader.m4338constructorimpl(bundleOf))) {
            SavedStateWriter.m4451putSavedStateimpl(SavedStateWriter.m4424constructorimpl(outBundle), SAVED_COMPONENTS_KEY, bundleOf);
        }
    }

    @MainThread
    public final void registerSavedStateProvider(@NotNull String key, @NotNull SavedStateRegistry.SavedStateProvider provider) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(provider, "provider");
        synchronized (this.lock) {
            if (!this.keyToProviders.containsKey(key)) {
                this.keyToProviders.put(key, provider);
                Unit unit = Unit.f60915a;
            } else {
                throw new IllegalArgumentException("SavedStateProvider with the given key is already registered");
            }
        }
    }

    public final void setAllowingSavingState$savedstate_release(boolean z10) {
        this.isAllowingSavingState = z10;
    }

    @MainThread
    public final void unregisterSavedStateProvider(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        synchronized (this.lock) {
            SavedStateRegistry.SavedStateProvider savedStateProvider = (SavedStateRegistry.SavedStateProvider) this.keyToProviders.remove(key);
        }
    }

    public /* synthetic */ SavedStateRegistryImpl(SavedStateRegistryOwner savedStateRegistryOwner, Function0 function0, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(savedStateRegistryOwner, (i10 & 2) != 0 ? new Function0() { // from class: androidx.savedstate.internal.b
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit unit;
                unit = Unit.f60915a;
                return unit;
            }
        } : function0);
    }
}
