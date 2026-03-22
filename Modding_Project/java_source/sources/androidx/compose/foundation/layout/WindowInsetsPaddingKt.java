package androidx.compose.foundation.layout;

import androidx.compose.runtime.Stable;
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
/* compiled from: WindowInsetsPadding.kt */
@Metadata
/* loaded from: classes.dex */
public final class WindowInsetsPaddingKt {
    @NotNull
    private static final ProvidableModifierLocal<WindowInsets> ModifierLocalConsumedWindowInsets = ModifierLocalKt.modifierLocalOf(new Function0<WindowInsets>() { // from class: androidx.compose.foundation.layout.WindowInsetsPaddingKt$ModifierLocalConsumedWindowInsets$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        @NotNull
        public final WindowInsets invoke() {
            return WindowInsetsKt.WindowInsets(0, 0, 0, 0);
        }
    });

    @Stable
    @ExperimentalLayoutApi
    @NotNull
    public static final Modifier consumedWindowInsets(@NotNull Modifier modifier, @NotNull final WindowInsets insets) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(insets, "insets");
        return modifier.then(new UnionInsetsConsumingModifier(insets, InspectableValueKt.isDebugInspectorInfoEnabled() ? new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.layout.WindowInsetsPaddingKt$consumedWindowInsets$$inlined$debugInspectorInfo$1
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
                inspectorInfo.setName("consumedWindowInsets");
                inspectorInfo.getProperties().set("insets", WindowInsets.this);
            }
        } : InspectableValueKt.getNoInspectorInfo()));
    }

    @NotNull
    public static final ProvidableModifierLocal<WindowInsets> getModifierLocalConsumedWindowInsets() {
        return ModifierLocalConsumedWindowInsets;
    }

    @Stable
    @NotNull
    public static final Modifier windowInsetsPadding(@NotNull Modifier modifier, @NotNull final WindowInsets insets) {
        Function1<InspectorInfo, Unit> noInspectorInfo;
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(insets, "insets");
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.layout.WindowInsetsPaddingKt$windowInsetsPadding$$inlined$debugInspectorInfo$1
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
                    inspectorInfo.setName("windowInsetsPadding");
                    inspectorInfo.getProperties().set("insets", WindowInsets.this);
                }
            };
        } else {
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        return modifier.then(new InsetsPaddingModifier(insets, noInspectorInfo));
    }

    @Stable
    @ExperimentalLayoutApi
    @NotNull
    public static final Modifier consumedWindowInsets(@NotNull Modifier modifier, @NotNull final PaddingValues paddingValues) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(paddingValues, "paddingValues");
        return modifier.then(new PaddingValuesConsumingModifier(paddingValues, InspectableValueKt.isDebugInspectorInfoEnabled() ? new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.layout.WindowInsetsPaddingKt$consumedWindowInsets$$inlined$debugInspectorInfo$2
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
                inspectorInfo.setName("consumedWindowInsets");
                inspectorInfo.getProperties().set("paddingValues", PaddingValues.this);
            }
        } : InspectableValueKt.getNoInspectorInfo()));
    }
}
