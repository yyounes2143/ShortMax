package com.startshorts.androidplayer.viewmodel.reward;

import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.exception.ResponseException;
import com.startshorts.androidplayer.bean.task.Task;
import com.startshorts.androidplayer.bean.task.TaskModule;
import com.startshorts.androidplayer.bean.task.TaskModuleList;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.repo.rewards.RewardsRepo;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.viewmodel.reward.j;
import fk.u;
import gt.g0;
import java.util.List;
import jk.o;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
/* compiled from: RewardsViewModel.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.viewmodel.reward.RewardsViewModel$queryTaskList$1", f = "RewardsViewModel.kt", l = {508}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nRewardsViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RewardsViewModel.kt\ncom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$queryTaskList$1\n+ 2 ApiBuilder.kt\ncom/startshorts/androidplayer/manager/api/base/ApiBuilderKt\n*L\n1#1,588:1\n125#2,13:589\n*S KotlinDebug\n*F\n+ 1 RewardsViewModel.kt\ncom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel$queryTaskList$1\n*L\n523#1:589,13\n*E\n"})
/* loaded from: classes7.dex */
final class RewardsViewModel$queryTaskList$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f49136h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ RewardsViewModel f49137i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RewardsViewModel$queryTaskList$1(RewardsViewModel rewardsViewModel, rs.c<? super RewardsViewModel$queryTaskList$1> cVar) {
        super(2, cVar);
        this.f49137i = rewardsViewModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean k(Task task) {
        return !task.available();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean n(Task task) {
        if (task.getTaskType() == 4) {
            return true;
        }
        return false;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new RewardsViewModel$queryTaskList$1(this.f49137i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((RewardsViewModel$queryTaskList$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object w10;
        ResponseException responseException;
        List<TaskModule> taskModuleResponseList;
        TaskModule taskModule;
        List<Task> appTaskReponseList;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f49136h;
        if (i10 != 0) {
            if (i10 == 1) {
                kotlin.f.b(obj);
                w10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            o.b(this.f49137i.N(), j.h.f49202a);
            RewardsRepo rewardsRepo = RewardsRepo.f44515a;
            this.f49136h = 1;
            w10 = rewardsRepo.w(this);
            if (w10 == f10) {
                return f10;
            }
        }
        RewardsViewModel rewardsViewModel = this.f49137i;
        if (Result.j(w10)) {
            TaskModuleList taskModuleList = (TaskModuleList) w10;
            if (taskModuleList != null && (taskModuleResponseList = taskModuleList.getTaskModuleResponseList()) != null && (taskModule = (TaskModule) CollectionsKt.firstOrNull(taskModuleResponseList)) != null && (appTaskReponseList = taskModule.getAppTaskReponseList()) != null) {
                CollectionsKt.O(appTaskReponseList, new Function1() { // from class: com.startshorts.androidplayer.viewmodel.reward.g
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        boolean k10;
                        k10 = RewardsViewModel$queryTaskList$1.k((Task) obj2);
                        return Boolean.valueOf(k10);
                    }
                });
                if (DeviceUtil.f48146a.X()) {
                    CollectionsKt.O(appTaskReponseList, new Function1() { // from class: com.startshorts.androidplayer.viewmodel.reward.h
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj2) {
                            boolean n10;
                            n10 = RewardsViewModel$queryTaskList$1.n((Task) obj2);
                            return Boolean.valueOf(n10);
                        }
                    });
                }
            }
            o.b(rewardsViewModel.N(), new j.f(taskModuleList));
        }
        RewardsViewModel rewardsViewModel2 = this.f49137i;
        Throwable g10 = Result.g(w10);
        if (g10 != null) {
            if (g10 instanceof ResponseException) {
                responseException = (ResponseException) g10;
            } else {
                responseException = null;
            }
            if (responseException == null) {
                Logger logger = Logger.f41511a;
                logger.e("ApiBuilder", "onResponseFailure exception -> " + g10.getMessage() + ", exception must not be null");
            } else {
                if (!responseException.isNetworkError()) {
                    responseException.setMessage(u.f51776a.e(R$string.common_error_code, String.valueOf(responseException.getCode())));
                }
                o.b(rewardsViewModel2.N(), new j.g(rewardsViewModel2.p(responseException)));
            }
        }
        return Unit.f60915a;
    }
}
