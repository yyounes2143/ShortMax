package androidx.compose.ui.text;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: MultiParagraph.kt */
@Metadata
/* loaded from: classes.dex */
public final class MultiParagraphKt {
    private static final <T> int fastBinarySearch(List<? extends T> list, Function1<? super T, Integer> function1) {
        int size = list.size() - 1;
        int i10 = 0;
        while (i10 <= size) {
            int i11 = (i10 + size) >>> 1;
            int intValue = function1.invoke((T) list.get(i11)).intValue();
            if (intValue < 0) {
                i10 = i11 + 1;
            } else if (intValue > 0) {
                size = i11 - 1;
            } else {
                return i11;
            }
        }
        return -(i10 + 1);
    }

    public static final int findParagraphByIndex(@NotNull List<ParagraphInfo> paragraphInfoList, int i10) {
        char c10;
        Intrinsics.checkNotNullParameter(paragraphInfoList, "paragraphInfoList");
        int size = paragraphInfoList.size() - 1;
        int i11 = 0;
        while (i11 <= size) {
            int i12 = (i11 + size) >>> 1;
            ParagraphInfo paragraphInfo = paragraphInfoList.get(i12);
            if (paragraphInfo.getStartIndex() > i10) {
                c10 = 1;
            } else if (paragraphInfo.getEndIndex() <= i10) {
                c10 = 65535;
            } else {
                c10 = 0;
            }
            if (c10 < 0) {
                i11 = i12 + 1;
            } else if (c10 > 0) {
                size = i12 - 1;
            } else {
                return i12;
            }
        }
        return -(i11 + 1);
    }

    public static final int findParagraphByLineIndex(@NotNull List<ParagraphInfo> paragraphInfoList, int i10) {
        char c10;
        Intrinsics.checkNotNullParameter(paragraphInfoList, "paragraphInfoList");
        int size = paragraphInfoList.size() - 1;
        int i11 = 0;
        while (i11 <= size) {
            int i12 = (i11 + size) >>> 1;
            ParagraphInfo paragraphInfo = paragraphInfoList.get(i12);
            if (paragraphInfo.getStartLineIndex() > i10) {
                c10 = 1;
            } else if (paragraphInfo.getEndLineIndex() <= i10) {
                c10 = 65535;
            } else {
                c10 = 0;
            }
            if (c10 < 0) {
                i11 = i12 + 1;
            } else if (c10 > 0) {
                size = i12 - 1;
            } else {
                return i12;
            }
        }
        return -(i11 + 1);
    }

    public static final int findParagraphByY(@NotNull List<ParagraphInfo> paragraphInfoList, float f10) {
        char c10;
        Intrinsics.checkNotNullParameter(paragraphInfoList, "paragraphInfoList");
        int size = paragraphInfoList.size() - 1;
        int i10 = 0;
        while (i10 <= size) {
            int i11 = (i10 + size) >>> 1;
            ParagraphInfo paragraphInfo = paragraphInfoList.get(i11);
            if (paragraphInfo.getTop() > f10) {
                c10 = 1;
            } else if (paragraphInfo.getBottom() <= f10) {
                c10 = 65535;
            } else {
                c10 = 0;
            }
            if (c10 < 0) {
                i10 = i11 + 1;
            } else if (c10 > 0) {
                size = i11 - 1;
            } else {
                return i11;
            }
        }
        return -(i10 + 1);
    }
}
