package androidx.compose.runtime.saveable;

import android.os.Bundle;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.runtime.saveable.SaveableStateRegistry;
import androidx.core.os.BundleKt;
import androidx.lifecycle.LifecycleRegistry;
import androidx.savedstate.SavedStateReader;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.SavedStateRegistryController;
import androidx.savedstate.SavedStateRegistryOwner;
import androidx.savedstate.SavedStateWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.p0;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SaveableStateRegistryWrapper.kt */
@StabilityInferred(parameters = 0)
@Metadata
@SourceDebugExtension({"SMAP\nSaveableStateRegistryWrapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SaveableStateRegistryWrapper.kt\nandroidx/compose/runtime/saveable/SaveableStateRegistryWrapper\n+ 2 SavedState.android.kt\nandroidx/savedstate/SavedStateKt__SavedState_androidKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 SavedState.kt\nandroidx/savedstate/SavedStateKt__SavedStateKt\n+ 7 SavedState.android.kt\nandroidx/savedstate/SavedStateKt__SavedState_androidKt$savedState$1\n*L\n1#1,83:1\n27#2:84\n46#2:85\n32#2,4:86\n31#2,7:96\n126#3:90\n153#3,3:91\n37#4,2:94\n1#5:103\n106#6:104\n90#6:106\n46#7:105\n*S KotlinDebug\n*F\n+ 1 SaveableStateRegistryWrapper.kt\nandroidx/compose/runtime/saveable/SaveableStateRegistryWrapper\n*L\n73#1:84\n73#1:85\n73#1:86,4\n73#1:96,7\n73#1:90\n73#1:91,3\n73#1:94,2\n73#1:103\n73#1:104\n75#1:106\n73#1:105\n*E\n"})
/* loaded from: classes.dex */
public final class SaveableStateRegistryWrapper implements SaveableStateRegistry, SavedStateRegistryOwner {
    public static final int $stable = 8;
    private final /* synthetic */ SaveableStateRegistry $$delegate_0;
    @NotNull
    private final SavedStateRegistryController controller;
    @NotNull
    private final LifecycleRegistry lifecycle;
    @NotNull
    private final SavedStateRegistry savedStateRegistry;

    public SaveableStateRegistryWrapper(@NotNull SaveableStateRegistry saveableStateRegistry) {
        Bundle bundle;
        this.$$delegate_0 = saveableStateRegistry;
        SavedStateRegistryController create = SavedStateRegistryController.Companion.create(this);
        this.controller = create;
        this.lifecycle = LifecycleRegistry.Companion.createUnsafe(this);
        this.savedStateRegistry = create.getSavedStateRegistry();
        Object consumeRestored = consumeRestored("androidx.savedstate.SavedStateRegistry");
        if (consumeRestored instanceof Bundle) {
            bundle = (Bundle) consumeRestored;
        } else {
            bundle = null;
        }
        create.performRestore(bundle);
        registerProvider("androidx.savedstate.SavedStateRegistry", new Function0() { // from class: androidx.compose.runtime.saveable.n
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Object _init_$lambda$1;
                _init_$lambda$1 = SaveableStateRegistryWrapper._init_$lambda$1(SaveableStateRegistryWrapper.this);
                return _init_$lambda$1;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object _init_$lambda$1(SaveableStateRegistryWrapper saveableStateRegistryWrapper) {
        Pair[] pairArr;
        Map i10 = p0.i();
        if (i10.isEmpty()) {
            pairArr = new Pair[0];
        } else {
            ArrayList arrayList = new ArrayList(i10.size());
            for (Map.Entry entry : i10.entrySet()) {
                arrayList.add(ms.k.a((String) entry.getKey(), entry.getValue()));
            }
            pairArr = (Pair[]) arrayList.toArray(new Pair[0]);
        }
        Bundle bundleOf = BundleKt.bundleOf((Pair[]) Arrays.copyOf(pairArr, pairArr.length));
        SavedStateWriter.m4424constructorimpl(bundleOf);
        saveableStateRegistryWrapper.controller.performSave(bundleOf);
        if (SavedStateReader.m4416isEmptyimpl(SavedStateReader.m4338constructorimpl(bundleOf))) {
            return null;
        }
        return bundleOf;
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateRegistry
    public boolean canBeSaved(@NotNull Object obj) {
        return this.$$delegate_0.canBeSaved(obj);
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateRegistry
    @Nullable
    public Object consumeRestored(@NotNull String str) {
        return this.$$delegate_0.consumeRestored(str);
    }

    @NotNull
    public final SavedStateRegistryController getController() {
        return this.controller;
    }

    @Override // androidx.savedstate.SavedStateRegistryOwner
    @NotNull
    public SavedStateRegistry getSavedStateRegistry() {
        return this.savedStateRegistry;
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateRegistry
    @NotNull
    public Map<String, List<Object>> performSave() {
        return this.$$delegate_0.performSave();
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateRegistry
    @NotNull
    public SaveableStateRegistry.Entry registerProvider(@NotNull String str, @NotNull Function0<? extends Object> function0) {
        return this.$$delegate_0.registerProvider(str, function0);
    }

    @Override // androidx.lifecycle.LifecycleOwner
    @NotNull
    public LifecycleRegistry getLifecycle() {
        return this.lifecycle;
    }

    public static /* synthetic */ void getLifecycle$annotations() {
    }
}
