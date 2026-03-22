package okhttp3;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.Interceptor;
import org.jetbrains.annotations.NotNull;
/* compiled from: Interceptor.kt */
@Metadata
@SourceDebugExtension({"SMAP\nInterceptor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Interceptor.kt\nokhttp3/Interceptor$Companion$invoke$1\n*L\n1#1,105:1\n*E\n"})
/* loaded from: classes8.dex */
public final class Interceptor$Companion$invoke$1 implements Interceptor {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Function1<Interceptor.Chain, Response> f63479a;

    @Override // okhttp3.Interceptor
    @NotNull
    public final Response intercept(@NotNull Interceptor.Chain it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return this.f63479a.invoke(it);
    }
}
