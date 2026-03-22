package androidx.compose.foundation;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.semantics.ProgressBarRangeInfo;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.e;
import org.jetbrains.annotations.NotNull;
/* compiled from: ProgressSemantics.kt */
@Metadata
/* loaded from: classes.dex */
public final class ProgressSemanticsKt {
    @Stable
    @NotNull
    public static final Modifier progressSemantics(@NotNull Modifier modifier, final float f10, @NotNull final dt.b<Float> valueRange, final int i10) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(valueRange, "valueRange");
        return SemanticsModifierKt.semantics(modifier, true, new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.foundation.ProgressSemanticsKt$progressSemantics$1
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
                SemanticsPropertiesKt.setProgressBarRangeInfo(semantics, new ProgressBarRangeInfo(((Number) e.q(Float.valueOf(f10), valueRange)).floatValue(), valueRange, i10));
            }
        });
    }

    public static /* synthetic */ Modifier progressSemantics$default(Modifier modifier, float f10, dt.b bVar, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            bVar = e.b(0.0f, 1.0f);
        }
        if ((i11 & 4) != 0) {
            i10 = 0;
        }
        return progressSemantics(modifier, f10, bVar, i10);
    }

    @Stable
    @NotNull
    public static final Modifier progressSemantics(@NotNull Modifier modifier) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        return SemanticsModifierKt.semantics(modifier, true, new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.foundation.ProgressSemanticsKt$progressSemantics$2
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
                invoke2(semanticsPropertyReceiver);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull SemanticsPropertyReceiver semantics) {
                Intrinsics.checkNotNullParameter(semantics, "$this$semantics");
                SemanticsPropertiesKt.setProgressBarRangeInfo(semantics, ProgressBarRangeInfo.Companion.getIndeterminate());
            }
        });
    }
}
