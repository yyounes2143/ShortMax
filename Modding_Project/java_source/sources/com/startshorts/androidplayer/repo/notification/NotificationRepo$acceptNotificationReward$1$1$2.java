package com.startshorts.androidplayer.repo.notification;

import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.task.AcceptTaskRewardResult;
import fk.u;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* compiled from: NotificationRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.notification.NotificationRepo$acceptNotificationReward$1$1$2", f = "NotificationRepo.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class NotificationRepo$acceptNotificationReward$1$1$2 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f44306h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ AcceptTaskRewardResult f44307i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NotificationRepo$acceptNotificationReward$1$1$2(AcceptTaskRewardResult acceptTaskRewardResult, c<? super NotificationRepo$acceptNotificationReward$1$1$2> cVar) {
        super(2, cVar);
        this.f44307i = acceptTaskRewardResult;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new NotificationRepo$acceptNotificationReward$1$1$2(this.f44307i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((NotificationRepo$acceptNotificationReward$1$1$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        a.f();
        if (this.f44306h == 0) {
            f.b(obj);
            u.f51776a.h(0, R$string.notification_permission_dialog_granted, String.valueOf(this.f44307i.getTaskBonus()));
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
