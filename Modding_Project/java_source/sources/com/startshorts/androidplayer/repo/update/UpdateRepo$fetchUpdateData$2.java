package com.startshorts.androidplayer.repo.update;

import com.startshorts.androidplayer.bean.update.UpdateData;
import com.startshorts.androidplayer.log.Logger;
import gt.g0;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: UpdateRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.update.UpdateRepo$fetchUpdateData$2", f = "UpdateRepo.kt", l = {26}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class UpdateRepo$fetchUpdateData$2 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f44767h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ Function1<UpdateData, Unit> f44768i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public UpdateRepo$fetchUpdateData$2(Function1<? super UpdateData, Unit> function1, c<? super UpdateRepo$fetchUpdateData$2> cVar) {
        super(2, cVar);
        this.f44768i = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new UpdateRepo$fetchUpdateData$2(this.f44768i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((UpdateRepo$fetchUpdateData$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        UpdateRemoteDS f10;
        Object a10;
        String str;
        Object f11 = a.f();
        int i10 = this.f44767h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
                a10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            f10 = UpdateRepo.f44764a.f();
            this.f44767h = 1;
            a10 = f10.a(this);
            if (a10 == f11) {
                return f11;
            }
        }
        Function1<UpdateData, Unit> function1 = this.f44768i;
        if (Result.j(a10)) {
            UpdateData updateData = (UpdateData) a10;
            String str2 = null;
            if (updateData == null) {
                UpdateRepo.f44764a.k(null);
            } else {
                UpdateRepo updateRepo = UpdateRepo.f44764a;
                UpdateData g10 = updateRepo.g();
                if (g10 != null) {
                    str = g10.getVersionCodeUpdating();
                } else {
                    str = null;
                }
                updateData.setVersionCodeUpdating(str);
                String minVersion = updateData.getMinVersion();
                if (g10 != null) {
                    str2 = g10.getMinVersion();
                }
                int i11 = 0;
                if (Intrinsics.areEqual(minVersion, str2)) {
                    if (g10 != null) {
                        i11 = g10.getRecentShowDay();
                    }
                    updateData.setRecentShowDay(i11);
                    Logger.f41511a.h("UpdateDS", "setUpdateData.keep updateData=" + updateData);
                } else {
                    Logger.f41511a.h("UpdateDS", "setUpdateData.reset updateData=" + updateData);
                    updateData.setRecentShowDay(0);
                }
                updateRepo.k(updateData);
            }
            function1.invoke(updateData);
        }
        return Unit.f60915a;
    }
}
