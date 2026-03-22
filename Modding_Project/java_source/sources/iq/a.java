package iq;

import android.graphics.Bitmap;
import android.graphics.Color;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rq.k;
import tp.s;
import yq.r;
@Metadata
/* loaded from: classes8.dex */
public abstract class a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final k f60068a;

    public a(@NotNull k algorithmParams) {
        Intrinsics.checkNotNullParameter(algorithmParams, "algorithmParams");
        this.f60068a = algorithmParams;
    }

    public final float a(int i10) {
        return (r.s(i10) * 0.299f) + (r.l(i10) * 0.587f) + (r.a(i10) * 0.114f);
    }

    public final int b(@NotNull Bitmap bitmap, int i10, int i11) {
        Intrinsics.checkNotNullParameter(bitmap, "<this>");
        return f(bitmap.getPixel(i10, i11));
    }

    @Nullable
    public abstract Boolean c(@NotNull Bitmap bitmap);

    @NotNull
    public final k d() {
        return this.f60068a;
    }

    public final void e(@Nullable Float f10, @Nullable Boolean bool) {
        if (!s.i()) {
            return;
        }
        s.g("BrokenCreativeDetector", this.f60068a.b().name() + " result - " + f10 + " (isBroken - " + bool + ')', new Object[0]);
    }

    public final int f(int i10) {
        return (int) ((Color.red(i10) * 0.299f) + (Color.green(i10) * 0.587f) + (Color.blue(i10) * 0.114f));
    }

    @Nullable
    public final Boolean g(@NotNull Bitmap image) {
        Intrinsics.checkNotNullParameter(image, "image");
        try {
            return c(image);
        } catch (Throwable unused) {
            return null;
        }
    }
}
