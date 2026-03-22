package com.startshorts.androidplayer.repo.rewards;

import com.startshorts.androidplayer.bean.api.ServerResult;
import com.startshorts.androidplayer.bean.checkin.WatchAdMultiRewardResult;
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
@d(c = "com.startshorts.androidplayer.repo.rewards.RewardsRemoteDS$signWatchAdV4$2", f = "RewardsRemoteDS.kt", l = {42}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class RewardsRemoteDS$signWatchAdV4$2 extends SuspendLambda implements Function1<c<? super ServerResult<WatchAdMultiRewardResult>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f44507h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ int f44508i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ String f44509j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RewardsRemoteDS$signWatchAdV4$2(int i10, String str, c<? super RewardsRemoteDS$signWatchAdV4$2> cVar) {
        super(1, cVar);
        this.f44508i = i10;
        this.f44509j = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new RewardsRemoteDS$signWatchAdV4$2(this.f44508i, this.f44509j, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f44507h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            k.a j10 = k.f41787a.j();
            int i11 = this.f44508i;
            String str = this.f44509j;
            this.f44507h = 1;
            obj = j10.W1(i11, str, this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(c<? super ServerResult<WatchAdMultiRewardResult>> cVar) {
        return ((RewardsRemoteDS$signWatchAdV4$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
