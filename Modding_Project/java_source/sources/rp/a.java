package rp;

import android.content.Context;
import io.bidmachine.rendering.ad.fullscreen.FullScreenActivity;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rq.t;
@Metadata
/* loaded from: classes8.dex */
public final class a {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private static m f65950a;

    public static final void c(@NotNull m mVar, @NotNull Context context) {
        Intrinsics.checkNotNullParameter(mVar, "<this>");
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            f65950a = mVar;
            context.startActivity(tp.e.a(context, FullScreenActivity.class));
        } catch (Throwable unused) {
            f65950a = null;
            mVar.X(new t("Ad is null"));
        }
    }
}
