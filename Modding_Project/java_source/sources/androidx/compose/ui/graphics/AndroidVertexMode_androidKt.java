package androidx.compose.ui.graphics;

import android.graphics.Canvas;
import androidx.compose.ui.graphics.VertexMode;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: AndroidVertexMode.android.kt */
@Metadata
/* loaded from: classes.dex */
public final class AndroidVertexMode_androidKt {
    @NotNull
    /* renamed from: toAndroidVertexMode-JOOmi9M  reason: not valid java name */
    public static final Canvas.VertexMode m1750toAndroidVertexModeJOOmi9M(int i10) {
        VertexMode.Companion companion = VertexMode.Companion;
        if (VertexMode.m2188equalsimpl0(i10, companion.m2194getTrianglesc2xauaI())) {
            return Canvas.VertexMode.TRIANGLES;
        }
        if (VertexMode.m2188equalsimpl0(i10, companion.m2193getTriangleStripc2xauaI())) {
            return Canvas.VertexMode.TRIANGLE_STRIP;
        }
        if (VertexMode.m2188equalsimpl0(i10, companion.m2192getTriangleFanc2xauaI())) {
            return Canvas.VertexMode.TRIANGLE_FAN;
        }
        return Canvas.VertexMode.TRIANGLES;
    }
}
