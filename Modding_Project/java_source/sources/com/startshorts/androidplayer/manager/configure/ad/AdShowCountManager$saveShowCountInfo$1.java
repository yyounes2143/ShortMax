package com.startshorts.androidplayer.manager.configure.ad;

import com.startshorts.androidplayer.bean.ad.AdShowCount;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.utils.TimeUtil;
import gt.g0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AdShowCountManager.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.startshorts.androidplayer.manager.configure.ad.AdShowCountManager$saveShowCountInfo$1", f = "AdShowCountManager.kt", l = {}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nAdShowCountManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdShowCountManager.kt\ncom/startshorts/androidplayer/manager/configure/ad/AdShowCountManager$saveShowCountInfo$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,146:1\n774#2:147\n865#2,2:148\n1#3:150\n*S KotlinDebug\n*F\n+ 1 AdShowCountManager.kt\ncom/startshorts/androidplayer/manager/configure/ad/AdShowCountManager$saveShowCountInfo$1\n*L\n86#1:147\n86#1:148,2\n*E\n"})
/* loaded from: classes6.dex */
public final class AdShowCountManager$saveShowCountInfo$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f42262h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ String f42263i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AdShowCountManager$saveShowCountInfo$1(String str, rs.c<? super AdShowCountManager$saveShowCountInfo$1> cVar) {
        super(2, cVar);
        this.f42263i = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new AdShowCountManager$saveShowCountInfo$1(this.f42263i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((AdShowCountManager$saveShowCountInfo$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        List e10;
        Object obj2;
        List e11;
        List e12;
        List e13;
        List<AdShowCount> e14;
        int d10;
        kotlin.coroutines.intrinsics.a.f();
        if (this.f42262h == 0) {
            kotlin.f.b(obj);
            int q10 = TimeUtil.f48175a.q(DeviceUtil.f48146a.K());
            ArrayList arrayList = new ArrayList();
            e10 = AdShowCountManager.f42259a.e();
            ArrayList arrayList2 = new ArrayList();
            for (Object obj3 : e10) {
                if (((AdShowCount) obj3).getDay() == q10) {
                    arrayList2.add(obj3);
                }
            }
            arrayList.addAll(arrayList2);
            String str = this.f42263i;
            Iterator it = arrayList.iterator();
            while (true) {
                if (it.hasNext()) {
                    obj2 = it.next();
                    if (Intrinsics.areEqual(((AdShowCount) obj2).getAdUnitId(), str)) {
                        break;
                    }
                } else {
                    obj2 = null;
                    break;
                }
            }
            AdShowCount adShowCount = (AdShowCount) obj2;
            if (adShowCount == null) {
                String str2 = this.f42263i;
                d10 = AdShowCountManager.f42259a.d(str2);
                kotlin.coroutines.jvm.internal.a.a(arrayList.add(new AdShowCount(str2, q10, 1, d10)));
            } else if (adShowCount.getDay() != q10) {
                adShowCount.setDay(q10);
                adShowCount.setTodayShowCount(1);
                Unit unit = Unit.f60915a;
            } else {
                int todayShowCount = adShowCount.getTodayShowCount();
                adShowCount.setTodayShowCount(1 + todayShowCount);
                kotlin.coroutines.jvm.internal.a.d(todayShowCount);
            }
            AdShowCountManager adShowCountManager = AdShowCountManager.f42259a;
            e11 = adShowCountManager.e();
            synchronized (e11) {
                e12 = adShowCountManager.e();
                e12.clear();
                e13 = adShowCountManager.e();
                e13.addAll(arrayList);
            }
            ud.b bVar = ud.b.f68412a;
            e14 = adShowCountManager.e();
            bVar.i5(e14);
            Logger logger = Logger.f41511a;
            logger.h("AdShowCountManager", "saveShowCountInfo -> " + arrayList);
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
