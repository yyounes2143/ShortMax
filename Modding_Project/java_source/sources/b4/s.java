package b4;

import android.graphics.Bitmap;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: DummyTrackingInUseBitmapPool.kt */
@Metadata
/* loaded from: classes3.dex */
public final class s implements i {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Set<Bitmap> f2248a;

    public s() {
        Set<Bitmap> b10 = k2.j.b();
        Intrinsics.checkNotNullExpressionValue(b10, "newIdentityHashSet(...)");
        this.f2248a = b10;
    }

    @Override // n2.e
    @NotNull
    /* renamed from: f */
    public Bitmap get(int i10) {
        Bitmap createBitmap = Bitmap.createBitmap(1, (int) Math.ceil(i10 / 2.0d), Bitmap.Config.RGB_565);
        Intrinsics.checkNotNullExpressionValue(createBitmap, "createBitmap(...)");
        this.f2248a.add(createBitmap);
        return createBitmap;
    }

    @Override // n2.e, o2.h
    /* renamed from: g */
    public void release(@NotNull Bitmap value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.f2248a.remove(value);
        value.recycle();
    }
}
