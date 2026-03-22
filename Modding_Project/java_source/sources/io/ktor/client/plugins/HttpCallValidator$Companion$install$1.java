package io.ktor.client.plugins;

import at.n;
import io.ktor.client.plugins.a;
import io.ktor.client.request.HttpRequestBuilder;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: HttpCallValidator.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "io.ktor.client.plugins.HttpCallValidator$Companion$install$1", f = "HttpCallValidator.kt", l = {130, 133}, m = "invokeSuspend")
/* loaded from: classes8.dex */
public final class HttpCallValidator$Companion$install$1 extends SuspendLambda implements n<ds.c<Object, HttpRequestBuilder>, Object, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f58939h;

    /* renamed from: i  reason: collision with root package name */
    private /* synthetic */ Object f58940i;

    /* renamed from: j  reason: collision with root package name */
    /* synthetic */ Object f58941j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ HttpCallValidator f58942k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HttpCallValidator$Companion$install$1(HttpCallValidator httpCallValidator, rs.c<? super HttpCallValidator$Companion$install$1> cVar) {
        super(3, cVar);
        this.f58942k = httpCallValidator;
    }

    @Override // at.n
    @Nullable
    /* renamed from: i */
    public final Object invoke(@NotNull ds.c<Object, HttpRequestBuilder> cVar, @NotNull Object obj, @Nullable rs.c<? super Unit> cVar2) {
        HttpCallValidator$Companion$install$1 httpCallValidator$Companion$install$1 = new HttpCallValidator$Companion$install$1(this.f58942k, cVar2);
        httpCallValidator$Companion$install$1.f58940i = cVar;
        httpCallValidator$Companion$install$1.f58941j = obj;
        return httpCallValidator$Companion$install$1.invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [int] */
    /* JADX WARN: Type inference failed for: r1v1, types: [ds.c] */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v8 */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        a.C0826a a10;
        Object e10;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        ?? r12 = this.f58939h;
        try {
            if (r12 != 0) {
                if (r12 != 1) {
                    if (r12 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    Throwable th2 = (Throwable) this.f58940i;
                    f.b(obj);
                    throw th2;
                }
                ds.c cVar = (ds.c) this.f58940i;
                f.b(obj);
                r12 = cVar;
            } else {
                f.b(obj);
                ds.c cVar2 = (ds.c) this.f58940i;
                Object obj2 = this.f58941j;
                yr.b c10 = ((HttpRequestBuilder) cVar2.b()).c();
                yr.a<Boolean> e11 = a.e();
                final HttpCallValidator httpCallValidator = this.f58942k;
                c10.c(e11, new Function0<Boolean>() { // from class: io.ktor.client.plugins.HttpCallValidator$Companion$install$1.1
                    {
                        super(0);
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // kotlin.jvm.functions.Function0
                    @NotNull
                    public final Boolean invoke() {
                        boolean z10;
                        z10 = HttpCallValidator.this.f58938c;
                        return Boolean.valueOf(z10);
                    }
                });
                this.f58940i = cVar2;
                this.f58939h = 1;
                Object d10 = cVar2.d(obj2, this);
                r12 = cVar2;
                if (d10 == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        } catch (Throwable th3) {
            Throwable a11 = ur.c.a(th3);
            HttpCallValidator httpCallValidator2 = this.f58942k;
            a10 = a.a((HttpRequestBuilder) r12.b());
            this.f58940i = a11;
            this.f58939h = 2;
            e10 = httpCallValidator2.e(a11, a10, this);
            if (e10 == f10) {
                return f10;
            }
            throw a11;
        }
    }
}
