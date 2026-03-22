package androidx.compose.ui.focus;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.modifier.ModifierLocalKt;
import androidx.compose.ui.modifier.ProvidableModifierLocal;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.platform.InspectorInfo;
import at.n;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FocusEventModifier.kt */
@Metadata
/* loaded from: classes.dex */
public final class FocusEventModifierKt {
    @NotNull
    private static final ProvidableModifierLocal<FocusEventModifierLocal> ModifierLocalFocusEvent = ModifierLocalKt.modifierLocalOf(new Function0<FocusEventModifierLocal>() { // from class: androidx.compose.ui.focus.FocusEventModifierKt$ModifierLocalFocusEvent$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        @Nullable
        public final FocusEventModifierLocal invoke() {
            return null;
        }
    });

    @NotNull
    public static final ProvidableModifierLocal<FocusEventModifierLocal> getModifierLocalFocusEvent() {
        return ModifierLocalFocusEvent;
    }

    @NotNull
    public static final Modifier onFocusEvent(@NotNull Modifier modifier, @NotNull final Function1<? super FocusState, Unit> onFocusEvent) {
        Function1<InspectorInfo, Unit> noInspectorInfo;
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(onFocusEvent, "onFocusEvent");
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.ui.focus.FocusEventModifierKt$onFocusEvent$$inlined$debugInspectorInfo$1
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
                    inspectorInfo.setName("onFocusEvent");
                    inspectorInfo.getProperties().set("onFocusEvent", Function1.this);
                }
            };
        } else {
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        return ComposedModifierKt.composed(modifier, noInspectorInfo, new n<Modifier, Composer, Integer, Modifier>() { // from class: androidx.compose.ui.focus.FocusEventModifierKt$onFocusEvent$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
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
                composer.startReplaceableGroup(607036704);
                Function1<FocusState, Unit> function1 = onFocusEvent;
                composer.startReplaceableGroup(1157296644);
                boolean changed = composer.changed(function1);
                Object rememberedValue = composer.rememberedValue();
                if (changed || rememberedValue == Composer.Companion.getEmpty()) {
                    rememberedValue = new FocusEventModifierLocal(function1);
                    composer.updateRememberedValue(rememberedValue);
                }
                composer.endReplaceableGroup();
                final FocusEventModifierLocal focusEventModifierLocal = (FocusEventModifierLocal) rememberedValue;
                EffectsKt.SideEffect(new Function0<Unit>() { // from class: androidx.compose.ui.focus.FocusEventModifierKt$onFocusEvent$2.1
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
                        FocusEventModifierLocal.this.notifyIfNoFocusModifiers();
                    }
                }, composer, 0);
                composer.endReplaceableGroup();
                return focusEventModifierLocal;
            }
        });
    }
}
