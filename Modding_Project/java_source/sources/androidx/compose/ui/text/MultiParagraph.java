package androidx.compose.ui.text;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.font.DelegatingFontLoaderForDeprecatedUsage_androidKt;
import androidx.compose.ui.text.font.Font;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.platform.AndroidMultiParagraphDrawKt;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.e;
import ms.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MultiParagraph.kt */
@Metadata
/* loaded from: classes.dex */
public final class MultiParagraph {
    private final boolean didExceedMaxLines;
    private final float height;
    @NotNull
    private final MultiParagraphIntrinsics intrinsics;
    private final int lineCount;
    private final int maxLines;
    @NotNull
    private final List<ParagraphInfo> paragraphInfoList;
    @NotNull
    private final List<Rect> placeholderRects;
    private final float width;

    public /* synthetic */ MultiParagraph(AnnotatedString annotatedString, TextStyle textStyle, long j10, Density density, FontFamily.Resolver resolver, List list, int i10, boolean z10, DefaultConstructorMarker defaultConstructorMarker) {
        this(annotatedString, textStyle, j10, density, resolver, list, i10, z10);
    }

    private final AnnotatedString getAnnotatedString() {
        return this.intrinsics.getAnnotatedString();
    }

    public static /* synthetic */ int getLineEnd$default(MultiParagraph multiParagraph, int i10, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        return multiParagraph.getLineEnd(i10, z10);
    }

    public static /* synthetic */ void paint$default(MultiParagraph multiParagraph, Canvas canvas, Brush brush, Shadow shadow, TextDecoration textDecoration, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            shadow = null;
        }
        if ((i10 & 8) != 0) {
            textDecoration = null;
        }
        multiParagraph.paint(canvas, brush, shadow, textDecoration);
    }

    /* renamed from: paint-RPmYEkk$default  reason: not valid java name */
    public static /* synthetic */ void m3611paintRPmYEkk$default(MultiParagraph multiParagraph, Canvas canvas, long j10, Shadow shadow, TextDecoration textDecoration, int i10, Object obj) {
        Shadow shadow2;
        TextDecoration textDecoration2;
        if ((i10 & 2) != 0) {
            j10 = Color.Companion.m1878getUnspecified0d7_KjU();
        }
        long j11 = j10;
        if ((i10 & 4) != 0) {
            shadow2 = null;
        } else {
            shadow2 = shadow;
        }
        if ((i10 & 8) != 0) {
            textDecoration2 = null;
        } else {
            textDecoration2 = textDecoration;
        }
        multiParagraph.m3614paintRPmYEkk(canvas, j11, shadow2, textDecoration2);
    }

    private final void requireIndexInRange(int i10) {
        if (i10 >= 0 && i10 < getAnnotatedString().getText().length()) {
            return;
        }
        throw new IllegalArgumentException(("offset(" + i10 + ") is out of bounds [0, " + getAnnotatedString().length() + ')').toString());
    }

    private final void requireIndexInRangeInclusiveEnd(int i10) {
        if (i10 >= 0 && i10 <= getAnnotatedString().getText().length()) {
            return;
        }
        throw new IllegalArgumentException(("offset(" + i10 + ") is out of bounds [0, " + getAnnotatedString().length() + ']').toString());
    }

    private final void requireLineIndexInRange(int i10) {
        if (i10 >= 0 && i10 < this.lineCount) {
            return;
        }
        throw new IllegalArgumentException(("lineIndex(" + i10 + ") is out of bounds [0, " + i10 + ')').toString());
    }

    @NotNull
    public final ResolvedTextDirection getBidiRunDirection(int i10) {
        int findParagraphByIndex;
        requireIndexInRangeInclusiveEnd(i10);
        if (i10 == getAnnotatedString().length()) {
            findParagraphByIndex = CollectionsKt.p(this.paragraphInfoList);
        } else {
            findParagraphByIndex = MultiParagraphKt.findParagraphByIndex(this.paragraphInfoList, i10);
        }
        ParagraphInfo paragraphInfo = this.paragraphInfoList.get(findParagraphByIndex);
        return paragraphInfo.getParagraph().getBidiRunDirection(paragraphInfo.toLocalIndex(i10));
    }

    @NotNull
    public final Rect getBoundingBox(int i10) {
        requireIndexInRange(i10);
        ParagraphInfo paragraphInfo = this.paragraphInfoList.get(MultiParagraphKt.findParagraphByIndex(this.paragraphInfoList, i10));
        return paragraphInfo.toGlobal(paragraphInfo.getParagraph().getBoundingBox(paragraphInfo.toLocalIndex(i10)));
    }

    @NotNull
    public final Rect getCursorRect(int i10) {
        int findParagraphByIndex;
        requireIndexInRangeInclusiveEnd(i10);
        if (i10 == getAnnotatedString().length()) {
            findParagraphByIndex = CollectionsKt.p(this.paragraphInfoList);
        } else {
            findParagraphByIndex = MultiParagraphKt.findParagraphByIndex(this.paragraphInfoList, i10);
        }
        ParagraphInfo paragraphInfo = this.paragraphInfoList.get(findParagraphByIndex);
        return paragraphInfo.toGlobal(paragraphInfo.getParagraph().getCursorRect(paragraphInfo.toLocalIndex(i10)));
    }

    public final boolean getDidExceedMaxLines() {
        return this.didExceedMaxLines;
    }

    public final float getFirstBaseline() {
        if (this.paragraphInfoList.isEmpty()) {
            return 0.0f;
        }
        return this.paragraphInfoList.get(0).getParagraph().getFirstBaseline();
    }

    public final float getHeight() {
        return this.height;
    }

    public final float getHorizontalPosition(int i10, boolean z10) {
        int findParagraphByIndex;
        requireIndexInRangeInclusiveEnd(i10);
        if (i10 == getAnnotatedString().length()) {
            findParagraphByIndex = CollectionsKt.p(this.paragraphInfoList);
        } else {
            findParagraphByIndex = MultiParagraphKt.findParagraphByIndex(this.paragraphInfoList, i10);
        }
        ParagraphInfo paragraphInfo = this.paragraphInfoList.get(findParagraphByIndex);
        return paragraphInfo.getParagraph().getHorizontalPosition(paragraphInfo.toLocalIndex(i10), z10);
    }

    @NotNull
    public final MultiParagraphIntrinsics getIntrinsics() {
        return this.intrinsics;
    }

    public final float getLastBaseline() {
        if (this.paragraphInfoList.isEmpty()) {
            return 0.0f;
        }
        ParagraphInfo paragraphInfo = (ParagraphInfo) CollectionsKt.C0(this.paragraphInfoList);
        return paragraphInfo.toGlobalYPosition(paragraphInfo.getParagraph().getLastBaseline());
    }

    public final float getLineBottom(int i10) {
        requireLineIndexInRange(i10);
        ParagraphInfo paragraphInfo = this.paragraphInfoList.get(MultiParagraphKt.findParagraphByLineIndex(this.paragraphInfoList, i10));
        return paragraphInfo.toGlobalYPosition(paragraphInfo.getParagraph().getLineBottom(paragraphInfo.toLocalLineIndex(i10)));
    }

    public final int getLineCount() {
        return this.lineCount;
    }

    public final int getLineEnd(int i10, boolean z10) {
        requireLineIndexInRange(i10);
        ParagraphInfo paragraphInfo = this.paragraphInfoList.get(MultiParagraphKt.findParagraphByLineIndex(this.paragraphInfoList, i10));
        return paragraphInfo.toGlobalIndex(paragraphInfo.getParagraph().getLineEnd(paragraphInfo.toLocalLineIndex(i10), z10));
    }

    public final int getLineForOffset(int i10) {
        int findParagraphByIndex;
        requireIndexInRangeInclusiveEnd(i10);
        if (i10 == getAnnotatedString().length()) {
            findParagraphByIndex = CollectionsKt.p(this.paragraphInfoList);
        } else {
            findParagraphByIndex = MultiParagraphKt.findParagraphByIndex(this.paragraphInfoList, i10);
        }
        ParagraphInfo paragraphInfo = this.paragraphInfoList.get(findParagraphByIndex);
        return paragraphInfo.toGlobalLineIndex(paragraphInfo.getParagraph().getLineForOffset(paragraphInfo.toLocalIndex(i10)));
    }

    public final int getLineForVerticalPosition(float f10) {
        int findParagraphByY;
        if (f10 <= 0.0f) {
            findParagraphByY = 0;
        } else if (f10 >= this.height) {
            findParagraphByY = CollectionsKt.p(this.paragraphInfoList);
        } else {
            findParagraphByY = MultiParagraphKt.findParagraphByY(this.paragraphInfoList, f10);
        }
        ParagraphInfo paragraphInfo = this.paragraphInfoList.get(findParagraphByY);
        if (paragraphInfo.getLength() == 0) {
            return Math.max(0, paragraphInfo.getStartIndex() - 1);
        }
        return paragraphInfo.toGlobalLineIndex(paragraphInfo.getParagraph().getLineForVerticalPosition(paragraphInfo.toLocalYPosition(f10)));
    }

    public final float getLineHeight(int i10) {
        requireLineIndexInRange(i10);
        ParagraphInfo paragraphInfo = this.paragraphInfoList.get(MultiParagraphKt.findParagraphByLineIndex(this.paragraphInfoList, i10));
        return paragraphInfo.getParagraph().getLineHeight(paragraphInfo.toLocalLineIndex(i10));
    }

    public final float getLineLeft(int i10) {
        requireLineIndexInRange(i10);
        ParagraphInfo paragraphInfo = this.paragraphInfoList.get(MultiParagraphKt.findParagraphByLineIndex(this.paragraphInfoList, i10));
        return paragraphInfo.getParagraph().getLineLeft(paragraphInfo.toLocalLineIndex(i10));
    }

    public final float getLineRight(int i10) {
        requireLineIndexInRange(i10);
        ParagraphInfo paragraphInfo = this.paragraphInfoList.get(MultiParagraphKt.findParagraphByLineIndex(this.paragraphInfoList, i10));
        return paragraphInfo.getParagraph().getLineRight(paragraphInfo.toLocalLineIndex(i10));
    }

    public final int getLineStart(int i10) {
        requireLineIndexInRange(i10);
        ParagraphInfo paragraphInfo = this.paragraphInfoList.get(MultiParagraphKt.findParagraphByLineIndex(this.paragraphInfoList, i10));
        return paragraphInfo.toGlobalIndex(paragraphInfo.getParagraph().getLineStart(paragraphInfo.toLocalLineIndex(i10)));
    }

    public final float getLineTop(int i10) {
        requireLineIndexInRange(i10);
        ParagraphInfo paragraphInfo = this.paragraphInfoList.get(MultiParagraphKt.findParagraphByLineIndex(this.paragraphInfoList, i10));
        return paragraphInfo.toGlobalYPosition(paragraphInfo.getParagraph().getLineTop(paragraphInfo.toLocalLineIndex(i10)));
    }

    public final float getLineWidth(int i10) {
        requireLineIndexInRange(i10);
        ParagraphInfo paragraphInfo = this.paragraphInfoList.get(MultiParagraphKt.findParagraphByLineIndex(this.paragraphInfoList, i10));
        return paragraphInfo.getParagraph().getLineWidth(paragraphInfo.toLocalLineIndex(i10));
    }

    public final float getMaxIntrinsicWidth() {
        return this.intrinsics.getMaxIntrinsicWidth();
    }

    public final int getMaxLines() {
        return this.maxLines;
    }

    public final float getMinIntrinsicWidth() {
        return this.intrinsics.getMaxIntrinsicWidth();
    }

    /* renamed from: getOffsetForPosition-k-4lQ0M  reason: not valid java name */
    public final int m3612getOffsetForPositionk4lQ0M(long j10) {
        int findParagraphByY;
        if (Offset.m1607getYimpl(j10) <= 0.0f) {
            findParagraphByY = 0;
        } else if (Offset.m1607getYimpl(j10) >= this.height) {
            findParagraphByY = CollectionsKt.p(this.paragraphInfoList);
        } else {
            findParagraphByY = MultiParagraphKt.findParagraphByY(this.paragraphInfoList, Offset.m1607getYimpl(j10));
        }
        ParagraphInfo paragraphInfo = this.paragraphInfoList.get(findParagraphByY);
        if (paragraphInfo.getLength() == 0) {
            return Math.max(0, paragraphInfo.getStartIndex() - 1);
        }
        return paragraphInfo.toGlobalIndex(paragraphInfo.getParagraph().mo3616getOffsetForPositionk4lQ0M(paragraphInfo.m3621toLocalMKHz9U(j10)));
    }

    @NotNull
    public final ResolvedTextDirection getParagraphDirection(int i10) {
        int findParagraphByIndex;
        requireIndexInRangeInclusiveEnd(i10);
        if (i10 == getAnnotatedString().length()) {
            findParagraphByIndex = CollectionsKt.p(this.paragraphInfoList);
        } else {
            findParagraphByIndex = MultiParagraphKt.findParagraphByIndex(this.paragraphInfoList, i10);
        }
        ParagraphInfo paragraphInfo = this.paragraphInfoList.get(findParagraphByIndex);
        return paragraphInfo.getParagraph().getParagraphDirection(paragraphInfo.toLocalIndex(i10));
    }

    @NotNull
    public final List<ParagraphInfo> getParagraphInfoList$ui_text_release() {
        return this.paragraphInfoList;
    }

    @NotNull
    public final Path getPathForRange(int i10, int i11) {
        if (i10 >= 0 && i10 <= i11 && i11 <= getAnnotatedString().getText().length()) {
            if (i10 == i11) {
                return AndroidPath_androidKt.Path();
            }
            Path Path = AndroidPath_androidKt.Path();
            int size = this.paragraphInfoList.size();
            for (int findParagraphByIndex = MultiParagraphKt.findParagraphByIndex(this.paragraphInfoList, i10); findParagraphByIndex < size; findParagraphByIndex++) {
                ParagraphInfo paragraphInfo = this.paragraphInfoList.get(findParagraphByIndex);
                if (paragraphInfo.getStartIndex() >= i11) {
                    break;
                }
                if (paragraphInfo.getStartIndex() != paragraphInfo.getEndIndex()) {
                    Path.m2074addPathUv8p0NA$default(Path, paragraphInfo.toGlobal(paragraphInfo.getParagraph().getPathForRange(paragraphInfo.toLocalIndex(i10), paragraphInfo.toLocalIndex(i11))), 0L, 2, null);
                }
            }
            return Path;
        }
        throw new IllegalArgumentException(("Start(" + i10 + ") or End(" + i11 + ") is out of range [0.." + getAnnotatedString().getText().length() + "), or start > end!").toString());
    }

    @NotNull
    public final List<Rect> getPlaceholderRects() {
        return this.placeholderRects;
    }

    public final float getWidth() {
        return this.width;
    }

    /* renamed from: getWordBoundary--jx7JFs  reason: not valid java name */
    public final long m3613getWordBoundaryjx7JFs(int i10) {
        int findParagraphByIndex;
        requireIndexInRangeInclusiveEnd(i10);
        if (i10 == getAnnotatedString().length()) {
            findParagraphByIndex = CollectionsKt.p(this.paragraphInfoList);
        } else {
            findParagraphByIndex = MultiParagraphKt.findParagraphByIndex(this.paragraphInfoList, i10);
        }
        ParagraphInfo paragraphInfo = this.paragraphInfoList.get(findParagraphByIndex);
        return paragraphInfo.m3620toGlobalGEjPoXI(paragraphInfo.getParagraph().mo3617getWordBoundaryjx7JFs(paragraphInfo.toLocalIndex(i10)));
    }

    public final boolean isLineEllipsized(int i10) {
        requireLineIndexInRange(i10);
        return this.paragraphInfoList.get(MultiParagraphKt.findParagraphByLineIndex(this.paragraphInfoList, i10)).getParagraph().isLineEllipsized(i10);
    }

    @ExperimentalTextApi
    public final void paint(@NotNull Canvas canvas, @NotNull Brush brush, @Nullable Shadow shadow, @Nullable TextDecoration textDecoration) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Intrinsics.checkNotNullParameter(brush, "brush");
        AndroidMultiParagraphDrawKt.drawMultiParagraph(this, canvas, brush, shadow, textDecoration);
    }

    /* renamed from: paint-RPmYEkk  reason: not valid java name */
    public final void m3614paintRPmYEkk(@NotNull Canvas canvas, long j10, @Nullable Shadow shadow, @Nullable TextDecoration textDecoration) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        canvas.save();
        List<ParagraphInfo> list = this.paragraphInfoList;
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            ParagraphInfo paragraphInfo = list.get(i10);
            paragraphInfo.getParagraph().mo3618paintRPmYEkk(canvas, j10, shadow, textDecoration);
            canvas.translate(0.0f, paragraphInfo.getParagraph().getHeight());
        }
        canvas.restore();
    }

    public /* synthetic */ MultiParagraph(MultiParagraphIntrinsics multiParagraphIntrinsics, long j10, int i10, boolean z10, DefaultConstructorMarker defaultConstructorMarker) {
        this(multiParagraphIntrinsics, j10, i10, z10);
    }

    private MultiParagraph(MultiParagraphIntrinsics multiParagraphIntrinsics, long j10, int i10, boolean z10) {
        boolean z11;
        int m4004getMaxHeightimpl;
        this.intrinsics = multiParagraphIntrinsics;
        this.maxLines = i10;
        if (Constraints.m4007getMinWidthimpl(j10) == 0 && Constraints.m4006getMinHeightimpl(j10) == 0) {
            ArrayList arrayList = new ArrayList();
            List<ParagraphIntrinsicInfo> infoList$ui_text_release = multiParagraphIntrinsics.getInfoList$ui_text_release();
            int size = infoList$ui_text_release.size();
            int i11 = 0;
            int i12 = 0;
            float f10 = 0.0f;
            int i13 = 0;
            while (i13 < size) {
                ParagraphIntrinsicInfo paragraphIntrinsicInfo = infoList$ui_text_release.get(i13);
                ParagraphIntrinsics intrinsics = paragraphIntrinsicInfo.getIntrinsics();
                int m4005getMaxWidthimpl = Constraints.m4005getMaxWidthimpl(j10);
                if (Constraints.m4000getHasBoundedHeightimpl(j10)) {
                    m4004getMaxHeightimpl = e.e(Constraints.m4004getMaxHeightimpl(j10) - ParagraphKt.ceilToInt(f10), i11);
                } else {
                    m4004getMaxHeightimpl = Constraints.m4004getMaxHeightimpl(j10);
                }
                Paragraph m3624Paragraph_EkL_Y = ParagraphKt.m3624Paragraph_EkL_Y(intrinsics, ConstraintsKt.Constraints$default(0, m4005getMaxWidthimpl, 0, m4004getMaxHeightimpl, 5, null), this.maxLines - i12, z10);
                float height = f10 + m3624Paragraph_EkL_Y.getHeight();
                int lineCount = i12 + m3624Paragraph_EkL_Y.getLineCount();
                List<ParagraphIntrinsicInfo> list = infoList$ui_text_release;
                arrayList.add(new ParagraphInfo(m3624Paragraph_EkL_Y, paragraphIntrinsicInfo.getStartIndex(), paragraphIntrinsicInfo.getEndIndex(), i12, lineCount, f10, height));
                if (m3624Paragraph_EkL_Y.getDidExceedMaxLines() || (lineCount == this.maxLines && i13 != CollectionsKt.p(this.intrinsics.getInfoList$ui_text_release()))) {
                    z11 = true;
                    i12 = lineCount;
                    f10 = height;
                    break;
                }
                i13++;
                i12 = lineCount;
                f10 = height;
                i11 = 0;
                infoList$ui_text_release = list;
            }
            z11 = false;
            this.height = f10;
            this.lineCount = i12;
            this.didExceedMaxLines = z11;
            this.paragraphInfoList = arrayList;
            this.width = Constraints.m4005getMaxWidthimpl(j10);
            List<Rect> arrayList2 = new ArrayList<>(arrayList.size());
            int size2 = arrayList.size();
            for (int i14 = 0; i14 < size2; i14++) {
                ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(i14);
                List<Rect> placeholderRects = paragraphInfo.getParagraph().getPlaceholderRects();
                ArrayList arrayList3 = new ArrayList(placeholderRects.size());
                int size3 = placeholderRects.size();
                for (int i15 = 0; i15 < size3; i15++) {
                    Rect rect = placeholderRects.get(i15);
                    arrayList3.add(rect != null ? paragraphInfo.toGlobal(rect) : null);
                }
                CollectionsKt.E(arrayList2, arrayList3);
            }
            if (arrayList2.size() < this.intrinsics.getPlaceholders().size()) {
                int size4 = this.intrinsics.getPlaceholders().size() - arrayList2.size();
                ArrayList arrayList4 = new ArrayList(size4);
                for (int i16 = 0; i16 < size4; i16++) {
                    arrayList4.add(null);
                }
                arrayList2 = CollectionsKt.K0(arrayList2, arrayList4);
            }
            this.placeholderRects = arrayList2;
            return;
        }
        throw new IllegalArgumentException("Setting Constraints.minWidth and Constraints.minHeight is not supported, these should be the default zero values instead.");
    }

    public /* synthetic */ MultiParagraph(MultiParagraphIntrinsics multiParagraphIntrinsics, long j10, int i10, boolean z10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(multiParagraphIntrinsics, j10, (i11 & 4) != 0 ? Integer.MAX_VALUE : i10, (i11 & 8) != 0 ? false : z10, null);
    }

    public /* synthetic */ MultiParagraph(MultiParagraphIntrinsics multiParagraphIntrinsics, int i10, boolean z10, float f10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(multiParagraphIntrinsics, (i11 & 2) != 0 ? Integer.MAX_VALUE : i10, (i11 & 4) != 0 ? false : z10, f10);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @c
    public MultiParagraph(@NotNull MultiParagraphIntrinsics intrinsics, int i10, boolean z10, float f10) {
        this(intrinsics, ConstraintsKt.Constraints$default(0, ParagraphKt.ceilToInt(f10), 0, 0, 13, null), i10, z10, null);
        Intrinsics.checkNotNullParameter(intrinsics, "intrinsics");
    }

    public /* synthetic */ MultiParagraph(AnnotatedString annotatedString, TextStyle textStyle, List list, int i10, boolean z10, float f10, Density density, Font.ResourceLoader resourceLoader, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(annotatedString, textStyle, (i11 & 4) != 0 ? CollectionsKt.n() : list, (i11 & 8) != 0 ? Integer.MAX_VALUE : i10, (i11 & 16) != 0 ? false : z10, f10, density, resourceLoader);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @c
    public MultiParagraph(@NotNull AnnotatedString annotatedString, @NotNull TextStyle style, @NotNull List<AnnotatedString.Range<Placeholder>> placeholders, int i10, boolean z10, float f10, @NotNull Density density, @NotNull Font.ResourceLoader resourceLoader) {
        this(new MultiParagraphIntrinsics(annotatedString, style, placeholders, density, DelegatingFontLoaderForDeprecatedUsage_androidKt.createFontFamilyResolver(resourceLoader)), ConstraintsKt.Constraints$default(0, ParagraphKt.ceilToInt(f10), 0, 0, 13, null), i10, z10, null);
        Intrinsics.checkNotNullParameter(annotatedString, "annotatedString");
        Intrinsics.checkNotNullParameter(style, "style");
        Intrinsics.checkNotNullParameter(placeholders, "placeholders");
        Intrinsics.checkNotNullParameter(density, "density");
        Intrinsics.checkNotNullParameter(resourceLoader, "resourceLoader");
    }

    public /* synthetic */ MultiParagraph(AnnotatedString annotatedString, TextStyle textStyle, float f10, Density density, FontFamily.Resolver resolver, List list, int i10, boolean z10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(annotatedString, textStyle, f10, density, resolver, (List<AnnotatedString.Range<Placeholder>>) ((i11 & 32) != 0 ? CollectionsKt.n() : list), (i11 & 64) != 0 ? Integer.MAX_VALUE : i10, (i11 & 128) != 0 ? false : z10);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @c
    public MultiParagraph(@NotNull AnnotatedString annotatedString, @NotNull TextStyle style, float f10, @NotNull Density density, @NotNull FontFamily.Resolver fontFamilyResolver, @NotNull List<AnnotatedString.Range<Placeholder>> placeholders, int i10, boolean z10) {
        this(new MultiParagraphIntrinsics(annotatedString, style, placeholders, density, fontFamilyResolver), ConstraintsKt.Constraints$default(0, ParagraphKt.ceilToInt(f10), 0, 0, 13, null), i10, z10, null);
        Intrinsics.checkNotNullParameter(annotatedString, "annotatedString");
        Intrinsics.checkNotNullParameter(style, "style");
        Intrinsics.checkNotNullParameter(density, "density");
        Intrinsics.checkNotNullParameter(fontFamilyResolver, "fontFamilyResolver");
        Intrinsics.checkNotNullParameter(placeholders, "placeholders");
    }

    public /* synthetic */ MultiParagraph(AnnotatedString annotatedString, TextStyle textStyle, long j10, Density density, FontFamily.Resolver resolver, List list, int i10, boolean z10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(annotatedString, textStyle, j10, density, resolver, (i11 & 32) != 0 ? CollectionsKt.n() : list, (i11 & 64) != 0 ? Integer.MAX_VALUE : i10, (i11 & 128) != 0 ? false : z10, null);
    }

    private MultiParagraph(AnnotatedString annotatedString, TextStyle textStyle, long j10, Density density, FontFamily.Resolver resolver, List<AnnotatedString.Range<Placeholder>> list, int i10, boolean z10) {
        this(new MultiParagraphIntrinsics(annotatedString, textStyle, list, density, resolver), j10, i10, z10, null);
    }
}
