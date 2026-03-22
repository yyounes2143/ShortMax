package com.startshorts.androidplayer.repo.unlock;

import com.startshorts.androidplayer.bean.api.ServerResult;
import com.startshorts.androidplayer.bean.unlock.QuerySingleUnlockEpisodeMethodsResult;
import com.startshorts.androidplayer.manager.api.base.k;
import com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory;
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
@d(c = "com.startshorts.androidplayer.repo.unlock.UnlockRemoteDS$querySingleUnlockEpisodeMethods$2", f = "UnlockRemoteDS.kt", l = {41, 50}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class UnlockRemoteDS$querySingleUnlockEpisodeMethods$2 extends SuspendLambda implements Function1<c<? super ServerResult<QuerySingleUnlockEpisodeMethodsResult>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f44645h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ int f44646i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ int f44647j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ String f44648k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UnlockRemoteDS$querySingleUnlockEpisodeMethods$2(int i10, int i11, String str, c<? super UnlockRemoteDS$querySingleUnlockEpisodeMethods$2> cVar) {
        super(1, cVar);
        this.f44646i = i10;
        this.f44647j = i11;
        this.f44648k = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new UnlockRemoteDS$querySingleUnlockEpisodeMethods$2(this.f44646i, this.f44647j, this.f44648k, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object q10;
        Object p10;
        Object f10 = a.f();
        int i10 = this.f44645h;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    f.b(obj);
                    q10 = obj;
                    return (ServerResult) q10;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            f.b(obj);
            p10 = obj;
            return (ServerResult) p10;
        }
        f.b(obj);
        b bVar = b.f68412a;
        long Z1 = bVar.Z1();
        if (ABTestFactory.f42224a.c1().isEnable().invoke().booleanValue()) {
            k.a j10 = k.f41787a.j();
            String i02 = bVar.i0();
            int i11 = this.f44646i;
            int i12 = this.f44647j;
            String str = this.f44648k;
            this.f44645h = 1;
            p10 = k.a.C0617a.p(j10, i11, i12, 0, str, Z1, null, i02, this, 4, null);
            if (p10 == f10) {
                return f10;
            }
            return (ServerResult) p10;
        }
        k.a j11 = k.f41787a.j();
        String i03 = bVar.i0();
        int i13 = this.f44646i;
        int i14 = this.f44647j;
        String str2 = this.f44648k;
        this.f44645h = 2;
        q10 = k.a.C0617a.q(j11, i13, i14, 0, str2, Z1, null, i03, this, 4, null);
        if (q10 == f10) {
            return f10;
        }
        return (ServerResult) q10;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(c<? super ServerResult<QuerySingleUnlockEpisodeMethodsResult>> cVar) {
        return ((UnlockRemoteDS$querySingleUnlockEpisodeMethods$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
