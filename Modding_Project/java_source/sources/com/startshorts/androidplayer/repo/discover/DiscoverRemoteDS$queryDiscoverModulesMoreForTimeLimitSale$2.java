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
@d(c = "com.startshorts.androidplayer.repo.discover.DiscoverRemoteDS$queryDiscoverModulesMoreForTimeLimitSale$2", f = "DiscoverRemoteDS.kt", l = {64}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class DiscoverRemoteDS$queryDiscoverModulesMoreForTimeLimitSale$2 extends SuspendLambda implements Function1<c<? super ServerResult<DiscoverModule>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43961h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ String f43962i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ String f43963j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ int f43964k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ String f43965l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ String f43966m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiscoverRemoteDS$queryDiscoverModulesMoreForTimeLimitSale$2(String str, String str2, int i10, String str3, String str4, c<? super DiscoverRemoteDS$queryDiscoverModulesMoreForTimeLimitSale$2> cVar) {
        super(1, cVar);
        this.f43962i = str;
        this.f43963j = str2;
        this.f43964k = i10;
        this.f43965l = str3;
        this.f43966m = str4;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new DiscoverRemoteDS$queryDiscoverModulesMoreForTimeLimitSale$2(this.f43962i, this.f43963j, this.f43964k, this.f43965l, this.f43966m, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f43961h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            k.a j10 = k.f41787a.j();
            String str = this.f43962i;
            String str2 = this.f43963j;
            int i11 = this.f43964k;
            String str3 = this.f43965l;
            String str4 = this.f43966m;
            this.f43961h = 1;
            obj = j10.q0(str, str2, i11, str3, str4, this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(c<? super ServerResult<DiscoverModule>> cVar) {
        return ((DiscoverRemoteDS$queryDiscoverModulesMoreForTimeLimitSale$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
