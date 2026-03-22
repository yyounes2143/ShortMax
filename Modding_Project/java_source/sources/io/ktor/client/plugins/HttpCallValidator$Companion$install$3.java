package io.ktor.client.plugins;

import at.n;
import io.ktor.client.call.HttpClientCall;
import io.ktor.client.request.HttpRequestBuilder;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import qr.h;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: HttpCallValidator.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "io.ktor.client.plugins.HttpCallValidator$Companion$install$3", f = "HttpCallValidator.kt", l = {151, 152}, m = "invokeSuspend")
/* loaded from: classes8.dex */
public final class HttpCallValidator$Companion$install$3 extends SuspendLambda implements n<h, HttpRequestBuilder, rs.c<? super HttpClientCall>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f58948h;

    /* renamed from: i  reason: collision with root package name */
    private /* synthetic */ Object f58949i;

    /* renamed from: j  reason: collision with root package name */
    /* synthetic */ Object f58950j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ HttpCallValidator f58951k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HttpCallValidator$Companion$install$3(HttpCallValidator httpCallValidator, rs.c<? super HttpCallValidator$Companion$install$3> cVar) {
        super(3, cVar);
        this.f58951k = httpCallValidator;
    }

    @Override // at.n
    @Nullable
    /* renamed from: i */
    public final Object invoke(@NotNull h hVar, @NotNull HttpRequestBuilder httpRequestBuilder, @Nullable rs.c<? super HttpClientCall> cVar) {
        HttpCallValidator$Companion$install$3 httpCallValidator$Companion$install$3 = new HttpCallValidator$Companion$install$3(this.f58951k, cVar);
        httpCallValidator$Companion$install$3.f58949i = hVar;
        httpCallValidator$Companion$install$3.f58950j = httpRequestBuilder;
        return httpCallValidator$Companion$install$3.invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object f10;
        Object f11 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f58948h;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    HttpClientCall httpClientCall = (HttpClientCall) this.f58949i;
                    f.b(obj);
                    return httpClientCall;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            f.b(obj);
        } else {
            f.b(obj);
            this.f58949i = null;
            this.f58948h = 1;
            obj = ((h) this.f58949i).a((HttpRequestBuilder) this.f58950j, this);
            if (obj == f11) {
                return f11;
            }
        }
        HttpClientCall httpClientCall2 = (HttpClientCall) obj;
        HttpCallValidator httpCallValidator = this.f58951k;
        tr.c e10 = httpClientCall2.e();
        this.f58949i = httpClientCall2;
        this.f58948h = 2;
        f10 = httpCallValidator.f(e10, this);
        if (f10 == f11) {
            return f11;
        }
        return httpClientCall2;
    }
}
