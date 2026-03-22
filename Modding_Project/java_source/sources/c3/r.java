package c3;

import android.graphics.Matrix;
import android.graphics.Rect;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
/* compiled from: ScalingUtils.java */
/* loaded from: classes3.dex */
class r extends p {

    /* renamed from: l  reason: collision with root package name */
    public static final q f3030l = new r();

    private r() {
    }

    @Override // c3.p
    public void b(Matrix matrix, Rect rect, int i10, int i11, float f10, float f11, float f12, float f13) {
        matrix.setTranslate((int) (rect.left + ((rect.width() - i10) * 0.5f) + 0.5f), (int) (rect.top + ((rect.height() - i11) * 0.5f) + 0.5f));
    }

    public String toString() {
        return TtmlNode.CENTER;
    }
}
