package com.startshorts.androidplayer.repo.unlock;

import com.startshorts.androidplayer.bean.api.ServerResult;
import com.startshorts.androidplayer.bean.unlock.QuerySubsFirstDiscountResult;
import com.startshorts.androidplayer.manager.api.base.k;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: UnlockRemoteDS.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.unlock.UnlockRemoteDS$queryDiscountSubscribeSkuList$2", f = "UnlockRemoteDS.kt", l = {25}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class UnlockRemoteDS$queryDiscountSubscribeSkuList$2 extends SuspendLambda implements Function1<c<? super ServerResult<QuerySubsFirstDiscountResult>>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f44640h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ String f44641i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UnlockRemoteDS$queryDiscountSubscribeSkuList$2(String str, c<? super UnlockRemoteDS$queryDiscountSubscribeSkuList$2> cVar) {
        super(1, cVar);
        this.f44641i = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(c<?> cVar) {
        return new UnlockRemoteDS$queryDiscountSubscribeSkuList$2(this.f44641i, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = a.f();
        int i10 = this.f44640h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            k.a j10 = k.f41787a.j();
            String str = this.f44641i;
            this.f44640h = 1;
            obj = k.a.C0617a.n(j10, 0, str, this, 1, null);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(c<? super ServerResult<QuerySubsFirstDiscountResult>> cVar) {
        return ((UnlockRemoteDS$queryDiscountSubscribeSkuList$2) create(cVar)).invokeSuspend(Unit.f60915a);
    }
}
