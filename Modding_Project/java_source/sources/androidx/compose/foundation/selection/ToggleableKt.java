package androidx.compose.foundation.selection;

import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.Clickable_androidKt;
import androidx.compose.foundation.FocusableKt;
import androidx.compose.foundation.HoverableKt;
import androidx.compose.foundation.Indication;
import androidx.compose.foundation.IndicationKt;
import androidx.compose.foundation.gestures.ScrollableKt;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.modifier.ModifierLocalConsumer;
import androidx.compose.ui.modifier.ModifierLocalReadScope;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.state.ToggleableState;
import androidx.compose.ui.state.ToggleableStateKt;
import at.n;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Toggleable.kt */
@Metadata
/* loaded from: classes.dex */
public final class ToggleableKt {
    @NotNull
    /* renamed from: toggleable-O2vRcR0  reason: not valid java name */
    public static final Modifier m668toggleableO2vRcR0(@NotNull Modifier toggleable, final boolean z10, @NotNull final MutableInteractionSource interactionSource, @Nullable final Indication indication, final boolean z11, @Nullable final Role role, @NotNull final Function1<? super Boolean, Unit> onValueChange) {
        Function1<InspectorInfo, Unit> noInspectorInfo;
        Intrinsics.checkNotNullParameter(toggleable, "$this$toggleable");
        Intrinsics.checkNotNullParameter(interactionSource, "interactionSource");
        Intrinsics.checkNotNullParameter(onValueChange, "onValueChange");
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.selection.ToggleableKt$toggleable-O2vRcR0$$inlined$debugInspectorInfo$1
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
                    inspectorInfo.setName("toggleable");
                    inspectorInfo.getProperties().set(AppMeasurementSdk.ConditionalUserProperty.VALUE, Boolean.valueOf(z10));
                    inspectorInfo.getProperties().set("interactionSource", interactionSource);
                    inspectorInfo.getProperties().set("indication", indication);
                    inspectorInfo.getProperties().set("enabled", Boolean.valueOf(z11));
                    inspectorInfo.getProperties().set("role", role);
                    inspectorInfo.getProperties().set("onValueChange", onValueChange);
                }
            };
        } else {
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        return InspectableValueKt.inspectableWrapper(toggleable, noInspectorInfo, m672toggleableImpl3WzHGRc(Modifier.Companion, ToggleableStateKt.ToggleableState(z10), z11, role, interactionSource, indication, new Function0<Unit>() { // from class: androidx.compose.foundation.selection.ToggleableKt$toggleable$4$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                onValueChange.invoke(Boolean.valueOf(!z10));
            }
        }));
    }

    /* renamed from: toggleable-O2vRcR0$default  reason: not valid java name */
    public static /* synthetic */ Modifier m669toggleableO2vRcR0$default(Modifier modifier, boolean z10, MutableInteractionSource mutableInteractionSource, Indication indication, boolean z11, Role role, Function1 function1, int i10, Object obj) {
        if ((i10 & 8) != 0) {
            z11 = true;
        }
        boolean z12 = z11;
        if ((i10 & 16) != 0) {
            role = null;
        }
        return m668toggleableO2vRcR0(modifier, z10, mutableInteractionSource, indication, z12, role, function1);
    }

    @NotNull
    /* renamed from: toggleable-XHw0xAI  reason: not valid java name */
    public static final Modifier m670toggleableXHw0xAI(@NotNull Modifier toggleable, final boolean z10, final boolean z11, @Nullable final Role role, @NotNull final Function1<? super Boolean, Unit> onValueChange) {
        Function1<InspectorInfo, Unit> noInspectorInfo;
        Intrinsics.checkNotNullParameter(toggleable, "$this$toggleable");
        Intrinsics.checkNotNullParameter(onValueChange, "onValueChange");
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.selection.ToggleableKt$toggleable-XHw0xAI$$inlined$debugInspectorInfo$1
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
                    inspectorInfo.setName("toggleable");
                    inspectorInfo.getProperties().set(AppMeasurementSdk.ConditionalUserProperty.VALUE, Boolean.valueOf(z10));
                    inspectorInfo.getProperties().set("enabled", Boolean.valueOf(z11));
                    inspectorInfo.getProperties().set("role", role);
                    inspectorInfo.getProperties().set("onValueChange", onValueChange);
                }
            };
        } else {
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        return ComposedModifierKt.composed(toggleable, noInspectorInfo, new n<Modifier, Composer, Integer, Modifier>() { // from class: androidx.compose.foundation.selection.ToggleableKt$toggleable$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
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
                Modifier m672toggleableImpl3WzHGRc;
                Intrinsics.checkNotNullParameter(composed, "$this$composed");
                composer.startReplaceableGroup(290332169);
                ToggleableState ToggleableState = ToggleableStateKt.ToggleableState(z10);
                composer.startReplaceableGroup(-492369756);
                Object rememberedValue = composer.rememberedValue();
                if (rememberedValue == Composer.Companion.getEmpty()) {
                    rememberedValue = InteractionSourceKt.MutableInteractionSource();
                    composer.updateRememberedValue(rememberedValue);
                }
                composer.endReplaceableGroup();
                Indication indication = (Indication) composer.consume(IndicationKt.getLocalIndication());
                boolean z12 = z11;
                Role role2 = role;
                final Function1<Boolean, Unit> function1 = onValueChange;
                final boolean z13 = z10;
                m672toggleableImpl3WzHGRc = ToggleableKt.m672toggleableImpl3WzHGRc(composed, ToggleableState, z12, role2, (MutableInteractionSource) rememberedValue, indication, new Function0<Unit>() { // from class: androidx.compose.foundation.selection.ToggleableKt$toggleable$2.2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Unit invoke() {
                        invoke2();
                        return Unit.f60915a;
                    }

                    /* renamed from: invoke  reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        function1.invoke(Boolean.valueOf(!z13));
                    }
                });
                composer.endReplaceableGroup();
                return m672toggleableImpl3WzHGRc;
            }
        });
    }

    /* renamed from: toggleable-XHw0xAI$default  reason: not valid java name */
    public static /* synthetic */ Modifier m671toggleableXHw0xAI$default(Modifier modifier, boolean z10, boolean z11, Role role, Function1 function1, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z11 = true;
        }
        if ((i10 & 4) != 0) {
            role = null;
        }
        return m670toggleableXHw0xAI(modifier, z10, z11, role, function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: toggleableImpl-3WzHGRc  reason: not valid java name */
    public static final Modifier m672toggleableImpl3WzHGRc(Modifier modifier, final ToggleableState toggleableState, final boolean z10, final Role role, final MutableInteractionSource mutableInteractionSource, final Indication indication, final Function0<Unit> function0) {
        return ComposedModifierKt.composed$default(modifier, null, new n<Modifier, Composer, Integer, Modifier>() { // from class: androidx.compose.foundation.selection.ToggleableKt$toggleableImpl$1
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
                composer.startReplaceableGroup(2121285826);
                composer.startReplaceableGroup(-492369756);
                Object rememberedValue = composer.rememberedValue();
                Composer.Companion companion = Composer.Companion;
                if (rememberedValue == companion.getEmpty()) {
                    rememberedValue = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
                    composer.updateRememberedValue(rememberedValue);
                }
                composer.endReplaceableGroup();
                MutableState mutableState = (MutableState) rememberedValue;
                Modifier.Companion companion2 = Modifier.Companion;
                final Role role2 = role;
                final ToggleableState toggleableState2 = toggleableState;
                final boolean z11 = z10;
                final Function0<Unit> function02 = function0;
                Modifier semantics = SemanticsModifierKt.semantics(companion2, true, new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.foundation.selection.ToggleableKt$toggleableImpl$1$semantics$1
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
                    public final void invoke2(@NotNull SemanticsPropertyReceiver semantics2) {
                        Intrinsics.checkNotNullParameter(semantics2, "$this$semantics");
                        Role role3 = Role.this;
                        if (role3 != null) {
                            SemanticsPropertiesKt.m3608setRolekuIjeqM(semantics2, role3.m3594unboximpl());
                        }
                        SemanticsPropertiesKt.setToggleableState(semantics2, toggleableState2);
                        final Function0<Unit> function03 = function02;
                        SemanticsPropertiesKt.onClick$default(semantics2, null, new Function0<Boolean>() { // from class: androidx.compose.foundation.selection.ToggleableKt$toggleableImpl$1$semantics$1.1
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
                        }, 1, null);
                        if (z11) {
                            return;
                        }
                        SemanticsPropertiesKt.disabled(semantics2);
                    }
                });
                State rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(function0, composer, 0);
                composer.startReplaceableGroup(-2134919160);
                if (z10) {
                    ClickableKt.PressedInteractionSourceDisposableEffect(mutableInteractionSource, mutableState, composer, 48);
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
                Modifier pointerInput = SuspendingPointerInputFilterKt.pointerInput(companion2, mutableInteractionSource, Boolean.valueOf(z10), new ToggleableKt$toggleableImpl$1$gestures$1(z10, mutableInteractionSource, mutableState, SnapshotStateKt.rememberUpdatedState(new Function0<Boolean>() { // from class: androidx.compose.foundation.selection.ToggleableKt$toggleableImpl$1$delayPressInteraction$1
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
                }, composer, 0), rememberUpdatedState, null));
                composer.startReplaceableGroup(-492369756);
                Object rememberedValue3 = composer.rememberedValue();
                if (rememberedValue3 == companion.getEmpty()) {
                    rememberedValue3 = new ModifierLocalConsumer() { // from class: androidx.compose.foundation.selection.ToggleableKt$toggleableImpl$1$1$1
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
                Modifier then = FocusableKt.focusableInNonTouchMode(HoverableKt.hoverable(IndicationKt.indication(composed.then((Modifier) rememberedValue3).then(semantics), mutableInteractionSource, indication), mutableInteractionSource, z10), z10, mutableInteractionSource).then(pointerInput);
                composer.endReplaceableGroup();
                return then;
            }
        }, 1, null);
    }

    /* renamed from: toggleableImpl-3WzHGRc$default  reason: not valid java name */
    static /* synthetic */ Modifier m673toggleableImpl3WzHGRc$default(Modifier modifier, ToggleableState toggleableState, boolean z10, Role role, MutableInteractionSource mutableInteractionSource, Indication indication, Function0 function0, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            role = null;
        }
        return m672toggleableImpl3WzHGRc(modifier, toggleableState, z10, role, mutableInteractionSource, indication, function0);
    }

    @NotNull
    /* renamed from: triStateToggleable-O2vRcR0  reason: not valid java name */
    public static final Modifier m674triStateToggleableO2vRcR0(@NotNull Modifier triStateToggleable, @NotNull final ToggleableState state, @NotNull final MutableInteractionSource interactionSource, @Nullable final Indication indication, final boolean z10, @Nullable final Role role, @NotNull final Function0<Unit> onClick) {
        Function1<InspectorInfo, Unit> noInspectorInfo;
        Intrinsics.checkNotNullParameter(triStateToggleable, "$this$triStateToggleable");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(interactionSource, "interactionSource");
        Intrinsics.checkNotNullParameter(onClick, "onClick");
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.selection.ToggleableKt$triStateToggleable-O2vRcR0$$inlined$debugInspectorInfo$1
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
                    inspectorInfo.setName("triStateToggleable");
                    inspectorInfo.getProperties().set("state", ToggleableState.this);
                    inspectorInfo.getProperties().set("enabled", Boolean.valueOf(z10));
                    inspectorInfo.getProperties().set("role", role);
                    inspectorInfo.getProperties().set("interactionSource", interactionSource);
                    inspectorInfo.getProperties().set("indication", indication);
                    inspectorInfo.getProperties().set("onClick", onClick);
                }
            };
        } else {
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        return InspectableValueKt.inspectableWrapper(triStateToggleable, noInspectorInfo, m672toggleableImpl3WzHGRc(Modifier.Companion, state, z10, role, interactionSource, indication, onClick));
    }

    /* renamed from: triStateToggleable-O2vRcR0$default  reason: not valid java name */
    public static /* synthetic */ Modifier m675triStateToggleableO2vRcR0$default(Modifier modifier, ToggleableState toggleableState, MutableInteractionSource mutableInteractionSource, Indication indication, boolean z10, Role role, Function0 function0, int i10, Object obj) {
        if ((i10 & 8) != 0) {
            z10 = true;
        }
        boolean z11 = z10;
        if ((i10 & 16) != 0) {
            role = null;
        }
        return m674triStateToggleableO2vRcR0(modifier, toggleableState, mutableInteractionSource, indication, z11, role, function0);
    }

    @NotNull
    /* renamed from: triStateToggleable-XHw0xAI  reason: not valid java name */
    public static final Modifier m676triStateToggleableXHw0xAI(@NotNull Modifier triStateToggleable, @NotNull final ToggleableState state, final boolean z10, @Nullable final Role role, @NotNull final Function0<Unit> onClick) {
        Function1<InspectorInfo, Unit> noInspectorInfo;
        Intrinsics.checkNotNullParameter(triStateToggleable, "$this$triStateToggleable");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(onClick, "onClick");
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.selection.ToggleableKt$triStateToggleable-XHw0xAI$$inlined$debugInspectorInfo$1
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
                    inspectorInfo.setName("triStateToggleable");
                    inspectorInfo.getProperties().set("state", ToggleableState.this);
                    inspectorInfo.getProperties().set("enabled", Boolean.valueOf(z10));
                    inspectorInfo.getProperties().set("role", role);
                    inspectorInfo.getProperties().set("onClick", onClick);
                }
            };
        } else {
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        return ComposedModifierKt.composed(triStateToggleable, noInspectorInfo, new n<Modifier, Composer, Integer, Modifier>() { // from class: androidx.compose.foundation.selection.ToggleableKt$triStateToggleable$2
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
                Modifier m672toggleableImpl3WzHGRc;
                Intrinsics.checkNotNullParameter(composed, "$this$composed");
                composer.startReplaceableGroup(-1808118329);
                ToggleableState toggleableState = ToggleableState.this;
                boolean z11 = z10;
                Role role2 = role;
                composer.startReplaceableGroup(-492369756);
                Object rememberedValue = composer.rememberedValue();
                if (rememberedValue == Composer.Companion.getEmpty()) {
                    rememberedValue = InteractionSourceKt.MutableInteractionSource();
                    composer.updateRememberedValue(rememberedValue);
                }
                composer.endReplaceableGroup();
                m672toggleableImpl3WzHGRc = ToggleableKt.m672toggleableImpl3WzHGRc(composed, toggleableState, z11, role2, (MutableInteractionSource) rememberedValue, (Indication) composer.consume(IndicationKt.getLocalIndication()), onClick);
                composer.endReplaceableGroup();
                return m672toggleableImpl3WzHGRc;
            }
        });
    }

    /* renamed from: triStateToggleable-XHw0xAI$default  reason: not valid java name */
    public static /* synthetic */ Modifier m677triStateToggleableXHw0xAI$default(Modifier modifier, ToggleableState toggleableState, boolean z10, Role role, Function0 function0, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = true;
        }
        if ((i10 & 4) != 0) {
            role = null;
        }
        return m676triStateToggleableXHw0xAI(modifier, toggleableState, z10, role, function0);
    }
}
