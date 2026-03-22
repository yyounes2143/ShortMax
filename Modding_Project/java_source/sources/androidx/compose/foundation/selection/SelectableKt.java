package androidx.compose.foundation.selection;

import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.Indication;
import androidx.compose.foundation.IndicationKt;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
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
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Selectable.kt */
@Metadata
/* loaded from: classes.dex */
public final class SelectableKt {
    @NotNull
    /* renamed from: selectable-O2vRcR0  reason: not valid java name */
    public static final Modifier m663selectableO2vRcR0(@NotNull Modifier selectable, final boolean z10, @NotNull final MutableInteractionSource interactionSource, @Nullable final Indication indication, final boolean z11, @Nullable final Role role, @NotNull final Function0<Unit> onClick) {
        Function1<InspectorInfo, Unit> noInspectorInfo;
        Intrinsics.checkNotNullParameter(selectable, "$this$selectable");
        Intrinsics.checkNotNullParameter(interactionSource, "interactionSource");
        Intrinsics.checkNotNullParameter(onClick, "onClick");
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.selection.SelectableKt$selectable-O2vRcR0$$inlined$debugInspectorInfo$1
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
                    inspectorInfo.setName("selectable");
                    inspectorInfo.getProperties().set("selected", Boolean.valueOf(z10));
                    inspectorInfo.getProperties().set("interactionSource", interactionSource);
                    inspectorInfo.getProperties().set("indication", indication);
                    inspectorInfo.getProperties().set("enabled", Boolean.valueOf(z11));
                    inspectorInfo.getProperties().set("role", role);
                    inspectorInfo.getProperties().set("onClick", onClick);
                }
            };
        } else {
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        return InspectableValueKt.inspectableWrapper(selectable, noInspectorInfo, SemanticsModifierKt.semantics$default(ClickableKt.m217clickableO2vRcR0$default(Modifier.Companion, interactionSource, indication, z11, null, role, onClick, 8, null), false, new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.foundation.selection.SelectableKt$selectable$4$1
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
                SemanticsPropertiesKt.setSelected(semantics, z10);
            }
        }, 1, null));
    }

    /* renamed from: selectable-O2vRcR0$default  reason: not valid java name */
    public static /* synthetic */ Modifier m664selectableO2vRcR0$default(Modifier modifier, boolean z10, MutableInteractionSource mutableInteractionSource, Indication indication, boolean z11, Role role, Function0 function0, int i10, Object obj) {
        if ((i10 & 8) != 0) {
            z11 = true;
        }
        boolean z12 = z11;
        if ((i10 & 16) != 0) {
            role = null;
        }
        return m663selectableO2vRcR0(modifier, z10, mutableInteractionSource, indication, z12, role, function0);
    }

    @NotNull
    /* renamed from: selectable-XHw0xAI  reason: not valid java name */
    public static final Modifier m665selectableXHw0xAI(@NotNull Modifier selectable, final boolean z10, final boolean z11, @Nullable final Role role, @NotNull final Function0<Unit> onClick) {
        Function1<InspectorInfo, Unit> noInspectorInfo;
        Intrinsics.checkNotNullParameter(selectable, "$this$selectable");
        Intrinsics.checkNotNullParameter(onClick, "onClick");
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.selection.SelectableKt$selectable-XHw0xAI$$inlined$debugInspectorInfo$1
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
                    inspectorInfo.setName("selectable");
                    inspectorInfo.getProperties().set("selected", Boolean.valueOf(z10));
                    inspectorInfo.getProperties().set("enabled", Boolean.valueOf(z11));
                    inspectorInfo.getProperties().set("role", role);
                    inspectorInfo.getProperties().set("onClick", onClick);
                }
            };
        } else {
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        return ComposedModifierKt.composed(selectable, noInspectorInfo, new n<Modifier, Composer, Integer, Modifier>() { // from class: androidx.compose.foundation.selection.SelectableKt$selectable$2
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
                composer.startReplaceableGroup(-2124609672);
                Modifier.Companion companion = Modifier.Companion;
                composer.startReplaceableGroup(-492369756);
                Object rememberedValue = composer.rememberedValue();
                if (rememberedValue == Composer.Companion.getEmpty()) {
                    rememberedValue = InteractionSourceKt.MutableInteractionSource();
                    composer.updateRememberedValue(rememberedValue);
                }
                composer.endReplaceableGroup();
                Modifier m663selectableO2vRcR0 = SelectableKt.m663selectableO2vRcR0(companion, z10, (MutableInteractionSource) rememberedValue, (Indication) composer.consume(IndicationKt.getLocalIndication()), z11, role, onClick);
                composer.endReplaceableGroup();
                return m663selectableO2vRcR0;
            }
        });
    }

    /* renamed from: selectable-XHw0xAI$default  reason: not valid java name */
    public static /* synthetic */ Modifier m666selectableXHw0xAI$default(Modifier modifier, boolean z10, boolean z11, Role role, Function0 function0, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z11 = true;
        }
        if ((i10 & 4) != 0) {
            role = null;
        }
        return m665selectableXHw0xAI(modifier, z10, z11, role, function0);
    }
}
