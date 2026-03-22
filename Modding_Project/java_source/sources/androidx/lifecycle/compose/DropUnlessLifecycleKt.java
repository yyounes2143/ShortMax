package androidx.lifecycle.compose;

import androidx.annotation.CheckResult;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import com.ss.ttm.player.MediaPlayer;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DropUnlessLifecycle.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDropUnlessLifecycle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DropUnlessLifecycle.kt\nandroidx/lifecycle/compose/DropUnlessLifecycleKt\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,101:1\n75#2:102\n75#2:109\n75#2:110\n1282#3,6:103\n*S KotlinDebug\n*F\n+ 1 DropUnlessLifecycle.kt\nandroidx/lifecycle/compose/DropUnlessLifecycleKt\n*L\n46#1:102\n76#1:109\n98#1:110\n54#1:103,6\n*E\n"})
/* loaded from: classes2.dex */
public final class DropUnlessLifecycleKt {
    @CheckResult
    @Composable
    @NotNull
    public static final Function0<Unit> dropUnlessResumed(@Nullable LifecycleOwner lifecycleOwner, @NotNull Function0<Unit> function0, @Nullable Composer composer, int i10, int i11) {
        if ((i11 & 1) != 0) {
            lifecycleOwner = (LifecycleOwner) composer.consume(LocalLifecycleOwnerKt.getLocalLifecycleOwner());
        }
        LifecycleOwner lifecycleOwner2 = lifecycleOwner;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1331131589, i10, -1, "androidx.lifecycle.compose.dropUnlessResumed (DropUnlessLifecycle.kt:99)");
        }
        int i12 = i10 << 3;
        Function0<Unit> dropUnlessStateIsAtLeast = dropUnlessStateIsAtLeast(Lifecycle.State.RESUMED, lifecycleOwner2, function0, composer, (i12 & 112) | 6 | (i12 & 896), 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return dropUnlessStateIsAtLeast;
    }

    @CheckResult
    @Composable
    @NotNull
    public static final Function0<Unit> dropUnlessStarted(@Nullable LifecycleOwner lifecycleOwner, @NotNull Function0<Unit> function0, @Nullable Composer composer, int i10, int i11) {
        if ((i11 & 1) != 0) {
            lifecycleOwner = (LifecycleOwner) composer.consume(LocalLifecycleOwnerKt.getLocalLifecycleOwner());
        }
        LifecycleOwner lifecycleOwner2 = lifecycleOwner;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1207869935, i10, -1, "androidx.lifecycle.compose.dropUnlessStarted (DropUnlessLifecycle.kt:77)");
        }
        int i12 = i10 << 3;
        Function0<Unit> dropUnlessStateIsAtLeast = dropUnlessStateIsAtLeast(Lifecycle.State.STARTED, lifecycleOwner2, function0, composer, (i12 & 112) | 6 | (i12 & 896), 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return dropUnlessStateIsAtLeast;
    }

    @CheckResult
    @Composable
    private static final Function0<Unit> dropUnlessStateIsAtLeast(final Lifecycle.State state, final LifecycleOwner lifecycleOwner, final Function0<Unit> function0, Composer composer, int i10, int i11) {
        boolean z10;
        if ((i11 & 2) != 0) {
            lifecycleOwner = (LifecycleOwner) composer.consume(LocalLifecycleOwnerKt.getLocalLifecycleOwner());
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-2057956404, i10, -1, "androidx.lifecycle.compose.dropUnlessStateIsAtLeast (DropUnlessLifecycle.kt:47)");
        }
        if (state != Lifecycle.State.DESTROYED) {
            boolean changedInstance = composer.changedInstance(lifecycleOwner);
            boolean z11 = false;
            if ((((i10 & 14) ^ 6) > 4 && composer.changed(state.ordinal())) || (i10 & 6) == 4) {
                z10 = true;
            } else {
                z10 = false;
            }
            boolean z12 = changedInstance | z10;
            if ((((i10 & 896) ^ MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500) > 256 && composer.changed(function0)) || (i10 & MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500) == 256) {
                z11 = true;
            }
            boolean z13 = z12 | z11;
            Object rememberedValue = composer.rememberedValue();
            if (z13 || rememberedValue == Composer.Companion.getEmpty()) {
                rememberedValue = new Function0() { // from class: androidx.lifecycle.compose.a
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        Unit dropUnlessStateIsAtLeast$lambda$2$lambda$1;
                        dropUnlessStateIsAtLeast$lambda$2$lambda$1 = DropUnlessLifecycleKt.dropUnlessStateIsAtLeast$lambda$2$lambda$1(LifecycleOwner.this, state, function0);
                        return dropUnlessStateIsAtLeast$lambda$2$lambda$1;
                    }
                };
                composer.updateRememberedValue(rememberedValue);
            }
            Function0<Unit> function02 = (Function0) rememberedValue;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            return function02;
        }
        throw new IllegalArgumentException("Target state is not allowed to be `Lifecycle.State.DESTROYED` because Compose disposes of the composition before `Lifecycle.Event.ON_DESTROY` observers are invoked.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit dropUnlessStateIsAtLeast$lambda$2$lambda$1(LifecycleOwner lifecycleOwner, Lifecycle.State state, Function0 function0) {
        if (lifecycleOwner.getLifecycle().getCurrentState().isAtLeast(state)) {
            function0.invoke();
        }
        return Unit.f60915a;
    }
}
