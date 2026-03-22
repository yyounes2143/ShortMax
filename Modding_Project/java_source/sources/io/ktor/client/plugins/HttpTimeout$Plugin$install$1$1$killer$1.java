package io.ktor.client.plugins;

import gt.g0;
import io.ktor.client.request.HttpRequestBuilder;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.r;
import kotlinx.coroutines.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: HttpTimeout.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "io.ktor.client.plugins.HttpTimeout$Plugin$install$1$1$killer$1", f = "HttpTimeout.kt", l = {164}, m = "invokeSuspend")
/* loaded from: classes8.dex */
final class HttpTimeout$Plugin$install$1$1$killer$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f59098h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ Long f59099i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ HttpRequestBuilder f59100j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ r f59101k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HttpTimeout$Plugin$install$1$1$killer$1(Long l10, HttpRequestBuilder httpRequestBuilder, r rVar, rs.c<? super HttpTimeout$Plugin$install$1$1$killer$1> cVar) {
        super(2, cVar);
        this.f59099i = l10;
        this.f59100j = httpRequestBuilder;
        this.f59101k = rVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final rs.c<Unit> create(@Nullable Object obj, @NotNull rs.c<?> cVar) {
        return new HttpTimeout$Plugin$install$1$1$killer$1(this.f59099i, this.f59100j, this.f59101k, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable rs.c<? super Unit> cVar) {
        return ((HttpTimeout$Plugin$install$1$1$killer$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        du.a aVar;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f59098h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            long longValue = this.f59099i.longValue();
            this.f59098h = 1;
            if (DelayKt.b(longValue, this) == f10) {
                return f10;
            }
        }
        HttpRequestTimeoutException httpRequestTimeoutException = new HttpRequestTimeoutException(this.f59100j);
        aVar = d.f59131a;
        aVar.b("Request timeout: " + this.f59100j.i());
        r rVar = this.f59101k;
        String message = httpRequestTimeoutException.getMessage();
        Intrinsics.checkNotNull(message);
        t.d(rVar, message, httpRequestTimeoutException);
        return Unit.f60915a;
    }
}
