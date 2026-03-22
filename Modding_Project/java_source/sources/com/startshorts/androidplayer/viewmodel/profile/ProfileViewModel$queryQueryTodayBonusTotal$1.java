package com.startshorts.androidplayer.viewmodel.profile;

import androidx.lifecycle.MutableLiveData;
import com.startshorts.androidplayer.bean.profile.TodayBonusTotal;
import com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory;
import com.startshorts.androidplayer.repo.profile.ProfileRepo;
import com.startshorts.androidplayer.viewmodel.profile.f;
import gt.g0;
import jk.o;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ProfileViewModel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.viewmodel.profile.ProfileViewModel$queryQueryTodayBonusTotal$1", f = "ProfileViewModel.kt", l = {63}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class ProfileViewModel$queryQueryTodayBonusTotal$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f48974h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ ProfileViewModel f48975i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProfileViewModel$queryQueryTodayBonusTotal$1(ProfileViewModel profileViewModel, rs.c<? super ProfileViewModel$queryQueryTodayBonusTotal$1> cVar) {
        super(2, cVar);
        this.f48975i = profileViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new ProfileViewModel$queryQueryTodayBonusTotal$1(this.f48975i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((ProfileViewModel$queryQueryTodayBonusTotal$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object h10;
        int i10;
        int i11;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i12 = this.f48974h;
        if (i12 != 0) {
            if (i12 == 1) {
                kotlin.f.b(obj);
                h10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            ProfileRepo profileRepo = ProfileRepo.f44320a;
            int abTestIntValue = ABTestFactory.f42224a.C0().abTestIntValue();
            this.f48974h = 1;
            h10 = profileRepo.h(abTestIntValue, this);
            if (h10 == f10) {
                return f10;
            }
        }
        ProfileViewModel profileViewModel = this.f48975i;
        if (Result.j(h10)) {
            TodayBonusTotal todayBonusTotal = (TodayBonusTotal) h10;
            profileViewModel.f48973f = false;
            ud.a aVar = ud.a.f68411a;
            if (todayBonusTotal != null) {
                i10 = todayBonusTotal.getUserTodayBonusTotal();
            } else {
                i10 = 0;
            }
            aVar.S0(i10);
            MutableLiveData<f> D = profileViewModel.D();
            if (todayBonusTotal != null) {
                i11 = todayBonusTotal.getUserTodayBonusTotal();
            } else {
                i11 = 0;
            }
            o.b(D, new f.b(i11));
        }
        ProfileViewModel profileViewModel2 = this.f48975i;
        if (Result.g(h10) != null) {
            profileViewModel2.f48973f = false;
        }
        return Unit.f60915a;
    }
}
