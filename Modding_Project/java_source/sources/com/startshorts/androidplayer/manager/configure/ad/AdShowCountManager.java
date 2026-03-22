package com.startshorts.androidplayer.manager.configure.ad;

import com.hades.aar.admanager.core.AdPriority;
import com.startshorts.androidplayer.bean.ad.AdShowCount;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.configure.ad.AdShowCountManager;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.utils.TimeUtil;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.r;
import ms.i;
import org.jetbrains.annotations.NotNull;
/* compiled from: AdShowCountManager.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAdShowCountManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdShowCountManager.kt\ncom/startshorts/androidplayer/manager/configure/ad/AdShowCountManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,146:1\n774#2:147\n865#2,2:148\n1863#2,2:150\n774#2:152\n865#2,2:153\n1#3:155\n*S KotlinDebug\n*F\n+ 1 AdShowCountManager.kt\ncom/startshorts/androidplayer/manager/configure/ad/AdShowCountManager\n*L\n57#1:147\n57#1:148,2\n58#1:150,2\n73#1:152\n73#1:153,2\n*E\n"})
/* loaded from: classes6.dex */
public final class AdShowCountManager {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final AdShowCountManager f42259a = new AdShowCountManager();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final HashMap<String, Integer> f42260b = new HashMap<>();
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final i f42261c = kotlin.c.b(new Function0() { // from class: oe.g
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            List j10;
            j10 = AdShowCountManager.j();
            return j10;
        }
    });

    private AdShowCountManager() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int d(String str) {
        HashMap<String, Integer> hashMap = f42260b;
        if (!hashMap.containsKey(str)) {
            Logger logger = Logger.f41511a;
            logger.e("AdShowCountManager", "getDailyMaxShowCount -> dailyMaxShowCount not exist.adId=" + str + ",return_default=1");
            return 1;
        }
        Integer num = hashMap.get(str);
        if (num == null) {
            return 1;
        }
        return num.intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<AdShowCount> e() {
        return (List) f42261c.getValue();
    }

    private final int f(String str) {
        Object obj;
        try {
            int q10 = TimeUtil.f48175a.q(DeviceUtil.f48146a.K());
            Iterator<T> it = e().iterator();
            while (true) {
                if (it.hasNext()) {
                    obj = it.next();
                    AdShowCount adShowCount = (AdShowCount) obj;
                    if (adShowCount.getDay() == q10 && Intrinsics.areEqual(adShowCount.getAdUnitId(), str)) {
                        break;
                    }
                } else {
                    obj = null;
                    break;
                }
            }
            AdShowCount adShowCount2 = (AdShowCount) obj;
            if (adShowCount2 == null) {
                return 0;
            }
            return adShowCount2.getTodayShowCount();
        } catch (Exception e10) {
            Logger logger = Logger.f41511a;
            logger.e("AdShowCountManager", "getTodayShowCount exception -> " + e10.getMessage());
            return 0;
        }
    }

    private final List<ca.e> h(List<ca.e> list) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        List<ca.e> list2 = list;
        ArrayList<ca.e> arrayList3 = new ArrayList();
        for (Object obj : list2) {
            if (((ca.e) obj).j() != AdPriority.PRIORITY_LOW) {
                arrayList3.add(obj);
            }
        }
        for (ca.e eVar : arrayList3) {
            if (f42259a.i(eVar.e())) {
                arrayList.add(eVar);
            } else {
                arrayList2.add(eVar);
            }
        }
        if (arrayList.isEmpty()) {
            arrayList.addAll(arrayList3);
            Logger.f41511a.e("AdShowCountManager", "getValidAdUnits -> validNormalAdUnits.isEmpty");
        }
        ArrayList arrayList4 = new ArrayList();
        ArrayList arrayList5 = new ArrayList();
        for (Object obj2 : list2) {
            if (((ca.e) obj2).j() == AdPriority.PRIORITY_LOW) {
                arrayList5.add(obj2);
            }
        }
        arrayList4.addAll(arrayList5);
        arrayList4.addAll(arrayList);
        if (id.a.f53392a.c()) {
            Logger logger = Logger.f41511a;
            logger.h("AdShowCountManager", "getValidAdUnits ->\nnormal" + arrayList + "\nfallBack" + arrayList5);
        }
        return arrayList4;
    }

    private final boolean i(String str) {
        boolean z10;
        int d10 = d(str);
        int f10 = f(str);
        if (f10 < d10) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            Logger logger = Logger.f41511a;
            logger.e("AdShowCountManager", "isShowCountValid=false,adId=" + str + ",todayShowCount=" + f10 + ",max=" + d10);
        }
        return z10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List j() {
        ArrayList arrayList = new ArrayList();
        List<AdShowCount> V1 = ud.b.f68412a.V1();
        if (V1 == null) {
            V1 = CollectionsKt.n();
        }
        arrayList.addAll(V1);
        return arrayList;
    }

    @NotNull
    public final List<ca.e> g(@NotNull List<ca.e> adUnits) {
        Intrinsics.checkNotNullParameter(adUnits, "adUnits");
        try {
            adUnits = h(adUnits);
        } catch (Exception e10) {
            Logger logger = Logger.f41511a;
            logger.e("AdShowCountManager", "getValidAdUnits exception -> " + e10.getMessage());
        }
        if (id.a.f53392a.c()) {
            Logger logger2 = Logger.f41511a;
            logger2.h("AdShowCountManager", "getValidAdUnits admob -> " + adUnits);
        }
        return adUnits;
    }

    @NotNull
    public final r k(@NotNull String adId) {
        Intrinsics.checkNotNullParameter(adId, "adId");
        return CoroutineUtil.l(CoroutineUtil.f48072a, "saveShowCountInfo", false, new AdShowCountManager$saveShowCountInfo$1(adId, null), 2, null);
    }

    public final void l(@NotNull String adId, int i10) {
        Intrinsics.checkNotNullParameter(adId, "adId");
        f42260b.put(adId, Integer.valueOf(i10));
    }
}
