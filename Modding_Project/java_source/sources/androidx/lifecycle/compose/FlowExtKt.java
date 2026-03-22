package androidx.lifecycle.compose;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FlowExt.kt */
@Metadata
@SourceDebugExtension({"SMAP\nFlowExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FlowExt.kt\nandroidx/lifecycle/compose/FlowExtKt\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,187:1\n75#2:188\n75#2:189\n1282#3,6:190\n*S KotlinDebug\n*F\n+ 1 FlowExt.kt\nandroidx/lifecycle/compose/FlowExtKt\n*L\n59#1:188\n135#1:189\n176#1:190,6\n*E\n"})
/* loaded from: classes2.dex */
public final class FlowExtKt {
    @Composable
    @NotNull
    public static final <T> State<T> collectAsStateWithLifecycle(@NotNull kt.i<? extends T> iVar, @Nullable LifecycleOwner lifecycleOwner, @Nullable Lifecycle.State state, @Nullable CoroutineContext coroutineContext, @Nullable Composer composer, int i10, int i11) {
        if ((i11 & 1) != 0) {
            lifecycleOwner = (LifecycleOwner) composer.consume(LocalLifecycleOwnerKt.getLocalLifecycleOwner());
        }
        if ((i11 & 2) != 0) {
            state = Lifecycle.State.STARTED;
        }
        Lifecycle.State state2 = state;
        if ((i11 & 4) != 0) {
            coroutineContext = EmptyCoroutineContext.f61040a;
        }
        CoroutineContext coroutineContext2 = coroutineContext;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(743249048, i10, -1, "androidx.lifecycle.compose.collectAsStateWithLifecycle (FlowExt.kt:62)");
        }
        int i12 = i10 << 3;
        State<T> collectAsStateWithLifecycle = collectAsStateWithLifecycle(iVar, iVar.getValue(), lifecycleOwner.getLifecycle(), state2, coroutineContext2, composer, (i10 & 14) | (i12 & 7168) | (i12 & 57344), 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return collectAsStateWithLifecycle;
    }

    @Composable
    @NotNull
    public static final <T> State<T> collectAsStateWithLifecycle(@NotNull kt.i<? extends T> iVar, @NotNull Lifecycle lifecycle, @Nullable Lifecycle.State state, @Nullable CoroutineContext coroutineContext, @Nullable Composer composer, int i10, int i11) {
        if ((i11 & 2) != 0) {
            state = Lifecycle.State.STARTED;
        }
        Lifecycle.State state2 = state;
        if ((i11 & 4) != 0) {
            coroutineContext = EmptyCoroutineContext.f61040a;
        }
        CoroutineContext coroutineContext2 = coroutineContext;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1858162195, i10, -1, "androidx.lifecycle.compose.collectAsStateWithLifecycle (FlowExt.kt:99)");
        }
        int i12 = i10 << 3;
        State<T> collectAsStateWithLifecycle = collectAsStateWithLifecycle(iVar, iVar.getValue(), lifecycle, state2, coroutineContext2, composer, (i10 & 14) | (i12 & 896) | (i12 & 7168) | (i12 & 57344), 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return collectAsStateWithLifecycle;
    }

    @Composable
    @NotNull
    public static final <T> State<T> collectAsStateWithLifecycle(@NotNull kt.b<? extends T> bVar, T t10, @Nullable LifecycleOwner lifecycleOwner, @Nullable Lifecycle.State state, @Nullable CoroutineContext coroutineContext, @Nullable Composer composer, int i10, int i11) {
        if ((i11 & 2) != 0) {
            lifecycleOwner = (LifecycleOwner) composer.consume(LocalLifecycleOwnerKt.getLocalLifecycleOwner());
        }
        if ((i11 & 4) != 0) {
            state = Lifecycle.State.STARTED;
        }
        Lifecycle.State state2 = state;
        if ((i11 & 8) != 0) {
            coroutineContext = EmptyCoroutineContext.f61040a;
        }
        CoroutineContext coroutineContext2 = coroutineContext;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1485997211, i10, -1, "androidx.lifecycle.compose.collectAsStateWithLifecycle (FlowExt.kt:138)");
        }
        State<T> collectAsStateWithLifecycle = collectAsStateWithLifecycle(bVar, t10, lifecycleOwner.getLifecycle(), state2, coroutineContext2, composer, (i10 & 14) | (((i10 >> 3) & 8) << 3) | (i10 & 112) | (i10 & 7168) | (57344 & i10), 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return collectAsStateWithLifecycle;
    }

    @Composable
    @NotNull
    public static final <T> State<T> collectAsStateWithLifecycle(@NotNull kt.b<? extends T> bVar, T t10, @NotNull Lifecycle lifecycle, @Nullable Lifecycle.State state, @Nullable CoroutineContext coroutineContext, @Nullable Composer composer, int i10, int i11) {
        if ((i11 & 4) != 0) {
            state = Lifecycle.State.STARTED;
        }
        Lifecycle.State state2 = state;
        if ((i11 & 8) != 0) {
            coroutineContext = EmptyCoroutineContext.f61040a;
        }
        CoroutineContext coroutineContext2 = coroutineContext;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1977777920, i10, -1, "androidx.lifecycle.compose.collectAsStateWithLifecycle (FlowExt.kt:174)");
        }
        Object[] objArr = {bVar, lifecycle, state2, coroutineContext2};
        boolean changedInstance = composer.changedInstance(lifecycle) | ((((i10 & 7168) ^ 3072) > 2048 && composer.changed(state2.ordinal())) || (i10 & 3072) == 2048) | composer.changedInstance(coroutineContext2) | composer.changedInstance(bVar);
        Object rememberedValue = composer.rememberedValue();
        if (changedInstance || rememberedValue == Composer.Companion.getEmpty()) {
            rememberedValue = new FlowExtKt$collectAsStateWithLifecycle$1$1(lifecycle, state2, coroutineContext2, bVar, null);
            composer.updateRememberedValue(rememberedValue);
        }
        State<T> produceState = SnapshotStateKt.produceState((Object) t10, objArr, (Function2) rememberedValue, composer, (i10 >> 3) & 14);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return produceState;
    }
}
