package androidx.compose.foundation.text;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Rect;
import kotlin.Metadata;
/* compiled from: TextLayoutResultProxy.kt */
@Metadata
/* loaded from: classes.dex */
public final class TextLayoutResultProxyKt {
    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: coerceIn-3MmeM6k  reason: not valid java name */
    public static final long m799coerceIn3MmeM6k(long j10, Rect rect) {
        float m1606getXimpl;
        float m1607getYimpl;
        if (Offset.m1606getXimpl(j10) < rect.getLeft()) {
            m1606getXimpl = rect.getLeft();
        } else if (Offset.m1606getXimpl(j10) > rect.getRight()) {
            m1606getXimpl = rect.getRight();
        } else {
            m1606getXimpl = Offset.m1606getXimpl(j10);
        }
        if (Offset.m1607getYimpl(j10) < rect.getTop()) {
            m1607getYimpl = rect.getTop();
        } else if (Offset.m1607getYimpl(j10) > rect.getBottom()) {
            m1607getYimpl = rect.getBottom();
        } else {
            m1607getYimpl = Offset.m1607getYimpl(j10);
        }
        return OffsetKt.Offset(m1606getXimpl, m1607getYimpl);
    }
}
