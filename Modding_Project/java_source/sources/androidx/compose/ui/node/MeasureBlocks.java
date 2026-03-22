package androidx.compose.ui.node;

import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import java.util.List;
import kotlin.Metadata;
import ms.c;
import org.jetbrains.annotations.NotNull;
/* compiled from: MeasureBlocks.kt */
@c
@Metadata
/* loaded from: classes.dex */
public interface MeasureBlocks {
    int maxIntrinsicHeight(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> list, int i10);

    int maxIntrinsicWidth(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> list, int i10);

    @NotNull
    /* renamed from: measure-3p2s80s */
    MeasureResult mo3342measure3p2s80s(@NotNull MeasureScope measureScope, @NotNull List<? extends Measurable> list, long j10);

    int minIntrinsicHeight(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> list, int i10);

    int minIntrinsicWidth(@NotNull IntrinsicMeasureScope intrinsicMeasureScope, @NotNull List<? extends IntrinsicMeasurable> list, int i10);
}
