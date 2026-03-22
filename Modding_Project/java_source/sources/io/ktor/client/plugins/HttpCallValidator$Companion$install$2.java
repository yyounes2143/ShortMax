package io.ktor.client.plugins;

import at.n;
import io.ktor.client.call.HttpClientCall;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: HttpCallValidator.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "io.ktor.client.plugins.HttpCallValidator$Companion$install$2", f = "HttpCallValidator.kt", l = {142, 145}, m = "invokeSuspend")
/* loaded from: classes8.dex */
public final class HttpCallValidator$Companion$install$2 extends SuspendLambda implements n<ds.c<tr.d, HttpClientCall>, tr.d, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f58944h;

    /* renamed from: i  reason: collision with root package name */
    private /* synthetic */ Object f58945i;

    /* renamed from: j  reason: collision with root package name */
    /* synthetic */ Object f58946j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ HttpCallValidator f58947k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HttpCallValidator$Companion$install$2(HttpCallValidator httpCallValidator, rs.c<? super HttpCallValidator$Companion$install$2> cVar) {
        super(3, cVar);
        this.f58947k = httpCallValidator;
    }

    @Override // at.n
    @Nullable
    /* renamed from: i */
    public final Object invoke(@NotNull ds.c<tr.d, HttpClientCall> cVar, @NotNull tr.d dVar, @Nullable rs.c<? super Unit> cVar2) {
        HttpCallValidator$Companion$install$2 httpCallValidator$Companion$install$2 = new HttpCallValidator$Companion$install$2(this.f58947k, cVar2);
        httpCallValidator$Companion$install$2.f58945i = cVar;
        httpCallValidator$Companion$install$2.f58946j = dVar;
        return httpCallValidator$Companion$install$2.invokeSuspend(Unit.f60915a);
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
        Object e10;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        ?? r12 = this.f58944h;
        try {
            if (r12 != 0) {
                if (r12 != 1) {
                    if (r12 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    Throwable th2 = (Throwable) this.f58945i;
                    f.b(obj);
                    throw th2;
                }
                ds.c cVar = (ds.c) this.f58945i;
                f.b(obj);
                r12 = cVar;
            } else {
                f.b(obj);
                ds.c cVar2 = (ds.c) this.f58945i;
                tr.d dVar = (tr.d) this.f58946j;
                this.f58945i = cVar2;
                this.f58944h = 1;
                Object d10 = cVar2.d(dVar, this);
                r12 = cVar2;
                if (d10 == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        } catch (Throwable th3) {
            Throwable a10 = ur.c.a(th3);
            HttpCallValidator httpCallValidator = this.f58947k;
            sr.b d11 = ((HttpClientCall) r12.b()).d();
            this.f58945i = a10;
            this.f58944h = 2;
            e10 = httpCallValidator.e(a10, d11, this);
            if (e10 == f10) {
                return f10;
            }
            throw a10;
        }
    }
}
