package com.startshorts.androidplayer.viewmodel.discover;

import com.startshorts.androidplayer.bean.discover.DiscoverModule;
import com.startshorts.androidplayer.bean.discover.ModuleInfo;
import com.startshorts.androidplayer.repo.discover.DiscoverRepo;
import com.startshorts.androidplayer.viewmodel.discover.f;
import gt.g0;
import jk.o;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DiscoverMoreViewModel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.viewmodel.discover.DiscoverMoreViewModel$loadMoreEpisodes$1", f = "DiscoverMoreViewModel.kt", l = {46, 48}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class DiscoverMoreViewModel$loadMoreEpisodes$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f48459h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ ModuleInfo f48460i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ String f48461j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ DiscoverMoreViewModel f48462k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiscoverMoreViewModel$loadMoreEpisodes$1(ModuleInfo moduleInfo, String str, DiscoverMoreViewModel discoverMoreViewModel, rs.c<? super DiscoverMoreViewModel$loadMoreEpisodes$1> cVar) {
        super(2, cVar);
        this.f48460i = moduleInfo;
        this.f48461j = str;
        this.f48462k = discoverMoreViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new DiscoverMoreViewModel$loadMoreEpisodes$1(this.f48460i, this.f48461j, this.f48462k, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((DiscoverMoreViewModel$loadMoreEpisodes$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object o10;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f48459h;
        if (i10 != 0) {
            if (i10 == 1 || i10 == 2) {
                kotlin.f.b(obj);
                o10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            Integer moduleStyle = this.f48460i.getModuleStyle();
            int i11 = 0;
            String str = "";
            if (moduleStyle != null && moduleStyle.intValue() == 12) {
                DiscoverRepo discoverRepo = DiscoverRepo.f43967a;
                String moduleId = this.f48460i.getModuleId();
                if (moduleId != null) {
                    str = moduleId;
                }
                String str2 = this.f48461j;
                Integer recommendId = this.f48460i.getRecommendId();
                if (recommendId != null) {
                    i11 = recommendId.intValue();
                }
                this.f48459h = 1;
                o10 = discoverRepo.J(str, str2, i11, this);
                if (o10 == f10) {
                    return f10;
                }
            } else {
                DiscoverRepo discoverRepo2 = DiscoverRepo.f43967a;
                String moduleId2 = this.f48460i.getModuleId();
                if (moduleId2 != null) {
                    str = moduleId2;
                }
                String str3 = this.f48461j;
                Integer recommendId2 = this.f48460i.getRecommendId();
                if (recommendId2 != null) {
                    i11 = recommendId2.intValue();
                }
                this.f48459h = 2;
                o10 = discoverRepo2.o(str, str3, i11, this);
                if (o10 == f10) {
                    return f10;
                }
            }
        }
        DiscoverMoreViewModel discoverMoreViewModel = this.f48462k;
        if (Result.j(o10)) {
            o.b(discoverMoreViewModel.A(), new f.c((DiscoverModule) o10));
        }
        DiscoverMoreViewModel discoverMoreViewModel2 = this.f48462k;
        Throwable g10 = Result.g(o10);
        if (g10 != null) {
            discoverMoreViewModel2.x(discoverMoreViewModel2.s(g10));
        }
        return Unit.f60915a;
    }
}
