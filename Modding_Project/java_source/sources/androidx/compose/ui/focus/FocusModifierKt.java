package androidx.compose.ui.focus;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.modifier.ModifierLocalKt;
import androidx.compose.ui.modifier.ModifierLocalProvider;
import androidx.compose.ui.modifier.ProvidableModifierLocal;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.platform.InspectorInfo;
import at.n;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import ms.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FocusModifier.kt */
@Metadata
/* loaded from: classes.dex */
public final class FocusModifierKt {
    @NotNull
    private static final ProvidableModifierLocal<FocusModifier> ModifierLocalParentFocusModifier = ModifierLocalKt.modifierLocalOf(new Function0<FocusModifier>() { // from class: androidx.compose.ui.focus.FocusModifierKt$ModifierLocalParentFocusModifier$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        @Nullable
        public final FocusModifier invoke() {
            return null;
        }
    });
    @NotNull
    private static final Modifier ResetFocusModifierLocals = Modifier.Companion.then(new ModifierLocalProvider<FocusPropertiesModifier>() { // from class: androidx.compose.ui.focus.FocusModifierKt$ResetFocusModifierLocals$1
        @Override // androidx.compose.ui.modifier.ModifierLocalProvider
        @NotNull
        public ProvidableModifierLocal<FocusPropertiesModifier> getKey() {
            return FocusPropertiesKt.getModifierLocalFocusProperties();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.compose.ui.modifier.ModifierLocalProvider
        @Nullable
        public FocusPropertiesModifier getValue() {
            return null;
        }
    }).then(new ModifierLocalProvider<FocusEventModifierLocal>() { // from class: androidx.compose.ui.focus.FocusModifierKt$ResetFocusModifierLocals$2
        @Override // androidx.compose.ui.modifier.ModifierLocalProvider
        @NotNull
        public ProvidableModifierLocal<FocusEventModifierLocal> getKey() {
            return FocusEventModifierKt.getModifierLocalFocusEvent();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.compose.ui.modifier.ModifierLocalProvider
        @Nullable
        public FocusEventModifierLocal getValue() {
            return null;
        }
    }).then(new ModifierLocalProvider<FocusRequesterModifierLocal>() { // from class: androidx.compose.ui.focus.FocusModifierKt$ResetFocusModifierLocals$3
        @Override // androidx.compose.ui.modifier.ModifierLocalProvider
        @NotNull
        public ProvidableModifierLocal<FocusRequesterModifierLocal> getKey() {
            return FocusRequesterModifierKt.getModifierLocalFocusRequester();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.compose.ui.modifier.ModifierLocalProvider
        @Nullable
        public FocusRequesterModifierLocal getValue() {
            return null;
        }
    });

    @c
    @NotNull
    public static final Modifier focusModifier(@NotNull Modifier modifier) {
        Function1<InspectorInfo, Unit> noInspectorInfo;
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.ui.focus.FocusModifierKt$focusModifier$$inlined$debugInspectorInfo$1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(InspectorInfo inspectorInfo) {
                    invoke2(inspectorInfo);
                    return Unit.f60915a;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull InspectorInfo inspectorInfo) {
                    Intrinsics.checkNotNullParameter(inspectorInfo, "$this$null");
                    inspectorInfo.setName("focusModifier");
                }
            };
        } else {
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        return ComposedModifierKt.composed(modifier, noInspectorInfo, new n<Modifier, Composer, Integer, Modifier>() { // from class: androidx.compose.ui.focus.FocusModifierKt$focusModifier$2
            @Override // at.n
            public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier2, Composer composer, Integer num) {
                return invoke(modifier2, composer, num.intValue());
            }

            @Composable
            @NotNull
            public final Modifier invoke(@NotNull Modifier composed, @Nullable Composer composer, int i10) {
                Intrinsics.checkNotNullParameter(composed, "$this$composed");
                composer.startReplaceableGroup(-1810534337);
                composer.startReplaceableGroup(-492369756);
                Object rememberedValue = composer.rememberedValue();
                if (rememberedValue == Composer.Companion.getEmpty()) {
                    rememberedValue = new FocusModifier(FocusStateImpl.Inactive, null, 2, null);
                    composer.updateRememberedValue(rememberedValue);
                }
                composer.endReplaceableGroup();
                final FocusModifier focusModifier = (FocusModifier) rememberedValue;
                EffectsKt.SideEffect(new Function0<Unit>() { // from class: androidx.compose.ui.focus.FocusModifierKt$focusModifier$2.1
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
                        FocusTransactionsKt.sendOnFocusEvent(FocusModifier.this);
                    }
                }, composer, 0);
                Modifier focusTarget = FocusModifierKt.focusTarget(composed, focusModifier);
                composer.endReplaceableGroup();
                return focusTarget;
            }
        });
    }

    @NotNull
    public static final Modifier focusTarget(@NotNull Modifier modifier, @NotNull FocusModifier focusModifier) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(focusModifier, "focusModifier");
        return modifier.then(focusModifier).then(ResetFocusModifierLocals);
    }

    @NotNull
    public static final ProvidableModifierLocal<FocusModifier> getModifierLocalParentFocusModifier() {
        return ModifierLocalParentFocusModifier;
    }

    @NotNull
    public static final Modifier getResetFocusModifierLocals() {
        return ResetFocusModifierLocals;
    }

    @NotNull
    public static final Modifier focusTarget(@NotNull Modifier modifier) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        return ComposedModifierKt.composed(modifier, InspectableValueKt.isDebugInspectorInfoEnabled() ? new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.ui.focus.FocusModifierKt$focusTarget$$inlined$debugInspectorInfo$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(InspectorInfo inspectorInfo) {
                invoke2(inspectorInfo);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull InspectorInfo inspectorInfo) {
                Intrinsics.checkNotNullParameter(inspectorInfo, "$this$null");
                inspectorInfo.setName("focusTarget");
            }
        } : InspectableValueKt.getNoInspectorInfo(), new n<Modifier, Composer, Integer, Modifier>() { // from class: androidx.compose.ui.focus.FocusModifierKt$focusTarget$2
            @Override // at.n
            public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier2, Composer composer, Integer num) {
                return invoke(modifier2, composer, num.intValue());
            }

            @Composable
            @NotNull
            public final Modifier invoke(@NotNull Modifier composed, @Nullable Composer composer, int i10) {
                Intrinsics.checkNotNullParameter(composed, "$this$composed");
                composer.startReplaceableGroup(-326009031);
                composer.startReplaceableGroup(-492369756);
                Object rememberedValue = composer.rememberedValue();
                if (rememberedValue == Composer.Companion.getEmpty()) {
                    rememberedValue = new FocusModifier(FocusStateImpl.Inactive, null, 2, null);
                    composer.updateRememberedValue(rememberedValue);
                }
                composer.endReplaceableGroup();
                final FocusModifier focusModifier = (FocusModifier) rememberedValue;
                EffectsKt.SideEffect(new Function0<Unit>() { // from class: androidx.compose.ui.focus.FocusModifierKt$focusTarget$2.1
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
                        FocusTransactionsKt.sendOnFocusEvent(FocusModifier.this);
                    }
                }, composer, 0);
                Modifier focusTarget = FocusModifierKt.focusTarget(composed, focusModifier);
                composer.endReplaceableGroup();
                return focusTarget;
            }
        });
    }
}
