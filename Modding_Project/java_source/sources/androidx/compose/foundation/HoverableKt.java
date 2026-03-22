package androidx.compose.foundation;

import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.platform.InspectorInfo;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Hoverable.kt */
@Metadata
/* loaded from: classes.dex */
public final class HoverableKt {
    @NotNull
    public static final Modifier hoverable(@NotNull Modifier modifier, @NotNull final MutableInteractionSource interactionSource, final boolean z10) {
        Function1<InspectorInfo, Unit> noInspectorInfo;
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(interactionSource, "interactionSource");
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.HoverableKt$hoverable$$inlined$debugInspectorInfo$1
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
                    inspectorInfo.setName("hoverable");
                    inspectorInfo.getProperties().set("interactionSource", MutableInteractionSource.this);
                    inspectorInfo.getProperties().set("enabled", Boolean.valueOf(z10));
                }
            };
        } else {
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        return ComposedModifierKt.composed(modifier, noInspectorInfo, new HoverableKt$hoverable$2(interactionSource, z10));
    }

    public static /* synthetic */ Modifier hoverable$default(Modifier modifier, MutableInteractionSource mutableInteractionSource, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = true;
        }
        return hoverable(modifier, mutableInteractionSource, z10);
    }
}
