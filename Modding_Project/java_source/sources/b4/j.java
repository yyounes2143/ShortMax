package b4;

import android.graphics.Bitmap;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BitmapPoolBackend.kt */
@Metadata
/* loaded from: classes3.dex */
public class j extends u<Bitmap> {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final a f2231c = new a(null);

    /* compiled from: BitmapPoolBackend.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    @Override // b4.u, b4.a0
    @Nullable
    /* renamed from: d */
    public Bitmap get(int i10) {
        Bitmap bitmap = (Bitmap) super.get(i10);
        if (bitmap != null && f(bitmap)) {
            bitmap.eraseColor(0);
            return bitmap;
        }
        return null;
    }

    @Override // b4.a0
    /* renamed from: e */
    public int b(@NotNull Bitmap bitmap) {
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        return com.facebook.imageutils.d.j(bitmap);
    }

    protected final boolean f(@Nullable Bitmap bitmap) {
        if (bitmap == null) {
            return false;
        }
        if (bitmap.isRecycled()) {
            l2.a.B("BitmapPoolBackend", "Cannot reuse a recycled bitmap: %s", bitmap);
            return false;
        } else if (!bitmap.isMutable()) {
            l2.a.B("BitmapPoolBackend", "Cannot reuse an immutable bitmap: %s", bitmap);
            return false;
        } else {
            return true;
        }
    }

    @Override // b4.u, b4.a0
    /* renamed from: g */
    public void put(@NotNull Bitmap bitmap) {
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        if (f(bitmap)) {
            super.put(bitmap);
        }
    }
}
