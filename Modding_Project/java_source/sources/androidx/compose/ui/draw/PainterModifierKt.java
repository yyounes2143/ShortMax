package androidx.compose.ui.draw;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.platform.InspectorInfo;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PainterModifier.kt */
@Metadata
/* loaded from: classes.dex */
public final class PainterModifierKt {
    @NotNull
    public static final Modifier paint(@NotNull Modifier modifier, @NotNull final Painter painter, final boolean z10, @NotNull final Alignment alignment, @NotNull final ContentScale contentScale, final float f10, @Nullable final ColorFilter colorFilter) {
        Function1<InspectorInfo, Unit> noInspectorInfo;
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(painter, "painter");
        Intrinsics.checkNotNullParameter(alignment, "alignment");
        Intrinsics.checkNotNullParameter(contentScale, "contentScale");
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.ui.draw.PainterModifierKt$paint$$inlined$debugInspectorInfo$1
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
                    inspectorInfo.setName("paint");
                    inspectorInfo.getProperties().set("painter", Painter.this);
                    inspectorInfo.getProperties().set("sizeToIntrinsics", Boolean.valueOf(z10));
                    inspectorInfo.getProperties().set("alignment", alignment);
                    inspectorInfo.getProperties().set("contentScale", contentScale);
                    inspectorInfo.getProperties().set("alpha", Float.valueOf(f10));
                    inspectorInfo.getProperties().set("colorFilter", colorFilter);
                }
            };
        } else {
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        return modifier.then(new PainterModifier(painter, z10, alignment, contentScale, f10, colorFilter, noInspectorInfo));
    }

    public static /* synthetic */ Modifier paint$default(Modifier modifier, Painter painter, boolean z10, Alignment alignment, ContentScale contentScale, float f10, ColorFilter colorFilter, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = true;
        }
        boolean z11 = z10;
        if ((i10 & 4) != 0) {
            alignment = Alignment.Companion.getCenter();
        }
        Alignment alignment2 = alignment;
        if ((i10 & 8) != 0) {
            contentScale = ContentScale.Companion.getInside();
        }
        ContentScale contentScale2 = contentScale;
        if ((i10 & 16) != 0) {
            f10 = 1.0f;
        }
        float f11 = f10;
        if ((i10 & 32) != 0) {
            colorFilter = null;
        }
        return paint(modifier, painter, z11, alignment2, contentScale2, f11, colorFilter);
    }
}
