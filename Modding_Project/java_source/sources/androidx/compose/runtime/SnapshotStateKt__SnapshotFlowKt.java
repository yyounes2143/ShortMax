package androidx.compose.runtime;

import androidx.collection.MutableScatterSet;
import java.util.Set;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SnapshotFlow.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSnapshotFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SnapshotFlow.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 ScatterSet.kt\nandroidx/collection/ScatterSet\n+ 4 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n*L\n1#1,180:1\n1282#2,6:181\n256#3,2:187\n231#3,3:189\n200#3,7:192\n211#3,3:200\n214#3,9:204\n234#3:213\n258#3:214\n1399#4:199\n1270#4:203\n*S KotlinDebug\n*F\n+ 1 SnapshotFlow.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt\n*L\n66#1:181,6\n179#1:187,2\n179#1:189,3\n179#1:192,7\n179#1:200,3\n179#1:204,9\n179#1:213\n179#1:214\n179#1:199\n179#1:203\n*E\n"})
/* loaded from: classes.dex */
public final /* synthetic */ class SnapshotStateKt__SnapshotFlowKt {
    @Composable
    @NotNull
    public static final <T> State<T> collectAsState(@NotNull kt.i<? extends T> iVar, @Nullable CoroutineContext coroutineContext, @Nullable Composer composer, int i10, int i11) {
        if ((i11 & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.f61040a;
        }
        CoroutineContext coroutineContext2 = coroutineContext;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1439883919, i10, -1, "androidx.compose.runtime.collectAsState (SnapshotFlow.kt:49)");
        }
        State<T> collectAsState = SnapshotStateKt.collectAsState(iVar, iVar.getValue(), coroutineContext2, composer, (i10 & 14) | ((i10 << 3) & 896), 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return collectAsState;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean intersects$SnapshotStateKt__SnapshotFlowKt(MutableScatterSet<Object> mutableScatterSet, Set<? extends Object> set) {
        Object[] objArr = mutableScatterSet.elements;
        long[] jArr = mutableScatterSet.metadata;
        int length = jArr.length - 2;
        if (length < 0) {
            return false;
        }
        int i10 = 0;
        while (true) {
            long j10 = jArr[i10];
            if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i11 = 8 - ((~(i10 - length)) >>> 31);
                for (int i12 = 0; i12 < i11; i12++) {
                    if ((255 & j10) < 128 && set.contains(objArr[(i10 << 3) + i12])) {
                        return true;
                    }
                    j10 >>= 8;
                }
                if (i11 != 8) {
                    return false;
                }
            }
            if (i10 == length) {
                return false;
            }
            i10++;
        }
    }

    @NotNull
    public static final <T> kt.b<T> snapshotFlow(@NotNull Function0<? extends T> function0) {
        return kotlinx.coroutines.flow.c.F(new SnapshotStateKt__SnapshotFlowKt$snapshotFlow$1(function0, null));
    }

    @Composable
    @NotNull
    public static final <T extends R, R> State<R> collectAsState(@NotNull kt.b<? extends T> bVar, R r10, @Nullable CoroutineContext coroutineContext, @Nullable Composer composer, int i10, int i11) {
        if ((i11 & 2) != 0) {
            coroutineContext = EmptyCoroutineContext.f61040a;
        }
        CoroutineContext coroutineContext2 = coroutineContext;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-606625098, i10, -1, "androidx.compose.runtime.collectAsState (SnapshotFlow.kt:65)");
        }
        boolean changedInstance = composer.changedInstance(coroutineContext2) | composer.changedInstance(bVar);
        Object rememberedValue = composer.rememberedValue();
        if (changedInstance || rememberedValue == Composer.Companion.getEmpty()) {
            rememberedValue = new SnapshotStateKt__SnapshotFlowKt$collectAsState$1$1(coroutineContext2, bVar, null);
            composer.updateRememberedValue(rememberedValue);
        }
        State<R> produceState = SnapshotStateKt.produceState(r10, bVar, coroutineContext2, (Function2) rememberedValue, composer, ((i10 >> 3) & 14) | ((i10 << 3) & 112) | (i10 & 896));
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return produceState;
    }
}
