package androidx.compose.foundation;

import androidx.compose.foundation.gestures.PressGestureScope;
import androidx.compose.foundation.gestures.ScrollableKt;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.input.key.KeyEvent;
import androidx.compose.ui.input.key.KeyInputModifierKt;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.modifier.ModifierLocalConsumer;
import androidx.compose.ui.modifier.ModifierLocalReadScope;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import at.n;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: Clickable.kt */
@Metadata
/* loaded from: classes.dex */
public final class ClickableKt {
    @Composable
    public static final void PressedInteractionSourceDisposableEffect(@NotNull final MutableInteractionSource interactionSource, @NotNull final MutableState<PressInteraction.Press> pressedInteraction, @Nullable Composer composer, final int i10) {
        int i11;
        int i12;
        int i13;
        Intrinsics.checkNotNullParameter(interactionSource, "interactionSource");
        Intrinsics.checkNotNullParameter(pressedInteraction, "pressedInteraction");
        Composer startRestartGroup = composer.startRestartGroup(1761107222);
        if ((i10 & 14) == 0) {
            if (startRestartGroup.changed(interactionSource)) {
                i13 = 4;
            } else {
                i13 = 2;
            }
            i11 = i13 | i10;
        } else {
            i11 = i10;
        }
        if ((i10 & 112) == 0) {
            if (startRestartGroup.changed(pressedInteraction)) {
                i12 = 32;
            } else {
                i12 = 16;
            }
            i11 |= i12;
        }
        if ((i11 & 91) == 18 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
        } else {
            startRestartGroup.startReplaceableGroup(511388516);
            boolean changed = startRestartGroup.changed(pressedInteraction) | startRestartGroup.changed(interactionSource);
            Object rememberedValue = startRestartGroup.rememberedValue();
            if (changed || rememberedValue == Composer.Companion.getEmpty()) {
                rememberedValue = new Function1<DisposableEffectScope, DisposableEffectResult>() { // from class: androidx.compose.foundation.ClickableKt$PressedInteractionSourceDisposableEffect$1$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final DisposableEffectResult invoke(@NotNull DisposableEffectScope DisposableEffect) {
                        Intrinsics.checkNotNullParameter(DisposableEffect, "$this$DisposableEffect");
                        final MutableState<PressInteraction.Press> mutableState = pressedInteraction;
                        final MutableInteractionSource mutableInteractionSource = interactionSource;
                        return new DisposableEffectResult() { // from class: androidx.compose.foundation.ClickableKt$PressedInteractionSourceDisposableEffect$1$1$invoke$$inlined$onDispose$1
                            @Override // androidx.compose.runtime.DisposableEffectResult
                            public void dispose() {
                                PressInteraction.Press press = (PressInteraction.Press) MutableState.this.getValue();
                                if (press != null) {
                                    mutableInteractionSource.tryEmit(new PressInteraction.Cancel(press));
                                    MutableState.this.setValue(null);
                                }
                            }
                        };
                    }
                };
                startRestartGroup.updateRememberedValue(rememberedValue);
            }
            startRestartGroup.endReplaceableGroup();
            EffectsKt.DisposableEffect(interactionSource, (Function1) rememberedValue, startRestartGroup, i11 & 14);
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.foundation.ClickableKt$PressedInteractionSourceDisposableEffect$2
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                    invoke(composer2, num.intValue());
                    return Unit.f60915a;
                }

                public final void invoke(@Nullable Composer composer2, int i14) {
                    ClickableKt.PressedInteractionSourceDisposableEffect(MutableInteractionSource.this, pressedInteraction, composer2, i10 | 1);
                }
            });
        }
    }

    @NotNull
    /* renamed from: clickable-O2vRcR0  reason: not valid java name */
    public static final Modifier m216clickableO2vRcR0(@NotNull Modifier clickable, @NotNull final MutableInteractionSource interactionSource, @Nullable final Indication indication, final boolean z10, @Nullable final String str, @Nullable final Role role, @NotNull final Function0<Unit> onClick) {
        Function1<InspectorInfo, Unit> noInspectorInfo;
        Intrinsics.checkNotNullParameter(clickable, "$this$clickable");
        Intrinsics.checkNotNullParameter(interactionSource, "interactionSource");
        Intrinsics.checkNotNullParameter(onClick, "onClick");
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.ClickableKt$clickable-O2vRcR0$$inlined$debugInspectorInfo$1
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
                    inspectorInfo.setName("clickable");
                    inspectorInfo.getProperties().set("enabled", Boolean.valueOf(z10));
                    inspectorInfo.getProperties().set("onClickLabel", str);
                    inspectorInfo.getProperties().set("role", role);
                    inspectorInfo.getProperties().set("onClick", onClick);
                    inspectorInfo.getProperties().set("indication", indication);
                    inspectorInfo.getProperties().set("interactionSource", interactionSource);
                }
            };
        } else {
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        return ComposedModifierKt.composed(clickable, noInspectorInfo, new n<Modifier, Composer, Integer, Modifier>() { // from class: androidx.compose.foundation.ClickableKt$clickable$4
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(3);
            }

            @Override // at.n
            public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier, Composer composer, Integer num) {
                return invoke(modifier, composer, num.intValue());
            }

            @Composable
            @NotNull
            public final Modifier invoke(@NotNull Modifier composed, @Nullable Composer composer, int i10) {
                Intrinsics.checkNotNullParameter(composed, "$this$composed");
                composer.startReplaceableGroup(92076020);
                State rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(onClick, composer, 0);
                composer.startReplaceableGroup(-492369756);
                Object rememberedValue = composer.rememberedValue();
                Composer.Companion companion = Composer.Companion;
                if (rememberedValue == companion.getEmpty()) {
                    rememberedValue = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
                    composer.updateRememberedValue(rememberedValue);
                }
                composer.endReplaceableGroup();
                MutableState mutableState = (MutableState) rememberedValue;
                composer.startReplaceableGroup(1841981204);
                if (z10) {
                    ClickableKt.PressedInteractionSourceDisposableEffect(interactionSource, mutableState, composer, 48);
                }
                composer.endReplaceableGroup();
                final Function0<Boolean> isComposeRootInScrollableContainer = Clickable_androidKt.isComposeRootInScrollableContainer(composer, 0);
                composer.startReplaceableGroup(-492369756);
                Object rememberedValue2 = composer.rememberedValue();
                if (rememberedValue2 == companion.getEmpty()) {
                    rememberedValue2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.TRUE, null, 2, null);
                    composer.updateRememberedValue(rememberedValue2);
                }
                composer.endReplaceableGroup();
                final MutableState mutableState2 = (MutableState) rememberedValue2;
                State rememberUpdatedState2 = SnapshotStateKt.rememberUpdatedState(new Function0<Boolean>() { // from class: androidx.compose.foundation.ClickableKt$clickable$4$delayPressInteraction$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // kotlin.jvm.functions.Function0
                    @NotNull
                    public final Boolean invoke() {
                        return Boolean.valueOf(mutableState2.getValue().booleanValue() || isComposeRootInScrollableContainer.invoke().booleanValue());
                    }
                }, composer, 0);
                Modifier.Companion companion2 = Modifier.Companion;
                Modifier pointerInput = SuspendingPointerInputFilterKt.pointerInput(companion2, interactionSource, Boolean.valueOf(z10), new ClickableKt$clickable$4$gesture$1(z10, interactionSource, mutableState, rememberUpdatedState2, rememberUpdatedState, null));
                composer.startReplaceableGroup(-492369756);
                Object rememberedValue3 = composer.rememberedValue();
                if (rememberedValue3 == companion.getEmpty()) {
                    rememberedValue3 = new ModifierLocalConsumer() { // from class: androidx.compose.foundation.ClickableKt$clickable$4$1$1
                        /* JADX WARN: Multi-variable type inference failed */
                        @Override // androidx.compose.ui.modifier.ModifierLocalConsumer
                        public void onModifierLocalsUpdated(@NotNull ModifierLocalReadScope scope) {
                            Intrinsics.checkNotNullParameter(scope, "scope");
                            mutableState2.setValue(scope.getCurrent(ScrollableKt.getModifierLocalScrollableContainer()));
                        }
                    };
                    composer.updateRememberedValue(rememberedValue3);
                }
                composer.endReplaceableGroup();
                Modifier m224genericClickableWithoutGestureBILeDI = ClickableKt.m224genericClickableWithoutGestureBILeDI(companion2.then((Modifier) rememberedValue3), pointerInput, interactionSource, indication, z10, str, role, null, null, onClick);
                composer.endReplaceableGroup();
                return m224genericClickableWithoutGestureBILeDI;
            }
        });
    }

    /* renamed from: clickable-O2vRcR0$default  reason: not valid java name */
    public static /* synthetic */ Modifier m217clickableO2vRcR0$default(Modifier modifier, MutableInteractionSource mutableInteractionSource, Indication indication, boolean z10, String str, Role role, Function0 function0, int i10, Object obj) {
        String str2;
        Role role2;
        if ((i10 & 4) != 0) {
            z10 = true;
        }
        boolean z11 = z10;
        if ((i10 & 8) != 0) {
            str2 = null;
        } else {
            str2 = str;
        }
        if ((i10 & 16) != 0) {
            role2 = null;
        } else {
            role2 = role;
        }
        return m216clickableO2vRcR0(modifier, mutableInteractionSource, indication, z11, str2, role2, function0);
    }

    @NotNull
    /* renamed from: clickable-XHw0xAI  reason: not valid java name */
    public static final Modifier m218clickableXHw0xAI(@NotNull Modifier clickable, final boolean z10, @Nullable final String str, @Nullable final Role role, @NotNull final Function0<Unit> onClick) {
        Function1<InspectorInfo, Unit> noInspectorInfo;
        Intrinsics.checkNotNullParameter(clickable, "$this$clickable");
        Intrinsics.checkNotNullParameter(onClick, "onClick");
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.ClickableKt$clickable-XHw0xAI$$inlined$debugInspectorInfo$1
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
                    inspectorInfo.setName("clickable");
                    inspectorInfo.getProperties().set("enabled", Boolean.valueOf(z10));
                    inspectorInfo.getProperties().set("onClickLabel", str);
                    inspectorInfo.getProperties().set("role", role);
                    inspectorInfo.getProperties().set("onClick", onClick);
                }
            };
        } else {
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        return ComposedModifierKt.composed(clickable, noInspectorInfo, new n<Modifier, Composer, Integer, Modifier>() { // from class: androidx.compose.foundation.ClickableKt$clickable$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(3);
            }

            @Override // at.n
            public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier, Composer composer, Integer num) {
                return invoke(modifier, composer, num.intValue());
            }

            @Composable
            @NotNull
            public final Modifier invoke(@NotNull Modifier composed, @Nullable Composer composer, int i10) {
                Intrinsics.checkNotNullParameter(composed, "$this$composed");
                composer.startReplaceableGroup(-756081143);
                Modifier.Companion companion = Modifier.Companion;
                Indication indication = (Indication) composer.consume(IndicationKt.getLocalIndication());
                composer.startReplaceableGroup(-492369756);
                Object rememberedValue = composer.rememberedValue();
                if (rememberedValue == Composer.Companion.getEmpty()) {
                    rememberedValue = InteractionSourceKt.MutableInteractionSource();
                    composer.updateRememberedValue(rememberedValue);
                }
                composer.endReplaceableGroup();
                Modifier m216clickableO2vRcR0 = ClickableKt.m216clickableO2vRcR0(companion, (MutableInteractionSource) rememberedValue, indication, z10, str, role, onClick);
                composer.endReplaceableGroup();
                return m216clickableO2vRcR0;
            }
        });
    }

    /* renamed from: clickable-XHw0xAI$default  reason: not valid java name */
    public static /* synthetic */ Modifier m219clickableXHw0xAI$default(Modifier modifier, boolean z10, String str, Role role, Function0 function0, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = true;
        }
        if ((i10 & 2) != 0) {
            str = null;
        }
        if ((i10 & 4) != 0) {
            role = null;
        }
        return m218clickableXHw0xAI(modifier, z10, str, role, function0);
    }

    @ExperimentalFoundationApi
    @NotNull
    /* renamed from: combinedClickable-XVZzFYc  reason: not valid java name */
    public static final Modifier m220combinedClickableXVZzFYc(@NotNull Modifier combinedClickable, @NotNull final MutableInteractionSource interactionSource, @Nullable final Indication indication, final boolean z10, @Nullable final String str, @Nullable final Role role, @Nullable final String str2, @Nullable final Function0<Unit> function0, @Nullable final Function0<Unit> function02, @NotNull final Function0<Unit> onClick) {
        Function1<InspectorInfo, Unit> noInspectorInfo;
        Intrinsics.checkNotNullParameter(combinedClickable, "$this$combinedClickable");
        Intrinsics.checkNotNullParameter(interactionSource, "interactionSource");
        Intrinsics.checkNotNullParameter(onClick, "onClick");
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.ClickableKt$combinedClickable-XVZzFYc$$inlined$debugInspectorInfo$1
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
                    inspectorInfo.setName("combinedClickable");
                    inspectorInfo.getProperties().set("enabled", Boolean.valueOf(z10));
                    inspectorInfo.getProperties().set("onClickLabel", str);
                    inspectorInfo.getProperties().set("role", role);
                    inspectorInfo.getProperties().set("onClick", onClick);
                    inspectorInfo.getProperties().set("onDoubleClick", function02);
                    inspectorInfo.getProperties().set("onLongClick", function0);
                    inspectorInfo.getProperties().set("onLongClickLabel", str2);
                    inspectorInfo.getProperties().set("indication", indication);
                    inspectorInfo.getProperties().set("interactionSource", interactionSource);
                }
            };
        } else {
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        return ComposedModifierKt.composed(combinedClickable, noInspectorInfo, new n<Modifier, Composer, Integer, Modifier>() { // from class: androidx.compose.foundation.ClickableKt$combinedClickable$4
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(3);
            }

            @Override // at.n
            public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier, Composer composer, Integer num) {
                return invoke(modifier, composer, num.intValue());
            }

            @Composable
            @NotNull
            public final Modifier invoke(@NotNull Modifier composed, @Nullable Composer composer, int i10) {
                Intrinsics.checkNotNullParameter(composed, "$this$composed");
                composer.startReplaceableGroup(1841718000);
                State rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(onClick, composer, 0);
                State rememberUpdatedState2 = SnapshotStateKt.rememberUpdatedState(function0, composer, 0);
                State rememberUpdatedState3 = SnapshotStateKt.rememberUpdatedState(function02, composer, 0);
                boolean z11 = function0 != null;
                boolean z12 = function02 != null;
                composer.startReplaceableGroup(-492369756);
                Object rememberedValue = composer.rememberedValue();
                Composer.Companion companion = Composer.Companion;
                if (rememberedValue == companion.getEmpty()) {
                    rememberedValue = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
                    composer.updateRememberedValue(rememberedValue);
                }
                composer.endReplaceableGroup();
                final MutableState mutableState = (MutableState) rememberedValue;
                composer.startReplaceableGroup(1321106866);
                if (z10) {
                    Boolean valueOf = Boolean.valueOf(z11);
                    final MutableInteractionSource mutableInteractionSource = interactionSource;
                    EffectsKt.DisposableEffect(valueOf, new Function1<DisposableEffectScope, DisposableEffectResult>() { // from class: androidx.compose.foundation.ClickableKt$combinedClickable$4.1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        @NotNull
                        public final DisposableEffectResult invoke(@NotNull DisposableEffectScope DisposableEffect) {
                            Intrinsics.checkNotNullParameter(DisposableEffect, "$this$DisposableEffect");
                            final MutableState<PressInteraction.Press> mutableState2 = mutableState;
                            final MutableInteractionSource mutableInteractionSource2 = mutableInteractionSource;
                            return new DisposableEffectResult() { // from class: androidx.compose.foundation.ClickableKt$combinedClickable$4$1$invoke$$inlined$onDispose$1
                                @Override // androidx.compose.runtime.DisposableEffectResult
                                public void dispose() {
                                    PressInteraction.Press press = (PressInteraction.Press) MutableState.this.getValue();
                                    if (press != null) {
                                        mutableInteractionSource2.tryEmit(new PressInteraction.Cancel(press));
                                        MutableState.this.setValue(null);
                                    }
                                }
                            };
                        }
                    }, composer, 0);
                    ClickableKt.PressedInteractionSourceDisposableEffect(interactionSource, mutableState, composer, 48);
                }
                composer.endReplaceableGroup();
                final Function0<Boolean> isComposeRootInScrollableContainer = Clickable_androidKt.isComposeRootInScrollableContainer(composer, 0);
                composer.startReplaceableGroup(-492369756);
                Object rememberedValue2 = composer.rememberedValue();
                if (rememberedValue2 == companion.getEmpty()) {
                    rememberedValue2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.TRUE, null, 2, null);
                    composer.updateRememberedValue(rememberedValue2);
                }
                composer.endReplaceableGroup();
                final MutableState mutableState2 = (MutableState) rememberedValue2;
                State rememberUpdatedState4 = SnapshotStateKt.rememberUpdatedState(new Function0<Boolean>() { // from class: androidx.compose.foundation.ClickableKt$combinedClickable$4$delayPressInteraction$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // kotlin.jvm.functions.Function0
                    @NotNull
                    public final Boolean invoke() {
                        return Boolean.valueOf(mutableState2.getValue().booleanValue() || isComposeRootInScrollableContainer.invoke().booleanValue());
                    }
                }, composer, 0);
                Modifier.Companion companion2 = Modifier.Companion;
                Modifier pointerInput = SuspendingPointerInputFilterKt.pointerInput((Modifier) companion2, new Object[]{interactionSource, Boolean.valueOf(z11), Boolean.valueOf(z12), Boolean.valueOf(z10)}, (Function2<? super PointerInputScope, ? super c<? super Unit>, ? extends Object>) new ClickableKt$combinedClickable$4$gesture$1(z12, z10, z11, rememberUpdatedState3, rememberUpdatedState2, interactionSource, mutableState, rememberUpdatedState4, rememberUpdatedState, null));
                composer.startReplaceableGroup(-492369756);
                Object rememberedValue3 = composer.rememberedValue();
                if (rememberedValue3 == companion.getEmpty()) {
                    rememberedValue3 = new ModifierLocalConsumer() { // from class: androidx.compose.foundation.ClickableKt$combinedClickable$4$2$1
                        /* JADX WARN: Multi-variable type inference failed */
                        @Override // androidx.compose.ui.modifier.ModifierLocalConsumer
                        public void onModifierLocalsUpdated(@NotNull ModifierLocalReadScope scope) {
                            Intrinsics.checkNotNullParameter(scope, "scope");
                            mutableState2.setValue(scope.getCurrent(ScrollableKt.getModifierLocalScrollableContainer()));
                        }
                    };
                    composer.updateRememberedValue(rememberedValue3);
                }
                composer.endReplaceableGroup();
                Modifier m224genericClickableWithoutGestureBILeDI = ClickableKt.m224genericClickableWithoutGestureBILeDI(companion2.then((Modifier) rememberedValue3), pointerInput, interactionSource, indication, z10, str, role, str2, function0, onClick);
                composer.endReplaceableGroup();
                return m224genericClickableWithoutGestureBILeDI;
            }
        });
    }

    /* renamed from: combinedClickable-XVZzFYc$default  reason: not valid java name */
    public static /* synthetic */ Modifier m221combinedClickableXVZzFYc$default(Modifier modifier, MutableInteractionSource mutableInteractionSource, Indication indication, boolean z10, String str, Role role, String str2, Function0 function0, Function0 function02, Function0 function03, int i10, Object obj) {
        boolean z11;
        String str3;
        Role role2;
        String str4;
        Function0 function04;
        Function0 function05;
        if ((i10 & 4) != 0) {
            z11 = true;
        } else {
            z11 = z10;
        }
        if ((i10 & 8) != 0) {
            str3 = null;
        } else {
            str3 = str;
        }
        if ((i10 & 16) != 0) {
            role2 = null;
        } else {
            role2 = role;
        }
        if ((i10 & 32) != 0) {
            str4 = null;
        } else {
            str4 = str2;
        }
        if ((i10 & 64) != 0) {
            function04 = null;
        } else {
            function04 = function0;
        }
        if ((i10 & 128) != 0) {
            function05 = null;
        } else {
            function05 = function02;
        }
        return m220combinedClickableXVZzFYc(modifier, mutableInteractionSource, indication, z11, str3, role2, str4, function04, function05, function03);
    }

    @ExperimentalFoundationApi
    @NotNull
    /* renamed from: combinedClickable-cJG_KMw  reason: not valid java name */
    public static final Modifier m222combinedClickablecJG_KMw(@NotNull Modifier combinedClickable, final boolean z10, @Nullable final String str, @Nullable final Role role, @Nullable final String str2, @Nullable final Function0<Unit> function0, @Nullable final Function0<Unit> function02, @NotNull final Function0<Unit> onClick) {
        Function1<InspectorInfo, Unit> noInspectorInfo;
        Intrinsics.checkNotNullParameter(combinedClickable, "$this$combinedClickable");
        Intrinsics.checkNotNullParameter(onClick, "onClick");
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.ClickableKt$combinedClickable-cJG_KMw$$inlined$debugInspectorInfo$1
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
                    inspectorInfo.setName("combinedClickable");
                    inspectorInfo.getProperties().set("enabled", Boolean.valueOf(z10));
                    inspectorInfo.getProperties().set("onClickLabel", str);
                    inspectorInfo.getProperties().set("role", role);
                    inspectorInfo.getProperties().set("onClick", onClick);
                    inspectorInfo.getProperties().set("onDoubleClick", function02);
                    inspectorInfo.getProperties().set("onLongClick", function0);
                    inspectorInfo.getProperties().set("onLongClickLabel", str2);
                }
            };
        } else {
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        return ComposedModifierKt.composed(combinedClickable, noInspectorInfo, new n<Modifier, Composer, Integer, Modifier>() { // from class: androidx.compose.foundation.ClickableKt$combinedClickable$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(3);
            }

            @Override // at.n
            public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier, Composer composer, Integer num) {
                return invoke(modifier, composer, num.intValue());
            }

            @Composable
            @NotNull
            public final Modifier invoke(@NotNull Modifier composed, @Nullable Composer composer, int i10) {
                Intrinsics.checkNotNullParameter(composed, "$this$composed");
                composer.startReplaceableGroup(1969174843);
                Modifier.Companion companion = Modifier.Companion;
                Indication indication = (Indication) composer.consume(IndicationKt.getLocalIndication());
                composer.startReplaceableGroup(-492369756);
                Object rememberedValue = composer.rememberedValue();
                if (rememberedValue == Composer.Companion.getEmpty()) {
                    rememberedValue = InteractionSourceKt.MutableInteractionSource();
                    composer.updateRememberedValue(rememberedValue);
                }
                composer.endReplaceableGroup();
                Modifier m220combinedClickableXVZzFYc = ClickableKt.m220combinedClickableXVZzFYc(companion, (MutableInteractionSource) rememberedValue, indication, z10, str, role, str2, function0, function02, onClick);
                composer.endReplaceableGroup();
                return m220combinedClickableXVZzFYc;
            }
        });
    }

    /* renamed from: combinedClickable-cJG_KMw$default  reason: not valid java name */
    public static /* synthetic */ Modifier m223combinedClickablecJG_KMw$default(Modifier modifier, boolean z10, String str, Role role, String str2, Function0 function0, Function0 function02, Function0 function03, int i10, Object obj) {
        boolean z11;
        String str3;
        Role role2;
        String str4;
        Function0 function04;
        Function0 function05;
        if ((i10 & 1) != 0) {
            z11 = true;
        } else {
            z11 = z10;
        }
        if ((i10 & 2) != 0) {
            str3 = null;
        } else {
            str3 = str;
        }
        if ((i10 & 4) != 0) {
            role2 = null;
        } else {
            role2 = role;
        }
        if ((i10 & 8) != 0) {
            str4 = null;
        } else {
            str4 = str2;
        }
        if ((i10 & 16) != 0) {
            function04 = null;
        } else {
            function04 = function0;
        }
        if ((i10 & 32) != 0) {
            function05 = null;
        } else {
            function05 = function02;
        }
        return m222combinedClickablecJG_KMw(modifier, z11, str3, role2, str4, function04, function05, function03);
    }

    @NotNull
    /* renamed from: genericClickableWithoutGesture-BI-LeDI  reason: not valid java name */
    public static final Modifier m224genericClickableWithoutGestureBILeDI(@NotNull Modifier genericClickableWithoutGesture, @NotNull Modifier gestureModifiers, @NotNull MutableInteractionSource interactionSource, @Nullable Indication indication, boolean z10, @Nullable String str, @Nullable Role role, @Nullable String str2, @Nullable Function0<Unit> function0, @NotNull Function0<Unit> onClick) {
        Intrinsics.checkNotNullParameter(genericClickableWithoutGesture, "$this$genericClickableWithoutGesture");
        Intrinsics.checkNotNullParameter(gestureModifiers, "gestureModifiers");
        Intrinsics.checkNotNullParameter(interactionSource, "interactionSource");
        Intrinsics.checkNotNullParameter(onClick, "onClick");
        return FocusableKt.focusableInNonTouchMode(HoverableKt.hoverable(IndicationKt.indication(genericClickableWithoutGesture_BI_LeDI$detectClickFromKey(genericClickableWithoutGesture_BI_LeDI$clickSemantics(genericClickableWithoutGesture, role, str, function0, str2, z10, onClick), z10, onClick), interactionSource, indication), interactionSource, z10), z10, interactionSource).then(gestureModifiers);
    }

    /* renamed from: genericClickableWithoutGesture-BI-LeDI$default  reason: not valid java name */
    public static /* synthetic */ Modifier m225genericClickableWithoutGestureBILeDI$default(Modifier modifier, Modifier modifier2, MutableInteractionSource mutableInteractionSource, Indication indication, boolean z10, String str, Role role, String str2, Function0 function0, Function0 function02, int i10, Object obj) {
        boolean z11;
        String str3;
        Role role2;
        String str4;
        Function0 function03;
        if ((i10 & 8) != 0) {
            z11 = true;
        } else {
            z11 = z10;
        }
        if ((i10 & 16) != 0) {
            str3 = null;
        } else {
            str3 = str;
        }
        if ((i10 & 32) != 0) {
            role2 = null;
        } else {
            role2 = role;
        }
        if ((i10 & 64) != 0) {
            str4 = null;
        } else {
            str4 = str2;
        }
        if ((i10 & 128) != 0) {
            function03 = null;
        } else {
            function03 = function0;
        }
        return m224genericClickableWithoutGestureBILeDI(modifier, modifier2, mutableInteractionSource, indication, z11, str3, role2, str4, function03, function02);
    }

    private static final Modifier genericClickableWithoutGesture_BI_LeDI$clickSemantics(Modifier modifier, final Role role, final String str, final Function0<Unit> function0, final String str2, final boolean z10, final Function0<Unit> function02) {
        return SemanticsModifierKt.semantics(modifier, true, new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.foundation.ClickableKt$genericClickableWithoutGesture$clickSemantics$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
                invoke2(semanticsPropertyReceiver);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull SemanticsPropertyReceiver semantics) {
                Intrinsics.checkNotNullParameter(semantics, "$this$semantics");
                Role role2 = Role.this;
                if (role2 != null) {
                    SemanticsPropertiesKt.m3608setRolekuIjeqM(semantics, role2.m3594unboximpl());
                }
                String str3 = str;
                final Function0<Unit> function03 = function02;
                SemanticsPropertiesKt.onClick(semantics, str3, new Function0<Boolean>() { // from class: androidx.compose.foundation.ClickableKt$genericClickableWithoutGesture$clickSemantics$1.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // kotlin.jvm.functions.Function0
                    @NotNull
                    public final Boolean invoke() {
                        function03.invoke();
                        return Boolean.TRUE;
                    }
                });
                final Function0<Unit> function04 = function0;
                if (function04 != null) {
                    SemanticsPropertiesKt.onLongClick(semantics, str2, new Function0<Boolean>() { // from class: androidx.compose.foundation.ClickableKt$genericClickableWithoutGesture$clickSemantics$1.2
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(0);
                        }

                        /* JADX WARN: Can't rename method to resolve collision */
                        @Override // kotlin.jvm.functions.Function0
                        @NotNull
                        public final Boolean invoke() {
                            function04.invoke();
                            return Boolean.TRUE;
                        }
                    });
                }
                if (z10) {
                    return;
                }
                SemanticsPropertiesKt.disabled(semantics);
            }
        });
    }

    private static final Modifier genericClickableWithoutGesture_BI_LeDI$detectClickFromKey(Modifier modifier, final boolean z10, final Function0<Unit> function0) {
        return KeyInputModifierKt.onKeyEvent(modifier, new Function1<KeyEvent, Boolean>() { // from class: androidx.compose.foundation.ClickableKt$genericClickableWithoutGesture$detectClickFromKey$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(KeyEvent keyEvent) {
                return m233invokeZmokQxo(keyEvent.m3065unboximpl());
            }

            @NotNull
            /* renamed from: invoke-ZmokQxo  reason: not valid java name */
            public final Boolean m233invokeZmokQxo(@NotNull android.view.KeyEvent it) {
                boolean z11;
                Intrinsics.checkNotNullParameter(it, "it");
                if (z10 && Clickable_androidKt.m234isClickZmokQxo(it)) {
                    function0.invoke();
                    z11 = true;
                } else {
                    z11 = false;
                }
                return Boolean.valueOf(z11);
            }
        });
    }

    @Nullable
    /* renamed from: handlePressInteraction-EPk0efs  reason: not valid java name */
    public static final Object m226handlePressInteractionEPk0efs(@NotNull PressGestureScope pressGestureScope, long j10, @NotNull MutableInteractionSource mutableInteractionSource, @NotNull MutableState<PressInteraction.Press> mutableState, @NotNull State<? extends Function0<Boolean>> state, @NotNull c<? super Unit> cVar) {
        Object f10 = i.f(new ClickableKt$handlePressInteraction$2(pressGestureScope, j10, mutableInteractionSource, mutableState, state, null), cVar);
        if (f10 == kotlin.coroutines.intrinsics.a.f()) {
            return f10;
        }
        return Unit.f60915a;
    }
}
