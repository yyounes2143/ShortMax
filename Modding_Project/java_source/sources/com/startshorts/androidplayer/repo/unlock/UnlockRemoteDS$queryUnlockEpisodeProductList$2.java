package com.startshorts.androidplayer.repo.unlock;

import com.startshorts.androidplayer.bean.api.ServerResult;
import com.startshorts.androidplayer.bean.unlock.QueryUnlockEpisodeProductListResult;
import com.startshorts.androidplayer.manager.api.base.k;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import rs.c;
import ud.b;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: UnlockRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.unlock.UnlockRemoteDS$queryUnlockEpisodeProductList$2", f = "UnlockRemoteDS.kt", l = {72}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class UnlockRemoteDS$queryUnlockEpisodeProductList$2 extends SuspendLambda implements Function1<c<? super ServerResult<QueryUnlockEpisodeProductListResult>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f44652h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ int f44653i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ int f44654j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ String f44655k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UnlockRemoteDS$queryUnlockEpisodeProductList$2(int i10, int i11, String str, c<? super UnlockRemoteDS$queryUnlockEpisodeProductList$2> cVar) {
        super(1, cVar);
        this.f44653i = i10;
        this.f44654j = i11;
        this.f44655k = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new UnlockRemoteDS$queryUnlockEpisodeProductList$2(this.f44653i, this.f44654j, this.f44655k, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f44652h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
                return obj;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        f.b(obj);
        b bVar = b.f68412a;
        long Z1 = bVar.Z1();
        k.a j10 = k.f41787a.j();
        String i02 = bVar.i0();
        int i11 = this.f44653i;
        int i12 = this.f44654j;
        String str = this.f44655k;
        this.f44652h = 1;
        Object r10 = k.a.C0617a.r(j10, i11, i12, 0, str, str, Z1, null, i02, this, 4, null);
        if (r10 == f10) {
            return f10;
        }
        return r10;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(c<? super ServerResult<QueryUnlockEpisodeProductListResult>> cVar) {
        return ((UnlockRemoteDS$queryUnlockEpisodeProductList$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
