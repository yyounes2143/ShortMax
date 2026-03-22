package androidx.compose.animation;

import androidx.compose.animation.core.Transition;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.platform.InspectorInfo;
import at.n;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AnimatedVisibility.kt */
@Metadata
/* loaded from: classes.dex */
public interface AnimatedVisibilityScope {
    static /* synthetic */ Modifier animateEnterExit$default(AnimatedVisibilityScope animatedVisibilityScope, Modifier modifier, EnterTransition enterTransition, ExitTransition exitTransition, String str, int i10, Object obj) {
        if (obj == null) {
            if ((i10 & 1) != 0) {
                enterTransition = EnterExitTransitionKt.fadeIn$default(null, 0.0f, 3, null).plus(EnterExitTransitionKt.expandIn$default(null, null, false, null, 15, null));
            }
            if ((i10 & 2) != 0) {
                exitTransition = EnterExitTransitionKt.fadeOut$default(null, 0.0f, 3, null).plus(EnterExitTransitionKt.shrinkOut$default(null, null, false, null, 15, null));
            }
            if ((i10 & 4) != 0) {
                str = "animateEnterExit";
            }
            return animatedVisibilityScope.animateEnterExit(modifier, enterTransition, exitTransition, str);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: animateEnterExit");
    }

    @ExperimentalAnimationApi
    @NotNull
    default Modifier animateEnterExit(@NotNull Modifier modifier, @NotNull final EnterTransition enter, @NotNull final ExitTransition exit, @NotNull final String label) {
        Function1<InspectorInfo, Unit> noInspectorInfo;
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(enter, "enter");
        Intrinsics.checkNotNullParameter(exit, "exit");
        Intrinsics.checkNotNullParameter(label, "label");
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.animation.AnimatedVisibilityScope$animateEnterExit$$inlined$debugInspectorInfo$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(InspectorInfo inspectorInfo) {
                    invoke2(inspectorInfo);
                    return Unit.f60915a;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull InspectorInfo inspectorInfo) {
                    Intrinsics.checkNotNullParameter(inspectorInfo, "$this$null");
                    inspectorInfo.setName("animateEnterExit");
                    inspectorInfo.getProperties().set("enter", EnterTransition.this);
                    inspectorInfo.getProperties().set("exit", exit);
                    inspectorInfo.getProperties().set("label", label);
                }
            };
        } else {
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        return ComposedModifierKt.composed(modifier, noInspectorInfo, new n<Modifier, Composer, Integer, Modifier>() { // from class: androidx.compose.animation.AnimatedVisibilityScope$animateEnterExit$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(3);
            }

            @Override // at.n
            public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier2, Composer composer, Integer num) {
                return invoke(modifier2, composer, num.intValue());
            }

            @Composable
            @NotNull
            public final Modifier invoke(@NotNull Modifier composed, @Nullable Composer composer, int i10) {
                Intrinsics.checkNotNullParameter(composed, "$this$composed");
                composer.startReplaceableGroup(1840112047);
                Modifier then = composed.then(EnterExitTransitionKt.createModifier(AnimatedVisibilityScope.this.getTransition(), enter, exit, label, composer, 0));
                composer.endReplaceableGroup();
                return then;
            }
        });
    }

    @ExperimentalAnimationApi
    @NotNull
    Transition<EnterExitState> getTransition();

    /* compiled from: AnimatedVisibility.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        @ExperimentalAnimationApi
        @Deprecated
        @NotNull
        public static Modifier animateEnterExit(@NotNull AnimatedVisibilityScope animatedVisibilityScope, @NotNull Modifier receiver, @NotNull EnterTransition enter, @NotNull ExitTransition exit, @NotNull String label) {
            Intrinsics.checkNotNullParameter(receiver, "receiver");
            Intrinsics.checkNotNullParameter(enter, "enter");
            Intrinsics.checkNotNullParameter(exit, "exit");
            Intrinsics.checkNotNullParameter(label, "label");
            return AnimatedVisibilityScope.super.animateEnterExit(receiver, enter, exit, label);
        }

        @ExperimentalAnimationApi
        public static /* synthetic */ void getTransition$annotations() {
        }
    }
}
