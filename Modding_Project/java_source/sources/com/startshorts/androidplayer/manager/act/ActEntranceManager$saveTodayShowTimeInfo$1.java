package com.startshorts.androidplayer.manager.act;

import com.startshorts.androidplayer.bean.act.ActResource;
import com.startshorts.androidplayer.bean.act.ActShowTimeInfo;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.utils.TimeUtil;
import gt.g0;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import rs.c;
import ud.b;
/* compiled from: ActEntranceManager.kt */
@Metadata
@d(c = "com.startshorts.androidplayer.manager.act.ActEntranceManager$saveTodayShowTimeInfo$1", f = "ActEntranceManager.kt", l = {}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nActEntranceManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActEntranceManager.kt\ncom/startshorts/androidplayer/manager/act/ActEntranceManager$saveTodayShowTimeInfo$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,134:1\n774#2:135\n865#2,2:136\n*S KotlinDebug\n*F\n+ 1 ActEntranceManager.kt\ncom/startshorts/androidplayer/manager/act/ActEntranceManager$saveTodayShowTimeInfo$1\n*L\n126#1:135\n126#1:136,2\n*E\n"})
/* loaded from: classes6.dex */
final class ActEntranceManager$saveTodayShowTimeInfo$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f41566h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ ActResource f41567i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActEntranceManager$saveTodayShowTimeInfo$1(ActResource actResource, c<? super ActEntranceManager$saveTodayShowTimeInfo$1> cVar) {
        super(2, cVar);
        this.f41567i = actResource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new ActEntranceManager$saveTodayShowTimeInfo$1(this.f41567i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((ActEntranceManager$saveTodayShowTimeInfo$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        a.f();
        if (this.f41566h == 0) {
            f.b(obj);
            int q10 = TimeUtil.f48175a.q(DeviceUtil.f48146a.K());
            ActShowTimeInfo actShowTimeInfo = new ActShowTimeInfo(q10, this.f41567i.getId());
            b bVar = b.f68412a;
            ArrayList arrayList = new ArrayList();
            List<ActShowTimeInfo> h10 = bVar.h();
            if (h10 != null) {
                ArrayList arrayList2 = new ArrayList();
                for (Object obj2 : h10) {
                    if (((ActShowTimeInfo) obj2).getDays() == q10) {
                        arrayList2.add(obj2);
                    }
                }
                kotlin.coroutines.jvm.internal.a.a(arrayList.addAll(arrayList2));
            }
            arrayList.add(actShowTimeInfo);
            Logger logger = Logger.f41511a;
            logger.h("ActEntranceManager", "saveTodayShowTimeInfo -> " + arrayList);
            bVar.q2(arrayList);
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
