package androidx.compose.ui.input.key;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.modifier.ModifierLocalKt;
import androidx.compose.ui.modifier.ProvidableModifierLocal;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.platform.InspectorInfo;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: KeyInputModifier.kt */
@Metadata
/* loaded from: classes.dex */
public final class KeyInputModifierKt {
    @NotNull
    private static final ProvidableModifierLocal<KeyInputModifier> ModifierLocalKeyInput = ModifierLocalKt.modifierLocalOf(new Function0<KeyInputModifier>() { // from class: androidx.compose.ui.input.key.KeyInputModifierKt$ModifierLocalKeyInput$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        @Nullable
        public final KeyInputModifier invoke() {
            return null;
        }
    });

    @NotNull
    public static final ProvidableModifierLocal<KeyInputModifier> getModifierLocalKeyInput() {
        return ModifierLocalKeyInput;
    }

    @NotNull
    public static final Modifier onKeyEvent(@NotNull Modifier modifier, @NotNull final Function1<? super KeyEvent, Boolean> onKeyEvent) {
        Function1<InspectorInfo, Unit> noInspectorInfo;
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(onKeyEvent, "onKeyEvent");
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.ui.input.key.KeyInputModifierKt$onKeyEvent$$inlined$debugInspectorInfo$1
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
                    inspectorInfo.setName("onKeyEvent");
                    inspectorInfo.getProperties().set("onKeyEvent", Function1.this);
                }
            };
        } else {
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        Modifier.Companion companion = Modifier.Companion;
        return InspectableValueKt.inspectableWrapper(modifier, noInspectorInfo, new KeyInputModifier(onKeyEvent, null));
    }

    @NotNull
    public static final Modifier onPreviewKeyEvent(@NotNull Modifier modifier, @NotNull final Function1<? super KeyEvent, Boolean> onPreviewKeyEvent) {
        Function1<InspectorInfo, Unit> noInspectorInfo;
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(onPreviewKeyEvent, "onPreviewKeyEvent");
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.ui.input.key.KeyInputModifierKt$onPreviewKeyEvent$$inlined$debugInspectorInfo$1
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
                    inspectorInfo.setName("onPreviewKeyEvent");
                    inspectorInfo.getProperties().set("onPreviewKeyEvent", Function1.this);
                }
            };
        } else {
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        Modifier.Companion companion = Modifier.Companion;
        return InspectableValueKt.inspectableWrapper(modifier, noInspectorInfo, new KeyInputModifier(null, onPreviewKeyEvent));
    }
}
