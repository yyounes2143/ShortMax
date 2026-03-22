package yq;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import java.io.File;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ImageUtils.kt */
@Metadata
/* loaded from: classes8.dex */
public final class f {
    @NotNull
    public static final Bitmap a(@NotNull Bitmap bitmap, double d10) {
        Bitmap bitmap2;
        Intrinsics.checkNotNullParameter(bitmap, "<this>");
        if (d10 > 1.0d) {
            try {
                bitmap2 = Bitmap.createScaledBitmap(bitmap, (int) (bitmap.getWidth() / d10), (int) (bitmap.getHeight() / d10), true);
            } catch (Throwable unused) {
                bitmap2 = null;
            }
            if (bitmap2 != null) {
                return bitmap2;
            }
            return bitmap;
        }
        return bitmap;
    }

    @Nullable
    public static final Bitmap b(@NotNull byte[] bArr, @Nullable BitmapFactory.Options options) throws Throwable {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        return BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
    }

    @Nullable
    public static final Bitmap c(@NotNull byte[] bArr, @Nullable BitmapFactory.Options options) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        try {
            return b(bArr, options);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static /* synthetic */ Bitmap d(byte[] bArr, BitmapFactory.Options options, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            options = null;
        }
        return c(bArr, options);
    }

    @NotNull
    public static final Bitmap e(@NotNull File file, @NotNull BitmapFactory.Options bitmapFactoryOptions) throws Throwable {
        Intrinsics.checkNotNullParameter(file, "<this>");
        Intrinsics.checkNotNullParameter(bitmapFactoryOptions, "bitmapFactoryOptions");
        Bitmap decodeFile = BitmapFactory.decodeFile(file.getPath(), bitmapFactoryOptions);
        Intrinsics.checkNotNullExpressionValue(decodeFile, "decodeFile(path, bitmapFactoryOptions)");
        return decodeFile;
    }

    @Nullable
    public static final Bitmap f(@NotNull File file, @NotNull BitmapFactory.Options bitmapFactoryOptions) {
        Intrinsics.checkNotNullParameter(file, "<this>");
        Intrinsics.checkNotNullParameter(bitmapFactoryOptions, "bitmapFactoryOptions");
        if (!ar.b.g(file)) {
            return null;
        }
        try {
            return e(file, bitmapFactoryOptions);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static final void g(@NotNull Bitmap bitmap) {
        Intrinsics.checkNotNullParameter(bitmap, "<this>");
        try {
            bitmap.recycle();
            Unit unit = Unit.f60915a;
        } catch (Throwable unused) {
        }
    }

    @NotNull
    public static final BitmapDrawable h(@NotNull Bitmap bitmap, @NotNull Context context) {
        Intrinsics.checkNotNullParameter(bitmap, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        Resources resources = context.getResources();
        Intrinsics.checkNotNullExpressionValue(resources, "context.resources");
        return i(bitmap, resources);
    }

    @NotNull
    public static final BitmapDrawable i(@NotNull Bitmap bitmap, @NotNull Resources resources) {
        Intrinsics.checkNotNullParameter(bitmap, "<this>");
        Intrinsics.checkNotNullParameter(resources, "resources");
        return new BitmapDrawable(resources, bitmap);
    }
}
