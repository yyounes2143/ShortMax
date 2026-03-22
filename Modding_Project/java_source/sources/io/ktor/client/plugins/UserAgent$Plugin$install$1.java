package io.ktor.client.plugins;

import at.n;
import io.ktor.client.request.HttpRequestBuilder;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import sr.h;
import wr.i;
import wr.l;
/* compiled from: UserAgent.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "io.ktor.client.plugins.UserAgent$Plugin$install$1", f = "UserAgent.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes8.dex */
final class UserAgent$Plugin$install$1 extends SuspendLambda implements n<ds.c<Object, HttpRequestBuilder>, Object, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f59113h;

    /* renamed from: i  reason: collision with root package name */
    private /* synthetic */ Object f59114i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ UserAgent f59115j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UserAgent$Plugin$install$1(UserAgent userAgent, rs.c<? super UserAgent$Plugin$install$1> cVar) {
        super(3, cVar);
        this.f59115j = userAgent;
    }

    @Override // at.n
    @Nullable
    /* renamed from: i */
    public final Object invoke(@NotNull ds.c<Object, HttpRequestBuilder> cVar, @NotNull Object obj, @Nullable rs.c<? super Unit> cVar2) {
        UserAgent$Plugin$install$1 userAgent$Plugin$install$1 = new UserAgent$Plugin$install$1(this.f59115j, cVar2);
        userAgent$Plugin$install$1.f59114i = cVar;
        return userAgent$Plugin$install$1.invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        du.a aVar;
        kotlin.coroutines.intrinsics.a.f();
        if (this.f59113h == 0) {
            f.b(obj);
            ds.c cVar = (ds.c) this.f59114i;
            aVar = e.f59132a;
            aVar.b("Adding User-Agent header: " + this.f59115j.b() + " for " + ((HttpRequestBuilder) cVar.b()).i());
            h.a((l) cVar.b(), i.f70141a.w(), this.f59115j.b());
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
