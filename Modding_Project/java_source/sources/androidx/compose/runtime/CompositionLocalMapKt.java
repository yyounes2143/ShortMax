package androidx.compose.runtime;

import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap;
import androidx.compose.runtime.internal.PersistentCompositionLocalMapKt;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: CompositionLocalMap.kt */
@Metadata
@SourceDebugExtension({"SMAP\nCompositionLocalMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CompositionLocalMap.kt\nandroidx/compose/runtime/CompositionLocalMapKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,110:1\n1#2:111\n*E\n"})
/* loaded from: classes.dex */
public final class CompositionLocalMapKt {
    public static final <T> boolean contains(@NotNull PersistentCompositionLocalMap persistentCompositionLocalMap, @NotNull CompositionLocal<T> compositionLocal) {
        Intrinsics.checkNotNull(compositionLocal, "null cannot be cast to non-null type androidx.compose.runtime.CompositionLocal<kotlin.Any?>");
        return persistentCompositionLocalMap.containsKey(compositionLocal);
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [androidx.compose.runtime.PersistentCompositionLocalMap] */
    @NotNull
    public static final PersistentCompositionLocalMap mutate(@NotNull PersistentCompositionLocalMap persistentCompositionLocalMap, @NotNull Function1<? super Map<CompositionLocal<Object>, ValueHolder<Object>>, Unit> function1) {
        PersistentMap.Builder<CompositionLocal<Object>, ValueHolder<Object>> builder = persistentCompositionLocalMap.builder();
        function1.invoke(builder);
        return builder.build();
    }

    public static final <T> T read(@NotNull PersistentCompositionLocalMap persistentCompositionLocalMap, @NotNull CompositionLocal<T> compositionLocal) {
        Intrinsics.checkNotNull(compositionLocal, "null cannot be cast to non-null type androidx.compose.runtime.CompositionLocal<kotlin.Any?>");
        ValueHolder valueHolder = persistentCompositionLocalMap.get((Object) compositionLocal);
        if (valueHolder == null) {
            valueHolder = compositionLocal.getDefaultValueHolder$runtime();
        }
        return (T) valueHolder.readValue(persistentCompositionLocalMap);
    }

    /* JADX WARN: Type inference failed for: r7v1, types: [androidx.compose.runtime.PersistentCompositionLocalMap] */
    @NotNull
    public static final PersistentCompositionLocalMap updateCompositionMap(@NotNull ProvidedValue<?>[] providedValueArr, @NotNull PersistentCompositionLocalMap persistentCompositionLocalMap, @NotNull PersistentCompositionLocalMap persistentCompositionLocalMap2) {
        PersistentMap.Builder<CompositionLocal<Object>, ValueHolder<Object>> builder = PersistentCompositionLocalMapKt.persistentCompositionLocalHashMapOf().builder();
        for (ProvidedValue<?> providedValue : providedValueArr) {
            CompositionLocal<?> compositionLocal = providedValue.getCompositionLocal();
            Intrinsics.checkNotNull(compositionLocal, "null cannot be cast to non-null type androidx.compose.runtime.ProvidableCompositionLocal<kotlin.Any?>");
            ProvidableCompositionLocal providableCompositionLocal = (ProvidableCompositionLocal) compositionLocal;
            if (providedValue.getCanOverride() || !contains(persistentCompositionLocalMap, providableCompositionLocal)) {
                Intrinsics.checkNotNull(providedValue, "null cannot be cast to non-null type androidx.compose.runtime.ProvidedValue<kotlin.Any?>");
                builder.put(providableCompositionLocal, providableCompositionLocal.updatedStateOf$runtime(providedValue, (ValueHolder) persistentCompositionLocalMap2.get((Object) providableCompositionLocal)));
            }
        }
        return builder.build();
    }

    public static /* synthetic */ PersistentCompositionLocalMap updateCompositionMap$default(ProvidedValue[] providedValueArr, PersistentCompositionLocalMap persistentCompositionLocalMap, PersistentCompositionLocalMap persistentCompositionLocalMap2, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            persistentCompositionLocalMap2 = PersistentCompositionLocalMapKt.persistentCompositionLocalHashMapOf();
        }
        return updateCompositionMap(providedValueArr, persistentCompositionLocalMap, persistentCompositionLocalMap2);
    }
}
