package com.bytedance.sdk.openadsdk.core.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.NinePatchDrawable;
@SuppressLint({"AppCompatCustomView"})
/* loaded from: classes3.dex */
public class oJ extends com.bytedance.sdk.openadsdk.core.Pfn.ex {
    private int ZYk;
    private int oJ;

    public oJ(Context context) {
        super(context);
        this.oJ = 0;
        this.ZYk = 0;
    }

    private boolean ZYk() {
        if (getDrawable().getClass() != NinePatchDrawable.class) {
            if (!(getDrawable() instanceof BitmapDrawable) || ((BitmapDrawable) getDrawable()).getBitmap() != null) {
                return false;
            }
            return true;
        }
        return true;
    }

    private Paint getPaint() {
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setFilterBitmap(true);
        paint.setDither(true);
        return paint;
    }

    private int getRadius() {
        if (this.oJ == 0) {
            this.oJ = getWidth();
        }
        if (this.ZYk == 0) {
            this.ZYk = getHeight();
        }
        int i10 = this.oJ;
        int i11 = this.ZYk;
        if (i10 >= i11) {
            i10 = i11;
        }
        return i10 / 2;
    }

    private boolean oJ() {
        return getDrawable() == null || getWidth() == 0 || getHeight() == 0;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        Bitmap bitmap;
        int radius;
        Bitmap bitmap2;
        if (oJ()) {
            return;
        }
        measure(0, 0);
        if (ZYk()) {
            return;
        }
        try {
            bitmap = ((BitmapDrawable) getDrawable()).getBitmap().copy(Bitmap.Config.ARGB_8888, true);
        } catch (Throwable unused) {
            bitmap = null;
        }
        if (bitmap == null) {
            super.onDraw(canvas);
            return;
        }
        try {
            bitmap2 = oJ(bitmap, getRadius());
        } catch (Throwable unused2) {
            bitmap2 = null;
        }
        if (bitmap2 == null) {
            super.onDraw(canvas);
        } else {
            canvas.drawBitmap(bitmap2, (this.oJ / 2) - radius, (this.ZYk / 2) - radius, (Paint) null);
        }
    }

    private Bitmap oJ(Bitmap bitmap, int i10) {
        Bitmap createBitmap;
        int i11 = i10 * 2;
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        if (height > width) {
            createBitmap = Bitmap.createBitmap(bitmap, 0, (height - width) / 2, width, width);
        } else {
            createBitmap = height < width ? Bitmap.createBitmap(bitmap, (width - height) / 2, 0, height, height) : null;
        }
        if (createBitmap != null) {
            bitmap = createBitmap;
        }
        if (bitmap.getWidth() != i11 || bitmap.getHeight() != i11) {
            bitmap = Bitmap.createScaledBitmap(bitmap, i11, i11, true);
        }
        Bitmap createBitmap2 = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap2);
        Paint paint = getPaint();
        Rect rect = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
        canvas.drawARGB(0, 0, 0, 0);
        canvas.drawCircle(bitmap.getWidth() / 2, bitmap.getHeight() / 2, bitmap.getWidth() / 2, paint);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(bitmap, rect, rect, paint);
        return createBitmap2;
    }
}
