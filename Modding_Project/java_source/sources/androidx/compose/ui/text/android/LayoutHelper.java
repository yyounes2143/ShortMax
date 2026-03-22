package androidx.compose.ui.text.android;

import android.text.Layout;
import androidx.annotation.IntRange;
import java.text.Bidi;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.n;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LayoutHelper.kt */
@InternalPlatformTextApi
@Metadata
/* loaded from: classes.dex */
public final class LayoutHelper {
    @NotNull
    private final boolean[] bidiProcessedParagraphs;
    @NotNull
    private final Layout layout;
    @NotNull
    private final List<Bidi> paragraphBidi;
    private final int paragraphCount;
    @NotNull
    private final List<Integer> paragraphEnds;
    @Nullable
    private char[] tmpBuffer;

    /* compiled from: LayoutHelper.kt */
    @Metadata
    /* loaded from: classes.dex */
    private static final class BidiRun {
        private final int end;
        private final boolean isRtl;
        private final int start;

        public BidiRun(int i10, int i11, boolean z10) {
            this.start = i10;
            this.end = i11;
            this.isRtl = z10;
        }

        public static /* synthetic */ BidiRun copy$default(BidiRun bidiRun, int i10, int i11, boolean z10, int i12, Object obj) {
            if ((i12 & 1) != 0) {
                i10 = bidiRun.start;
            }
            if ((i12 & 2) != 0) {
                i11 = bidiRun.end;
            }
            if ((i12 & 4) != 0) {
                z10 = bidiRun.isRtl;
            }
            return bidiRun.copy(i10, i11, z10);
        }

        public final int component1() {
            return this.start;
        }

        public final int component2() {
            return this.end;
        }

        public final boolean component3() {
            return this.isRtl;
        }

        @NotNull
        public final BidiRun copy(int i10, int i11, boolean z10) {
            return new BidiRun(i10, i11, z10);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof BidiRun)) {
                return false;
            }
            BidiRun bidiRun = (BidiRun) obj;
            if (this.start == bidiRun.start && this.end == bidiRun.end && this.isRtl == bidiRun.isRtl) {
                return true;
            }
            return false;
        }

        public final int getEnd() {
            return this.end;
        }

        public final int getStart() {
            return this.start;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public int hashCode() {
            int hashCode = ((Integer.hashCode(this.start) * 31) + Integer.hashCode(this.end)) * 31;
            boolean z10 = this.isRtl;
            int i10 = z10;
            if (z10 != 0) {
                i10 = 1;
            }
            return hashCode + i10;
        }

        public final boolean isRtl() {
            return this.isRtl;
        }

        @NotNull
        public String toString() {
            return "BidiRun(start=" + this.start + ", end=" + this.end + ", isRtl=" + this.isRtl + ')';
        }
    }

    public LayoutHelper(@NotNull Layout layout) {
        int i10;
        Intrinsics.checkNotNullParameter(layout, "layout");
        this.layout = layout;
        ArrayList arrayList = new ArrayList();
        int i11 = 0;
        do {
            CharSequence text = this.layout.getText();
            Intrinsics.checkNotNullExpressionValue(text, "layout.text");
            int p02 = StringsKt.p0(text, '\n', i11, false, 4, null);
            if (p02 < 0) {
                i10 = this.layout.getText().length();
            } else {
                i10 = p02 + 1;
            }
            i11 = i10;
            arrayList.add(Integer.valueOf(i11));
        } while (i11 < this.layout.getText().length());
        this.paragraphEnds = arrayList;
        int size = arrayList.size();
        ArrayList arrayList2 = new ArrayList(size);
        for (int i12 = 0; i12 < size; i12++) {
            arrayList2.add(null);
        }
        this.paragraphBidi = arrayList2;
        this.bidiProcessedParagraphs = new boolean[this.paragraphEnds.size()];
        this.paragraphCount = this.paragraphEnds.size();
    }

    private final float getDownstreamHorizontal(int i10, boolean z10) {
        if (z10) {
            return this.layout.getPrimaryHorizontal(i10);
        }
        return this.layout.getSecondaryHorizontal(i10);
    }

    public static /* synthetic */ int getParagraphForOffset$default(LayoutHelper layoutHelper, int i10, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        return layoutHelper.getParagraphForOffset(i10, z10);
    }

    private final int lineEndToVisibleEnd(int i10) {
        while (i10 > 0 && isLineEndSpace(this.layout.getText().charAt(i10 - 1))) {
            i10--;
        }
        return i10;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0060, code lost:
        if (r0.getRunCount() == 1) goto L26;
     */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.text.Bidi analyzeBidi(int r12) {
        /*
            r11 = this;
            boolean[] r0 = r11.bidiProcessedParagraphs
            boolean r0 = r0[r12]
            if (r0 == 0) goto Lf
            java.util.List<java.text.Bidi> r0 = r11.paragraphBidi
            java.lang.Object r12 = r0.get(r12)
            java.text.Bidi r12 = (java.text.Bidi) r12
            return r12
        Lf:
            r0 = 0
            if (r12 != 0) goto L14
            r1 = r0
            goto L22
        L14:
            java.util.List<java.lang.Integer> r1 = r11.paragraphEnds
            int r2 = r12 + (-1)
            java.lang.Object r1 = r1.get(r2)
            java.lang.Number r1 = (java.lang.Number) r1
            int r1 = r1.intValue()
        L22:
            java.util.List<java.lang.Integer> r2 = r11.paragraphEnds
            java.lang.Object r2 = r2.get(r12)
            java.lang.Number r2 = (java.lang.Number) r2
            int r2 = r2.intValue()
            int r8 = r2 - r1
            char[] r3 = r11.tmpBuffer
            if (r3 == 0) goto L3a
            int r4 = r3.length
            if (r4 >= r8) goto L38
            goto L3a
        L38:
            r10 = r3
            goto L3d
        L3a:
            char[] r3 = new char[r8]
            goto L38
        L3d:
            android.text.Layout r3 = r11.layout
            java.lang.CharSequence r3 = r3.getText()
            android.text.TextUtils.getChars(r3, r1, r2, r10, r0)
            boolean r0 = java.text.Bidi.requiresBidi(r10, r0, r8)
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L62
            boolean r9 = r11.isRtlParagraph(r12)
            java.text.Bidi r0 = new java.text.Bidi
            r6 = 0
            r7 = 0
            r5 = 0
            r3 = r0
            r4 = r10
            r3.<init>(r4, r5, r6, r7, r8, r9)
            int r3 = r0.getRunCount()
            if (r3 != r2) goto L63
        L62:
            r0 = r1
        L63:
            java.util.List<java.text.Bidi> r3 = r11.paragraphBidi
            r3.set(r12, r0)
            boolean[] r3 = r11.bidiProcessedParagraphs
            r3[r12] = r2
            if (r0 == 0) goto L75
            char[] r12 = r11.tmpBuffer
            if (r10 != r12) goto L74
            r10 = r1
            goto L75
        L74:
            r10 = r12
        L75:
            r11.tmpBuffer = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.text.android.LayoutHelper.analyzeBidi(int):java.text.Bidi");
    }

    public final float getHorizontalPosition(int i10, boolean z10, boolean z11) {
        Bidi bidi;
        boolean z12;
        if (!z11) {
            return getDownstreamHorizontal(i10, z10);
        }
        int lineForOffset = LayoutCompatKt.getLineForOffset(this.layout, i10, z11);
        int lineStart = this.layout.getLineStart(lineForOffset);
        int lineEnd = this.layout.getLineEnd(lineForOffset);
        if (i10 != lineStart && i10 != lineEnd) {
            return getDownstreamHorizontal(i10, z10);
        }
        if (i10 != 0 && i10 != this.layout.getText().length()) {
            int paragraphForOffset = getParagraphForOffset(i10, z11);
            boolean isRtlParagraph = isRtlParagraph(paragraphForOffset);
            int lineEndToVisibleEnd = lineEndToVisibleEnd(lineEnd);
            int paragraphStart = getParagraphStart(paragraphForOffset);
            int i11 = lineStart - paragraphStart;
            int i12 = lineEndToVisibleEnd - paragraphStart;
            Bidi analyzeBidi = analyzeBidi(paragraphForOffset);
            if (analyzeBidi != null) {
                bidi = analyzeBidi.createLineBidi(i11, i12);
            } else {
                bidi = null;
            }
            boolean z13 = false;
            if (bidi != null && bidi.getRunCount() != 1) {
                int runCount = bidi.getRunCount();
                BidiRun[] bidiRunArr = new BidiRun[runCount];
                for (int i13 = 0; i13 < runCount; i13++) {
                    int runStart = bidi.getRunStart(i13) + lineStart;
                    int runLimit = bidi.getRunLimit(i13) + lineStart;
                    if (bidi.getRunLevel(i13) % 2 == 1) {
                        z12 = true;
                    } else {
                        z12 = false;
                    }
                    bidiRunArr[i13] = new BidiRun(runStart, runLimit, z12);
                }
                int runCount2 = bidi.getRunCount();
                byte[] bArr = new byte[runCount2];
                for (int i14 = 0; i14 < runCount2; i14++) {
                    bArr[i14] = (byte) bidi.getRunLevel(i14);
                }
                Bidi.reorderVisually(bArr, 0, bidiRunArr, 0, runCount);
                int i15 = -1;
                if (i10 == lineStart) {
                    int i16 = 0;
                    while (true) {
                        if (i16 >= runCount) {
                            break;
                        } else if (bidiRunArr[i16].getStart() == i10) {
                            i15 = i16;
                            break;
                        } else {
                            i16++;
                        }
                    }
                    BidiRun bidiRun = bidiRunArr[i15];
                    if (z10 || isRtlParagraph == bidiRun.isRtl()) {
                        if (!isRtlParagraph) {
                            isRtlParagraph = true;
                        } else {
                            isRtlParagraph = false;
                        }
                    }
                    if (i15 == 0 && isRtlParagraph) {
                        return this.layout.getLineLeft(lineForOffset);
                    }
                    if (i15 == n.r0(bidiRunArr) && !isRtlParagraph) {
                        return this.layout.getLineRight(lineForOffset);
                    }
                    if (isRtlParagraph) {
                        return this.layout.getPrimaryHorizontal(bidiRunArr[i15 - 1].getStart());
                    }
                    return this.layout.getPrimaryHorizontal(bidiRunArr[i15 + 1].getStart());
                }
                int i17 = 0;
                while (true) {
                    if (i17 >= runCount) {
                        break;
                    } else if (bidiRunArr[i17].getEnd() == i10) {
                        i15 = i17;
                        break;
                    } else {
                        i17++;
                    }
                }
                BidiRun bidiRun2 = bidiRunArr[i15];
                if (!z10 && isRtlParagraph != bidiRun2.isRtl()) {
                    isRtlParagraph = !isRtlParagraph;
                }
                if (i15 == 0 && isRtlParagraph) {
                    return this.layout.getLineLeft(lineForOffset);
                }
                if (i15 == n.r0(bidiRunArr) && !isRtlParagraph) {
                    return this.layout.getLineRight(lineForOffset);
                }
                if (isRtlParagraph) {
                    return this.layout.getPrimaryHorizontal(bidiRunArr[i15 - 1].getEnd());
                }
                return this.layout.getPrimaryHorizontal(bidiRunArr[i15 + 1].getEnd());
            }
            boolean isRtlCharAt = this.layout.isRtlCharAt(lineStart);
            if (z10 || isRtlParagraph == isRtlCharAt) {
                if (!isRtlParagraph) {
                    isRtlParagraph = true;
                } else {
                    isRtlParagraph = false;
                }
            }
            if (i10 == lineStart) {
                z13 = isRtlParagraph;
            } else if (!isRtlParagraph) {
                z13 = true;
            }
            Layout layout = this.layout;
            if (z13) {
                return layout.getLineLeft(lineForOffset);
            }
            return layout.getLineRight(lineForOffset);
        }
        return getDownstreamHorizontal(i10, z10);
    }

    @NotNull
    public final Layout getLayout() {
        return this.layout;
    }

    public final int getParagraphCount() {
        return this.paragraphCount;
    }

    public final int getParagraphEnd(@IntRange(from = 0) int i10) {
        return this.paragraphEnds.get(i10).intValue();
    }

    public final int getParagraphForOffset(@IntRange(from = 0) int i10, boolean z10) {
        int i11;
        int m10 = CollectionsKt.m(this.paragraphEnds, Integer.valueOf(i10), 0, 0, 6, null);
        if (m10 < 0) {
            i11 = -(m10 + 1);
        } else {
            i11 = m10 + 1;
        }
        if (z10 && i11 > 0) {
            int i12 = i11 - 1;
            if (i10 == this.paragraphEnds.get(i12).intValue()) {
                return i12;
            }
        }
        return i11;
    }

    public final int getParagraphStart(@IntRange(from = 0) int i10) {
        if (i10 == 0) {
            return 0;
        }
        return this.paragraphEnds.get(i10 - 1).intValue();
    }

    public final boolean isLineEndSpace(char c10) {
        if (c10 != ' ' && c10 != '\n' && c10 != 5760 && ((8192 > c10 || c10 >= 8203 || c10 == 8199) && c10 != 8287 && c10 != 12288)) {
            return false;
        }
        return true;
    }

    public final boolean isRtlParagraph(@IntRange(from = 0) int i10) {
        if (this.layout.getParagraphDirection(this.layout.getLineForOffset(getParagraphStart(i10))) == -1) {
            return true;
        }
        return false;
    }
}
