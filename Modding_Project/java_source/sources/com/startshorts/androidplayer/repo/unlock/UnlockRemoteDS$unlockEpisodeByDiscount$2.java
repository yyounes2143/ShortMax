package com.startshorts.androidplayer.repo.unlock;

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
/* compiled from: UnlockRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.unlock.UnlockRemoteDS$unlockEpisodeByDiscount$2", f = "UnlockRemoteDS.kt", l = {95}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class UnlockRemoteDS$unlockEpisodeByDiscount$2 extends SuspendLambda implements Function1<c<? super ServerResult<Object>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f44683h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ int f44684i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ String f44685j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UnlockRemoteDS$unlockEpisodeByDiscount$2(int i10, String str, c<? super UnlockRemoteDS$unlockEpisodeByDiscount$2> cVar) {
        super(1, cVar);
        this.f44684i = i10;
        this.f44685j = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new UnlockRemoteDS$unlockEpisodeByDiscount$2(this.f44684i, this.f44685j, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f44683h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            k.a j10 = k.f41787a.j();
            int i11 = this.f44684i;
            String str = this.f44685j;
            this.f44683h = 1;
            obj = j10.p0(i11, str, this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(c<? super ServerResult<Object>> cVar) {
        return ((UnlockRemoteDS$unlockEpisodeByDiscount$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
