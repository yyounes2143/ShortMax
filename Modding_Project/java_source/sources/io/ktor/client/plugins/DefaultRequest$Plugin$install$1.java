package io.ktor.client.plugins;

import at.n;
import io.ktor.client.plugins.DefaultRequest;
import io.ktor.client.request.HttpRequestBuilder;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yr.s;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DefaultRequest.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "io.ktor.client.plugins.DefaultRequest$Plugin$install$1", f = "DefaultRequest.kt", l = {}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nDefaultRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultRequest.kt\nio/ktor/client/plugins/DefaultRequest$Plugin$install$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,212:1\n1855#2,2:213\n*S KotlinDebug\n*F\n+ 1 DefaultRequest.kt\nio/ktor/client/plugins/DefaultRequest$Plugin$install$1\n*L\n77#1:213,2\n*E\n"})
/* loaded from: classes8.dex */
public final class DefaultRequest$Plugin$install$1 extends SuspendLambda implements n<ds.c<Object, HttpRequestBuilder>, Object, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f58891h;

    /* renamed from: i  reason: collision with root package name */
    private /* synthetic */ Object f58892i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ DefaultRequest f58893j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DefaultRequest$Plugin$install$1(DefaultRequest defaultRequest, rs.c<? super DefaultRequest$Plugin$install$1> cVar) {
        super(3, cVar);
        this.f58893j = defaultRequest;
    }

    @Override // at.n
    @Nullable
    /* renamed from: i */
    public final Object invoke(@NotNull ds.c<Object, HttpRequestBuilder> cVar, @NotNull Object obj, @Nullable rs.c<? super Unit> cVar2) {
        DefaultRequest$Plugin$install$1 defaultRequest$Plugin$install$1 = new DefaultRequest$Plugin$install$1(this.f58893j, cVar2);
        defaultRequest$Plugin$install$1.f58892i = cVar;
        return defaultRequest$Plugin$install$1.invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Function1 function1;
        du.a aVar;
        kotlin.coroutines.intrinsics.a.f();
        if (this.f58891h == 0) {
            f.b(obj);
            ds.c cVar = (ds.c) this.f58892i;
            String hVar = ((HttpRequestBuilder) cVar.b()).i().toString();
            DefaultRequest.a aVar2 = new DefaultRequest.a();
            DefaultRequest defaultRequest = this.f58893j;
            s.c(aVar2.a(), ((HttpRequestBuilder) cVar.b()).a());
            function1 = defaultRequest.f58890a;
            function1.invoke(aVar2);
            DefaultRequest.f58888b.f(aVar2.c().b(), ((HttpRequestBuilder) cVar.b()).i());
            for (yr.a<?> aVar3 : aVar2.b().b()) {
                if (!((HttpRequestBuilder) cVar.b()).c().e(aVar3)) {
                    yr.b c10 = ((HttpRequestBuilder) cVar.b()).c();
                    Intrinsics.checkNotNull(aVar3, "null cannot be cast to non-null type io.ktor.util.AttributeKey<kotlin.Any>");
                    c10.a(aVar3, aVar2.b().d(aVar3));
                }
            }
            ((HttpRequestBuilder) cVar.b()).a().clear();
            ((HttpRequestBuilder) cVar.b()).a().e(aVar2.a().n());
            aVar = DefaultRequestKt.f58897a;
            aVar.b("Applied DefaultRequest to " + hVar + ". New url: " + ((HttpRequestBuilder) cVar.b()).i());
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
