package com.startshorts.androidplayer.repo.discover;

import com.startshorts.androidplayer.bean.api.ServerResult;
import com.startshorts.androidplayer.bean.discover.DiscoverCategoryShorts;
import com.startshorts.androidplayer.manager.api.base.k;
import com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory;
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
@d(c = "com.startshorts.androidplayer.repo.discover.DiscoverRemoteDS$fetchDiscoverModulesCategoryMore$2", f = "DiscoverRemoteDS.kt", l = {71, 73}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class DiscoverRemoteDS$fetchDiscoverModulesCategoryMore$2 extends SuspendLambda implements Function1<c<? super ServerResult<List<DiscoverCategoryShorts>>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43902h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ int f43903i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ int f43904j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ String f43905k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ String f43906l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ String f43907m;

    /* renamed from: n  reason: collision with root package name */
    final /* synthetic */ int f43908n;

    /* renamed from: o  reason: collision with root package name */
    final /* synthetic */ String f43909o;

    /* renamed from: p  reason: collision with root package name */
    final /* synthetic */ String f43910p;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiscoverRemoteDS$fetchDiscoverModulesCategoryMore$2(int i10, int i11, String str, String str2, String str3, int i12, String str4, String str5, c<? super DiscoverRemoteDS$fetchDiscoverModulesCategoryMore$2> cVar) {
        super(1, cVar);
        this.f43903i = i10;
        this.f43904j = i11;
        this.f43905k = str;
        this.f43906l = str2;
        this.f43907m = str3;
        this.f43908n = i12;
        this.f43909o = str4;
        this.f43910p = str5;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new DiscoverRemoteDS$fetchDiscoverModulesCategoryMore$2(this.f43903i, this.f43904j, this.f43905k, this.f43906l, this.f43907m, this.f43908n, this.f43909o, this.f43910p, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f43902h;
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
            int i11 = this.f43903i;
            int i12 = this.f43904j;
            String str = this.f43905k;
            String str2 = this.f43906l;
            String str3 = this.f43907m;
            int i13 = this.f43908n;
            String str4 = this.f43909o;
            String str5 = this.f43910p;
            this.f43902h = 1;
            obj = j10.A0(i11, i12, str, str2, str3, i13, str4, str5, this);
            if (obj == f10) {
                return f10;
            }
            return (ServerResult) obj;
        }
        k.a j11 = k.f41787a.j();
        int i14 = this.f43903i;
        int i15 = this.f43904j;
        String str6 = this.f43905k;
        String str7 = this.f43906l;
        String str8 = this.f43907m;
        int i16 = this.f43908n;
        String str9 = this.f43909o;
        String str10 = this.f43910p;
        this.f43902h = 2;
        obj = j11.l(i14, i15, str6, str7, str8, i16, str9, str10, this);
        if (obj == f10) {
            return f10;
        }
        return (ServerResult) obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(c<? super ServerResult<List<DiscoverCategoryShorts>>> cVar) {
        return ((DiscoverRemoteDS$fetchDiscoverModulesCategoryMore$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
