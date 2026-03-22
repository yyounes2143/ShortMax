package ok;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.style.ReplacementSpan;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: StrokeSpan.kt */
@Metadata
/* loaded from: classes7.dex */
public final class b extends ReplacementSpan {

    /* renamed from: a  reason: collision with root package name */
    private final int f63230a;

    /* renamed from: b  reason: collision with root package name */
    private final float f63231b;

    /* renamed from: c  reason: collision with root package name */
    private final int f63232c;

    public b(int i10, float f10, int i11) {
        this.f63230a = i10;
        this.f63231b = f10;
        this.f63232c = i11;
    }

    @Override // android.text.style.ReplacementSpan
    public void draw(@NotNull Canvas canvas, @NotNull CharSequence text, int i10, int i11, float f10, int i12, int i13, int i14, @NotNull Paint paint) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(paint, "paint");
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(this.f63231b);
        paint.setColor(this.f63230a);
        float f11 = i13;
        canvas.drawText(text, i10, i11, f10, f11, paint);
        paint.setStyle(Paint.Style.FILL);
        paint.setStrokeWidth(0.0f);
        paint.setColor(this.f63232c);
        canvas.drawText(text, i10, i11, f10, f11, paint);
    }

    @Override // android.text.style.ReplacementSpan
    public int getSize(@NotNull Paint paint, @NotNull CharSequence text, int i10, int i11, @Nullable Paint.FontMetricsInt fontMetricsInt) {
        Intrinsics.checkNotNullParameter(paint, "paint");
        Intrinsics.checkNotNullParameter(text, "text");
        return (int) paint.measureText(text, i10, i11);
    }
}
