package com.startshorts.androidplayer.repo.discover;

import com.startshorts.androidplayer.bean.api.ServerResult;
import com.startshorts.androidplayer.bean.discover.DiscoverTabPage;
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
@d(c = "com.startshorts.androidplayer.repo.discover.DiscoverRemoteDS$fetchTabPage$2", f = "DiscoverRemoteDS.kt", l = {34, 36}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class DiscoverRemoteDS$fetchTabPage$2 extends SuspendLambda implements Function1<c<? super ServerResult<DiscoverTabPage>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43945h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ int f43946i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ String f43947j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ String f43948k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiscoverRemoteDS$fetchTabPage$2(int i10, String str, String str2, c<? super DiscoverRemoteDS$fetchTabPage$2> cVar) {
        super(1, cVar);
        this.f43946i = i10;
        this.f43947j = str;
        this.f43948k = str2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new DiscoverRemoteDS$fetchTabPage$2(this.f43946i, this.f43947j, this.f43948k, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f43945h;
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
            int i11 = this.f43946i;
            String str = this.f43947j;
            String str2 = this.f43948k;
            this.f43945h = 1;
            obj = j10.B1(i11, str, str2, this);
            if (obj == f10) {
                return f10;
            }
            return (ServerResult) obj;
        }
        k.a j11 = k.f41787a.j();
        int i12 = this.f43946i;
        String str3 = this.f43947j;
        String str4 = this.f43948k;
        this.f43945h = 2;
        obj = j11.V0(i12, str3, str4, this);
        if (obj == f10) {
            return f10;
        }
        return (ServerResult) obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(c<? super ServerResult<DiscoverTabPage>> cVar) {
        return ((DiscoverRemoteDS$fetchTabPage$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
