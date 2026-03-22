package io.ktor.client.statement;

import io.ktor.client.call.HttpClientCall;
import io.ktor.client.call.SavedCallKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import tr.c;
/* compiled from: HttpStatement.kt */
@Metadata
@d(c = "io.ktor.client.statement.HttpStatement$execute$4", f = "HttpStatement.kt", l = {63}, m = "invokeSuspend")
/* loaded from: classes8.dex */
final class HttpStatement$execute$4 extends SuspendLambda implements Function2<c, rs.c<? super c>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f59157h;

    /* renamed from: i  reason: collision with root package name */
    /* synthetic */ Object f59158i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public HttpStatement$execute$4(rs.c<? super HttpStatement$execute$4> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final rs.c<Unit> create(@Nullable Object obj, @NotNull rs.c<?> cVar) {
        HttpStatement$execute$4 httpStatement$execute$4 = new HttpStatement$execute$4(cVar);
        httpStatement$execute$4.f59158i = obj;
        return httpStatement$execute$4;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: i */
    public final Object invoke(@NotNull c cVar, @Nullable rs.c<? super c> cVar2) {
        return ((HttpStatement$execute$4) create(cVar, cVar2)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object f10 = a.f();
        int i10 = this.f59157h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            HttpClientCall x10 = ((c) this.f59158i).x();
            this.f59157h = 1;
            obj = SavedCallKt.a(x10, this);
            if (obj == f10) {
                return f10;
            }
        }
        return ((HttpClientCall) obj).e();
    }
}
