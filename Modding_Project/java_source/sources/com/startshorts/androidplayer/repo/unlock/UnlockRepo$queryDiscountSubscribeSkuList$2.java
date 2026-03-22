package com.startshorts.androidplayer.repo.unlock;

import android.content.Context;
import com.startshorts.androidplayer.bean.unlock.QuerySubsFirstDiscountResult;
import gt.g0;
import kh.a;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: UnlockRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.unlock.UnlockRepo$queryDiscountSubscribeSkuList$2", f = "UnlockRepo.kt", l = {54}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class UnlockRepo$queryDiscountSubscribeSkuList$2 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f44696h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ boolean f44697i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ Context f44698j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ String f44699k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UnlockRepo$queryDiscountSubscribeSkuList$2(boolean z10, Context context, String str, c<? super UnlockRepo$queryDiscountSubscribeSkuList$2> cVar) {
        super(2, cVar);
        this.f44697i = z10;
        this.f44698j = context;
        this.f44699k = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new UnlockRepo$queryDiscountSubscribeSkuList$2(this.f44697i, this.f44698j, this.f44699k, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((UnlockRepo$queryDiscountSubscribeSkuList$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        UnlockRemoteDS f10;
        Object a10;
        a e10;
        Object f11 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f44696h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
                a10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            f10 = UnlockRepo.f44686a.f();
            boolean z10 = this.f44697i;
            Context context = this.f44698j;
            String str = this.f44699k;
            this.f44696h = 1;
            a10 = f10.a(z10, context, str, this);
            if (a10 == f11) {
                return f11;
            }
        }
        if (Result.j(a10)) {
            e10 = UnlockRepo.f44686a.e();
            e10.d((QuerySubsFirstDiscountResult) a10);
        }
        return Unit.f60915a;
    }
}
