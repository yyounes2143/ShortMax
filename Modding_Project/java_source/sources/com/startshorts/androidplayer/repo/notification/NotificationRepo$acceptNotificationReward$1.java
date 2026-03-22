package com.startshorts.androidplayer.repo.notification;

import android.os.Bundle;
import com.startshorts.androidplayer.bean.task.AcceptTaskRewardResult;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import gt.e;
import gt.g0;
import gt.j1;
import gt.q0;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
import ud.b;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: NotificationRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.notification.NotificationRepo$acceptNotificationReward$1", f = "NotificationRepo.kt", l = {56, 70}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class NotificationRepo$acceptNotificationReward$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    Object f44304h;

    /* renamed from: i  reason: collision with root package name */
    int f44305i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public NotificationRepo$acceptNotificationReward$1(c<? super NotificationRepo$acceptNotificationReward$1> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new NotificationRepo$acceptNotificationReward$1(cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((NotificationRepo$acceptNotificationReward$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        NotificationRemoteDS f10;
        Object a10;
        Object f11 = a.f();
        int i10 = this.f44305i;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    f.b(obj);
                    return Unit.f60915a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            f.b(obj);
            a10 = ((Result) obj).n();
        } else {
            f.b(obj);
            f10 = NotificationRepo.f44301a.f();
            this.f44305i = 1;
            a10 = f10.a(this);
            if (a10 == f11) {
                return f11;
            }
        }
        if (Result.j(a10)) {
            AcceptTaskRewardResult acceptTaskRewardResult = (AcceptTaskRewardResult) a10;
            if (acceptTaskRewardResult == null) {
                return Unit.f60915a;
            }
            Logger logger = Logger.f41511a;
            logger.h("NotificationRepo", "acceptNotificationReward succeed -> taskBonus=" + acceptTaskRewardResult.getTaskBonus());
            AccountRepo.Z0(AccountRepo.f43052a, false, null, null, 7, null);
            b.f68412a.m2(true);
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            bundle.putString("from", "discover");
            bundle.putString("type", "newbie_task");
            bundle.putString("task_name", "customize");
            bundle.putInt("tickets", acceptTaskRewardResult.getTaskBonus());
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "task_finish", bundle, 0L, 4, null);
            j1 c10 = q0.c();
            NotificationRepo$acceptNotificationReward$1$1$2 notificationRepo$acceptNotificationReward$1$1$2 = new NotificationRepo$acceptNotificationReward$1$1$2(acceptTaskRewardResult, null);
            this.f44304h = a10;
            this.f44305i = 2;
            if (e.g(c10, notificationRepo$acceptNotificationReward$1$1$2, this) == f11) {
                return f11;
            }
        }
        return Unit.f60915a;
    }
}
