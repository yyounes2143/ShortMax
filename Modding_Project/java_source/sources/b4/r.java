package b4;

import android.graphics.Bitmap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: DummyBitmapPool.kt */
@Metadata
/* loaded from: classes3.dex */
public final class r implements i {
    @Override // n2.e
    @NotNull
    /* renamed from: f */
    public Bitmap get(int i10) {
        Bitmap createBitmap = Bitmap.createBitmap(1, (int) Math.ceil(i10 / 2.0d), Bitmap.Config.RGB_565);
        Intrinsics.checkNotNullExpressionValue(createBitmap, "createBitmap(...)");
        return createBitmap;
    }

    @Override // n2.e, o2.h
    /* renamed from: g */
    public void release(@NotNull Bitmap value) {
        Intrinsics.checkNotNullParameter(value, "value");
        value.recycle();
    }
}
