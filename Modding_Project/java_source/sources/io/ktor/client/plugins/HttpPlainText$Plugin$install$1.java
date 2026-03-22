package io.ktor.client.plugins;

import at.n;
import io.ktor.client.request.HttpRequestBuilder;
import io.ktor.http.a;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import wr.l;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: HttpPlainText.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "io.ktor.client.plugins.HttpPlainText$Plugin$install$1", f = "HttpPlainText.kt", l = {130}, m = "invokeSuspend")
/* loaded from: classes8.dex */
public final class HttpPlainText$Plugin$install$1 extends SuspendLambda implements n<ds.c<Object, HttpRequestBuilder>, Object, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f58971h;

    /* renamed from: i  reason: collision with root package name */
    private /* synthetic */ Object f58972i;

    /* renamed from: j  reason: collision with root package name */
    /* synthetic */ Object f58973j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ HttpPlainText f58974k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HttpPlainText$Plugin$install$1(HttpPlainText httpPlainText, rs.c<? super HttpPlainText$Plugin$install$1> cVar) {
        super(3, cVar);
        this.f58974k = httpPlainText;
    }

    @Override // at.n
    @Nullable
    /* renamed from: i */
    public final Object invoke(@NotNull ds.c<Object, HttpRequestBuilder> cVar, @NotNull Object obj, @Nullable rs.c<? super Unit> cVar2) {
        HttpPlainText$Plugin$install$1 httpPlainText$Plugin$install$1 = new HttpPlainText$Plugin$install$1(this.f58974k, cVar2);
        httpPlainText$Plugin$install$1.f58972i = cVar;
        httpPlainText$Plugin$install$1.f58973j = obj;
        return httpPlainText$Plugin$install$1.invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object e10;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f58971h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            ds.c cVar = (ds.c) this.f58972i;
            Object obj2 = this.f58973j;
            this.f58974k.c((HttpRequestBuilder) cVar.b());
            if (!(obj2 instanceof String)) {
                return Unit.f60915a;
            }
            io.ktor.http.a d10 = io.ktor.http.d.d((l) cVar.b());
            if (d10 == null || Intrinsics.areEqual(d10.e(), a.c.f59246a.a().e())) {
                e10 = this.f58974k.e((HttpRequestBuilder) cVar.b(), (String) obj2, d10);
                this.f58972i = null;
                this.f58971h = 1;
                if (cVar.d(e10, this) == f10) {
                    return f10;
                }
            } else {
                return Unit.f60915a;
            }
        }
        return Unit.f60915a;
    }
}
