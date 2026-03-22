package androidx.compose.ui.text.platform.extensions;

import android.text.Spannable;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.Placeholder;
import androidx.compose.ui.text.PlaceholderVerticalAlign;
import androidx.compose.ui.text.android.style.PlaceholderSpan;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitType;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: PlaceholderExtensions.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class PlaceholderExtensions_androidKt {
    /* renamed from: getSpanUnit--R2X_6o  reason: not valid java name */
    private static final int m3892getSpanUnitR2X_6o(long j10) {
        long m4229getTypeUIouoOA = TextUnit.m4229getTypeUIouoOA(j10);
        TextUnitType.Companion companion = TextUnitType.Companion;
        if (TextUnitType.m4258equalsimpl0(m4229getTypeUIouoOA, companion.m4263getSpUIouoOA())) {
            return 0;
        }
        if (TextUnitType.m4258equalsimpl0(m4229getTypeUIouoOA, companion.m4262getEmUIouoOA())) {
            return 1;
        }
        return 2;
    }

    /* renamed from: getSpanVerticalAlign-do9X-Gg  reason: not valid java name */
    private static final int m3894getSpanVerticalAligndo9XGg(int i10) {
        PlaceholderVerticalAlign.Companion companion = PlaceholderVerticalAlign.Companion;
        if (PlaceholderVerticalAlign.m3641equalsimpl0(i10, companion.m3645getAboveBaselineJ6kI3mc())) {
            return 0;
        }
        if (PlaceholderVerticalAlign.m3641equalsimpl0(i10, companion.m3651getTopJ6kI3mc())) {
            return 1;
        }
        if (PlaceholderVerticalAlign.m3641equalsimpl0(i10, companion.m3646getBottomJ6kI3mc())) {
            return 2;
        }
        if (PlaceholderVerticalAlign.m3641equalsimpl0(i10, companion.m3647getCenterJ6kI3mc())) {
            return 3;
        }
        if (PlaceholderVerticalAlign.m3641equalsimpl0(i10, companion.m3650getTextTopJ6kI3mc())) {
            return 4;
        }
        if (PlaceholderVerticalAlign.m3641equalsimpl0(i10, companion.m3648getTextBottomJ6kI3mc())) {
            return 5;
        }
        if (PlaceholderVerticalAlign.m3641equalsimpl0(i10, companion.m3649getTextCenterJ6kI3mc())) {
            return 6;
        }
        throw new IllegalStateException("Invalid PlaceholderVerticalAlign");
    }

    private static final void setPlaceholder(Spannable spannable, Placeholder placeholder, int i10, int i11, Density density) {
        SpannableExtensions_androidKt.setSpan(spannable, new PlaceholderSpan(TextUnit.m4230getValueimpl(placeholder.m3637getWidthXSAIIZE()), m3892getSpanUnitR2X_6o(placeholder.m3637getWidthXSAIIZE()), TextUnit.m4230getValueimpl(placeholder.m3635getHeightXSAIIZE()), m3892getSpanUnitR2X_6o(placeholder.m3635getHeightXSAIIZE()), density.getFontScale() * density.getDensity(), m3894getSpanVerticalAligndo9XGg(placeholder.m3636getPlaceholderVerticalAlignJ6kI3mc())), i10, i11);
    }

    public static final void setPlaceholders(@NotNull Spannable spannable, @NotNull List<AnnotatedString.Range<Placeholder>> placeholders, @NotNull Density density) {
        Intrinsics.checkNotNullParameter(spannable, "<this>");
        Intrinsics.checkNotNullParameter(placeholders, "placeholders");
        Intrinsics.checkNotNullParameter(density, "density");
        int size = placeholders.size();
        for (int i10 = 0; i10 < size; i10++) {
            AnnotatedString.Range<Placeholder> range = placeholders.get(i10);
            setPlaceholder(spannable, range.component1(), range.component2(), range.component3(), density);
        }
    }

    /* renamed from: getSpanUnit--R2X_6o$annotations  reason: not valid java name */
    private static /* synthetic */ void m3893getSpanUnitR2X_6o$annotations(long j10) {
    }

    /* renamed from: getSpanVerticalAlign-do9X-Gg$annotations  reason: not valid java name */
    private static /* synthetic */ void m3895getSpanVerticalAligndo9XGg$annotations(int i10) {
    }
}
