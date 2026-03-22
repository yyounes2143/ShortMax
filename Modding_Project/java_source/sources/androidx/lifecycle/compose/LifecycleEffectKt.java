package androidx.lifecycle.compose;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.State;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import com.ss.ttm.player.MediaPlayer;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: LifecycleEffect.kt */
@Metadata
@SourceDebugExtension({"SMAP\nLifecycleEffect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LifecycleEffect.kt\nandroidx/lifecycle/compose/LifecycleEffectKt\n+ 2 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 5 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 6 Effects.kt\nandroidx/compose/runtime/DisposableEffectScope\n+ 7 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,719:1\n75#2:720\n75#2:727\n75#2:734\n75#2:741\n75#2:748\n75#2:759\n75#2:766\n75#2:773\n75#2:780\n75#2:787\n75#2:798\n1282#3,6:721\n1282#3,6:728\n1282#3,6:735\n1282#3,6:742\n1282#3,6:753\n1282#3,6:760\n1282#3,6:767\n1282#3,6:774\n1282#3,6:781\n1282#3,6:792\n1282#3,6:799\n85#4,4:749\n85#4,4:788\n85#5:805\n66#6,5:806\n66#6,5:812\n66#6,5:817\n1#7:811\n*S KotlinDebug\n*F\n+ 1 LifecycleEffect.kt\nandroidx/lifecycle/compose/LifecycleEffectKt\n*L\n54#1:720\n128#1:727\n186#1:734\n249#1:741\n307#1:748\n332#1:759\n446#1:766\n505#1:773\n569#1:780\n628#1:787\n655#1:798\n67#1:721,6\n132#1:728,6\n190#1:735,6\n253#1:742,6\n311#1:753,6\n342#1:760,6\n450#1:767,6\n509#1:774,6\n573#1:781,6\n632#1:792,6\n665#1:799,6\n311#1:749,4\n632#1:788,4\n66#1:805\n76#1:806,5\n357#1:812,5\n680#1:817,5\n*E\n"})
/* loaded from: classes2.dex */
public final class LifecycleEffectKt {
    @NotNull
    private static final String LifecycleResumeEffectNoParamError = "LifecycleResumeEffect must provide one or more 'key' parameters that define the identity of the LifecycleResumeEffect and determine when its previous effect coroutine should be cancelled and a new effect launched for the new key.";
    @NotNull
    private static final String LifecycleStartEffectNoParamError = "LifecycleStartEffect must provide one or more 'key' parameters that define the identity of the LifecycleStartEffect and determine when its previous effect coroutine should be cancelled and a new effect launched for the new key.";

    /* compiled from: LifecycleEffect.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Lifecycle.Event.values().length];
            try {
                iArr[Lifecycle.Event.ON_START.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Lifecycle.Event.ON_STOP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Lifecycle.Event.ON_RESUME.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[Lifecycle.Event.ON_PAUSE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x0074, code lost:
        if ((r12 & 2) != 0) goto L27;
     */
    @androidx.compose.runtime.Composable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void LifecycleEventEffect(@org.jetbrains.annotations.NotNull final androidx.lifecycle.Lifecycle.Event r7, @org.jetbrains.annotations.Nullable final androidx.lifecycle.LifecycleOwner r8, @org.jetbrains.annotations.NotNull final kotlin.jvm.functions.Function0<kotlin.Unit> r9, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r10, final int r11, final int r12) {
        /*
            Method dump skipped, instructions count: 252
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.lifecycle.compose.LifecycleEffectKt.LifecycleEventEffect(androidx.lifecycle.Lifecycle$Event, androidx.lifecycle.LifecycleOwner, kotlin.jvm.functions.Function0, androidx.compose.runtime.Composer, int, int):void");
    }

    private static final Function0<Unit> LifecycleEventEffect$lambda$0(State<? extends Function0<Unit>> state) {
        return state.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DisposableEffectResult LifecycleEventEffect$lambda$4$lambda$3(final LifecycleOwner lifecycleOwner, final Lifecycle.Event event, final State state, DisposableEffectScope disposableEffectScope) {
        final LifecycleEventObserver lifecycleEventObserver = new LifecycleEventObserver() { // from class: androidx.lifecycle.compose.i
            @Override // androidx.lifecycle.LifecycleEventObserver
            public final void onStateChanged(LifecycleOwner lifecycleOwner2, Lifecycle.Event event2) {
                LifecycleEffectKt.LifecycleEventEffect$lambda$4$lambda$3$lambda$1(Lifecycle.Event.this, state, lifecycleOwner2, event2);
            }
        };
        lifecycleOwner.getLifecycle().addObserver(lifecycleEventObserver);
        return new DisposableEffectResult() { // from class: androidx.lifecycle.compose.LifecycleEffectKt$LifecycleEventEffect$lambda$4$lambda$3$$inlined$onDispose$1
            @Override // androidx.compose.runtime.DisposableEffectResult
            public void dispose() {
                LifecycleOwner.this.getLifecycle().removeObserver(lifecycleEventObserver);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void LifecycleEventEffect$lambda$4$lambda$3$lambda$1(Lifecycle.Event event, State state, LifecycleOwner lifecycleOwner, Lifecycle.Event event2) {
        if (event2 == event) {
            LifecycleEventEffect$lambda$0(state).invoke();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit LifecycleEventEffect$lambda$5(Lifecycle.Event event, LifecycleOwner lifecycleOwner, Function0 function0, int i10, int i11, Composer composer, int i12) {
        LifecycleEventEffect(event, lifecycleOwner, function0, composer, RecomposeScopeImplKt.updateChangedFlags(i10 | 1), i11);
        return Unit.f60915a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x006d, code lost:
        if ((r12 & 2) != 0) goto L27;
     */
    @androidx.compose.runtime.Composable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void LifecycleResumeEffect(@org.jetbrains.annotations.Nullable final java.lang.Object r7, @org.jetbrains.annotations.Nullable androidx.lifecycle.LifecycleOwner r8, @org.jetbrains.annotations.NotNull final kotlin.jvm.functions.Function1<? super androidx.lifecycle.compose.LifecycleResumePauseEffectScope, ? extends androidx.lifecycle.compose.LifecyclePauseOrDisposeEffectResult> r9, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r10, final int r11, final int r12) {
        /*
            Method dump skipped, instructions count: 226
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.lifecycle.compose.LifecycleEffectKt.LifecycleResumeEffect(java.lang.Object, androidx.lifecycle.LifecycleOwner, kotlin.jvm.functions.Function1, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit LifecycleResumeEffect$lambda$22(Object obj, LifecycleOwner lifecycleOwner, Function1 function1, int i10, int i11, Composer composer, int i12) {
        LifecycleResumeEffect(obj, lifecycleOwner, function1, composer, RecomposeScopeImplKt.updateChangedFlags(i10 | 1), i11);
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit LifecycleResumeEffect$lambda$24(Object obj, Object obj2, LifecycleOwner lifecycleOwner, Function1 function1, int i10, int i11, Composer composer, int i12) {
        LifecycleResumeEffect(obj, obj2, lifecycleOwner, function1, composer, RecomposeScopeImplKt.updateChangedFlags(i10 | 1), i11);
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit LifecycleResumeEffect$lambda$26(Object obj, Object obj2, Object obj3, LifecycleOwner lifecycleOwner, Function1 function1, int i10, int i11, Composer composer, int i12) {
        LifecycleResumeEffect(obj, obj2, obj3, lifecycleOwner, function1, composer, RecomposeScopeImplKt.updateChangedFlags(i10 | 1), i11);
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit LifecycleResumeEffect$lambda$28(Object[] objArr, LifecycleOwner lifecycleOwner, Function1 function1, int i10, int i11, Composer composer, int i12) {
        LifecycleResumeEffect(objArr, lifecycleOwner, (Function1<? super LifecycleResumePauseEffectScope, ? extends LifecyclePauseOrDisposeEffectResult>) function1, composer, RecomposeScopeImplKt.updateChangedFlags(i10 | 1), i11);
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit LifecycleResumeEffect$lambda$29(LifecycleOwner lifecycleOwner, Function1 function1, int i10, int i11, Composer composer, int i12) {
        LifecycleResumeEffect(lifecycleOwner, function1, composer, RecomposeScopeImplKt.updateChangedFlags(i10 | 1), i11);
        return Unit.f60915a;
    }

    @Composable
    private static final void LifecycleResumeEffectImpl(final LifecycleOwner lifecycleOwner, final LifecycleResumePauseEffectScope lifecycleResumePauseEffectScope, final Function1<? super LifecycleResumePauseEffectScope, ? extends LifecyclePauseOrDisposeEffectResult> function1, Composer composer, final int i10) {
        int i11;
        boolean z10;
        int i12;
        int i13;
        int i14;
        Composer startRestartGroup = composer.startRestartGroup(912823238);
        if ((i10 & 6) == 0) {
            if (startRestartGroup.changedInstance(lifecycleOwner)) {
                i14 = 4;
            } else {
                i14 = 2;
            }
            i11 = i14 | i10;
        } else {
            i11 = i10;
        }
        if ((i10 & 48) == 0) {
            if (startRestartGroup.changedInstance(lifecycleResumePauseEffectScope)) {
                i13 = 32;
            } else {
                i13 = 16;
            }
            i11 |= i13;
        }
        if ((i10 & MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500) == 0) {
            if (startRestartGroup.changedInstance(function1)) {
                i12 = 256;
            } else {
                i12 = 128;
            }
            i11 |= i12;
        }
        boolean z11 = false;
        if ((i11 & 147) != 146) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (startRestartGroup.shouldExecute(z10, i11 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(912823238, i11, -1, "androidx.lifecycle.compose.LifecycleResumeEffectImpl (LifecycleEffect.kt:663)");
            }
            boolean changedInstance = startRestartGroup.changedInstance(lifecycleResumePauseEffectScope);
            if ((i11 & 896) == 256) {
                z11 = true;
            }
            boolean changedInstance2 = changedInstance | z11 | startRestartGroup.changedInstance(lifecycleOwner);
            Object rememberedValue = startRestartGroup.rememberedValue();
            if (changedInstance2 || rememberedValue == Composer.Companion.getEmpty()) {
                rememberedValue = new Function1() { // from class: androidx.lifecycle.compose.s
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        DisposableEffectResult LifecycleResumeEffectImpl$lambda$34$lambda$33;
                        LifecycleResumeEffectImpl$lambda$34$lambda$33 = LifecycleEffectKt.LifecycleResumeEffectImpl$lambda$34$lambda$33(LifecycleOwner.this, lifecycleResumePauseEffectScope, function1, (DisposableEffectScope) obj);
                        return LifecycleResumeEffectImpl$lambda$34$lambda$33;
                    }
                };
                startRestartGroup.updateRememberedValue(rememberedValue);
            }
            EffectsKt.DisposableEffect(lifecycleOwner, lifecycleResumePauseEffectScope, (Function1) rememberedValue, startRestartGroup, i11 & 126);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            startRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: androidx.lifecycle.compose.t
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Unit LifecycleResumeEffectImpl$lambda$35;
                    LifecycleResumeEffectImpl$lambda$35 = LifecycleEffectKt.LifecycleResumeEffectImpl$lambda$35(LifecycleOwner.this, lifecycleResumePauseEffectScope, function1, i10, (Composer) obj, ((Integer) obj2).intValue());
                    return LifecycleResumeEffectImpl$lambda$35;
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DisposableEffectResult LifecycleResumeEffectImpl$lambda$34$lambda$33(final LifecycleOwner lifecycleOwner, final LifecycleResumePauseEffectScope lifecycleResumePauseEffectScope, final Function1 function1, DisposableEffectScope disposableEffectScope) {
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        final LifecycleEventObserver lifecycleEventObserver = new LifecycleEventObserver() { // from class: androidx.lifecycle.compose.n
            @Override // androidx.lifecycle.LifecycleEventObserver
            public final void onStateChanged(LifecycleOwner lifecycleOwner2, Lifecycle.Event event) {
                LifecycleEffectKt.LifecycleResumeEffectImpl$lambda$34$lambda$33$lambda$31(LifecycleResumePauseEffectScope.this, objectRef, function1, lifecycleOwner2, event);
            }
        };
        lifecycleOwner.getLifecycle().addObserver(lifecycleEventObserver);
        return new DisposableEffectResult() { // from class: androidx.lifecycle.compose.LifecycleEffectKt$LifecycleResumeEffectImpl$lambda$34$lambda$33$$inlined$onDispose$1
            @Override // androidx.compose.runtime.DisposableEffectResult
            public void dispose() {
                LifecycleOwner.this.getLifecycle().removeObserver(lifecycleEventObserver);
                LifecyclePauseOrDisposeEffectResult lifecyclePauseOrDisposeEffectResult = (LifecyclePauseOrDisposeEffectResult) objectRef.element;
                if (lifecyclePauseOrDisposeEffectResult != null) {
                    lifecyclePauseOrDisposeEffectResult.runPauseOrOnDisposeEffect();
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r0v1, types: [T, java.lang.Object] */
    public static final void LifecycleResumeEffectImpl$lambda$34$lambda$33$lambda$31(LifecycleResumePauseEffectScope lifecycleResumePauseEffectScope, Ref.ObjectRef objectRef, Function1 function1, LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        int i10 = WhenMappings.$EnumSwitchMapping$0[event.ordinal()];
        if (i10 != 3) {
            if (i10 == 4) {
                LifecyclePauseOrDisposeEffectResult lifecyclePauseOrDisposeEffectResult = (LifecyclePauseOrDisposeEffectResult) objectRef.element;
                if (lifecyclePauseOrDisposeEffectResult != null) {
                    lifecyclePauseOrDisposeEffectResult.runPauseOrOnDisposeEffect();
                }
                objectRef.element = null;
                return;
            }
            return;
        }
        objectRef.element = function1.invoke(lifecycleResumePauseEffectScope);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit LifecycleResumeEffectImpl$lambda$35(LifecycleOwner lifecycleOwner, LifecycleResumePauseEffectScope lifecycleResumePauseEffectScope, Function1 function1, int i10, Composer composer, int i11) {
        LifecycleResumeEffectImpl(lifecycleOwner, lifecycleResumePauseEffectScope, function1, composer, RecomposeScopeImplKt.updateChangedFlags(i10 | 1));
        return Unit.f60915a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x006d, code lost:
        if ((r12 & 2) != 0) goto L27;
     */
    @androidx.compose.runtime.Composable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void LifecycleStartEffect(@org.jetbrains.annotations.Nullable final java.lang.Object r7, @org.jetbrains.annotations.Nullable androidx.lifecycle.LifecycleOwner r8, @org.jetbrains.annotations.NotNull final kotlin.jvm.functions.Function1<? super androidx.lifecycle.compose.LifecycleStartStopEffectScope, ? extends androidx.lifecycle.compose.LifecycleStopOrDisposeEffectResult> r9, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r10, final int r11, final int r12) {
        /*
            Method dump skipped, instructions count: 226
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.lifecycle.compose.LifecycleEffectKt.LifecycleStartEffect(java.lang.Object, androidx.lifecycle.LifecycleOwner, kotlin.jvm.functions.Function1, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit LifecycleStartEffect$lambda$11(Object obj, Object obj2, Object obj3, LifecycleOwner lifecycleOwner, Function1 function1, int i10, int i11, Composer composer, int i12) {
        LifecycleStartEffect(obj, obj2, obj3, lifecycleOwner, function1, composer, RecomposeScopeImplKt.updateChangedFlags(i10 | 1), i11);
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit LifecycleStartEffect$lambda$13(Object[] objArr, LifecycleOwner lifecycleOwner, Function1 function1, int i10, int i11, Composer composer, int i12) {
        LifecycleStartEffect(objArr, lifecycleOwner, (Function1<? super LifecycleStartStopEffectScope, ? extends LifecycleStopOrDisposeEffectResult>) function1, composer, RecomposeScopeImplKt.updateChangedFlags(i10 | 1), i11);
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit LifecycleStartEffect$lambda$14(LifecycleOwner lifecycleOwner, Function1 function1, int i10, int i11, Composer composer, int i12) {
        LifecycleStartEffect(lifecycleOwner, function1, composer, RecomposeScopeImplKt.updateChangedFlags(i10 | 1), i11);
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit LifecycleStartEffect$lambda$7(Object obj, LifecycleOwner lifecycleOwner, Function1 function1, int i10, int i11, Composer composer, int i12) {
        LifecycleStartEffect(obj, lifecycleOwner, function1, composer, RecomposeScopeImplKt.updateChangedFlags(i10 | 1), i11);
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit LifecycleStartEffect$lambda$9(Object obj, Object obj2, LifecycleOwner lifecycleOwner, Function1 function1, int i10, int i11, Composer composer, int i12) {
        LifecycleStartEffect(obj, obj2, lifecycleOwner, function1, composer, RecomposeScopeImplKt.updateChangedFlags(i10 | 1), i11);
        return Unit.f60915a;
    }

    @Composable
    private static final void LifecycleStartEffectImpl(final LifecycleOwner lifecycleOwner, final LifecycleStartStopEffectScope lifecycleStartStopEffectScope, final Function1<? super LifecycleStartStopEffectScope, ? extends LifecycleStopOrDisposeEffectResult> function1, Composer composer, final int i10) {
        int i11;
        boolean z10;
        int i12;
        int i13;
        int i14;
        Composer startRestartGroup = composer.startRestartGroup(228371534);
        if ((i10 & 6) == 0) {
            if (startRestartGroup.changedInstance(lifecycleOwner)) {
                i14 = 4;
            } else {
                i14 = 2;
            }
            i11 = i14 | i10;
        } else {
            i11 = i10;
        }
        if ((i10 & 48) == 0) {
            if (startRestartGroup.changedInstance(lifecycleStartStopEffectScope)) {
                i13 = 32;
            } else {
                i13 = 16;
            }
            i11 |= i13;
        }
        if ((i10 & MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500) == 0) {
            if (startRestartGroup.changedInstance(function1)) {
                i12 = 256;
            } else {
                i12 = 128;
            }
            i11 |= i12;
        }
        boolean z11 = false;
        if ((i11 & 147) != 146) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (startRestartGroup.shouldExecute(z10, i11 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(228371534, i11, -1, "androidx.lifecycle.compose.LifecycleStartEffectImpl (LifecycleEffect.kt:340)");
            }
            boolean changedInstance = startRestartGroup.changedInstance(lifecycleStartStopEffectScope);
            if ((i11 & 896) == 256) {
                z11 = true;
            }
            boolean changedInstance2 = changedInstance | z11 | startRestartGroup.changedInstance(lifecycleOwner);
            Object rememberedValue = startRestartGroup.rememberedValue();
            if (changedInstance2 || rememberedValue == Composer.Companion.getEmpty()) {
                rememberedValue = new Function1() { // from class: androidx.lifecycle.compose.j
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        DisposableEffectResult LifecycleStartEffectImpl$lambda$19$lambda$18;
                        LifecycleStartEffectImpl$lambda$19$lambda$18 = LifecycleEffectKt.LifecycleStartEffectImpl$lambda$19$lambda$18(LifecycleOwner.this, lifecycleStartStopEffectScope, function1, (DisposableEffectScope) obj);
                        return LifecycleStartEffectImpl$lambda$19$lambda$18;
                    }
                };
                startRestartGroup.updateRememberedValue(rememberedValue);
            }
            EffectsKt.DisposableEffect(lifecycleOwner, lifecycleStartStopEffectScope, (Function1) rememberedValue, startRestartGroup, i11 & 126);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            startRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2() { // from class: androidx.lifecycle.compose.k
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Unit LifecycleStartEffectImpl$lambda$20;
                    LifecycleStartEffectImpl$lambda$20 = LifecycleEffectKt.LifecycleStartEffectImpl$lambda$20(LifecycleOwner.this, lifecycleStartStopEffectScope, function1, i10, (Composer) obj, ((Integer) obj2).intValue());
                    return LifecycleStartEffectImpl$lambda$20;
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DisposableEffectResult LifecycleStartEffectImpl$lambda$19$lambda$18(final LifecycleOwner lifecycleOwner, final LifecycleStartStopEffectScope lifecycleStartStopEffectScope, final Function1 function1, DisposableEffectScope disposableEffectScope) {
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        final LifecycleEventObserver lifecycleEventObserver = new LifecycleEventObserver() { // from class: androidx.lifecycle.compose.g
            @Override // androidx.lifecycle.LifecycleEventObserver
            public final void onStateChanged(LifecycleOwner lifecycleOwner2, Lifecycle.Event event) {
                LifecycleEffectKt.LifecycleStartEffectImpl$lambda$19$lambda$18$lambda$16(LifecycleStartStopEffectScope.this, objectRef, function1, lifecycleOwner2, event);
            }
        };
        lifecycleOwner.getLifecycle().addObserver(lifecycleEventObserver);
        return new DisposableEffectResult() { // from class: androidx.lifecycle.compose.LifecycleEffectKt$LifecycleStartEffectImpl$lambda$19$lambda$18$$inlined$onDispose$1
            @Override // androidx.compose.runtime.DisposableEffectResult
            public void dispose() {
                LifecycleOwner.this.getLifecycle().removeObserver(lifecycleEventObserver);
                LifecycleStopOrDisposeEffectResult lifecycleStopOrDisposeEffectResult = (LifecycleStopOrDisposeEffectResult) objectRef.element;
                if (lifecycleStopOrDisposeEffectResult != null) {
                    lifecycleStopOrDisposeEffectResult.runStopOrDisposeEffect();
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r0v1, types: [T, java.lang.Object] */
    public static final void LifecycleStartEffectImpl$lambda$19$lambda$18$lambda$16(LifecycleStartStopEffectScope lifecycleStartStopEffectScope, Ref.ObjectRef objectRef, Function1 function1, LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        int i10 = WhenMappings.$EnumSwitchMapping$0[event.ordinal()];
        if (i10 != 1) {
            if (i10 == 2) {
                LifecycleStopOrDisposeEffectResult lifecycleStopOrDisposeEffectResult = (LifecycleStopOrDisposeEffectResult) objectRef.element;
                if (lifecycleStopOrDisposeEffectResult != null) {
                    lifecycleStopOrDisposeEffectResult.runStopOrDisposeEffect();
                }
                objectRef.element = null;
                return;
            }
            return;
        }
        objectRef.element = function1.invoke(lifecycleStartStopEffectScope);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit LifecycleStartEffectImpl$lambda$20(LifecycleOwner lifecycleOwner, LifecycleStartStopEffectScope lifecycleStartStopEffectScope, Function1 function1, int i10, Composer composer, int i11) {
        LifecycleStartEffectImpl(lifecycleOwner, lifecycleStartStopEffectScope, function1, composer, RecomposeScopeImplKt.updateChangedFlags(i10 | 1));
        return Unit.f60915a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:54:0x0084, code lost:
        if ((r14 & 4) != 0) goto L30;
     */
    @androidx.compose.runtime.Composable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void LifecycleResumeEffect(@org.jetbrains.annotations.Nullable final java.lang.Object r8, @org.jetbrains.annotations.Nullable final java.lang.Object r9, @org.jetbrains.annotations.Nullable androidx.lifecycle.LifecycleOwner r10, @org.jetbrains.annotations.NotNull final kotlin.jvm.functions.Function1<? super androidx.lifecycle.compose.LifecycleResumePauseEffectScope, ? extends androidx.lifecycle.compose.LifecyclePauseOrDisposeEffectResult> r11, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r12, final int r13, final int r14) {
        /*
            Method dump skipped, instructions count: 257
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.lifecycle.compose.LifecycleEffectKt.LifecycleResumeEffect(java.lang.Object, java.lang.Object, androidx.lifecycle.LifecycleOwner, kotlin.jvm.functions.Function1, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:54:0x0084, code lost:
        if ((r14 & 4) != 0) goto L30;
     */
    @androidx.compose.runtime.Composable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void LifecycleStartEffect(@org.jetbrains.annotations.Nullable final java.lang.Object r8, @org.jetbrains.annotations.Nullable final java.lang.Object r9, @org.jetbrains.annotations.Nullable androidx.lifecycle.LifecycleOwner r10, @org.jetbrains.annotations.NotNull final kotlin.jvm.functions.Function1<? super androidx.lifecycle.compose.LifecycleStartStopEffectScope, ? extends androidx.lifecycle.compose.LifecycleStopOrDisposeEffectResult> r11, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r12, final int r13, final int r14) {
        /*
            Method dump skipped, instructions count: 257
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.lifecycle.compose.LifecycleEffectKt.LifecycleStartEffect(java.lang.Object, java.lang.Object, androidx.lifecycle.LifecycleOwner, kotlin.jvm.functions.Function1, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:66:0x00a7, code lost:
        if ((r18 & 8) != 0) goto L32;
     */
    @androidx.compose.runtime.Composable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void LifecycleResumeEffect(@org.jetbrains.annotations.Nullable final java.lang.Object r11, @org.jetbrains.annotations.Nullable final java.lang.Object r12, @org.jetbrains.annotations.Nullable final java.lang.Object r13, @org.jetbrains.annotations.Nullable androidx.lifecycle.LifecycleOwner r14, @org.jetbrains.annotations.NotNull final kotlin.jvm.functions.Function1<? super androidx.lifecycle.compose.LifecycleResumePauseEffectScope, ? extends androidx.lifecycle.compose.LifecyclePauseOrDisposeEffectResult> r15, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r16, final int r17, final int r18) {
        /*
            Method dump skipped, instructions count: 299
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.lifecycle.compose.LifecycleEffectKt.LifecycleResumeEffect(java.lang.Object, java.lang.Object, java.lang.Object, androidx.lifecycle.LifecycleOwner, kotlin.jvm.functions.Function1, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:66:0x00a7, code lost:
        if ((r18 & 8) != 0) goto L32;
     */
    @androidx.compose.runtime.Composable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void LifecycleStartEffect(@org.jetbrains.annotations.Nullable final java.lang.Object r11, @org.jetbrains.annotations.Nullable final java.lang.Object r12, @org.jetbrains.annotations.Nullable final java.lang.Object r13, @org.jetbrains.annotations.Nullable androidx.lifecycle.LifecycleOwner r14, @org.jetbrains.annotations.NotNull final kotlin.jvm.functions.Function1<? super androidx.lifecycle.compose.LifecycleStartStopEffectScope, ? extends androidx.lifecycle.compose.LifecycleStopOrDisposeEffectResult> r15, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r16, final int r17, final int r18) {
        /*
            Method dump skipped, instructions count: 299
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.lifecycle.compose.LifecycleEffectKt.LifecycleStartEffect(java.lang.Object, java.lang.Object, java.lang.Object, androidx.lifecycle.LifecycleOwner, kotlin.jvm.functions.Function1, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x008c, code lost:
        if ((r12 & 2) != 0) goto L39;
     */
    @androidx.compose.runtime.Composable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void LifecycleResumeEffect(@org.jetbrains.annotations.NotNull final java.lang.Object[] r7, @org.jetbrains.annotations.Nullable androidx.lifecycle.LifecycleOwner r8, @org.jetbrains.annotations.NotNull final kotlin.jvm.functions.Function1<? super androidx.lifecycle.compose.LifecycleResumePauseEffectScope, ? extends androidx.lifecycle.compose.LifecyclePauseOrDisposeEffectResult> r9, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r10, final int r11, final int r12) {
        /*
            Method dump skipped, instructions count: 284
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.lifecycle.compose.LifecycleEffectKt.LifecycleResumeEffect(java.lang.Object[], androidx.lifecycle.LifecycleOwner, kotlin.jvm.functions.Function1, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x008c, code lost:
        if ((r12 & 2) != 0) goto L39;
     */
    @androidx.compose.runtime.Composable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void LifecycleStartEffect(@org.jetbrains.annotations.NotNull final java.lang.Object[] r7, @org.jetbrains.annotations.Nullable androidx.lifecycle.LifecycleOwner r8, @org.jetbrains.annotations.NotNull final kotlin.jvm.functions.Function1<? super androidx.lifecycle.compose.LifecycleStartStopEffectScope, ? extends androidx.lifecycle.compose.LifecycleStopOrDisposeEffectResult> r9, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r10, final int r11, final int r12) {
        /*
            Method dump skipped, instructions count: 284
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.lifecycle.compose.LifecycleEffectKt.LifecycleStartEffect(java.lang.Object[], androidx.lifecycle.LifecycleOwner, kotlin.jvm.functions.Function1, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0026, code lost:
        if ((r8 & 1) != 0) goto L12;
     */
    @ms.c
    @androidx.compose.runtime.Composable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void LifecycleResumeEffect(@org.jetbrains.annotations.Nullable final androidx.lifecycle.LifecycleOwner r4, @org.jetbrains.annotations.NotNull final kotlin.jvm.functions.Function1<? super androidx.lifecycle.compose.LifecycleResumePauseEffectScope, ? extends androidx.lifecycle.compose.LifecyclePauseOrDisposeEffectResult> r5, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r6, final int r7, final int r8) {
        /*
            r0 = -747476210(0xffffffffd3726b0e, float:-1.04117817E12)
            androidx.compose.runtime.Composer r6 = r6.startRestartGroup(r0)
            r1 = r7 & 1
            r2 = 1
            if (r1 == 0) goto Le
            r3 = r2
            goto Lf
        Le:
            r3 = 0
        Lf:
            boolean r3 = r6.shouldExecute(r3, r1)
            if (r3 == 0) goto L51
            r6.startDefaults()
            if (r1 == 0) goto L2b
            boolean r4 = r6.getDefaultsInvalid()
            if (r4 == 0) goto L21
            goto L2b
        L21:
            r6.skipToGroupEnd()
            r4 = r8 & 1
            if (r4 == 0) goto L3a
        L28:
            r7 = r7 & (-15)
            goto L3a
        L2b:
            r4 = r8 & 1
            if (r4 == 0) goto L3a
            androidx.compose.runtime.ProvidableCompositionLocal r4 = androidx.lifecycle.compose.LocalLifecycleOwnerKt.getLocalLifecycleOwner()
            java.lang.Object r4 = r6.consume(r4)
            androidx.lifecycle.LifecycleOwner r4 = (androidx.lifecycle.LifecycleOwner) r4
            goto L28
        L3a:
            r6.endDefaults()
            boolean r4 = androidx.compose.runtime.ComposerKt.isTraceInProgress()
            if (r4 == 0) goto L49
            r4 = -1
            java.lang.String r5 = "androidx.lifecycle.compose.LifecycleResumeEffect (LifecycleEffect.kt:656)"
            androidx.compose.runtime.ComposerKt.traceEventStart(r0, r7, r4, r5)
        L49:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "LifecycleResumeEffect must provide one or more 'key' parameters that define the identity of the LifecycleResumeEffect and determine when its previous effect coroutine should be cancelled and a new effect launched for the new key."
            r4.<init>(r5)
            throw r4
        L51:
            r6.skipToGroupEnd()
            androidx.compose.runtime.ScopeUpdateScope r6 = r6.endRestartGroup()
            if (r6 == 0) goto L62
            androidx.lifecycle.compose.p r0 = new androidx.lifecycle.compose.p
            r0.<init>()
            r6.updateScope(r0)
        L62:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.lifecycle.compose.LifecycleEffectKt.LifecycleResumeEffect(androidx.lifecycle.LifecycleOwner, kotlin.jvm.functions.Function1, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0026, code lost:
        if ((r8 & 1) != 0) goto L12;
     */
    @ms.c
    @androidx.compose.runtime.Composable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void LifecycleStartEffect(@org.jetbrains.annotations.Nullable final androidx.lifecycle.LifecycleOwner r4, @org.jetbrains.annotations.NotNull final kotlin.jvm.functions.Function1<? super androidx.lifecycle.compose.LifecycleStartStopEffectScope, ? extends androidx.lifecycle.compose.LifecycleStopOrDisposeEffectResult> r5, @org.jetbrains.annotations.Nullable androidx.compose.runtime.Composer r6, final int r7, final int r8) {
        /*
            r0 = -50807951(0xfffffffffcf8bb71, float:-1.0331931E37)
            androidx.compose.runtime.Composer r6 = r6.startRestartGroup(r0)
            r1 = r7 & 1
            r2 = 1
            if (r1 == 0) goto Le
            r3 = r2
            goto Lf
        Le:
            r3 = 0
        Lf:
            boolean r3 = r6.shouldExecute(r3, r1)
            if (r3 == 0) goto L51
            r6.startDefaults()
            if (r1 == 0) goto L2b
            boolean r4 = r6.getDefaultsInvalid()
            if (r4 == 0) goto L21
            goto L2b
        L21:
            r6.skipToGroupEnd()
            r4 = r8 & 1
            if (r4 == 0) goto L3a
        L28:
            r7 = r7 & (-15)
            goto L3a
        L2b:
            r4 = r8 & 1
            if (r4 == 0) goto L3a
            androidx.compose.runtime.ProvidableCompositionLocal r4 = androidx.lifecycle.compose.LocalLifecycleOwnerKt.getLocalLifecycleOwner()
            java.lang.Object r4 = r6.consume(r4)
            androidx.lifecycle.LifecycleOwner r4 = (androidx.lifecycle.LifecycleOwner) r4
            goto L28
        L3a:
            r6.endDefaults()
            boolean r4 = androidx.compose.runtime.ComposerKt.isTraceInProgress()
            if (r4 == 0) goto L49
            r4 = -1
            java.lang.String r5 = "androidx.lifecycle.compose.LifecycleStartEffect (LifecycleEffect.kt:333)"
            androidx.compose.runtime.ComposerKt.traceEventStart(r0, r7, r4, r5)
        L49:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "LifecycleStartEffect must provide one or more 'key' parameters that define the identity of the LifecycleStartEffect and determine when its previous effect coroutine should be cancelled and a new effect launched for the new key."
            r4.<init>(r5)
            throw r4
        L51:
            r6.skipToGroupEnd()
            androidx.compose.runtime.ScopeUpdateScope r6 = r6.endRestartGroup()
            if (r6 == 0) goto L62
            androidx.lifecycle.compose.c r0 = new androidx.lifecycle.compose.c
            r0.<init>()
            r6.updateScope(r0)
        L62:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.lifecycle.compose.LifecycleEffectKt.LifecycleStartEffect(androidx.lifecycle.LifecycleOwner, kotlin.jvm.functions.Function1, androidx.compose.runtime.Composer, int, int):void");
    }
}
