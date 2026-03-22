package com.startshorts.androidplayer.viewmodel.reward;

import android.content.Context;
import com.startshorts.androidplayer.bean.task.AcceptTaskRewardResult;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.repo.rewards.RewardsRepo;
import com.startshorts.androidplayer.viewmodel.reward.j;
import gt.g0;
import gt.j1;
import gt.q0;
import java.util.List;
import java.util.function.Predicate;
import jk.o;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RewardsViewModel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.viewmodel.reward.RewardsViewModel$acceptTaskReward$1", f = "RewardsViewModel.kt", l = {540, 574}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class RewardsViewModel$acceptTaskReward$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    Object f49095h;

    /* renamed from: i  reason: collision with root package name */
    int f49096i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ Context f49097j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ String f49098k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ RewardsViewModel f49099l;

    /* renamed from: m  reason: collision with root package name */
    final /* synthetic */ int f49100m;

    /* renamed from: n  reason: collision with root package name */
    final /* synthetic */ int f49101n;

    /* renamed from: o  reason: collision with root package name */
    final /* synthetic */ String f49102o;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RewardsViewModel$acceptTaskReward$1(Context context, String str, RewardsViewModel rewardsViewModel, int i10, int i11, String str2, rs.c<? super RewardsViewModel$acceptTaskReward$1> cVar) {
        super(2, cVar);
        this.f49097j = context;
        this.f49098k = str;
        this.f49099l = rewardsViewModel;
        this.f49100m = i10;
        this.f49101n = i11;
        this.f49102o = str2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean k(int i10, Integer num) {
        if (num != null && num.intValue() == i10) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean n(Function1 function1, Object obj) {
        return ((Boolean) function1.invoke(obj)).booleanValue();
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new RewardsViewModel$acceptTaskReward$1(this.f49097j, this.f49098k, this.f49099l, this.f49100m, this.f49101n, this.f49102o, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((RewardsViewModel$acceptTaskReward$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object c10;
        String str;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f49096i;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    kotlin.f.b(obj);
                    return Unit.f60915a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.f.b(obj);
            c10 = ((Result) obj).n();
        } else {
            kotlin.f.b(obj);
            RewardsRepo rewardsRepo = RewardsRepo.f44515a;
            Context context = this.f49097j;
            String str2 = this.f49098k;
            this.f49096i = 1;
            c10 = rewardsRepo.c(context, str2, true, this);
            if (c10 == f10) {
                return f10;
            }
        }
        RewardsViewModel rewardsViewModel = this.f49099l;
        String str3 = this.f49098k;
        final int i11 = this.f49100m;
        int i12 = this.f49101n;
        String str4 = this.f49102o;
        Context context2 = this.f49097j;
        if (Result.j(c10)) {
            AcceptTaskRewardResult acceptTaskRewardResult = (AcceptTaskRewardResult) c10;
            o.b(rewardsViewModel.N(), new j.b(str3, null, 2, null));
            AccountRepo accountRepo = AccountRepo.f43052a;
            AccountRepo.Z0(accountRepo, true, null, null, 6, null);
            String t02 = accountRepo.t0();
            ud.b bVar = ud.b.f68412a;
            List<Integer> x12 = bVar.x1(t02);
            if (x12 == null) {
                x12 = CollectionsKt.n();
            }
            List<Integer> list = x12;
            if (!list.isEmpty()) {
                List<Integer> g12 = CollectionsKt.g1(list);
                final Function1 function1 = new Function1() { // from class: com.startshorts.androidplayer.viewmodel.reward.e
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        boolean k10;
                        k10 = RewardsViewModel$acceptTaskReward$1.k(i11, (Integer) obj2);
                        return Boolean.valueOf(k10);
                    }
                };
                g12.removeIf(new Predicate() { // from class: com.startshorts.androidplayer.viewmodel.reward.f
                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj2) {
                        boolean n10;
                        n10 = RewardsViewModel$acceptTaskReward$1.n(Function1.this, obj2);
                        return n10;
                    }
                });
                bVar.K4(t02, g12);
            }
            switch (i11) {
                case 1:
                    str = "task_facebook_login";
                    break;
                case 2:
                    str = "provide_email";
                    break;
                case 3:
                    str = "provide_phone";
                    break;
                case 4:
                    str = "notification";
                    break;
                case 5:
                    str = "task_google_login";
                    break;
                case 6:
                default:
                    str = "";
                    break;
                case 7:
                    str = "OpenFloatingWindow";
                    break;
                case 8:
                    str = "follow_fb";
                    break;
                case 9:
                    str = "follow_youtube";
                    break;
                case 10:
                    str = "follow_tt";
                    break;
                case 11:
                    str = "follow_ins";
                    break;
            }
            EventManager.f42463a.y0(str, i12, str4);
            ud.a.f68411a.D0(true);
            rewardsViewModel.P();
            if (i11 == 4) {
                bVar.m2(true);
            }
            j1 c11 = q0.c();
            RewardsViewModel$acceptTaskReward$1$1$2 rewardsViewModel$acceptTaskReward$1$1$2 = new RewardsViewModel$acceptTaskReward$1$1$2(acceptTaskRewardResult, context2, null);
            this.f49095h = c10;
            this.f49096i = 2;
            if (gt.e.g(c11, rewardsViewModel$acceptTaskReward$1$1$2, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
