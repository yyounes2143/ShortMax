package pc;

import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.Rect;
import androidx.annotation.NonNull;
/* compiled from: ArrowDrawable.java */
/* loaded from: classes6.dex */
public class a extends oc.a {

    /* renamed from: b  reason: collision with root package name */
    private int f64851b = 0;

    /* renamed from: c  reason: collision with root package name */
    private int f64852c = 0;

    /* renamed from: d  reason: collision with root package name */
    private final Path f64853d = new Path();

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        Rect bounds = getBounds();
        int width = bounds.width();
        int height = bounds.height();
        if (this.f64851b != width || this.f64852c != height) {
            this.f64853d.reset();
            float f10 = (width * 30) / 225;
            float f11 = f10 * 0.70710677f;
            float f12 = f10 / 0.70710677f;
            float f13 = width;
            float f14 = f13 / 2.0f;
            float f15 = height;
            this.f64853d.moveTo(f14, f15);
            float f16 = f15 / 2.0f;
            this.f64853d.lineTo(0.0f, f16);
            float f17 = f16 - f11;
            this.f64853d.lineTo(f11, f17);
            float f18 = f10 / 2.0f;
            float f19 = f14 - f18;
            float f20 = (f15 - f12) - f18;
            this.f64853d.lineTo(f19, f20);
            this.f64853d.lineTo(f19, 0.0f);
            float f21 = f14 + f18;
            this.f64853d.lineTo(f21, 0.0f);
            this.f64853d.lineTo(f21, f20);
            this.f64853d.lineTo(f13 - f11, f17);
            this.f64853d.lineTo(f13, f16);
            this.f64853d.close();
            this.f64851b = width;
            this.f64852c = height;
        }
        canvas.drawPath(this.f64853d, this.f63176a);
    }
}
