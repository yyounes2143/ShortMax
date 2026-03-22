package p3;

import android.content.Context;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.OkHttpClient;
import org.jetbrains.annotations.NotNull;
import t3.s;
/* compiled from: OkHttpImagePipelineConfigFactory.kt */
@Metadata
/* loaded from: classes3.dex */
public final class a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f64505a = new a();

    private a() {
    }

    @NotNull
    public static final s.a a(@NotNull Context context, @NotNull OkHttpClient okHttpClient) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(okHttpClient, "okHttpClient");
        return s.M.i(context).X(new com.facebook.imagepipeline.backends.okhttp3.a(okHttpClient));
    }
}
