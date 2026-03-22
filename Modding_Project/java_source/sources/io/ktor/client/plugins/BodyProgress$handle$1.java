package io.ktor.client.plugins;

import at.n;
import io.ktor.client.content.ObservableContent;
import io.ktor.client.request.HttpRequestBuilder;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BodyProgress.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "io.ktor.client.plugins.BodyProgress$handle$1", f = "BodyProgress.kt", l = {38}, m = "invokeSuspend")
/* loaded from: classes8.dex */
public final class BodyProgress$handle$1 extends SuspendLambda implements n<ds.c<Object, HttpRequestBuilder>, Object, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f58881h;

    /* renamed from: i  reason: collision with root package name */
    private /* synthetic */ Object f58882i;

    /* renamed from: j  reason: collision with root package name */
    /* synthetic */ Object f58883j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BodyProgress$handle$1(rs.c<? super BodyProgress$handle$1> cVar) {
        super(3, cVar);
    }

    @Override // at.n
    @Nullable
    /* renamed from: i */
    public final Object invoke(@NotNull ds.c<Object, HttpRequestBuilder> cVar, @NotNull Object obj, @Nullable rs.c<? super Unit> cVar2) {
        BodyProgress$handle$1 bodyProgress$handle$1 = new BodyProgress$handle$1(cVar2);
        bodyProgress$handle$1.f58882i = cVar;
        bodyProgress$handle$1.f58883j = obj;
        return bodyProgress$handle$1.invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        yr.a aVar;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f58881h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            ds.c cVar = (ds.c) this.f58882i;
            Object obj2 = this.f58883j;
            yr.b c10 = ((HttpRequestBuilder) cVar.b()).c();
            aVar = qr.a.f65401a;
            n nVar = (n) c10.f(aVar);
            if (nVar == null) {
                return Unit.f60915a;
            }
            Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type io.ktor.http.content.OutgoingContent");
            ObservableContent observableContent = new ObservableContent((xr.b) obj2, ((HttpRequestBuilder) cVar.b()).g(), nVar);
            this.f58882i = null;
            this.f58881h = 1;
            if (cVar.d(observableContent, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
