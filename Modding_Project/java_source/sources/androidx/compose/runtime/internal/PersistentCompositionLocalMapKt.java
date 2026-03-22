package androidx.compose.runtime.internal;

import androidx.compose.runtime.CompositionLocal;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.ValueHolder;
import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.p0;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: PersistentCompositionLocalMap.kt */
@Metadata
@SourceDebugExtension({"SMAP\nPersistentCompositionLocalMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PersistentCompositionLocalMap.kt\nandroidx/compose/runtime/internal/PersistentCompositionLocalMapKt\n+ 2 CompositionLocalMap.kt\nandroidx/compose/runtime/CompositionLocalMapKt\n*L\n1#1,84:1\n80#2:85\n*S KotlinDebug\n*F\n+ 1 PersistentCompositionLocalMap.kt\nandroidx/compose/runtime/internal/PersistentCompositionLocalMapKt\n*L\n83#1:85\n*E\n"})
/* loaded from: classes.dex */
public final class PersistentCompositionLocalMapKt {
    @NotNull
    public static final PersistentCompositionLocalHashMap persistentCompositionLocalHashMapOf() {
        return PersistentCompositionLocalHashMap.Companion.getEmpty();
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [androidx.compose.runtime.PersistentCompositionLocalMap] */
    @NotNull
    public static final PersistentCompositionLocalMap persistentCompositionLocalHashMapOf(@NotNull Pair<? extends CompositionLocal<Object>, ? extends ValueHolder<Object>>... pairArr) {
        PersistentMap.Builder<CompositionLocal<Object>, ValueHolder<Object>> builder = PersistentCompositionLocalHashMap.Companion.getEmpty().builder();
        p0.u(builder, pairArr);
        return builder.build();
    }
}
