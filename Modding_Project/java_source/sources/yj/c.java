package yj;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: TrackRectDrawable.kt */
@Metadata
/* loaded from: classes7.dex */
public final class c extends a {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(@NotNull ColorStateList tintStateList) {
        super(tintStateList);
        Intrinsics.checkNotNullParameter(tintStateList, "tintStateList");
    }

    @Override // yj.a
    public void a(@NotNull Canvas canvas, @NotNull Paint paint) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Intrinsics.checkNotNullParameter(paint, "paint");
        paint.setAntiAlias(true);
        paint.setStyle(Paint.Style.FILL);
        canvas.drawRect(new RectF(getBounds()), paint);
    }
}
