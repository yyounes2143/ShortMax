package androidx.compose.runtime;

import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.runtime.snapshots.SnapshotStateMap;
import androidx.compose.runtime.snapshots.SnapshotStateSet;
import androidx.compose.runtime.snapshots.StateFactoryMarker;
import java.util.Collection;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.p0;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SnapshotState.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSnapshotState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,337:1\n1#2:338\n1282#3,6:339\n*S KotlinDebug\n*F\n+ 1 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n336#1:339,6\n*E\n"})
/* loaded from: classes.dex */
public final /* synthetic */ class SnapshotStateKt__SnapshotStateKt {
    public static final <T> T getValue(@NotNull State<? extends T> state, @Nullable Object obj, @NotNull KProperty<?> kProperty) {
        return state.getValue();
    }

    @StateFactoryMarker
    @NotNull
    public static final <T> SnapshotStateList<T> mutableStateListOf() {
        return new SnapshotStateList<>();
    }

    @StateFactoryMarker
    @NotNull
    public static final <K, V> SnapshotStateMap<K, V> mutableStateMapOf() {
        return new SnapshotStateMap<>();
    }

    @StateFactoryMarker
    @NotNull
    public static final <T> MutableState<T> mutableStateOf(T t10, @NotNull SnapshotMutationPolicy<T> snapshotMutationPolicy) {
        return SnapshotState_androidKt.createSnapshotMutableState(t10, snapshotMutationPolicy);
    }

    public static /* synthetic */ MutableState mutableStateOf$default(Object obj, SnapshotMutationPolicy snapshotMutationPolicy, int i10, Object obj2) {
        if ((i10 & 2) != 0) {
            snapshotMutationPolicy = SnapshotStateKt.structuralEqualityPolicy();
        }
        return SnapshotStateKt.mutableStateOf(obj, snapshotMutationPolicy);
    }

    @StateFactoryMarker
    @NotNull
    public static final <T> SnapshotStateSet<T> mutableStateSetOf() {
        return new SnapshotStateSet<>();
    }

    @Composable
    @NotNull
    public static final <T> State<T> rememberUpdatedState(T t10, @Nullable Composer composer, int i10) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1058319986, i10, -1, "androidx.compose.runtime.rememberUpdatedState (SnapshotState.kt:335)");
        }
        Object rememberedValue = composer.rememberedValue();
        if (rememberedValue == Composer.Companion.getEmpty()) {
            rememberedValue = mutableStateOf$default(t10, null, 2, null);
            composer.updateRememberedValue(rememberedValue);
        }
        MutableState mutableState = (MutableState) rememberedValue;
        mutableState.setValue(t10);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return mutableState;
    }

    public static final <T> void setValue(@NotNull MutableState<T> mutableState, @Nullable Object obj, @NotNull KProperty<?> kProperty, T t10) {
        mutableState.setValue(t10);
    }

    @NotNull
    public static final <T> SnapshotStateList<T> toMutableStateList(@NotNull Collection<? extends T> collection) {
        SnapshotStateList<T> snapshotStateList = new SnapshotStateList<>();
        snapshotStateList.addAll(collection);
        return snapshotStateList;
    }

    @NotNull
    public static final <K, V> SnapshotStateMap<K, V> toMutableStateMap(@NotNull Iterable<? extends Pair<? extends K, ? extends V>> iterable) {
        SnapshotStateMap<K, V> snapshotStateMap = new SnapshotStateMap<>();
        snapshotStateMap.putAll(p0.v(iterable));
        return snapshotStateMap;
    }

    @StateFactoryMarker
    @NotNull
    public static final <T> SnapshotStateList<T> mutableStateListOf(@NotNull T... tArr) {
        SnapshotStateList<T> snapshotStateList = new SnapshotStateList<>();
        snapshotStateList.addAll(kotlin.collections.n.x1(tArr));
        return snapshotStateList;
    }

    @StateFactoryMarker
    @NotNull
    public static final <K, V> SnapshotStateMap<K, V> mutableStateMapOf(@NotNull Pair<? extends K, ? extends V>... pairArr) {
        SnapshotStateMap<K, V> snapshotStateMap = new SnapshotStateMap<>();
        snapshotStateMap.putAll(p0.y(pairArr));
        return snapshotStateMap;
    }

    @StateFactoryMarker
    @NotNull
    public static final <T> SnapshotStateSet<T> mutableStateSetOf(@NotNull T... tArr) {
        SnapshotStateSet<T> snapshotStateSet = new SnapshotStateSet<>();
        snapshotStateSet.addAll(kotlin.collections.n.G1(tArr));
        return snapshotStateSet;
    }
}
