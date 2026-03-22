package com.startshorts.androidplayer.repo.discover;

import com.startshorts.androidplayer.bean.api.ServerResult;
import com.startshorts.androidplayer.bean.discover.DiscoverModule;
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
/* compiled from: DiscoverRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.discover.DiscoverRemoteDS$fetchModuleMore$2", f = "DiscoverRemoteDS.kt", l = {48}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class DiscoverRemoteDS$fetchModuleMore$2 extends SuspendLambda implements Function1<c<? super ServerResult<DiscoverModule>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43924h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ String f43925i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ String f43926j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ int f43927k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ String f43928l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ String f43929m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiscoverRemoteDS$fetchModuleMore$2(String str, String str2, int i10, String str3, String str4, c<? super DiscoverRemoteDS$fetchModuleMore$2> cVar) {
        super(1, cVar);
        this.f43925i = str;
        this.f43926j = str2;
        this.f43927k = i10;
        this.f43928l = str3;
        this.f43929m = str4;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new DiscoverRemoteDS$fetchModuleMore$2(this.f43925i, this.f43926j, this.f43927k, this.f43928l, this.f43929m, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f43924h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            k.a j10 = k.f41787a.j();
            String str = this.f43925i;
            String str2 = this.f43926j;
            int i11 = this.f43927k;
            String str3 = this.f43928l;
            String str4 = this.f43929m;
            this.f43924h = 1;
            obj = j10.R1(str, str2, i11, str3, str4, this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(c<? super ServerResult<DiscoverModule>> cVar) {
        return ((DiscoverRemoteDS$fetchModuleMore$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
