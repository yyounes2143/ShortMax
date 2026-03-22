package com.startshorts.androidplayer.repo.comingsoon;

import com.startshorts.androidplayer.bean.api.ServerResult;
import com.startshorts.androidplayer.manager.api.base.k;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ComingSoonRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.comingsoon.ComingSoonRemoteDS$cancelReservation$2", f = "ComingSoonRemoteDS.kt", l = {22}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class ComingSoonRemoteDS$cancelReservation$2 extends SuspendLambda implements Function1<c<? super ServerResult<Object>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43737h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ int f43738i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ComingSoonRemoteDS$cancelReservation$2(int i10, c<? super ComingSoonRemoteDS$cancelReservation$2> cVar) {
        super(1, cVar);
        this.f43738i = i10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new ComingSoonRemoteDS$cancelReservation$2(this.f43738i, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f43737h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            k.a j10 = k.f41787a.j();
            int i11 = this.f43738i;
            this.f43737h = 1;
            obj = k.a.C0617a.d(j10, i11, 0, this, 2, null);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(c<? super ServerResult<Object>> cVar) {
        return ((ComingSoonRemoteDS$cancelReservation$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
