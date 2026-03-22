package com.startshorts.androidplayer.repo.discover;

import com.startshorts.androidplayer.bean.api.ServerResult;
import com.startshorts.androidplayer.bean.discover.DiscoverTabHomeResult;
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
/* compiled from: DiscoverRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.discover.DiscoverRemoteDS$fetchTabs$2", f = "DiscoverRemoteDS.kt", l = {23, 25}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class DiscoverRemoteDS$fetchTabs$2 extends SuspendLambda implements Function1<c<? super ServerResult<DiscoverTabHomeResult>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43952h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ int f43953i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ long f43954j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ boolean f43955k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ String f43956l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ String f43957m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiscoverRemoteDS$fetchTabs$2(int i10, long j10, boolean z10, String str, String str2, c<? super DiscoverRemoteDS$fetchTabs$2> cVar) {
        super(1, cVar);
        this.f43953i = i10;
        this.f43954j = j10;
        this.f43955k = z10;
        this.f43956l = str;
        this.f43957m = str2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new DiscoverRemoteDS$fetchTabs$2(this.f43953i, this.f43954j, this.f43955k, this.f43956l, this.f43957m, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f43952h;
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
        if (ABTestFactory.f42224a.i1().isEnable().invoke().booleanValue()) {
            k.a j10 = k.f41787a.j();
            int i11 = this.f43953i;
            long j11 = this.f43954j;
            boolean z10 = this.f43955k;
            String str = this.f43956l;
            String str2 = this.f43957m;
            this.f43952h = 1;
            obj = j10.s1(i11, j11, z10, str, str2, this);
            if (obj == f10) {
                return f10;
            }
            return (ServerResult) obj;
        }
        k.a j12 = k.f41787a.j();
        int i12 = this.f43953i;
        long j13 = this.f43954j;
        boolean z11 = this.f43955k;
        String str3 = this.f43956l;
        String str4 = this.f43957m;
        this.f43952h = 2;
        obj = j12.u(i12, j13, z11, str3, str4, this);
        if (obj == f10) {
            return f10;
        }
        return (ServerResult) obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(c<? super ServerResult<DiscoverTabHomeResult>> cVar) {
        return ((DiscoverRemoteDS$fetchTabs$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
