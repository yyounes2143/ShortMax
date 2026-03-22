package io.ktor.client.plugins;

import at.n;
import gt.r1;
import gt.s;
import io.ktor.client.HttpClient;
import io.ktor.client.request.HttpRequestBuilder;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: HttpRequestLifecycle.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "io.ktor.client.plugins.HttpRequestLifecycle$Plugin$install$1", f = "HttpRequestLifecycle.kt", l = {38}, m = "invokeSuspend")
/* loaded from: classes8.dex */
public final class HttpRequestLifecycle$Plugin$install$1 extends SuspendLambda implements n<ds.c<Object, HttpRequestBuilder>, Object, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f59010h;

    /* renamed from: i  reason: collision with root package name */
    private /* synthetic */ Object f59011i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ HttpClient f59012j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HttpRequestLifecycle$Plugin$install$1(HttpClient httpClient, rs.c<? super HttpRequestLifecycle$Plugin$install$1> cVar) {
        super(3, cVar);
        this.f59012j = httpClient;
    }

    @Override // at.n
    @Nullable
    /* renamed from: i */
    public final Object invoke(@NotNull ds.c<Object, HttpRequestBuilder> cVar, @NotNull Object obj, @Nullable rs.c<? super Unit> cVar2) {
        HttpRequestLifecycle$Plugin$install$1 httpRequestLifecycle$Plugin$install$1 = new HttpRequestLifecycle$Plugin$install$1(this.f59012j, cVar2);
        httpRequestLifecycle$Plugin$install$1.f59011i = cVar;
        return httpRequestLifecycle$Plugin$install$1.invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        s sVar;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f59010h;
        if (i10 != 0) {
            if (i10 == 1) {
                sVar = (s) this.f59011i;
                try {
                    f.b(obj);
                } catch (Throwable th2) {
                    th = th2;
                    try {
                        sVar.d(th);
                        throw th;
                    } catch (Throwable th3) {
                        sVar.complete();
                        throw th3;
                    }
                }
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            ds.c cVar = (ds.c) this.f59011i;
            s a10 = r1.a(((HttpRequestBuilder) cVar.b()).g());
            CoroutineContext.Element element = this.f59012j.getCoroutineContext().get(r.G8);
            Intrinsics.checkNotNull(element);
            HttpRequestLifecycleKt.c(a10, (r) element);
            try {
                ((HttpRequestBuilder) cVar.b()).m(a10);
                this.f59011i = a10;
                this.f59010h = 1;
                if (cVar.c(this) == f10) {
                    return f10;
                }
                sVar = a10;
            } catch (Throwable th4) {
                th = th4;
                sVar = a10;
                sVar.d(th);
                throw th;
            }
        }
        sVar.complete();
        return Unit.f60915a;
    }
}
