package com.startshorts.androidplayer.repo.immersion;

import com.startshorts.androidplayer.bean.api.ServerResult;
import com.startshorts.androidplayer.bean.shorts.ShortsDetail;
import com.startshorts.androidplayer.manager.api.base.k;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ImmersionRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.immersion.ImmersionRemoteDS$queryShortsDetail$2", f = "ImmersionRemoteDS.kt", l = {26}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class ImmersionRemoteDS$queryShortsDetail$2 extends SuspendLambda implements Function1<c<? super ServerResult<ShortsDetail>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f44126h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ String f44127i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ int f44128j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersionRemoteDS$queryShortsDetail$2(String str, int i10, c<? super ImmersionRemoteDS$queryShortsDetail$2> cVar) {
        super(1, cVar);
        this.f44127i = str;
        this.f44128j = i10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new ImmersionRemoteDS$queryShortsDetail$2(this.f44127i, this.f44128j, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f44126h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            k.a j10 = k.f41787a.j();
            String str = this.f44127i;
            int i11 = this.f44128j;
            this.f44126h = 1;
            obj = j10.R(str, i11, this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(c<? super ServerResult<ShortsDetail>> cVar) {
        return ((ImmersionRemoteDS$queryShortsDetail$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
