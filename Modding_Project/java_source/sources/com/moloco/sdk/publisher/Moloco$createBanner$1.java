package com.moloco.sdk.publisher;

import com.moloco.sdk.internal.MolocoLogger;
import com.moloco.sdk.internal.g0;
import com.moloco.sdk.publisher.MolocoAdError;
import gt.g0;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.publisher.Moloco$createBanner$1", f = "Moloco.kt", l = {205}, m = "invokeSuspend")
/* loaded from: classes6.dex */
public final class Moloco$createBanner$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {
    final /* synthetic */ String $adUnitId;
    final /* synthetic */ Function2<Banner, MolocoAdError.AdCreateError, Unit> $callback;
    final /* synthetic */ MediationInfo $mediationInfo;
    final /* synthetic */ String $watermarkString;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public Moloco$createBanner$1(MediationInfo mediationInfo, String str, String str2, Function2<? super Banner, ? super MolocoAdError.AdCreateError, Unit> function2, rs.c<? super Moloco$createBanner$1> cVar) {
        super(2, cVar);
        this.$mediationInfo = mediationInfo;
        this.$adUnitId = str;
        this.$watermarkString = str2;
        this.$callback = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new Moloco$createBanner$1(this.$mediationInfo, this.$adUnitId, this.$watermarkString, this.$callback, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        com.moloco.sdk.internal.publisher.b adCreator;
        Pair a10;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.label;
        boolean z10 = true;
        if (i10 != 0) {
            if (i10 == 1) {
                kotlin.f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            com.moloco.sdk.acm.recorder.a a11 = com.moloco.sdk.acm.recorder.a.Companion.a(this.$mediationInfo.getName());
            adCreator = Moloco.INSTANCE.getAdCreator();
            String name = this.$mediationInfo.getName();
            String str = this.$adUnitId;
            String str2 = this.$watermarkString;
            this.label = 1;
            obj = adCreator.d(name, str, a11, str2, this);
            if (obj == f10) {
                return f10;
            }
        }
        com.moloco.sdk.internal.g0 g0Var = (com.moloco.sdk.internal.g0) obj;
        if (g0Var instanceof g0.b) {
            a10 = ms.k.a(((g0.b) g0Var).a(), null);
        } else if (g0Var instanceof g0.a) {
            a10 = ms.k.a(null, ((g0.a) g0Var).a());
        } else {
            throw new NoWhenBranchMatchedException();
        }
        Banner banner = (Banner) a10.b();
        MolocoAdError.AdCreateError adCreateError = (MolocoAdError.AdCreateError) a10.d();
        MolocoLogger molocoLogger = MolocoLogger.INSTANCE;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Banner for adUnitId: ");
        sb2.append(this.$adUnitId);
        sb2.append(" has error: ");
        if (banner != null) {
            z10 = false;
        }
        sb2.append(z10);
        MolocoLogger.info$default(molocoLogger, "Moloco", sb2.toString(), null, false, 12, null);
        this.$callback.invoke(banner, adCreateError);
        return Unit.f60915a;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
        return ((Moloco$createBanner$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }
}
