package h4;

import android.graphics.Bitmap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TransformationUtils.kt */
@Metadata
/* loaded from: classes3.dex */
public final class b {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final b f52589a = new b();

    private b() {
    }

    public static final boolean a(@Nullable a aVar, @Nullable o2.a<Bitmap> aVar2) {
        if (aVar != null && aVar2 != null) {
            Bitmap s10 = aVar2.s();
            Intrinsics.checkNotNullExpressionValue(s10, "get(...)");
            Bitmap bitmap = s10;
            if (aVar.a()) {
                bitmap.setHasAlpha(true);
            }
            aVar.transform(bitmap);
            return true;
        }
        return false;
    }
}
