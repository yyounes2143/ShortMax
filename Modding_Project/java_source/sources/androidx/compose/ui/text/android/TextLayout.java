package androidx.compose.ui.text.android;

import android.graphics.Canvas;
import android.graphics.Path;
import android.os.Build;
import android.text.BoringLayout;
import android.text.Layout;
import android.text.Spanned;
import android.text.TextDirectionHeuristic;
import android.text.TextPaint;
import android.text.TextUtils;
import androidx.annotation.Px;
import androidx.annotation.VisibleForTesting;
import androidx.compose.ui.text.android.style.BaselineShiftSpan;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TextLayout.kt */
@InternalPlatformTextApi
@Metadata
/* loaded from: classes.dex */
public final class TextLayout {
    private final int bottomPadding;
    private final boolean didExceedMaxLines;
    private final boolean fallbackLineSpacing;
    private final boolean includePadding;
    private final boolean isBoringLayout;
    @NotNull
    private final Layout layout;
    @NotNull
    private final i layoutHelper$delegate;
    @NotNull
    private final LayoutIntrinsics layoutIntrinsics;
    private final int lineCount;
    private final int topPadding;

    public TextLayout(@NotNull CharSequence charSequence, float f10, @NotNull TextPaint textPaint, int i10, @Nullable TextUtils.TruncateAt truncateAt, int i11, float f11, @Px float f12, boolean z10, boolean z11, int i12, int i13, int i14, int i15, @Nullable int[] iArr, @Nullable int[] iArr2, @NotNull LayoutIntrinsics layoutIntrinsics) {
        boolean z12;
        boolean z13;
        Layout create;
        Pair verticalPaddings;
        Pair lineHeightPaddings;
        Intrinsics.checkNotNullParameter(charSequence, "charSequence");
        Intrinsics.checkNotNullParameter(textPaint, "textPaint");
        Intrinsics.checkNotNullParameter(layoutIntrinsics, "layoutIntrinsics");
        this.includePadding = z10;
        this.fallbackLineSpacing = z11;
        this.layoutIntrinsics = layoutIntrinsics;
        int length = charSequence.length();
        TextDirectionHeuristic textDirectionHeuristic = TextLayoutKt.getTextDirectionHeuristic(i11);
        Layout.Alignment alignment = TextAlignmentAdapter.INSTANCE.get(i10);
        boolean z14 = (charSequence instanceof Spanned) && ((Spanned) charSequence).nextSpanTransition(-1, length, BaselineShiftSpan.class) < length;
        BoringLayout.Metrics boringMetrics = layoutIntrinsics.getBoringMetrics();
        double d10 = f10;
        int ceil = (int) Math.ceil(d10);
        if (boringMetrics != null && layoutIntrinsics.getMaxIntrinsicWidth() <= f10 && !z14) {
            this.isBoringLayout = true;
            create = BoringLayoutFactory.INSTANCE.create(charSequence, textPaint, ceil, boringMetrics, alignment, z10, truncateAt, ceil);
            z12 = true;
            z13 = false;
        } else {
            this.isBoringLayout = false;
            z12 = true;
            z13 = false;
            create = StaticLayoutFactory.INSTANCE.create(charSequence, 0, charSequence.length(), textPaint, ceil, textDirectionHeuristic, alignment, i12, truncateAt, (int) Math.ceil(d10), f11, f12, i15, z10, z11, i13, i14, iArr, iArr2);
        }
        this.layout = create;
        int min = Math.min(create.getLineCount(), i12);
        this.lineCount = min;
        this.didExceedMaxLines = (min >= i12 && (create.getEllipsisCount(min + (-1)) > 0 || create.getLineEnd(min + (-1)) != charSequence.length())) ? z12 : z13;
        verticalPaddings = TextLayoutKt.getVerticalPaddings(this);
        lineHeightPaddings = TextLayoutKt.getLineHeightPaddings(this);
        this.topPadding = Math.max(((Number) verticalPaddings.e()).intValue(), ((Number) lineHeightPaddings.e()).intValue());
        this.bottomPadding = Math.max(((Number) verticalPaddings.f()).intValue(), ((Number) lineHeightPaddings.f()).intValue());
        this.layoutHelper$delegate = kotlin.c.a(LazyThreadSafetyMode.NONE, new Function0<LayoutHelper>() { // from class: androidx.compose.ui.text.android.TextLayout$layoutHelper$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final LayoutHelper invoke() {
                return new LayoutHelper(TextLayout.this.getLayout());
            }
        });
    }

    private final LayoutHelper getLayoutHelper() {
        return (LayoutHelper) this.layoutHelper$delegate.getValue();
    }

    public static /* synthetic */ float getPrimaryHorizontal$default(TextLayout textLayout, int i10, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        return textLayout.getPrimaryHorizontal(i10, z10);
    }

    public static /* synthetic */ float getSecondaryHorizontal$default(TextLayout textLayout, int i10, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        return textLayout.getSecondaryHorizontal(i10, z10);
    }

    public final void fillBoundingBoxes(int i10, int i11, @NotNull float[] array, int i12) {
        float secondaryDownstream;
        float secondaryUpstream;
        Intrinsics.checkNotNullParameter(array, "array");
        int length = getText().length();
        if (i10 >= 0) {
            if (i10 < length) {
                if (i11 > i10) {
                    if (i11 <= length) {
                        if (array.length - i12 >= (i11 - i10) * 4) {
                            int lineForOffset = getLineForOffset(i10);
                            int lineForOffset2 = getLineForOffset(i11 - 1);
                            HorizontalPositionCache horizontalPositionCache = new HorizontalPositionCache(this);
                            if (lineForOffset > lineForOffset2) {
                                return;
                            }
                            while (true) {
                                int lineStart = getLineStart(lineForOffset);
                                int lineEnd = getLineEnd(lineForOffset);
                                int min = Math.min(i11, lineEnd);
                                float lineTop = getLineTop(lineForOffset);
                                float lineBottom = getLineBottom(lineForOffset);
                                boolean z10 = true;
                                if (getParagraphDirection(lineForOffset) != 1) {
                                    z10 = false;
                                }
                                for (int max = Math.max(i10, lineStart); max < min; max++) {
                                    boolean isRtlCharAt = isRtlCharAt(max);
                                    if (z10 && !isRtlCharAt) {
                                        secondaryDownstream = horizontalPositionCache.getPrimaryDownstream(max);
                                        secondaryUpstream = horizontalPositionCache.getPrimaryUpstream(max + 1);
                                    } else if (z10 && isRtlCharAt) {
                                        secondaryUpstream = horizontalPositionCache.getSecondaryDownstream(max);
                                        secondaryDownstream = horizontalPositionCache.getSecondaryUpstream(max + 1);
                                    } else if (!z10 && isRtlCharAt) {
                                        secondaryUpstream = horizontalPositionCache.getPrimaryDownstream(max);
                                        secondaryDownstream = horizontalPositionCache.getPrimaryUpstream(max + 1);
                                    } else {
                                        secondaryDownstream = horizontalPositionCache.getSecondaryDownstream(max);
                                        secondaryUpstream = horizontalPositionCache.getSecondaryUpstream(max + 1);
                                    }
                                    array[i12] = secondaryDownstream;
                                    array[i12 + 1] = lineTop;
                                    array[i12 + 2] = secondaryUpstream;
                                    array[i12 + 3] = lineBottom;
                                    i12 += 4;
                                }
                                if (lineForOffset != lineForOffset2) {
                                    lineForOffset++;
                                } else {
                                    return;
                                }
                            }
                        } else {
                            throw new IllegalArgumentException("array.size - arrayStart must be greater or equal than (endOffset - startOffset) * 4");
                        }
                    } else {
                        throw new IllegalArgumentException("endOffset must be smaller or equal to text length");
                    }
                } else {
                    throw new IllegalArgumentException("endOffset must be greater than startOffset");
                }
            } else {
                throw new IllegalArgumentException("startOffset must be less than text length");
            }
        } else {
            throw new IllegalArgumentException("startOffset must be > 0");
        }
    }

    public final int getBottomPadding$ui_text_release() {
        return this.bottomPadding;
    }

    public final boolean getDidExceedMaxLines() {
        return this.didExceedMaxLines;
    }

    public final boolean getFallbackLineSpacing() {
        return this.fallbackLineSpacing;
    }

    public final int getHeight() {
        int height;
        if (this.didExceedMaxLines) {
            height = this.layout.getLineBottom(this.lineCount - 1);
        } else {
            height = this.layout.getHeight();
        }
        return height + this.topPadding + this.bottomPadding;
    }

    public final boolean getIncludePadding() {
        return this.includePadding;
    }

    @NotNull
    public final Layout getLayout() {
        return this.layout;
    }

    @NotNull
    public final LayoutIntrinsics getLayoutIntrinsics() {
        return this.layoutIntrinsics;
    }

    public final float getLineAscent(int i10) {
        return this.layout.getLineAscent(i10);
    }

    public final float getLineBaseline(int i10) {
        return this.topPadding + this.layout.getLineBaseline(i10);
    }

    public final float getLineBottom(int i10) {
        int i11;
        float lineBottom = this.topPadding + this.layout.getLineBottom(i10);
        if (i10 == this.lineCount - 1) {
            i11 = this.bottomPadding;
        } else {
            i11 = 0;
        }
        return lineBottom + i11;
    }

    public final int getLineCount() {
        return this.lineCount;
    }

    public final float getLineDescent(int i10) {
        return this.layout.getLineDescent(i10);
    }

    public final int getLineEllipsisCount(int i10) {
        return this.layout.getEllipsisCount(i10);
    }

    public final int getLineEllipsisOffset(int i10) {
        return this.layout.getEllipsisStart(i10);
    }

    public final int getLineEnd(int i10) {
        if (this.layout.getEllipsisStart(i10) == 0) {
            return this.layout.getLineEnd(i10);
        }
        return this.layout.getText().length();
    }

    public final int getLineForOffset(int i10) {
        return this.layout.getLineForOffset(i10);
    }

    public final int getLineForVertical(int i10) {
        return this.layout.getLineForVertical(this.topPadding + i10);
    }

    public final float getLineHeight(int i10) {
        return getLineBottom(i10) - getLineTop(i10);
    }

    public final float getLineLeft(int i10) {
        return this.layout.getLineLeft(i10);
    }

    public final float getLineRight(int i10) {
        return this.layout.getLineRight(i10);
    }

    public final int getLineStart(int i10) {
        return this.layout.getLineStart(i10);
    }

    public final float getLineTop(int i10) {
        int i11;
        float lineTop = this.layout.getLineTop(i10);
        if (i10 == 0) {
            i11 = 0;
        } else {
            i11 = this.topPadding;
        }
        return lineTop + i11;
    }

    public final int getLineVisibleEnd(int i10) {
        if (this.layout.getEllipsisStart(i10) == 0) {
            return this.layout.getLineVisibleEnd(i10);
        }
        return this.layout.getEllipsisStart(i10) + this.layout.getLineStart(i10);
    }

    public final float getLineWidth(int i10) {
        return this.layout.getLineWidth(i10);
    }

    public final float getMaxIntrinsicWidth() {
        return this.layoutIntrinsics.getMaxIntrinsicWidth();
    }

    public final float getMinIntrinsicWidth() {
        return this.layoutIntrinsics.getMinIntrinsicWidth();
    }

    public final int getOffsetForHorizontal(int i10, float f10) {
        return this.layout.getOffsetForHorizontal(i10, f10);
    }

    public final int getParagraphDirection(int i10) {
        return this.layout.getParagraphDirection(i10);
    }

    public final float getPrimaryHorizontal(int i10, boolean z10) {
        return getLayoutHelper().getHorizontalPosition(i10, true, z10);
    }

    public final float getSecondaryHorizontal(int i10, boolean z10) {
        return getLayoutHelper().getHorizontalPosition(i10, false, z10);
    }

    public final void getSelectionPath(int i10, int i11, @NotNull Path dest) {
        Intrinsics.checkNotNullParameter(dest, "dest");
        this.layout.getSelectionPath(i10, i11, dest);
        if (this.topPadding != 0 && !dest.isEmpty()) {
            dest.offset(0.0f, this.topPadding);
        }
    }

    @NotNull
    public final CharSequence getText() {
        CharSequence text = this.layout.getText();
        Intrinsics.checkNotNullExpressionValue(text, "layout.text");
        return text;
    }

    public final int getTopPadding$ui_text_release() {
        return this.topPadding;
    }

    public final boolean isEllipsisApplied(int i10) {
        if (this.layout.getEllipsisCount(i10) > 0) {
            return true;
        }
        return false;
    }

    public final boolean isFallbackLinespacingApplied$ui_text_release() {
        if (this.fallbackLineSpacing && !this.isBoringLayout && Build.VERSION.SDK_INT >= 28) {
            return true;
        }
        return false;
    }

    public final boolean isLineEllipsized(int i10) {
        if (this.layout.getEllipsisStart(i10) != 0) {
            return true;
        }
        return false;
    }

    public final boolean isRtlCharAt(int i10) {
        return this.layout.isRtlCharAt(i10);
    }

    public final void paint(@NotNull Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        int i10 = this.topPadding;
        if (i10 != 0) {
            canvas.translate(0.0f, i10);
        }
        this.layout.draw(canvas);
        int i11 = this.topPadding;
        if (i11 != 0) {
            canvas.translate(0.0f, (-1) * i11);
        }
    }

    @VisibleForTesting
    public static /* synthetic */ void getBottomPadding$ui_text_release$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getLayout$annotations() {
    }

    @VisibleForTesting
    public static /* synthetic */ void getTopPadding$ui_text_release$annotations() {
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ TextLayout(java.lang.CharSequence r22, float r23, android.text.TextPaint r24, int r25, android.text.TextUtils.TruncateAt r26, int r27, float r28, float r29, boolean r30, boolean r31, int r32, int r33, int r34, int r35, int[] r36, int[] r37, androidx.compose.ui.text.android.LayoutIntrinsics r38, int r39, kotlin.jvm.internal.DefaultConstructorMarker r40) {
        /*
            r21 = this;
            r0 = r39
            r1 = r0 & 2
            r2 = 0
            if (r1 == 0) goto L9
            r5 = r2
            goto Lb
        L9:
            r5 = r23
        Lb:
            r1 = r0 & 8
            r3 = 0
            if (r1 == 0) goto L12
            r7 = r3
            goto L14
        L12:
            r7 = r25
        L14:
            r1 = r0 & 16
            r4 = 0
            if (r1 == 0) goto L1b
            r8 = r4
            goto L1d
        L1b:
            r8 = r26
        L1d:
            r1 = r0 & 32
            if (r1 == 0) goto L24
            r1 = 2
            r9 = r1
            goto L26
        L24:
            r9 = r27
        L26:
            r1 = r0 & 64
            if (r1 == 0) goto L2e
            r1 = 1065353216(0x3f800000, float:1.0)
            r10 = r1
            goto L30
        L2e:
            r10 = r28
        L30:
            r1 = r0 & 128(0x80, float:1.794E-43)
            if (r1 == 0) goto L36
            r11 = r2
            goto L38
        L36:
            r11 = r29
        L38:
            r1 = r0 & 256(0x100, float:3.59E-43)
            if (r1 == 0) goto L3e
            r12 = r3
            goto L40
        L3e:
            r12 = r30
        L40:
            r1 = r0 & 512(0x200, float:7.175E-43)
            if (r1 == 0) goto L47
            r1 = 1
            r13 = r1
            goto L49
        L47:
            r13 = r31
        L49:
            r1 = r0 & 1024(0x400, float:1.435E-42)
            if (r1 == 0) goto L52
            r1 = 2147483647(0x7fffffff, float:NaN)
            r14 = r1
            goto L54
        L52:
            r14 = r32
        L54:
            r1 = r0 & 2048(0x800, float:2.87E-42)
            if (r1 == 0) goto L5a
            r15 = r3
            goto L5c
        L5a:
            r15 = r33
        L5c:
            r1 = r0 & 4096(0x1000, float:5.74E-42)
            if (r1 == 0) goto L63
            r16 = r3
            goto L65
        L63:
            r16 = r34
        L65:
            r1 = r0 & 8192(0x2000, float:1.14794E-41)
            if (r1 == 0) goto L6c
            r17 = r3
            goto L6e
        L6c:
            r17 = r35
        L6e:
            r1 = r0 & 16384(0x4000, float:2.2959E-41)
            if (r1 == 0) goto L75
            r18 = r4
            goto L77
        L75:
            r18 = r36
        L77:
            r1 = 32768(0x8000, float:4.5918E-41)
            r1 = r1 & r0
            if (r1 == 0) goto L80
            r19 = r4
            goto L82
        L80:
            r19 = r37
        L82:
            r1 = 65536(0x10000, float:9.18355E-41)
            r0 = r0 & r1
            if (r0 == 0) goto L93
            androidx.compose.ui.text.android.LayoutIntrinsics r0 = new androidx.compose.ui.text.android.LayoutIntrinsics
            r1 = r22
            r2 = r24
            r0.<init>(r1, r2, r9)
            r20 = r0
            goto L99
        L93:
            r1 = r22
            r2 = r24
            r20 = r38
        L99:
            r3 = r21
            r4 = r22
            r6 = r24
            r3.<init>(r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.text.android.TextLayout.<init>(java.lang.CharSequence, float, android.text.TextPaint, int, android.text.TextUtils$TruncateAt, int, float, float, boolean, boolean, int, int, int, int, int[], int[], androidx.compose.ui.text.android.LayoutIntrinsics, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }
}
