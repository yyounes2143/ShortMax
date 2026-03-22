package androidx.compose.runtime;

import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.JobKt__JobKt;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Effects.kt */
@Metadata
@SourceDebugExtension({"SMAP\nEffects.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Effects.kt\nandroidx/compose/runtime/EffectsKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n*L\n1#1,611:1\n1282#2,6:612\n1282#2,6:618\n1282#2,6:624\n1282#2,6:634\n1282#2,6:640\n1282#2,6:646\n1282#2,6:652\n1282#2,6:662\n1282#2,6:668\n85#3,4:630\n85#3,4:658\n*S KotlinDebug\n*F\n+ 1 Effects.kt\nandroidx/compose/runtime/EffectsKt\n*L\n155#1:612,6\n192#1:618,6\n230#1:624,6\n266#1:634,6\n344#1:640,6\n363#1:646,6\n387#1:652,6\n410#1:662,6\n609#1:668,6\n266#1:630,4\n410#1:658,4\n*E\n"})
/* loaded from: classes.dex */
public final class EffectsKt {
    @NotNull
    private static final String DisposableEffectNoParamError = "DisposableEffect must provide one or more 'key' parameters that define the identity of the DisposableEffect and determine when its previous effect should be disposed and a new effect started for the new key.";
    @NotNull
    private static final DisposableEffectScope InternalDisposableEffectScope = new DisposableEffectScope();
    @NotNull
    private static final String LaunchedEffectNoParamError = "LaunchedEffect must provide one or more 'key' parameters that define the identity of the LaunchedEffect and determine when its previous effect coroutine should be cancelled and a new effect launched for the new key.";

    @ms.c
    @Composable
    public static final void DisposableEffect(@NotNull Function1<? super DisposableEffectScope, ? extends DisposableEffectResult> function1, @Nullable Composer composer, int i10) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-904483903, i10, -1, "androidx.compose.runtime.DisposableEffect (Effects.kt:120)");
        }
        throw new IllegalStateException(DisposableEffectNoParamError);
    }

    @ms.c
    @Composable
    public static final void LaunchedEffect(@NotNull final Function2<? super gt.g0, ? super rs.c<? super Unit>, ? extends Object> function2, @Nullable Composer composer, final int i10) {
        Composer startRestartGroup = composer.startRestartGroup(-805415771);
        int i11 = i10 & 1;
        if (startRestartGroup.shouldExecute(i11 != 0, i11)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-805415771, i10, -1, "androidx.compose.runtime.LaunchedEffect (Effects.kt:325)");
            }
            throw new IllegalStateException(LaunchedEffectNoParamError);
        }
        startRestartGroup.skipToGroupEnd();
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: androidx.compose.runtime.o
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Unit LaunchedEffect$lambda$4;
                    LaunchedEffect$lambda$4 = EffectsKt.LaunchedEffect$lambda$4(Function2.this, i10, (Composer) obj, ((Integer) obj2).intValue());
                    return LaunchedEffect$lambda$4;
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit LaunchedEffect$lambda$4(Function2 function2, int i10, Composer composer, int i11) {
        LaunchedEffect(function2, composer, RecomposeScopeImplKt.updateChangedFlags(i10 | 1));
        return Unit.f60915a;
    }

    @Composable
    public static final void SideEffect(@NotNull Function0<Unit> function0, @Nullable Composer composer, int i10) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1288466761, i10, -1, "androidx.compose.runtime.SideEffect (Effects.kt:51)");
        }
        composer.recordSideEffect(function0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
    }

    @NotNull
    public static final gt.g0 createCompositionCoroutineScope(@NotNull CoroutineContext coroutineContext, @NotNull Composer composer) {
        gt.s b10;
        if (coroutineContext.get(r.G8) != null) {
            b10 = JobKt__JobKt.b(null, 1, null);
            b10.d(new IllegalArgumentException("CoroutineContext supplied to rememberCoroutineScope may not include a parent job"));
            return kotlinx.coroutines.i.a(b10);
        }
        return new RememberedCoroutineScope(composer.getApplyCoroutineContext(), coroutineContext);
    }

    @Composable
    @NotNull
    public static final gt.g0 rememberCoroutineScope(@Nullable Function0<? extends CoroutineContext> function0, @Nullable Composer composer, int i10, int i11) {
        if ((i11 & 1) != 0) {
            function0 = new Function0<EmptyCoroutineContext>() { // from class: androidx.compose.runtime.EffectsKt$rememberCoroutineScope$1
                @Override // kotlin.jvm.functions.Function0
                public final EmptyCoroutineContext invoke() {
                    return EmptyCoroutineContext.f61040a;
                }
            };
        }
        Object rememberedValue = composer.rememberedValue();
        if (rememberedValue == Composer.Companion.getEmpty()) {
            rememberedValue = createCompositionCoroutineScope(function0.invoke(), composer);
            composer.updateRememberedValue(rememberedValue);
        }
        return (gt.g0) rememberedValue;
    }

    @Composable
    public static final void DisposableEffect(@Nullable Object obj, @NotNull Function1<? super DisposableEffectScope, ? extends DisposableEffectResult> function1, @Nullable Composer composer, int i10) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1371986847, i10, -1, "androidx.compose.runtime.DisposableEffect (Effects.kt:153)");
        }
        boolean changed = composer.changed(obj);
        Object rememberedValue = composer.rememberedValue();
        if (changed || rememberedValue == Composer.Companion.getEmpty()) {
            rememberedValue = new DisposableEffectImpl(function1);
            composer.updateRememberedValue(rememberedValue);
        }
        DisposableEffectImpl disposableEffectImpl = (DisposableEffectImpl) rememberedValue;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
    }

    @Composable
    public static final void LaunchedEffect(@Nullable Object obj, @NotNull Function2<? super gt.g0, ? super rs.c<? super Unit>, ? extends Object> function2, @Nullable Composer composer, int i10) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1179185413, i10, -1, "androidx.compose.runtime.LaunchedEffect (Effects.kt:341)");
        }
        CoroutineContext applyCoroutineContext = composer.getApplyCoroutineContext();
        boolean changed = composer.changed(obj);
        Object rememberedValue = composer.rememberedValue();
        if (changed || rememberedValue == Composer.Companion.getEmpty()) {
            rememberedValue = new LaunchedEffectImpl(applyCoroutineContext, function2);
            composer.updateRememberedValue(rememberedValue);
        }
        LaunchedEffectImpl launchedEffectImpl = (LaunchedEffectImpl) rememberedValue;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
    }

    @Composable
    public static final void DisposableEffect(@Nullable Object obj, @Nullable Object obj2, @NotNull Function1<? super DisposableEffectScope, ? extends DisposableEffectResult> function1, @Nullable Composer composer, int i10) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1429097729, i10, -1, "androidx.compose.runtime.DisposableEffect (Effects.kt:190)");
        }
        boolean changed = composer.changed(obj) | composer.changed(obj2);
        Object rememberedValue = composer.rememberedValue();
        if (changed || rememberedValue == Composer.Companion.getEmpty()) {
            rememberedValue = new DisposableEffectImpl(function1);
            composer.updateRememberedValue(rememberedValue);
        }
        DisposableEffectImpl disposableEffectImpl = (DisposableEffectImpl) rememberedValue;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
    }

    @Composable
    public static final void LaunchedEffect(@Nullable Object obj, @Nullable Object obj2, @NotNull Function2<? super gt.g0, ? super rs.c<? super Unit>, ? extends Object> function2, @Nullable Composer composer, int i10) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(590241125, i10, -1, "androidx.compose.runtime.LaunchedEffect (Effects.kt:360)");
        }
        CoroutineContext applyCoroutineContext = composer.getApplyCoroutineContext();
        boolean changed = composer.changed(obj) | composer.changed(obj2);
        Object rememberedValue = composer.rememberedValue();
        if (changed || rememberedValue == Composer.Companion.getEmpty()) {
            rememberedValue = new LaunchedEffectImpl(applyCoroutineContext, function2);
            composer.updateRememberedValue(rememberedValue);
        }
        LaunchedEffectImpl launchedEffectImpl = (LaunchedEffectImpl) rememberedValue;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
    }

    @Composable
    public static final void DisposableEffect(@Nullable Object obj, @Nullable Object obj2, @Nullable Object obj3, @NotNull Function1<? super DisposableEffectScope, ? extends DisposableEffectResult> function1, @Nullable Composer composer, int i10) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1239538271, i10, -1, "androidx.compose.runtime.DisposableEffect (Effects.kt:228)");
        }
        boolean changed = composer.changed(obj) | composer.changed(obj2) | composer.changed(obj3);
        Object rememberedValue = composer.rememberedValue();
        if (changed || rememberedValue == Composer.Companion.getEmpty()) {
            rememberedValue = new DisposableEffectImpl(function1);
            composer.updateRememberedValue(rememberedValue);
        }
        DisposableEffectImpl disposableEffectImpl = (DisposableEffectImpl) rememberedValue;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
    }

    @Composable
    public static final void LaunchedEffect(@Nullable Object obj, @Nullable Object obj2, @Nullable Object obj3, @NotNull Function2<? super gt.g0, ? super rs.c<? super Unit>, ? extends Object> function2, @Nullable Composer composer, int i10) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-54093371, i10, -1, "androidx.compose.runtime.LaunchedEffect (Effects.kt:384)");
        }
        CoroutineContext applyCoroutineContext = composer.getApplyCoroutineContext();
        boolean changed = composer.changed(obj) | composer.changed(obj2) | composer.changed(obj3);
        Object rememberedValue = composer.rememberedValue();
        if (changed || rememberedValue == Composer.Companion.getEmpty()) {
            rememberedValue = new LaunchedEffectImpl(applyCoroutineContext, function2);
            composer.updateRememberedValue(rememberedValue);
        }
        LaunchedEffectImpl launchedEffectImpl = (LaunchedEffectImpl) rememberedValue;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
    }

    @Composable
    public static final void DisposableEffect(@NotNull Object[] objArr, @NotNull Function1<? super DisposableEffectScope, ? extends DisposableEffectResult> function1, @Nullable Composer composer, int i10) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1307627122, i10, -1, "androidx.compose.runtime.DisposableEffect (Effects.kt:264)");
        }
        boolean z10 = false;
        for (Object obj : Arrays.copyOf(objArr, objArr.length)) {
            z10 |= composer.changed(obj);
        }
        Object rememberedValue = composer.rememberedValue();
        if (z10 || rememberedValue == Composer.Companion.getEmpty()) {
            composer.updateRememberedValue(new DisposableEffectImpl(function1));
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
    }

    @Composable
    public static final void LaunchedEffect(@NotNull Object[] objArr, @NotNull Function2<? super gt.g0, ? super rs.c<? super Unit>, ? extends Object> function2, @Nullable Composer composer, int i10) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-139560008, i10, -1, "androidx.compose.runtime.LaunchedEffect (Effects.kt:407)");
        }
        CoroutineContext applyCoroutineContext = composer.getApplyCoroutineContext();
        boolean z10 = false;
        for (Object obj : Arrays.copyOf(objArr, objArr.length)) {
            z10 |= composer.changed(obj);
        }
        Object rememberedValue = composer.rememberedValue();
        if (z10 || rememberedValue == Composer.Companion.getEmpty()) {
            composer.updateRememberedValue(new LaunchedEffectImpl(applyCoroutineContext, function2));
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
    }
}
