package d0;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import androidx.exifinterface.media.ExifInterface;
import coil.decode.ExifOrientationPolicy;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okio.BufferedSource;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ExifUtils.kt */
@Metadata
/* loaded from: classes2.dex */
public final class j {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final j f49746a = new j();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final Paint f49747b = new Paint(3);

    private j() {
    }

    @NotNull
    public final h a(@Nullable String str, @NotNull BufferedSource bufferedSource, @NotNull ExifOrientationPolicy exifOrientationPolicy) {
        if (k.c(exifOrientationPolicy, str)) {
            ExifInterface exifInterface = new ExifInterface(new i(bufferedSource.peek().inputStream()));
            return new h(exifInterface.isFlipped(), exifInterface.getRotationDegrees());
        }
        return h.f49741d;
    }

    @NotNull
    public final Bitmap b(@NotNull Bitmap bitmap, @NotNull h hVar) {
        Bitmap createBitmap;
        if (!hVar.b() && !k.a(hVar)) {
            return bitmap;
        }
        Matrix matrix = new Matrix();
        float width = bitmap.getWidth() / 2.0f;
        float height = bitmap.getHeight() / 2.0f;
        if (hVar.b()) {
            matrix.postScale(-1.0f, 1.0f, width, height);
        }
        if (k.a(hVar)) {
            matrix.postRotate(hVar.a(), width, height);
        }
        RectF rectF = new RectF(0.0f, 0.0f, bitmap.getWidth(), bitmap.getHeight());
        matrix.mapRect(rectF);
        float f10 = rectF.left;
        if (f10 != 0.0f || rectF.top != 0.0f) {
            matrix.postTranslate(-f10, -rectF.top);
        }
        if (k.b(hVar)) {
            createBitmap = Bitmap.createBitmap(bitmap.getHeight(), bitmap.getWidth(), r0.a.c(bitmap));
            Intrinsics.checkNotNullExpressionValue(createBitmap, "createBitmap(width, height, config)");
        } else {
            createBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), r0.a.c(bitmap));
            Intrinsics.checkNotNullExpressionValue(createBitmap, "createBitmap(width, height, config)");
        }
        new Canvas(createBitmap).drawBitmap(bitmap, matrix, f49747b);
        bitmap.recycle();
        return createBitmap;
    }
}
