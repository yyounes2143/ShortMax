package androidx.compose.foundation;

import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
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
/* compiled from: Indication.kt */
@Metadata
/* loaded from: classes.dex */
public final class IndicationKt {
    @NotNull
    private static final ProvidableCompositionLocal<Indication> LocalIndication = CompositionLocalKt.staticCompositionLocalOf(new Function0<Indication>() { // from class: androidx.compose.foundation.IndicationKt$LocalIndication$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        @NotNull
        public final Indication invoke() {
            return DefaultDebugIndication.INSTANCE;
        }
    });

    @NotNull
    public static final ProvidableCompositionLocal<Indication> getLocalIndication() {
        return LocalIndication;
    }

    @NotNull
    public static final Modifier indication(@NotNull Modifier modifier, @NotNull final InteractionSource interactionSource, @Nullable final Indication indication) {
        Function1<InspectorInfo, Unit> noInspectorInfo;
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(interactionSource, "interactionSource");
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.IndicationKt$indication$$inlined$debugInspectorInfo$1
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
                    inspectorInfo.setName("indication");
                    inspectorInfo.getProperties().set("indication", Indication.this);
                    inspectorInfo.getProperties().set("interactionSource", interactionSource);
                }
            };
        } else {
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        return ComposedModifierKt.composed(modifier, noInspectorInfo, new n<Modifier, Composer, Integer, Modifier>() { // from class: androidx.compose.foundation.IndicationKt$indication$2
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
                composer.startReplaceableGroup(-353972293);
                Indication indication2 = Indication.this;
                if (indication2 == null) {
                    indication2 = NoIndication.INSTANCE;
                }
                IndicationInstance rememberUpdatedInstance = indication2.rememberUpdatedInstance(interactionSource, composer, 0);
                composer.startReplaceableGroup(1157296644);
                boolean changed = composer.changed(rememberUpdatedInstance);
                Object rememberedValue = composer.rememberedValue();
                if (changed || rememberedValue == Composer.Companion.getEmpty()) {
                    rememberedValue = new IndicationModifier(rememberUpdatedInstance);
                    composer.updateRememberedValue(rememberedValue);
                }
                composer.endReplaceableGroup();
                IndicationModifier indicationModifier = (IndicationModifier) rememberedValue;
                composer.endReplaceableGroup();
                return indicationModifier;
            }
        });
    }
}
