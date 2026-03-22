package androidx.compose.foundation;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.platform.InspectorInfo;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Background.kt */
@Metadata
/* loaded from: classes.dex */
public final class BackgroundKt {
    @NotNull
    public static final Modifier background(@NotNull Modifier modifier, @NotNull final Brush brush, @NotNull final Shape shape, final float f10) {
        Function1<InspectorInfo, Unit> noInspectorInfo;
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(brush, "brush");
        Intrinsics.checkNotNullParameter(shape, "shape");
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.BackgroundKt$background$$inlined$debugInspectorInfo$1
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
                    inspectorInfo.setName("background");
                    inspectorInfo.getProperties().set("alpha", Float.valueOf(f10));
                    inspectorInfo.getProperties().set("brush", brush);
                    inspectorInfo.getProperties().set("shape", shape);
                }
            };
        } else {
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        return modifier.then(new Background(null, brush, f10, shape, noInspectorInfo, 1, null));
    }

    public static /* synthetic */ Modifier background$default(Modifier modifier, Brush brush, Shape shape, float f10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            shape = RectangleShapeKt.getRectangleShape();
        }
        if ((i10 & 4) != 0) {
            f10 = 1.0f;
        }
        return background(modifier, brush, shape, f10);
    }

    @NotNull
    /* renamed from: background-bw27NRU */
    public static final Modifier m199backgroundbw27NRU(@NotNull Modifier background, final long j10, @NotNull final Shape shape) {
        Function1<InspectorInfo, Unit> noInspectorInfo;
        Intrinsics.checkNotNullParameter(background, "$this$background");
        Intrinsics.checkNotNullParameter(shape, "shape");
        Color m1832boximpl = Color.m1832boximpl(j10);
        if (InspectableValueKt.isDebugInspectorInfoEnabled()) {
            noInspectorInfo = new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.foundation.BackgroundKt$background-bw27NRU$$inlined$debugInspectorInfo$1
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
                    inspectorInfo.setName("background");
                    inspectorInfo.setValue(Color.m1832boximpl(j10));
                    inspectorInfo.getProperties().set("color", Color.m1832boximpl(j10));
                    inspectorInfo.getProperties().set("shape", shape);
                }
            };
        } else {
            noInspectorInfo = InspectableValueKt.getNoInspectorInfo();
        }
        return background.then(new Background(m1832boximpl, null, 0.0f, shape, noInspectorInfo, 6, null));
    }

    /* renamed from: background-bw27NRU$default */
    public static /* synthetic */ Modifier m200backgroundbw27NRU$default(Modifier modifier, long j10, Shape shape, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            shape = RectangleShapeKt.getRectangleShape();
        }
        return m199backgroundbw27NRU(modifier, j10, shape);
    }
}
