package fk;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BitmapUtil.kt */
@Metadata
/* loaded from: classes7.dex */
public final class f {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final f f51730a = new f();

    private f() {
    }

    @NotNull
    public final Bitmap a(@NotNull Bitmap bitmap, int i10, int i11) {
        Intrinsics.checkNotNullParameter(bitmap, "<this>");
        try {
            if (bitmap.getWidth() > 0 && bitmap.getHeight() > 0 && i10 > 0 && i11 > 0) {
                int width = bitmap.getWidth();
                int height = bitmap.getHeight();
                float f10 = i10;
                float f11 = width;
                float f12 = i11;
                float f13 = height;
                float max = Math.max(f10 / f11, f12 / f13);
                float f14 = f11 * max;
                float f15 = f13 * max;
                float f16 = 2;
                float f17 = (f10 - f14) / f16;
                float f18 = (f12 - f15) / f16;
                Bitmap createBitmap = Bitmap.createBitmap(i10, i11, Bitmap.Config.ARGB_8888);
                Intrinsics.checkNotNullExpressionValue(createBitmap, "createBitmap(...)");
                new Canvas(createBitmap).drawBitmap(bitmap, new Rect(0, 0, width, height), new RectF(f17, f18, f14 + f17, f15 + f18), (Paint) null);
                return createBitmap;
            }
        } catch (Exception unused) {
        }
        return bitmap;
    }

    @Nullable
    public final Bitmap b(@NotNull Bitmap bitmap, int i10, int i11, int i12, boolean z10) {
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        if (i10 <= 0) {
            return bitmap;
        }
        if (z10) {
            return c(a(bitmap, i11, i12), i10);
        }
        return c(bitmap, i10);
    }

    @NotNull
    public final Bitmap c(@NotNull Bitmap bitmap, float f10) {
        Intrinsics.checkNotNullParameter(bitmap, "<this>");
        try {
            Paint paint = new Paint();
            paint.setAntiAlias(true);
            paint.setFilterBitmap(true);
            Bitmap createBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
            Intrinsics.checkNotNullExpressionValue(createBitmap, "createBitmap(...)");
            Rect rect = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
            Canvas canvas = new Canvas(createBitmap);
            canvas.drawRoundRect(new RectF(rect), f10, f10, paint);
            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
            canvas.drawBitmap(bitmap, 0.0f, 0.0f, paint);
            return createBitmap;
        } catch (Exception e10) {
            e10.printStackTrace();
            return bitmap;
        }
    }
}
