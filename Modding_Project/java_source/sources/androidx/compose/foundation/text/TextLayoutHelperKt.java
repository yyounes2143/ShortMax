package androidx.compose.foundation.text;

import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.Placeholder;
import androidx.compose.ui.text.TextLayoutInput;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: TextLayoutHelper.kt */
@Metadata
/* loaded from: classes.dex */
public final class TextLayoutHelperKt {
    /* renamed from: canReuse-7_7YC6M  reason: not valid java name */
    public static final boolean m792canReuse7_7YC6M(@NotNull TextLayoutResult canReuse, @NotNull AnnotatedString text, @NotNull TextStyle style, @NotNull List<AnnotatedString.Range<Placeholder>> placeholders, int i10, boolean z10, int i11, @NotNull Density density, @NotNull LayoutDirection layoutDirection, @NotNull FontFamily.Resolver fontFamilyResolver, long j10) {
        Intrinsics.checkNotNullParameter(canReuse, "$this$canReuse");
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(style, "style");
        Intrinsics.checkNotNullParameter(placeholders, "placeholders");
        Intrinsics.checkNotNullParameter(density, "density");
        Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
        Intrinsics.checkNotNullParameter(fontFamilyResolver, "fontFamilyResolver");
        TextLayoutInput layoutInput = canReuse.getLayoutInput();
        if (canReuse.getMultiParagraph().getIntrinsics().getHasStaleResolvedFonts() || !Intrinsics.areEqual(layoutInput.getText(), text) || !layoutInput.getStyle().hasSameLayoutAffectingAttributes(style) || !Intrinsics.areEqual(layoutInput.getPlaceholders(), placeholders) || layoutInput.getMaxLines() != i10 || layoutInput.getSoftWrap() != z10 || !TextOverflow.m3983equalsimpl0(layoutInput.m3679getOverflowgIe3tQ8(), i11) || !Intrinsics.areEqual(layoutInput.getDensity(), density) || layoutInput.getLayoutDirection() != layoutDirection || !Intrinsics.areEqual(layoutInput.getFontFamilyResolver(), fontFamilyResolver) || Constraints.m4007getMinWidthimpl(j10) != Constraints.m4007getMinWidthimpl(layoutInput.m3678getConstraintsmsEJaDk())) {
            return false;
        }
        if (!z10 && !TextOverflow.m3983equalsimpl0(i11, TextOverflow.Companion.m3991getEllipsisgIe3tQ8())) {
            return true;
        }
        if (Constraints.m4005getMaxWidthimpl(j10) != Constraints.m4005getMaxWidthimpl(layoutInput.m3678getConstraintsmsEJaDk()) || Constraints.m4004getMaxHeightimpl(j10) != Constraints.m4004getMaxHeightimpl(layoutInput.m3678getConstraintsmsEJaDk())) {
            return false;
        }
        return true;
    }
}
