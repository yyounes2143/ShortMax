package com.startshorts.androidplayer.viewmodel.profile;

import com.startshorts.androidplayer.bean.eventbus.AppLanguageUpdatedEvent;
import com.startshorts.androidplayer.bean.settings.AppLanguage;
import com.startshorts.androidplayer.manager.push.PushManager;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.repo.act.ActResourceRepo;
import com.startshorts.androidplayer.repo.discover.DiscoverRepo;
import com.startshorts.androidplayer.repo.immersion.EpisodeRepo;
import com.startshorts.androidplayer.repo.immersion.ImmersionRepo;
import com.startshorts.androidplayer.repo.language.LanguageRepo;
import com.startshorts.androidplayer.repo.push.PushRepo;
import com.startshorts.androidplayer.repo.search.SearchRepo;
import com.startshorts.androidplayer.repo.shorts.ShortsRepo;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import com.startshorts.androidplayer.viewmodel.profile.b;
import fk.u;
import fk.v;
import gt.g0;
import jk.o;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
/* compiled from: LanguageViewModel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.viewmodel.profile.LanguageViewModel$updateAppLanguage$1", f = "LanguageViewModel.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class LanguageViewModel$updateAppLanguage$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f48968h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ AppLanguage f48969i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ LanguageViewModel f48970j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LanguageViewModel$updateAppLanguage$1(AppLanguage appLanguage, LanguageViewModel languageViewModel, rs.c<? super LanguageViewModel$updateAppLanguage$1> cVar) {
        super(2, cVar);
        this.f48969i = appLanguage;
        this.f48970j = languageViewModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit k() {
        nk.b.f62972a.b();
        CoroutineUtil.g(CoroutineUtil.f48072a, 1500L, null, new Function0() { // from class: com.startshorts.androidplayer.viewmodel.profile.d
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit n10;
                n10 = LanguageViewModel$updateAppLanguage$1.n();
                return n10;
            }
        }, 2, null);
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit n() {
        PushManager.f42838a.e(true);
        return Unit.f60915a;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new LanguageViewModel$updateAppLanguage$1(this.f48969i, this.f48970j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((LanguageViewModel$updateAppLanguage$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        kotlin.coroutines.intrinsics.a.f();
        if (this.f48968h == 0) {
            kotlin.f.b(obj);
            ud.a aVar = ud.a.f68411a;
            String b10 = aVar.b();
            ud.b bVar = ud.b.f68412a;
            bVar.N2(this.f48969i.getOfficialName());
            aVar.Y(this.f48969i.getOfficialName());
            au.c d10 = au.c.d();
            if (b10 == null) {
                b10 = "";
            }
            d10.l(new AppLanguageUpdatedEvent(b10, this.f48969i.getOfficialName()));
            DiscoverRepo discoverRepo = DiscoverRepo.f43967a;
            discoverRepo.i();
            discoverRepo.h();
            ShortsRepo shortsRepo = ShortsRepo.f44606a;
            shortsRepo.d();
            shortsRepo.t();
            bVar.z4(null);
            bVar.q4(null);
            bVar.O4(null);
            EpisodeRepo.f44056a.g();
            ImmersionRepo.f44129a.e();
            PushRepo.f44374a.j();
            SearchRepo.f44583a.c();
            ActResourceRepo.f43103a.j(null);
            v vVar = v.f51778a;
            u uVar = u.f51776a;
            vVar.a(uVar.b(), this.f48969i.getOfficialName());
            if (AccountRepo.f43052a.w0()) {
                LanguageRepo.f44181a.h(new Function0() { // from class: com.startshorts.androidplayer.viewmodel.profile.c
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        Unit k10;
                        k10 = LanguageViewModel$updateAppLanguage$1.k();
                        return k10;
                    }
                });
            }
            yf.a.f70794a.m(uVar.b());
            o.b(this.f48970j.B(), b.C0674b.f48979a);
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
