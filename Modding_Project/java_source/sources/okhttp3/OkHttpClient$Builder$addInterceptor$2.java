package okhttp3;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.Interceptor;
import org.jetbrains.annotations.NotNull;
/* compiled from: OkHttpClient.kt */
@Metadata
@SourceDebugExtension({"SMAP\nOkHttpClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OkHttpClient.kt\nokhttp3/OkHttpClient$Builder$addInterceptor$2\n*L\n1#1,1079:1\n*E\n"})
/* loaded from: classes8.dex */
public final class OkHttpClient$Builder$addInterceptor$2 implements Interceptor {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Function1<Interceptor.Chain, Response> f63569a;

    @Override // okhttp3.Interceptor
    @NotNull
    public final Response intercept(@NotNull Interceptor.Chain chain) {
        Intrinsics.checkNotNullParameter(chain, "chain");
        return this.f63569a.invoke(chain);
    }
}
