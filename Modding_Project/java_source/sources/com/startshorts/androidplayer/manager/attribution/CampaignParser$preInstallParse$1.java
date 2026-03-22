package com.startshorts.androidplayer.manager.attribution;

import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.startshorts.androidplayer.utils.DeviceUtil;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CampaignParser.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.manager.attribution.CampaignParser$preInstallParse$1", f = "CampaignParser.kt", l = {TTVideoEngineInterface.PLAYER_OPTION_UPDATE_TIMESTAMP_MODE}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nCampaignParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CampaignParser.kt\ncom/startshorts/androidplayer/manager/attribution/CampaignParser$preInstallParse$1\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,489:1\n116#2,11:490\n*S KotlinDebug\n*F\n+ 1 CampaignParser.kt\ncom/startshorts/androidplayer/manager/attribution/CampaignParser$preInstallParse$1\n*L\n398#1:490,11\n*E\n"})
/* loaded from: classes6.dex */
public final class CampaignParser$preInstallParse$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    Object f41868h;

    /* renamed from: i  reason: collision with root package name */
    int f41869i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CampaignParser$preInstallParse$1(rs.c<? super CampaignParser$preInstallParse$1> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new CampaignParser$preInstallParse$1(cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((CampaignParser$preInstallParse$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        qt.a aVar;
        qt.a aVar2;
        long j10;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f41869i;
        if (i10 != 0) {
            if (i10 == 1) {
                aVar2 = (qt.a) this.f41868h;
                kotlin.f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            aVar = CampaignParser.f41839d;
            this.f41868h = aVar;
            this.f41869i = 1;
            if (aVar.lock(null, this) == f10) {
                return f10;
            }
            aVar2 = aVar;
        }
        try {
            j10 = CampaignParser.f41840e;
            if (j10 == -1) {
                CampaignParser.f41840e = DeviceUtil.f48146a.L();
            }
            CampaignParser.f41836a.C();
            CampaignParser.f41838c = false;
            ud.b bVar = ud.b.f68412a;
            bVar.g3(bVar.W() + 1);
            Unit unit = Unit.f60915a;
            aVar2.unlock(null);
            return Unit.f60915a;
        } catch (Throwable th2) {
            aVar2.unlock(null);
            throw th2;
        }
    }
}
