package androidx.compose.runtime;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CompositionLocal.kt */
@Metadata
@SourceDebugExtension({"SMAP\nCompositionLocal.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocalKt\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,415:1\n126#2:416\n153#2,3:417\n37#3,2:420\n*S KotlinDebug\n*F\n+ 1 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocalKt\n*L\n411#1:416\n411#1:417,3\n411#1:420,2\n*E\n"})
/* loaded from: classes.dex */
public final class CompositionLocalKt {
    @Composable
    @ComposableInferredTarget(scheme = "[0[0]]")
    public static final void CompositionLocalProvider(@NotNull final ProvidedValue<?>[] providedValueArr, @NotNull final Function2<? super Composer, ? super Integer, Unit> function2, @Nullable Composer composer, final int i10) {
        Composer startRestartGroup = composer.startRestartGroup(415205898);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(415205898, i10, -1, "androidx.compose.runtime.CompositionLocalProvider (CompositionLocal.kt:367)");
        }
        startRestartGroup.startProviders(providedValueArr);
        function2.invoke(startRestartGroup, Integer.valueOf((i10 >> 3) & 14));
        startRestartGroup.endProviders();
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: androidx.compose.runtime.k
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Unit CompositionLocalProvider$lambda$0;
                    CompositionLocalProvider$lambda$0 = CompositionLocalKt.CompositionLocalProvider$lambda$0(providedValueArr, function2, i10, (Composer) obj, ((Integer) obj2).intValue());
                    return CompositionLocalProvider$lambda$0;
                }
            });
        }
    }

    public static final Unit CompositionLocalProvider$lambda$0(ProvidedValue[] providedValueArr, Function2 function2, int i10, Composer composer, int i11) {
        CompositionLocalProvider(providedValueArr, function2, composer, RecomposeScopeImplKt.updateChangedFlags(i10 | 1));
        return Unit.f60915a;
    }

    public static final Unit CompositionLocalProvider$lambda$1(ProvidedValue providedValue, Function2 function2, int i10, Composer composer, int i11) {
        CompositionLocalProvider(providedValue, function2, composer, RecomposeScopeImplKt.updateChangedFlags(i10 | 1));
        return Unit.f60915a;
    }

    public static final Unit CompositionLocalProvider$lambda$3(CompositionLocalContext compositionLocalContext, Function2 function2, int i10, Composer composer, int i11) {
        CompositionLocalProvider(compositionLocalContext, function2, composer, RecomposeScopeImplKt.updateChangedFlags(i10 | 1));
        return Unit.f60915a;
    }

    @NotNull
    public static final <T> ProvidableCompositionLocal<T> compositionLocalOf(@NotNull SnapshotMutationPolicy<T> snapshotMutationPolicy, @NotNull Function0<? extends T> function0) {
        return new DynamicProvidableCompositionLocal(snapshotMutationPolicy, function0);
    }

    public static /* synthetic */ ProvidableCompositionLocal compositionLocalOf$default(SnapshotMutationPolicy snapshotMutationPolicy, Function0 function0, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            snapshotMutationPolicy = SnapshotStateKt.structuralEqualityPolicy();
        }
        return compositionLocalOf(snapshotMutationPolicy, function0);
    }

    @NotNull
    public static final <T> ProvidableCompositionLocal<T> compositionLocalWithComputedDefaultOf(@NotNull Function1<? super CompositionLocalAccessorScope, ? extends T> function1) {
        return new ComputedProvidableCompositionLocal(function1);
    }

    @NotNull
    public static final <T> ProvidableCompositionLocal<T> staticCompositionLocalOf(@NotNull Function0<? extends T> function0) {
        return new StaticProvidableCompositionLocal(function0);
    }

    @Composable
    @ComposableInferredTarget(scheme = "[0[0]]")
    public static final void CompositionLocalProvider(@NotNull final ProvidedValue<?> providedValue, @NotNull final Function2<? super Composer, ? super Integer, Unit> function2, @Nullable Composer composer, final int i10) {
        Composer startRestartGroup = composer.startRestartGroup(-149765515);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-149765515, i10, -1, "androidx.compose.runtime.CompositionLocalProvider (CompositionLocal.kt:387)");
        }
        startRestartGroup.startProvider(providedValue);
        function2.invoke(startRestartGroup, Integer.valueOf((i10 >> 3) & 14));
        startRestartGroup.endProvider();
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: androidx.compose.runtime.j
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Unit CompositionLocalProvider$lambda$1;
                    CompositionLocalProvider$lambda$1 = CompositionLocalKt.CompositionLocalProvider$lambda$1(ProvidedValue.this, function2, i10, (Composer) obj, ((Integer) obj2).intValue());
                    return CompositionLocalProvider$lambda$1;
                }
            });
        }
    }

    @Composable
    @ComposableInferredTarget(scheme = "[0[0]]")
    public static final void CompositionLocalProvider(@NotNull final CompositionLocalContext compositionLocalContext, @NotNull final Function2<? super Composer, ? super Integer, Unit> function2, @Nullable Composer composer, final int i10) {
        Composer startRestartGroup = composer.startRestartGroup(-1162003659);
        int i11 = (i10 & 6) == 0 ? (startRestartGroup.changed(compositionLocalContext) ? 4 : 2) | i10 : i10;
        if ((i10 & 48) == 0) {
            i11 |= startRestartGroup.changedInstance(function2) ? 32 : 16;
        }
        if (startRestartGroup.shouldExecute((i11 & 19) != 18, i11 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1162003659, i11, -1, "androidx.compose.runtime.CompositionLocalProvider (CompositionLocal.kt:408)");
            }
            PersistentCompositionLocalMap compositionLocals$runtime = compositionLocalContext.getCompositionLocals$runtime();
            ArrayList arrayList = new ArrayList(compositionLocals$runtime.size());
            for (Map.Entry<CompositionLocal<Object>, ValueHolder<Object>> entry : compositionLocals$runtime.entrySet()) {
                arrayList.add(entry.getValue().toProvided(entry.getKey()));
            }
            ProvidedValue[] providedValueArr = (ProvidedValue[]) arrayList.toArray(new ProvidedValue[0]);
            CompositionLocalProvider((ProvidedValue[]) Arrays.copyOf(providedValueArr, providedValueArr.length), function2, startRestartGroup, i11 & 112);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            startRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: androidx.compose.runtime.l
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Unit CompositionLocalProvider$lambda$3;
                    CompositionLocalProvider$lambda$3 = CompositionLocalKt.CompositionLocalProvider$lambda$3(CompositionLocalContext.this, function2, i10, (Composer) obj, ((Integer) obj2).intValue());
                    return CompositionLocalProvider$lambda$3;
                }
            });
        }
    }
}
