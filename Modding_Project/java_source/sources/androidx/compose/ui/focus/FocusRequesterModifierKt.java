package androidx.compose.ui.focus;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.collection.MutableVector;
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
/* compiled from: FocusRequesterModifier.kt */
@Metadata
/* loaded from: classes.dex */
public final class FocusRequesterModifierKt {
    @NotNull
    private static final ProvidableModifierLocal<FocusRequesterModifierLocal> ModifierLocalFocusRequester = ModifierLocalKt.modifierLocalOf(new Function0<FocusRequesterModifierLocal>() { // from class: androidx.compose.ui.focus.FocusRequesterModifierKt$ModifierLocalFocusRequester$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        @Nullable
        public final FocusRequesterModifierLocal invoke() {
            return null;
        }
    });

    @NotNull
    public static final Modifier focusRequester(@NotNull Modifier modifier, @NotNull final FocusRequester focusRequester) {
        Function1<InspectorInfo, Unit> noInspectorInfo;
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(focusRequester, "focusRequester");
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.ui.focus.FocusRequesterModifierKt$focusRequester$$inlined$debugInspectorInfo$1
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
                    inspectorInfo.setName("focusRequester");
                    inspectorInfo.getProperties().set("focusRequester", FocusRequester.this);
                }
            };
        } else {
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        return ComposedModifierKt.composed(modifier, noInspectorInfo, new n<Modifier, Composer, Integer, Modifier>() { // from class: androidx.compose.ui.focus.FocusRequesterModifierKt$focusRequester$2
            /* JADX INFO: Access modifiers changed from: package-private */
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
                composer.startReplaceableGroup(-307396750);
                FocusRequester focusRequester2 = FocusRequester.this;
                int i11 = MutableVector.$stable;
                composer.startReplaceableGroup(1157296644);
                boolean changed = composer.changed(focusRequester2);
                Object rememberedValue = composer.rememberedValue();
                if (changed || rememberedValue == Composer.Companion.getEmpty()) {
                    rememberedValue = new FocusRequesterModifierLocal(focusRequester2);
                    composer.updateRememberedValue(rememberedValue);
                }
                composer.endReplaceableGroup();
                FocusRequesterModifierLocal focusRequesterModifierLocal = (FocusRequesterModifierLocal) rememberedValue;
                composer.endReplaceableGroup();
                return focusRequesterModifierLocal;
            }
        });
    }

    @NotNull
    public static final ProvidableModifierLocal<FocusRequesterModifierLocal> getModifierLocalFocusRequester() {
        return ModifierLocalFocusRequester;
    }
}
