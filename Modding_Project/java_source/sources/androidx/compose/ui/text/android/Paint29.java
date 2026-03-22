package androidx.compose.ui.text.android;

import android.graphics.Paint;
import android.graphics.Rect;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: PaintExtensions.kt */
@RequiresApi(29)
@Metadata
/* loaded from: classes.dex */
final class Paint29 {
    @NotNull
    public static final Paint29 INSTANCE = new Paint29();

    private Paint29() {
    }

    @DoNotInline
    public static final void getTextBounds(@NotNull Paint paint, @NotNull CharSequence text, int i10, int i11, @NotNull Rect rect) {
        Intrinsics.checkNotNullParameter(paint, "paint");
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(rect, "rect");
        paint.getTextBounds(text, i10, i11, rect);
    }
}
