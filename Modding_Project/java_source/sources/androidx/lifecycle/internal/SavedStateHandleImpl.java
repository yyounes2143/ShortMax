package androidx.lifecycle.internal;

import android.os.Bundle;
import androidx.annotation.MainThread;
import androidx.core.os.BundleKt;
import androidx.lifecycle.internal.SavedStateHandleImpl;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.SavedStateWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.p0;
import kotlin.collections.y0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.flow.c;
import kotlinx.coroutines.flow.o;
import kt.e;
import kt.i;
import ms.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SavedStateHandleImpl.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSavedStateHandleImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SavedStateHandleImpl.kt\nandroidx/lifecycle/internal/SavedStateHandleImpl\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 SavedState.android.kt\nandroidx/savedstate/SavedStateKt__SavedState_androidKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 5 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 7 SavedState.kt\nandroidx/savedstate/SavedStateKt__SavedStateKt\n+ 8 SavedState.android.kt\nandroidx/savedstate/SavedStateKt__SavedState_androidKt$savedState$1\n*L\n1#1,129:1\n381#2,7:130\n381#2,7:137\n27#3:144\n46#3:145\n32#3,4:146\n31#3,7:156\n126#4:150\n153#4,3:151\n37#5,2:154\n1#6:163\n106#7:164\n46#8:165\n*S KotlinDebug\n*F\n+ 1 SavedStateHandleImpl.kt\nandroidx/lifecycle/internal/SavedStateHandleImpl\n*L\n60#1:130,7\n76#1:137,7\n47#1:144\n47#1:145\n47#1:146,4\n47#1:156,7\n47#1:150\n47#1:151,3\n47#1:154,2\n47#1:163\n47#1:164\n47#1:165\n*E\n"})
/* loaded from: classes2.dex */
public final class SavedStateHandleImpl {
    @NotNull
    private final Map<String, e<Object>> flows;
    @NotNull
    private final Map<String, e<Object>> mutableFlows;
    @NotNull
    private final Map<String, SavedStateRegistry.SavedStateProvider> providers;
    @NotNull
    private final Map<String, Object> regular;
    @NotNull
    private final SavedStateRegistry.SavedStateProvider savedStateProvider;

    public SavedStateHandleImpl() {
        this(null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Bundle savedStateProvider$lambda$0(SavedStateHandleImpl savedStateHandleImpl) {
        Pair[] pairArr;
        for (Map.Entry entry : p0.x(savedStateHandleImpl.mutableFlows).entrySet()) {
            savedStateHandleImpl.set((String) entry.getKey(), ((e) entry.getValue()).getValue());
        }
        for (Map.Entry entry2 : p0.x(savedStateHandleImpl.providers).entrySet()) {
            savedStateHandleImpl.set((String) entry2.getKey(), ((SavedStateRegistry.SavedStateProvider) entry2.getValue()).saveState());
        }
        Map<String, Object> map = savedStateHandleImpl.regular;
        if (map.isEmpty()) {
            pairArr = new Pair[0];
        } else {
            ArrayList arrayList = new ArrayList(map.size());
            for (Map.Entry<String, Object> entry3 : map.entrySet()) {
                arrayList.add(k.a(entry3.getKey(), entry3.getValue()));
            }
            pairArr = (Pair[]) arrayList.toArray(new Pair[0]);
        }
        Bundle bundleOf = BundleKt.bundleOf((Pair[]) Arrays.copyOf(pairArr, pairArr.length));
        SavedStateWriter.m4424constructorimpl(bundleOf);
        return bundleOf;
    }

    @MainThread
    public final void clearSavedStateProvider(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        this.providers.remove(key);
    }

    @MainThread
    public final boolean contains(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return this.regular.containsKey(key);
    }

    @MainThread
    @Nullable
    public final <T> T get(@NotNull String key) {
        T t10;
        Intrinsics.checkNotNullParameter(key, "key");
        try {
            e<Object> eVar = this.mutableFlows.get(key);
            if (eVar == null || (t10 = (T) eVar.getValue()) == null) {
                return (T) this.regular.get(key);
            }
            return t10;
        } catch (ClassCastException unused) {
            remove(key);
            return null;
        }
    }

    @NotNull
    public final Map<String, e<Object>> getMutableFlows() {
        return this.mutableFlows;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @MainThread
    @NotNull
    public final <T> e<T> getMutableStateFlow(@NotNull String key, T t10) {
        Intrinsics.checkNotNullParameter(key, "key");
        Map<String, e<Object>> map = this.mutableFlows;
        Object obj = map.get(key);
        if (obj == null) {
            if (!this.regular.containsKey(key)) {
                this.regular.put(key, t10);
            }
            obj = o.a(this.regular.get(key));
            map.put(key, obj);
        }
        e<T> eVar = (e) obj;
        Intrinsics.checkNotNull(eVar, "null cannot be cast to non-null type kotlinx.coroutines.flow.MutableStateFlow<T of androidx.lifecycle.internal.SavedStateHandleImpl.getMutableStateFlow>");
        return eVar;
    }

    @NotNull
    public final Map<String, Object> getRegular() {
        return this.regular;
    }

    @NotNull
    public final SavedStateRegistry.SavedStateProvider getSavedStateProvider() {
        return this.savedStateProvider;
    }

    @MainThread
    @NotNull
    public final <T> i<T> getStateFlow(@NotNull String key, T t10) {
        Intrinsics.checkNotNullParameter(key, "key");
        Map<String, e<Object>> map = this.flows;
        e<Object> eVar = map.get(key);
        if (eVar == null) {
            if (!this.regular.containsKey(key)) {
                this.regular.put(key, t10);
            }
            eVar = o.a(this.regular.get(key));
            map.put(key, eVar);
        }
        i<T> d10 = c.d(eVar);
        Intrinsics.checkNotNull(d10, "null cannot be cast to non-null type kotlinx.coroutines.flow.StateFlow<T of androidx.lifecycle.internal.SavedStateHandleImpl.getStateFlow>");
        return d10;
    }

    @MainThread
    @NotNull
    public final Set<String> keys() {
        return y0.m(this.regular.keySet(), this.providers.keySet());
    }

    @MainThread
    @Nullable
    public final <T> T remove(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        T t10 = (T) this.regular.remove(key);
        this.flows.remove(key);
        this.mutableFlows.remove(key);
        return t10;
    }

    @NotNull
    public final SavedStateRegistry.SavedStateProvider savedStateProvider() {
        return this.savedStateProvider;
    }

    @MainThread
    public final <T> void set(@NotNull String key, @Nullable T t10) {
        Intrinsics.checkNotNullParameter(key, "key");
        this.regular.put(key, t10);
        e<Object> eVar = this.flows.get(key);
        if (eVar != null) {
            eVar.setValue(t10);
        }
        e<Object> eVar2 = this.mutableFlows.get(key);
        if (eVar2 != null) {
            eVar2.setValue(t10);
        }
    }

    @MainThread
    public final void setSavedStateProvider(@NotNull String key, @NotNull SavedStateRegistry.SavedStateProvider provider) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(provider, "provider");
        this.providers.put(key, provider);
    }

    public SavedStateHandleImpl(@NotNull Map<String, ? extends Object> initialState) {
        Intrinsics.checkNotNullParameter(initialState, "initialState");
        this.regular = p0.A(initialState);
        this.providers = new LinkedHashMap();
        this.flows = new LinkedHashMap();
        this.mutableFlows = new LinkedHashMap();
        this.savedStateProvider = new SavedStateRegistry.SavedStateProvider() { // from class: s.a
            @Override // androidx.savedstate.SavedStateRegistry.SavedStateProvider
            public final Bundle saveState() {
                Bundle savedStateProvider$lambda$0;
                savedStateProvider$lambda$0 = SavedStateHandleImpl.savedStateProvider$lambda$0(SavedStateHandleImpl.this);
                return savedStateProvider$lambda$0;
            }
        };
    }

    public /* synthetic */ SavedStateHandleImpl(Map map, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? p0.i() : map);
    }
}
