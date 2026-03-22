package com.startshorts.androidplayer.manager.push.util;

import android.content.Context;
import android.content.Intent;
import com.startshorts.androidplayer.log.Logger;
import fk.u;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import qt.a;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PushUtil.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.manager.push.util.PushUtil$updateNotificationCount$1", f = "PushUtil.kt", l = {980}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nPushUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PushUtil.kt\ncom/startshorts/androidplayer/manager/push/util/PushUtil$updateNotificationCount$1\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,974:1\n116#2,11:975\n*S KotlinDebug\n*F\n+ 1 PushUtil.kt\ncom/startshorts/androidplayer/manager/push/util/PushUtil$updateNotificationCount$1\n*L\n915#1:975,11\n*E\n"})
/* loaded from: classes6.dex */
public final class PushUtil$updateNotificationCount$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    Object f42935h;

    /* renamed from: i  reason: collision with root package name */
    int f42936i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public PushUtil$updateNotificationCount$1(c<? super PushUtil$updateNotificationCount$1> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new PushUtil$updateNotificationCount$1(cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((PushUtil$updateNotificationCount$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        a aVar;
        a aVar2;
        int w10;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f42936i;
        if (i10 != 0) {
            if (i10 == 1) {
                aVar2 = (a) this.f42935h;
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            aVar = PushUtil.f42902h;
            this.f42935h = aVar;
            this.f42936i = 1;
            if (aVar.lock(null, this) == f10) {
                return f10;
            }
            aVar2 = aVar;
        }
        try {
            Context b10 = u.f51776a.b();
            w10 = PushUtil.f42895a.w();
            Logger logger = Logger.f41511a;
            logger.h("PushUtil", "updateNotificationCount -> " + w10);
            Intent intent = new Intent("android.intent.action.BADGE_COUNT_UPDATE");
            intent.putExtra("badge_count", w10);
            intent.putExtra("badge_count_package_name", b10.getPackageName());
            intent.putExtra("badge_count_class_name", "com.startshorts.androidplayer.ui.activity.MainActivity");
            b10.sendBroadcast(intent);
            Unit unit = Unit.f60915a;
            aVar2.unlock(null);
            return Unit.f60915a;
        } catch (Throwable th2) {
            aVar2.unlock(null);
            throw th2;
        }
    }
}
