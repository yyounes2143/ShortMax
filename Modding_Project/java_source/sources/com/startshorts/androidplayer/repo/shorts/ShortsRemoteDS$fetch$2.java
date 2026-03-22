package com.startshorts.androidplayer.repo.shorts;

import com.startshorts.androidplayer.bean.api.ServerResult;
import com.startshorts.androidplayer.bean.shorts.ShortsListResult;
import com.startshorts.androidplayer.log.Logger;
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
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ShortsRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.shorts.ShortsRemoteDS$fetch$2", f = "ShortsRemoteDS.kt", l = {27, 33}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class ShortsRemoteDS$fetch$2 extends SuspendLambda implements Function1<c<? super ServerResult<ShortsListResult>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f44599h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ ShortsRemoteDS f44600i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ int f44601j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ int f44602k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ boolean f44603l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ Integer f44604m;

    /* renamed from: n  reason: collision with root package name */
    final /* synthetic */ Integer f44605n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShortsRemoteDS$fetch$2(ShortsRemoteDS shortsRemoteDS, int i10, int i11, boolean z10, Integer num, Integer num2, c<? super ShortsRemoteDS$fetch$2> cVar) {
        super(1, cVar);
        this.f44600i = shortsRemoteDS;
        this.f44601j = i10;
        this.f44602k = i11;
        this.f44603l = z10;
        this.f44604m = num;
        this.f44605n = num2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new ShortsRemoteDS$fetch$2(this.f44600i, this.f44601j, this.f44602k, this.f44603l, this.f44604m, this.f44605n, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        String str;
        Object f10 = a.f();
        int i10 = this.f44599h;
        int i11 = 2;
        int i12 = 1;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    f.b(obj);
                    return (ServerResult) obj;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            f.b(obj);
            return (ServerResult) obj;
        }
        f.b(obj);
        Logger logger = Logger.f41511a;
        str = this.f44600i.f44595a;
        logger.h(str, "pageNumber -> getForYouListPageNewV3 pageNumber " + this.f44601j + ", pageSize -> " + this.f44602k + ", isColdBoot -> " + this.f44603l + ", lastShortPlayId -> " + this.f44604m + ", consecutiveTimes -> " + this.f44605n);
        if (ABTestFactory.f42224a.i1().isEnable().invoke().booleanValue()) {
            k.a j10 = k.f41787a.j();
            int i13 = this.f44601j;
            int i14 = this.f44602k;
            if (this.f44603l) {
                i11 = 1;
            }
            this.f44599h = 1;
            obj = j10.O(i13, i14, i11, this);
            if (obj == f10) {
                return f10;
            }
            return (ServerResult) obj;
        }
        k.a j11 = k.f41787a.j();
        int i15 = this.f44601j;
        int i16 = this.f44602k;
        if (!this.f44603l) {
            i12 = 2;
        }
        this.f44599h = 2;
        obj = j11.J(i15, i16, i12, this);
        if (obj == f10) {
            return f10;
        }
        return (ServerResult) obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(c<? super ServerResult<ShortsListResult>> cVar) {
        return ((ShortsRemoteDS$fetch$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
