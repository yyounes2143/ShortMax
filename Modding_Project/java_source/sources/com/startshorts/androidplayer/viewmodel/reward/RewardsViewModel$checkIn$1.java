package com.startshorts.androidplayer.viewmodel.reward;

import android.content.Context;
import android.os.Bundle;
import com.mbridge.msdk.MBridgeConstans;
import com.startshorts.androidplayer.manager.configure.ad.AdSignInfoManager;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.repo.rewards.RewardsRepo;
import com.startshorts.androidplayer.viewmodel.reward.a;
import gt.g0;
import jk.o;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RewardsViewModel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.viewmodel.reward.RewardsViewModel$checkIn$1", f = "RewardsViewModel.kt", l = {329}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class RewardsViewModel$checkIn$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f49106h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ Context f49107i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ String f49108j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ RewardsViewModel f49109k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ int f49110l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ String f49111m;

    /* renamed from: n  reason: collision with root package name */
    final /* synthetic */ int f49112n;

    /* renamed from: o  reason: collision with root package name */
    final /* synthetic */ boolean f49113o;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RewardsViewModel$checkIn$1(Context context, String str, RewardsViewModel rewardsViewModel, int i10, String str2, int i11, boolean z10, rs.c<? super RewardsViewModel$checkIn$1> cVar) {
        super(2, cVar);
        this.f49107i = context;
        this.f49108j = str;
        this.f49109k = rewardsViewModel;
        this.f49110l = i10;
        this.f49111m = str2;
        this.f49112n = i11;
        this.f49113o = z10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new RewardsViewModel$checkIn$1(this.f49107i, this.f49108j, this.f49109k, this.f49110l, this.f49111m, this.f49112n, this.f49113o, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((RewardsViewModel$checkIn$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object e10;
        String str;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f49106h;
        if (i10 != 0) {
            if (i10 == 1) {
                kotlin.f.b(obj);
                e10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            RewardsRepo rewardsRepo = RewardsRepo.f44515a;
            Context context = this.f49107i;
            String str2 = this.f49108j;
            this.f49106h = 1;
            e10 = rewardsRepo.e(context, str2, true, this);
            if (e10 == f10) {
                return f10;
            }
        }
        RewardsViewModel rewardsViewModel = this.f49109k;
        int i11 = this.f49110l;
        String str3 = this.f49111m;
        int i12 = this.f49112n;
        boolean z10 = this.f49113o;
        if (Result.j(e10)) {
            o.b(rewardsViewModel.I(), new a.e(i11));
            AdSignInfoManager.f42264a.b();
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            bundle.putString("from", str3);
            bundle.putInt("tickets", i11);
            bundle.putInt("day", i12 + 1);
            if (z10) {
                str = "1";
            } else {
                str = MBridgeConstans.ENDCARD_URL_TYPE_PL;
            }
            bundle.putString("is_auto", str);
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "check_in_click", bundle, 0L, 4, null);
            ud.a.f68411a.D0(true);
            RewardsRepo rewardsRepo2 = RewardsRepo.f44515a;
            rewardsRepo2.y();
            AccountRepo.Z0(AccountRepo.f43052a, true, null, null, 6, null);
            if (!rewardsRepo2.q()) {
                rewardsViewModel.P();
            }
        }
        return Unit.f60915a;
    }
}
