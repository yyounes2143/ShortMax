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
@d(c = "com.startshorts.androidplayer.repo.comingsoon.ComingSoonRemoteDS$checkShortsReservation$2", f = "ComingSoonRemoteDS.kt", l = {27}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class ComingSoonRemoteDS$checkShortsReservation$2 extends SuspendLambda implements Function1<c<? super ServerResult<Object>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43742h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ String f43743i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ int f43744j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ComingSoonRemoteDS$checkShortsReservation$2(String str, int i10, c<? super ComingSoonRemoteDS$checkShortsReservation$2> cVar) {
        super(1, cVar);
        this.f43743i = str;
        this.f43744j = i10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new ComingSoonRemoteDS$checkShortsReservation$2(this.f43743i, this.f43744j, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f43742h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            k.a j10 = k.f41787a.j();
            String str = this.f43743i;
            if (str == null) {
                str = "";
            }
            int i11 = this.f43744j;
            this.f43742h = 1;
            obj = j10.F(str, i11, this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(c<? super ServerResult<Object>> cVar) {
        return ((ComingSoonRemoteDS$checkShortsReservation$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
