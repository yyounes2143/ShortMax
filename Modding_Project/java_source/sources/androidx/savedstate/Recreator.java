package androidx.savedstate;

import android.os.Bundle;
import androidx.core.os.BundleKt;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.savedstate.SavedStateRegistry;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.p0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import ms.k;
import org.jetbrains.annotations.NotNull;
/* compiled from: Recreator.android.kt */
@Metadata
@SourceDebugExtension({"SMAP\nRecreator.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Recreator.android.kt\nandroidx/savedstate/Recreator\n+ 2 SavedState.kt\nandroidx/savedstate/SavedStateKt__SavedStateKt\n*L\n1#1,98:1\n90#2:99\n*S KotlinDebug\n*F\n+ 1 Recreator.android.kt\nandroidx/savedstate/Recreator\n*L\n34#1:99\n*E\n"})
/* loaded from: classes2.dex */
public final class Recreator implements LifecycleEventObserver {
    @NotNull
    public static final String CLASSES_KEY = "classes_to_restore";
    @NotNull
    public static final String COMPONENT_KEY = "androidx.savedstate.Restarter";
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final SavedStateRegistryOwner owner;

    /* compiled from: Recreator.android.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* compiled from: Recreator.android.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nRecreator.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Recreator.android.kt\nandroidx/savedstate/Recreator$SavedStateProvider\n+ 2 SavedState.android.kt\nandroidx/savedstate/SavedStateKt__SavedState_androidKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 SavedState.kt\nandroidx/savedstate/SavedStateKt__SavedStateKt\n*L\n1#1,98:1\n27#2:99\n46#2:100\n32#2,4:101\n31#2,7:111\n126#3:105\n153#3,3:106\n37#4,2:109\n1#5:118\n106#6:119\n*S KotlinDebug\n*F\n+ 1 Recreator.android.kt\nandroidx/savedstate/Recreator$SavedStateProvider\n*L\n84#1:99\n84#1:100\n84#1:101,4\n84#1:111,7\n84#1:105\n84#1:106,3\n84#1:109,2\n84#1:118\n84#1:119\n*E\n"})
    /* loaded from: classes2.dex */
    public static final class SavedStateProvider implements SavedStateRegistry.SavedStateProvider {
        @NotNull
        private final Set<String> classes;

        public SavedStateProvider(@NotNull SavedStateRegistry registry) {
            Intrinsics.checkNotNullParameter(registry, "registry");
            this.classes = new LinkedHashSet();
            registry.registerSavedStateProvider(Recreator.COMPONENT_KEY, this);
        }

        public final void add(@NotNull String className) {
            Intrinsics.checkNotNullParameter(className, "className");
            this.classes.add(className);
        }

        @Override // androidx.savedstate.SavedStateRegistry.SavedStateProvider
        @NotNull
        public Bundle saveState() {
            Pair[] pairArr;
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
            SavedStateWriter.m4459putStringListimpl(SavedStateWriter.m4424constructorimpl(bundleOf), Recreator.CLASSES_KEY, CollectionsKt.d1(this.classes));
            return bundleOf;
        }
    }

    public Recreator(@NotNull SavedStateRegistryOwner owner) {
        Intrinsics.checkNotNullParameter(owner, "owner");
        this.owner = owner;
    }

    private final void reflectiveNew(String str) {
        try {
            Class<? extends U> asSubclass = Class.forName(str, false, Recreator.class.getClassLoader()).asSubclass(SavedStateRegistry.AutoRecreated.class);
            Intrinsics.checkNotNull(asSubclass);
            try {
                Constructor declaredConstructor = asSubclass.getDeclaredConstructor(new Class[0]);
                declaredConstructor.setAccessible(true);
                try {
                    Object newInstance = declaredConstructor.newInstance(new Object[0]);
                    Intrinsics.checkNotNull(newInstance);
                    ((SavedStateRegistry.AutoRecreated) newInstance).onRecreated(this.owner);
                } catch (Exception e10) {
                    throw new RuntimeException("Failed to instantiate " + str, e10);
                }
            } catch (NoSuchMethodException e11) {
                throw new IllegalStateException("Class " + asSubclass.getSimpleName() + " must have default constructor in order to be automatically recreated", e11);
            }
        } catch (ClassNotFoundException e12) {
            throw new RuntimeException("Class " + str + " wasn't found", e12);
        }
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public void onStateChanged(@NotNull LifecycleOwner source, @NotNull Lifecycle.Event event) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(event, "event");
        if (event == Lifecycle.Event.ON_CREATE) {
            source.getLifecycle().removeObserver(this);
            Bundle consumeRestoredStateForKey = this.owner.getSavedStateRegistry().consumeRestoredStateForKey(COMPONENT_KEY);
            if (consumeRestoredStateForKey == null) {
                return;
            }
            List<String> m4413getStringListOrNullimpl = SavedStateReader.m4413getStringListOrNullimpl(SavedStateReader.m4338constructorimpl(consumeRestoredStateForKey), CLASSES_KEY);
            if (m4413getStringListOrNullimpl != null) {
                for (String str : m4413getStringListOrNullimpl) {
                    reflectiveNew(str);
                }
                return;
            }
            throw new IllegalStateException("SavedState with restored state for the component \"androidx.savedstate.Restarter\" must contain list of strings by the key \"classes_to_restore\"");
        }
        throw new AssertionError("Next event must be ON_CREATE");
    }
}
