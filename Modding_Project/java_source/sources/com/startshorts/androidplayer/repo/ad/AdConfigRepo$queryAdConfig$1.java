package com.startshorts.androidplayer.repo.ad;

import com.startshorts.androidplayer.bean.ad.AdNewConfig;
import com.startshorts.androidplayer.log.Logger;
import gt.g0;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AdConfigRepo.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.repo.ad.AdConfigRepo$queryAdConfig$1", f = "AdConfigRepo.kt", l = {12}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nAdConfigRepo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdConfigRepo.kt\ncom/startshorts/androidplayer/repo/ad/AdConfigRepo$queryAdConfig$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,20:1\n1#2:21\n*E\n"})
/* loaded from: classes7.dex */
public final class AdConfigRepo$queryAdConfig$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f43116h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdConfigRepo$queryAdConfig$1(c<? super AdConfigRepo$queryAdConfig$1> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new AdConfigRepo$queryAdConfig$1(cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((AdConfigRepo$queryAdConfig$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        AdConfigRemoteDS c10;
        Object a10;
        Object f10 = a.f();
        int i10 = this.f43116h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
                a10 = ((Result) obj).n();
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            c10 = AdConfigRepo.f43114a.c();
            this.f43116h = 1;
            a10 = c10.a(this);
            if (a10 == f10) {
                return f10;
            }
        }
        if (Result.j(a10)) {
            AdNewConfig adNewConfig = (AdNewConfig) a10;
            if (adNewConfig != null) {
                ud.a.f68411a.X(adNewConfig);
            }
            Logger.f41511a.h("AdConfigRepo", "queryAdConfig succeed");
        }
        Throwable g10 = Result.g(a10);
        if (g10 != null) {
            Logger logger = Logger.f41511a;
            logger.e("AdConfigRepo", "queryAdConfig failed -> " + g10.getMessage());
        }
        return Unit.f60915a;
    }
}
