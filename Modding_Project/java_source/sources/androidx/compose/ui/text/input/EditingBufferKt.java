package androidx.compose.ui.text.input;

import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import kotlin.Metadata;
/* compiled from: EditingBuffer.kt */
@Metadata
/* loaded from: classes.dex */
public final class EditingBufferKt {
    /* renamed from: updateRangeAfterDelete-pWDy79M  reason: not valid java name */
    public static final long m3819updateRangeAfterDeletepWDy79M(long j10, long j11) {
        int m3693getLengthimpl;
        int m3695getMinimpl = TextRange.m3695getMinimpl(j10);
        int m3694getMaximpl = TextRange.m3694getMaximpl(j10);
        if (TextRange.m3699intersects5zctL8(j11, j10)) {
            if (TextRange.m3687contains5zctL8(j11, j10)) {
                m3695getMinimpl = TextRange.m3695getMinimpl(j11);
                m3694getMaximpl = m3695getMinimpl;
            } else {
                if (TextRange.m3687contains5zctL8(j10, j11)) {
                    m3693getLengthimpl = TextRange.m3693getLengthimpl(j11);
                } else if (TextRange.m3688containsimpl(j11, m3695getMinimpl)) {
                    m3695getMinimpl = TextRange.m3695getMinimpl(j11);
                    m3693getLengthimpl = TextRange.m3693getLengthimpl(j11);
                } else {
                    m3694getMaximpl = TextRange.m3695getMinimpl(j11);
                }
                m3694getMaximpl -= m3693getLengthimpl;
            }
        } else if (m3694getMaximpl > TextRange.m3695getMinimpl(j11)) {
            m3695getMinimpl -= TextRange.m3693getLengthimpl(j11);
            m3693getLengthimpl = TextRange.m3693getLengthimpl(j11);
            m3694getMaximpl -= m3693getLengthimpl;
        }
        return TextRangeKt.TextRange(m3695getMinimpl, m3694getMaximpl);
    }
}
