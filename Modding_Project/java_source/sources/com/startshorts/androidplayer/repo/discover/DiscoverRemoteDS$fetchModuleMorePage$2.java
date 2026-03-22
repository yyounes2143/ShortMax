package com.startshorts.androidplayer.repo.discover;

import com.startshorts.androidplayer.bean.api.ServerResult;
import com.startshorts.androidplayer.bean.discover.DiscoverModule;
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
@d(c = "com.startshorts.androidplayer.repo.discover.DiscoverRemoteDS$fetchModuleMorePage$2", f = "DiscoverRemoteDS.kt", l = {55, 57}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class DiscoverRemoteDS$fetchModuleMorePage$2 extends SuspendLambda implements Function1<c<? super ServerResult<DiscoverModule>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43933h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ String f43934i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ String f43935j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ int f43936k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ String f43937l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ String f43938m;

    /* renamed from: n  reason: collision with root package name */
    final /* synthetic */ int f43939n;

    /* renamed from: o  reason: collision with root package name */
    final /* synthetic */ int f43940o;

    /* renamed from: p  reason: collision with root package name */
    final /* synthetic */ int f43941p;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiscoverRemoteDS$fetchModuleMorePage$2(String str, String str2, int i10, String str3, String str4, int i11, int i12, int i13, c<? super DiscoverRemoteDS$fetchModuleMorePage$2> cVar) {
        super(1, cVar);
        this.f43934i = str;
        this.f43935j = str2;
        this.f43936k = i10;
        this.f43937l = str3;
        this.f43938m = str4;
        this.f43939n = i11;
        this.f43940o = i12;
        this.f43941p = i13;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new DiscoverRemoteDS$fetchModuleMorePage$2(this.f43934i, this.f43935j, this.f43936k, this.f43937l, this.f43938m, this.f43939n, this.f43940o, this.f43941p, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f43933h;
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
            String str = this.f43934i;
            String str2 = this.f43935j;
            int i11 = this.f43936k;
            String str3 = this.f43937l;
            String str4 = this.f43938m;
            int i12 = this.f43939n;
            int i13 = this.f43940o;
            int i14 = this.f43941p;
            this.f43933h = 1;
            obj = j10.e(str, str2, i11, str3, str4, i12, i13, i14, this);
            if (obj == f10) {
                return f10;
            }
            return (ServerResult) obj;
        }
        k.a j11 = k.f41787a.j();
        String str5 = this.f43934i;
        String str6 = this.f43935j;
        int i15 = this.f43936k;
        String str7 = this.f43937l;
        String str8 = this.f43938m;
        int i16 = this.f43939n;
        int i17 = this.f43940o;
        int i18 = this.f43941p;
        this.f43933h = 2;
        obj = j11.e1(str5, str6, i15, str7, str8, i16, i17, i18, this);
        if (obj == f10) {
            return f10;
        }
        return (ServerResult) obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(c<? super ServerResult<DiscoverModule>> cVar) {
        return ((DiscoverRemoteDS$fetchModuleMorePage$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
