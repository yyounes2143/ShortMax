package com.bytedance.bdtracker;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import androidx.core.view.InputDeviceCompat;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes3.dex */
public final class o0 extends p0 {

    /* renamed from: b  reason: collision with root package name */
    public final Paint f12289b;

    public o0(@Nullable Drawable drawable) {
        super(drawable);
        Paint paint = new Paint();
        this.f12289b = paint;
        paint.setColor(InputDeviceCompat.SOURCE_ANY);
        paint.setStrokeWidth(8.0f);
        paint.setStyle(Paint.Style.STROKE);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NotNull Canvas canvas) {
        Intrinsics.checkParameterIsNotNull(canvas, "canvas");
        Drawable drawable = this.f12301a;
        if (drawable != null) {
            drawable.draw(canvas);
        }
        canvas.drawRect(new Rect(0, 0, canvas.getWidth(), canvas.getHeight()), this.f12289b);
    }
}
