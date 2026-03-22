package io.ktor.client.plugins;

import at.n;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BodyProgress.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "io.ktor.client.plugins.BodyProgress$handle$2", f = "BodyProgress.kt", l = {45}, m = "invokeSuspend")
/* loaded from: classes8.dex */
public final class BodyProgress$handle$2 extends SuspendLambda implements n<ds.c<tr.c, Unit>, tr.c, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f58884h;

    /* renamed from: i  reason: collision with root package name */
    private /* synthetic */ Object f58885i;

    /* renamed from: j  reason: collision with root package name */
    /* synthetic */ Object f58886j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BodyProgress$handle$2(rs.c<? super BodyProgress$handle$2> cVar) {
        super(3, cVar);
    }

    @Override // at.n
    @Nullable
    /* renamed from: i */
    public final Object invoke(@NotNull ds.c<tr.c, Unit> cVar, @NotNull tr.c cVar2, @Nullable rs.c<? super Unit> cVar3) {
        BodyProgress$handle$2 bodyProgress$handle$2 = new BodyProgress$handle$2(cVar3);
        bodyProgress$handle$2.f58885i = cVar;
        bodyProgress$handle$2.f58886j = cVar2;
        return bodyProgress$handle$2.invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        yr.a aVar;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f58884h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            ds.c cVar = (ds.c) this.f58885i;
            tr.c cVar2 = (tr.c) this.f58886j;
            yr.b m10 = cVar2.x().d().m();
            aVar = qr.a.f65402b;
            n nVar = (n) m10.f(aVar);
            if (nVar == null) {
                return Unit.f60915a;
            }
            tr.c c10 = qr.a.c(cVar2, nVar);
            this.f58885i = null;
            this.f58884h = 1;
            if (cVar.d(c10, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
