package com.startshorts.androidplayer.manager.purchase;

import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.repo.unlock.UnlockRepo;
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
/* compiled from: SubsExpansionManager.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.manager.purchase.SubsExpansionManager$retainSubsSkuExpose$1", f = "SubsExpansionManager.kt", l = {184}, m = "invokeSuspend")
/* loaded from: classes6.dex */
public final class SubsExpansionManager$retainSubsSkuExpose$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f42757h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ int f42758i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ String f42759j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubsExpansionManager$retainSubsSkuExpose$1(int i10, String str, c<? super SubsExpansionManager$retainSubsSkuExpose$1> cVar) {
        super(2, cVar);
        this.f42758i = i10;
        this.f42759j = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new SubsExpansionManager$retainSubsSkuExpose$1(this.f42758i, this.f42759j, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((SubsExpansionManager$retainSubsSkuExpose$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f42757h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            if (AccountRepo.f43052a.H0()) {
                UnlockRepo unlockRepo = UnlockRepo.f44686a;
                int i11 = this.f42758i;
                String str = this.f42759j;
                this.f42757h = 1;
                if (unlockRepo.q(i11, str, this) == f10) {
                    return f10;
                }
            }
        }
        return Unit.f60915a;
    }
}
