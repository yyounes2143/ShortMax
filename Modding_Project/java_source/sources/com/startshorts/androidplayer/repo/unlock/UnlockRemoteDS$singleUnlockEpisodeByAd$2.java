package com.startshorts.androidplayer.repo.unlock;

import com.startshorts.androidplayer.bean.api.ServerResult;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.unlock.UnlockEpisodeByAdResult;
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
/* compiled from: UnlockRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.unlock.UnlockRemoteDS$singleUnlockEpisodeByAd$2", f = "UnlockRemoteDS.kt", l = {137}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class UnlockRemoteDS$singleUnlockEpisodeByAd$2 extends SuspendLambda implements Function1<c<? super ServerResult<UnlockEpisodeByAdResult>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f44670h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ BaseEpisode f44671i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ boolean f44672j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ boolean f44673k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UnlockRemoteDS$singleUnlockEpisodeByAd$2(BaseEpisode baseEpisode, boolean z10, boolean z11, c<? super UnlockRemoteDS$singleUnlockEpisodeByAd$2> cVar) {
        super(1, cVar);
        this.f44671i = baseEpisode;
        this.f44672j = z10;
        this.f44673k = z11;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new UnlockRemoteDS$singleUnlockEpisodeByAd$2(this.f44671i, this.f44672j, this.f44673k, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f44670h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            k.a j10 = k.f41787a.j();
            int id2 = this.f44671i.getId();
            boolean z10 = this.f44672j;
            boolean z11 = this.f44673k;
            this.f44670h = 1;
            obj = j10.C0(id2, z10, z11, this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(c<? super ServerResult<UnlockEpisodeByAdResult>> cVar) {
        return ((UnlockRemoteDS$singleUnlockEpisodeByAd$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
