package sq;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yq.s;
@Metadata
/* loaded from: classes8.dex */
public final class o {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final o f66587a = new o();

    private o() {
    }

    @Nullable
    public final Drawable a(@NotNull Context context, @Nullable String str) {
        byte[] d10;
        Bitmap d11;
        BitmapDrawable h10;
        Intrinsics.checkNotNullParameter(context, "context");
        if (str == null) {
            return null;
        }
        try {
            String v10 = s.v(str);
            if (v10 == null || (d10 = s.d(v10, 0)) == null || (d11 = yq.f.d(d10, null, 1, null)) == null || (h10 = yq.f.h(d11, context)) == null) {
                return null;
            }
            Shader.TileMode tileMode = Shader.TileMode.REPEAT;
            h10.setTileModeXY(tileMode, tileMode);
            return h10;
        } catch (Throwable unused) {
            return null;
        }
    }
}
