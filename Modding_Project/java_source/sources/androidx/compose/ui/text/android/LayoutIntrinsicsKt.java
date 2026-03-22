package androidx.compose.ui.text.android;

import android.text.Layout;
import android.text.Spanned;
import android.text.TextPaint;
import androidx.compose.ui.text.android.style.LetterSpacingSpanEm;
import androidx.compose.ui.text.android.style.LetterSpacingSpanPx;
import java.text.BreakIterator;
import java.util.Comparator;
import java.util.PriorityQueue;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: LayoutIntrinsics.kt */
@Metadata
/* loaded from: classes.dex */
public final class LayoutIntrinsicsKt {
    public static final float minIntrinsicWidth(@NotNull CharSequence text, @NotNull TextPaint paint) {
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(paint, "paint");
        BreakIterator lineInstance = BreakIterator.getLineInstance(paint.getTextLocale());
        int i10 = 0;
        lineInstance.setText(new CharSequenceCharacterIterator(text, 0, text.length()));
        PriorityQueue<Pair> priorityQueue = new PriorityQueue(10, new Comparator() { // from class: androidx.compose.ui.text.android.a
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int m3722minIntrinsicWidth$lambda0;
                m3722minIntrinsicWidth$lambda0 = LayoutIntrinsicsKt.m3722minIntrinsicWidth$lambda0((Pair) obj, (Pair) obj2);
                return m3722minIntrinsicWidth$lambda0;
            }
        });
        int next = lineInstance.next();
        while (true) {
            int i11 = i10;
            i10 = next;
            if (i10 == -1) {
                break;
            }
            if (priorityQueue.size() < 10) {
                priorityQueue.add(new Pair(Integer.valueOf(i11), Integer.valueOf(i10)));
            } else {
                Pair pair = (Pair) priorityQueue.peek();
                if (pair != null && ((Number) pair.f()).intValue() - ((Number) pair.e()).intValue() < i10 - i11) {
                    priorityQueue.poll();
                    priorityQueue.add(new Pair(Integer.valueOf(i11), Integer.valueOf(i10)));
                }
            }
            next = lineInstance.next();
        }
        float f10 = 0.0f;
        for (Pair pair2 : priorityQueue) {
            f10 = Math.max(f10, Layout.getDesiredWidth(text, ((Number) pair2.b()).intValue(), ((Number) pair2.d()).intValue(), paint));
        }
        return f10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: minIntrinsicWidth$lambda-0  reason: not valid java name */
    public static final int m3722minIntrinsicWidth$lambda0(Pair pair, Pair pair2) {
        return (((Number) pair.f()).intValue() - ((Number) pair.e()).intValue()) - (((Number) pair2.f()).intValue() - ((Number) pair2.e()).intValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean shouldIncreaseMaxIntrinsic(float f10, CharSequence charSequence, TextPaint textPaint) {
        if (f10 != 0.0f && (charSequence instanceof Spanned)) {
            if (textPaint.getLetterSpacing() == 0.0f) {
                Spanned spanned = (Spanned) charSequence;
                if (SpannedExtensionsKt.hasSpan(spanned, LetterSpacingSpanPx.class) || SpannedExtensionsKt.hasSpan(spanned, LetterSpacingSpanEm.class)) {
                }
            }
            return true;
        }
        return false;
    }
}
