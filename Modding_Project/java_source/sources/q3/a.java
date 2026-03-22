package q3;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import b4.i;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ArtBitmapFactory.kt */
@Metadata
@TargetApi(21)
/* loaded from: classes3.dex */
public final class a extends d {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final i f65039a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final t3.a f65040b;

    public a(@NotNull i bitmapPool, @NotNull t3.a closeableReferenceFactory) {
        Intrinsics.checkNotNullParameter(bitmapPool, "bitmapPool");
        Intrinsics.checkNotNullParameter(closeableReferenceFactory, "closeableReferenceFactory");
        this.f65039a = bitmapPool;
        this.f65040b = closeableReferenceFactory;
    }

    @Override // q3.d
    @NotNull
    public o2.a<Bitmap> d(int i10, int i11, @NotNull Bitmap.Config bitmapConfig) {
        Intrinsics.checkNotNullParameter(bitmapConfig, "bitmapConfig");
        Bitmap bitmap = this.f65039a.get(com.facebook.imageutils.d.i(i10, i11, bitmapConfig));
        if (bitmap.getAllocationByteCount() >= i10 * i11 * com.facebook.imageutils.d.h(bitmapConfig)) {
            bitmap.reconfigure(i10, i11, bitmapConfig);
            o2.a<Bitmap> c10 = this.f65040b.c(bitmap, this.f65039a);
            Intrinsics.checkNotNullExpressionValue(c10, "create(...)");
            return c10;
        }
        throw new IllegalStateException("Check failed.");
    }
}
