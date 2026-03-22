package io.ktor.client.plugins;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.DelayKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: HttpRequestRetry.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "io.ktor.client.plugins.HttpRequestRetry$Configuration$delay$1", f = "HttpRequestRetry.kt", l = {111}, m = "invokeSuspend")
/* loaded from: classes8.dex */
final class HttpRequestRetry$Configuration$delay$1 extends SuspendLambda implements Function2<Long, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f59031h;

    /* renamed from: i  reason: collision with root package name */
    /* synthetic */ long f59032i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public HttpRequestRetry$Configuration$delay$1(rs.c<? super HttpRequestRetry$Configuration$delay$1> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final rs.c<Unit> create(@Nullable Object obj, @NotNull rs.c<?> cVar) {
        HttpRequestRetry$Configuration$delay$1 httpRequestRetry$Configuration$delay$1 = new HttpRequestRetry$Configuration$delay$1(cVar);
        httpRequestRetry$Configuration$delay$1.f59032i = ((Number) obj).longValue();
        return httpRequestRetry$Configuration$delay$1;
    }

    @Nullable
    public final Object i(long j10, @Nullable rs.c<? super Unit> cVar) {
        return ((HttpRequestRetry$Configuration$delay$1) create(Long.valueOf(j10), cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Long l10, rs.c<? super Unit> cVar) {
        return i(l10.longValue(), cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f59031h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            long j10 = this.f59032i;
            this.f59031h = 1;
            if (DelayKt.b(j10, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
