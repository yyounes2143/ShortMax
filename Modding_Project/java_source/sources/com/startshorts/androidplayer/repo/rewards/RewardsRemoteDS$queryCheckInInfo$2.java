package com.startshorts.androidplayer.repo.rewards;

import com.startshorts.androidplayer.bean.api.ServerResult;
import com.startshorts.androidplayer.bean.checkin.CheckInInfoResult;
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
/* compiled from: RewardsRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.rewards.RewardsRemoteDS$queryCheckInInfo$2", f = "RewardsRemoteDS.kt", l = {23}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class RewardsRemoteDS$queryCheckInInfo$2 extends SuspendLambda implements Function1<c<? super ServerResult<CheckInInfoResult>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f44486h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ String f44487i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RewardsRemoteDS$queryCheckInInfo$2(String str, c<? super RewardsRemoteDS$queryCheckInInfo$2> cVar) {
        super(1, cVar);
        this.f44487i = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new RewardsRemoteDS$queryCheckInInfo$2(this.f44487i, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f44486h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            k.a j10 = k.f41787a.j();
            String str = this.f44487i;
            this.f44486h = 1;
            obj = j10.e2(str, this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(c<? super ServerResult<CheckInInfoResult>> cVar) {
        return ((RewardsRemoteDS$queryCheckInInfo$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
