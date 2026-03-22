package i4;

import android.graphics.drawable.Drawable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import y3.e;
import y3.g;
/* compiled from: XmlDrawableFactory.kt */
@Metadata
/* loaded from: classes3.dex */
public final class a implements x3.a {
    @Override // x3.a
    @Nullable
    public Drawable createDrawable(@NotNull e image) {
        g gVar;
        Intrinsics.checkNotNullParameter(image, "image");
        if (image instanceof g) {
            gVar = (g) image;
        } else {
            gVar = null;
        }
        if (gVar == null) {
            return null;
        }
        return gVar.u0();
    }

    @Override // x3.a
    public boolean supportsImageType(@NotNull e image) {
        Intrinsics.checkNotNullParameter(image, "image");
        return image instanceof g;
    }
}
