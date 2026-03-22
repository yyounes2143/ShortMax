package yj;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: TrackRoundRectDrawable.kt */
@Metadata
/* loaded from: classes7.dex */
public final class d extends a {

    /* renamed from: e  reason: collision with root package name */
    private final boolean f71001e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(@NotNull ColorStateList tintStateList, boolean z10) {
        super(tintStateList);
        Intrinsics.checkNotNullParameter(tintStateList, "tintStateList");
        this.f71001e = z10;
    }

    @Override // yj.a
    public void a(@NotNull Canvas canvas, @NotNull Paint paint) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Intrinsics.checkNotNullParameter(paint, "paint");
        paint.setAntiAlias(true);
        paint.setStyle(Paint.Style.FILL);
        canvas.drawRoundRect(new RectF(getBounds()), 20.0f, 20.0f, paint);
        if (!this.f71001e) {
            canvas.drawRect(getBounds().left, getBounds().top, getBounds().right - 10.0f, getBounds().bottom, paint);
        }
    }

    public /* synthetic */ d(ColorStateList colorStateList, boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(colorStateList, (i10 & 2) != 0 ? false : z10);
    }
}
