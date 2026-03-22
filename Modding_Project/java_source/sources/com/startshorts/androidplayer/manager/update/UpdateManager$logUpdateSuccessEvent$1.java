package com.startshorts.androidplayer.manager.update;

import android.os.Bundle;
import com.startshorts.androidplayer.bean.update.UpdateData;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.repo.update.UpdateRepo;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: UpdateManager.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.manager.update.UpdateManager$logUpdateSuccessEvent$1", f = "UpdateManager.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes6.dex */
public final class UpdateManager$logUpdateSuccessEvent$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f42994h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public UpdateManager$logUpdateSuccessEvent$1(c<? super UpdateManager$logUpdateSuccessEvent$1> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new UpdateManager$logUpdateSuccessEvent$1(cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((UpdateManager$logUpdateSuccessEvent$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        a.f();
        if (this.f42994h == 0) {
            f.b(obj);
            UpdateRepo updateRepo = UpdateRepo.f44764a;
            UpdateData g10 = updateRepo.g();
            if (g10 == null) {
                Logger.f41511a.h("UpdateManager", "logUpdateSuccessEvent ignore -> updateData == null");
                return Unit.f60915a;
            }
            String versionCodeUpdating = g10.getVersionCodeUpdating();
            if (versionCodeUpdating != null && versionCodeUpdating.length() != 0) {
                Logger logger = Logger.f41511a;
                logger.h("UpdateManager", "logUpdateSuccessEvent versionCodeUpdating=" + versionCodeUpdating);
                EventManager eventManager = EventManager.f42463a;
                Bundle bundle = new Bundle();
                bundle.putString("type", UpdateManager.f42992a.g());
                Unit unit = Unit.f60915a;
                EventManager.s0(eventManager, "update_success", bundle, 0L, 4, null);
                g10.setVersionCodeUpdating(null);
                updateRepo.k(g10);
                return Unit.f60915a;
            }
            Logger.f41511a.h("UpdateManager", "logUpdateSuccessEvent ignore -> versionCodeUpdating is null");
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
