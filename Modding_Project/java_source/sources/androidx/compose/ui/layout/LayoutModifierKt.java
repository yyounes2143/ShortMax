package androidx.compose.ui.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.unit.Constraints;
import at.n;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: LayoutModifier.kt */
@Metadata
/* loaded from: classes.dex */
public final class LayoutModifierKt {
    @NotNull
    public static final Modifier layout(@NotNull Modifier modifier, @NotNull final n<? super MeasureScope, ? super Measurable, ? super Constraints, ? extends MeasureResult> measure) {
        Function1<InspectorInfo, Unit> noInspectorInfo;
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(measure, "measure");
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.ui.layout.LayoutModifierKt$layout$$inlined$debugInspectorInfo$1
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
                    inspectorInfo.setName(TtmlNode.TAG_LAYOUT);
                    inspectorInfo.getProperties().set("measure", n.this);
                }
            };
        } else {
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        return modifier.then(new LayoutModifierImpl(measure, noInspectorInfo));
    }
}
