package com.startshorts.androidplayer.repo.discover;

import com.startshorts.androidplayer.bean.api.ServerResult;
import com.startshorts.androidplayer.bean.discover.DiscoverShorts;
import com.startshorts.androidplayer.manager.api.base.k;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DiscoverRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.discover.DiscoverRemoteDS$fetchDiscoverRankingBanner$2", f = "DiscoverRemoteDS.kt", l = {43}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class DiscoverRemoteDS$fetchDiscoverRankingBanner$2 extends SuspendLambda implements Function1<c<? super ServerResult<List<DiscoverShorts>>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43914h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ String f43915i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ int f43916j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ int f43917k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ int f43918l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ String f43919m;

    /* renamed from: n  reason: collision with root package name */
    final /* synthetic */ String f43920n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiscoverRemoteDS$fetchDiscoverRankingBanner$2(String str, int i10, int i11, int i12, String str2, String str3, c<? super DiscoverRemoteDS$fetchDiscoverRankingBanner$2> cVar) {
        super(1, cVar);
        this.f43915i = str;
        this.f43916j = i10;
        this.f43917k = i11;
        this.f43918l = i12;
        this.f43919m = str2;
        this.f43920n = str3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new DiscoverRemoteDS$fetchDiscoverRankingBanner$2(this.f43915i, this.f43916j, this.f43917k, this.f43918l, this.f43919m, this.f43920n, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f43914h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            k.a j10 = k.f41787a.j();
            String str = this.f43915i;
            Integer d10 = kotlin.coroutines.jvm.internal.a.d(this.f43916j);
            int i11 = this.f43917k;
            int i12 = this.f43918l;
            String str2 = this.f43919m;
            String str3 = this.f43920n;
            this.f43914h = 1;
            obj = j10.y0(str, d10, i11, i12, str2, str3, this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(c<? super ServerResult<List<DiscoverShorts>>> cVar) {
        return ((DiscoverRemoteDS$fetchDiscoverRankingBanner$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
