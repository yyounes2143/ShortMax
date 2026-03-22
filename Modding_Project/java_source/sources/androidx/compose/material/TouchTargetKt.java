package androidx.compose.material;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.platform.ViewConfiguration;
import at.n;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TouchTarget.kt */
@Metadata
/* loaded from: classes.dex */
public final class TouchTargetKt {
    @NotNull
    private static final ProvidableCompositionLocal<Boolean> LocalMinimumTouchTargetEnforcement = CompositionLocalKt.staticCompositionLocalOf(new Function0<Boolean>() { // from class: androidx.compose.material.TouchTargetKt$LocalMinimumTouchTargetEnforcement$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        @NotNull
        public final Boolean invoke() {
            return Boolean.TRUE;
        }
    });

    @ExperimentalMaterialApi
    @NotNull
    public static final ProvidableCompositionLocal<Boolean> getLocalMinimumTouchTargetEnforcement() {
        return LocalMinimumTouchTargetEnforcement;
    }

    @NotNull
    public static final Modifier minimumTouchTargetSize(@NotNull Modifier modifier) {
        Function1<InspectorInfo, Unit> noInspectorInfo;
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.material.TouchTargetKt$minimumTouchTargetSize$$inlined$debugInspectorInfo$1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(InspectorInfo inspectorInfo) {
                    invoke2(inspectorInfo);
                    return Unit.f60915a;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull InspectorInfo inspectorInfo) {
                    Intrinsics.checkNotNullParameter(inspectorInfo, "$this$null");
                    inspectorInfo.setName("minimumTouchTargetSize");
                    inspectorInfo.getProperties().set("README", "Adds outer padding to measure at least 48.dp (default) in size to disambiguate touch interactions if the element would measure smaller");
                }
            };
        } else {
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        return ComposedModifierKt.composed(modifier, noInspectorInfo, new n<Modifier, Composer, Integer, Modifier>() { // from class: androidx.compose.material.TouchTargetKt$minimumTouchTargetSize$2
            @Override // at.n
            public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier2, Composer composer, Integer num) {
                return invoke(modifier2, composer, num.intValue());
            }

            @Composable
            @NotNull
            public final Modifier invoke(@NotNull Modifier composed, @Nullable Composer composer, int i10) {
                Modifier modifier2;
                Intrinsics.checkNotNullParameter(composed, "$this$composed");
                composer.startReplaceableGroup(1220403677);
                if (((Boolean) composer.consume(TouchTargetKt.getLocalMinimumTouchTargetEnforcement())).booleanValue()) {
                    modifier2 = new MinimumTouchTargetModifier(((ViewConfiguration) composer.consume(CompositionLocalsKt.getLocalViewConfiguration())).mo3464getMinimumTouchTargetSizeMYxV2XQ(), null);
                } else {
                    modifier2 = Modifier.Companion;
                }
                composer.endReplaceableGroup();
                return modifier2;
            }
        });
    }

    @ExperimentalMaterialApi
    public static /* synthetic */ void getLocalMinimumTouchTargetEnforcement$annotations() {
    }
}
