package com.startshorts.androidplayer.viewmodel.discover;

import androidx.lifecycle.MutableLiveData;
import com.startshorts.androidplayer.repo.discover.DiscoverRepo;
import com.startshorts.androidplayer.viewmodel.discover.d;
import gt.g0;
import java.util.List;
import jk.o;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DiscoverMoreCategoryFilterViewModel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.viewmodel.discover.DiscoverMoreCategoryFilterViewModel$queryCategoryEpisode$1", f = "DiscoverMoreCategoryFilterViewModel.kt", l = {50}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class DiscoverMoreCategoryFilterViewModel$queryCategoryEpisode$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f48449h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ int f48450i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ int f48451j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ String f48452k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ String f48453l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ String f48454m;

    /* renamed from: n  reason: collision with root package name */
    final /* synthetic */ Integer f48455n;

    /* renamed from: o  reason: collision with root package name */
    final /* synthetic */ DiscoverMoreCategoryFilterViewModel f48456o;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiscoverMoreCategoryFilterViewModel$queryCategoryEpisode$1(int i10, int i11, String str, String str2, String str3, Integer num, DiscoverMoreCategoryFilterViewModel discoverMoreCategoryFilterViewModel, rs.c<? super DiscoverMoreCategoryFilterViewModel$queryCategoryEpisode$1> cVar) {
        super(2, cVar);
        this.f48450i = i10;
        this.f48451j = i11;
        this.f48452k = str;
        this.f48453l = str2;
        this.f48454m = str3;
        this.f48455n = num;
        this.f48456o = discoverMoreCategoryFilterViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new DiscoverMoreCategoryFilterViewModel$queryCategoryEpisode$1(this.f48450i, this.f48451j, this.f48452k, this.f48453l, this.f48454m, this.f48455n, this.f48456o, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((DiscoverMoreCategoryFilterViewModel$queryCategoryEpisode$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i10;
        Object m10;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i11 = this.f48449h;
        boolean z10 = false;
        if (i11 != 0) {
            if (i11 == 1) {
                kotlin.f.b(obj);
                m10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            DiscoverRepo discoverRepo = DiscoverRepo.f43967a;
            int i12 = this.f48450i;
            int i13 = this.f48451j;
            String str = this.f48452k;
            String str2 = this.f48453l;
            String str3 = this.f48454m;
            Integer num = this.f48455n;
            if (num != null) {
                i10 = num.intValue();
            } else {
                i10 = 0;
            }
            this.f48449h = 1;
            m10 = discoverRepo.m(i12, i13, str, str2, str3, i10, this);
            if (m10 == f10) {
                return f10;
            }
        }
        DiscoverMoreCategoryFilterViewModel discoverMoreCategoryFilterViewModel = this.f48456o;
        int i14 = this.f48451j;
        if (Result.j(m10)) {
            List list = (List) m10;
            MutableLiveData<d> A = discoverMoreCategoryFilterViewModel.A();
            if (i14 == 1) {
                z10 = true;
            }
            o.b(A, new d.c(z10, list));
        }
        DiscoverMoreCategoryFilterViewModel discoverMoreCategoryFilterViewModel2 = this.f48456o;
        Throwable g10 = Result.g(m10);
        if (g10 != null) {
            discoverMoreCategoryFilterViewModel2.x(discoverMoreCategoryFilterViewModel2.s(g10));
        }
        return Unit.f60915a;
    }
}
