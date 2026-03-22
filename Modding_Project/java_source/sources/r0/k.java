package r0;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import androidx.annotation.WorkerThread;
import coil.size.Scale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: DrawableUtils.kt */
@Metadata
/* loaded from: classes2.dex */
public final class k {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final k f65453a = new k();

    private k() {
    }

    private final boolean b(Bitmap bitmap, Bitmap.Config config) {
        if (bitmap.getConfig() == a.e(config)) {
            return true;
        }
        return false;
    }

    private final boolean c(boolean z10, Bitmap bitmap, n0.g gVar, Scale scale) {
        int z11;
        int z12;
        if (z10) {
            return true;
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        if (n0.b.a(gVar)) {
            z11 = bitmap.getWidth();
        } else {
            z11 = i.z(gVar.b(), scale);
        }
        if (n0.b.a(gVar)) {
            z12 = bitmap.getHeight();
        } else {
            z12 = i.z(gVar.a(), scale);
        }
        if (d0.f.c(width, height, z11, z12, scale) == 1.0d) {
            return true;
        }
        return false;
    }

    @WorkerThread
    @NotNull
    public final Bitmap a(@NotNull Drawable drawable, @NotNull Bitmap.Config config, @NotNull n0.g gVar, @NotNull Scale scale, boolean z10) {
        int z11;
        int z12;
        if (drawable instanceof BitmapDrawable) {
            Bitmap bitmap = ((BitmapDrawable) drawable).getBitmap();
            if (b(bitmap, config) && c(z10, bitmap, gVar, scale)) {
                return bitmap;
            }
        }
        Drawable mutate = drawable.mutate();
        int p10 = i.p(mutate);
        int i10 = 512;
        if (p10 <= 0) {
            p10 = 512;
        }
        int i11 = i.i(mutate);
        if (i11 > 0) {
            i10 = i11;
        }
        if (n0.b.a(gVar)) {
            z11 = p10;
        } else {
            z11 = i.z(gVar.b(), scale);
        }
        if (n0.b.a(gVar)) {
            z12 = i10;
        } else {
            z12 = i.z(gVar.a(), scale);
        }
        double c10 = d0.f.c(p10, i10, z11, z12, scale);
        int b10 = bt.a.b(p10 * c10);
        int b11 = bt.a.b(c10 * i10);
        Bitmap createBitmap = Bitmap.createBitmap(b10, b11, a.e(config));
        Intrinsics.checkNotNullExpressionValue(createBitmap, "createBitmap(width, height, config)");
        Rect bounds = mutate.getBounds();
        int i12 = bounds.left;
        int i13 = bounds.top;
        int i14 = bounds.right;
        int i15 = bounds.bottom;
        mutate.setBounds(0, 0, b10, b11);
        mutate.draw(new Canvas(createBitmap));
        mutate.setBounds(i12, i13, i14, i15);
        return createBitmap;
    }
}
