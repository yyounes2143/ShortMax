package io.ktor.client.engine;

import gt.g0;
import io.ktor.client.engine.HttpClientEngine;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
import sr.e;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: HttpClientEngine.kt */
@Metadata
@d(c = "io.ktor.client.engine.HttpClientEngine$executeWithinCallContext$2", f = "HttpClientEngine.kt", l = {99}, m = "invokeSuspend")
/* loaded from: classes8.dex */
public final class HttpClientEngine$executeWithinCallContext$2 extends SuspendLambda implements Function2<g0, c<? super e>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f58818h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ HttpClientEngine f58819i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ sr.c f58820j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HttpClientEngine$executeWithinCallContext$2(HttpClientEngine httpClientEngine, sr.c cVar, c<? super HttpClientEngine$executeWithinCallContext$2> cVar2) {
        super(2, cVar2);
        this.f58819i = httpClientEngine;
        this.f58820j = cVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new HttpClientEngine$executeWithinCallContext$2(this.f58819i, this.f58820j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super e> cVar) {
        return ((HttpClientEngine$executeWithinCallContext$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        boolean f10;
        Object f11 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f58818h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            f10 = HttpClientEngine.DefaultImpls.f(this.f58819i);
            if (!f10) {
                HttpClientEngine httpClientEngine = this.f58819i;
                sr.c cVar = this.f58820j;
                this.f58818h = 1;
                obj = httpClientEngine.r0(cVar, this);
                if (obj == f11) {
                    return f11;
                }
            } else {
                throw new ClientEngineClosedException(null, 1, null);
            }
        }
        return obj;
    }
}
