package yh;

import com.startshorts.androidplayer.bean.immersion.ImmersionBackConfig;
import com.startshorts.androidplayer.bean.immersion.ImmersionBackRecordListInfo;
import com.startshorts.androidplayer.repo.immersion.ImmersionRepo;
import com.vungle.ads.internal.signals.SignalManager;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.function.Predicate;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: ImmersionBackUtils.kt */
@Metadata
@SourceDebugExtension({"SMAP\nImmersionBackUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImmersionBackUtils.kt\ncom/startshorts/androidplayer/ui/activity/immersion/ImmersionBackUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,95:1\n774#2:96\n865#2,2:97\n774#2:99\n865#2,2:100\n774#2:102\n865#2,2:103\n774#2:105\n865#2,2:106\n1010#2,2:108\n*S KotlinDebug\n*F\n+ 1 ImmersionBackUtils.kt\ncom/startshorts/androidplayer/ui/activity/immersion/ImmersionBackUtils\n*L\n44#1:96\n44#1:97,2\n45#1:99\n45#1:100,2\n49#1:102\n49#1:103,2\n72#1:105\n72#1:106,2\n89#1:108,2\n*E\n"})
/* loaded from: classes7.dex */
public final class x2 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final x2 f70966a = new x2();

    /* compiled from: Comparisons.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2\n+ 2 ImmersionBackUtils.kt\ncom/startshorts/androidplayer/ui/activity/immersion/ImmersionBackUtils\n*L\n1#1,102:1\n89#2:103\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class a<T> implements Comparator {
        @Override // java.util.Comparator
        public final int compare(T t10, T t11) {
            return ps.a.a(Long.valueOf(((ImmersionBackRecordListInfo.ImmersionBackRecordInfo) t10).getShowTime()), Long.valueOf(((ImmersionBackRecordListInfo.ImmersionBackRecordInfo) t11).getShowTime()));
        }
    }

    private x2() {
    }

    private final void e(int i10) {
        ImmersionBackRecordListInfo.ImmersionBackRecordInfo immersionBackRecordInfo = new ImmersionBackRecordListInfo.ImmersionBackRecordInfo();
        immersionBackRecordInfo.setShortId(i10);
        immersionBackRecordInfo.setShowTime(System.currentTimeMillis());
        ud.b bVar = ud.b.f68412a;
        ImmersionBackRecordListInfo I0 = bVar.I0();
        if (I0 == null) {
            I0 = new ImmersionBackRecordListInfo();
            ArrayList arrayList = new ArrayList();
            arrayList.add(immersionBackRecordInfo);
            I0.setList(arrayList);
        } else {
            List<ImmersionBackRecordListInfo.ImmersionBackRecordInfo> list = I0.getList();
            if (list != null) {
                list.add(immersionBackRecordInfo);
            }
        }
        List<ImmersionBackRecordListInfo.ImmersionBackRecordInfo> list2 = I0.getList();
        if (list2 != null && list2.size() > 1) {
            CollectionsKt.D(list2, new a());
        }
        List<ImmersionBackRecordListInfo.ImmersionBackRecordInfo> list3 = I0.getList();
        if (list3 != null) {
            final Function1 function1 = new Function1() { // from class: yh.v2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    boolean f10;
                    f10 = x2.f((ImmersionBackRecordListInfo.ImmersionBackRecordInfo) obj);
                    return Boolean.valueOf(f10);
                }
            };
            list3.removeIf(new Predicate() { // from class: yh.w2
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    boolean g10;
                    g10 = x2.g(Function1.this, obj);
                    return g10;
                }
            });
        }
        bVar.U3(I0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean f(ImmersionBackRecordListInfo.ImmersionBackRecordInfo it) {
        Intrinsics.checkNotNullParameter(it, "it");
        if (System.currentTimeMillis() - it.getShowTime() > SignalManager.TWENTY_FOUR_HOURS_MILLIS) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean g(Function1 function1, Object obj) {
        return ((Boolean) function1.invoke(obj)).booleanValue();
    }

    public final boolean c(int i10, long j10, boolean z10) {
        List<ImmersionBackRecordListInfo.ImmersionBackRecordInfo> list;
        ArrayList arrayList;
        ArrayList arrayList2;
        if (z10) {
            return false;
        }
        ImmersionBackConfig h10 = ImmersionRepo.f44129a.h();
        if (h10 == null) {
            e(i10);
            return true;
        }
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - j10 < h10.getRetainTriggerTime() * 1000) {
            return false;
        }
        ImmersionBackRecordListInfo I0 = ud.b.f68412a.I0();
        if (I0 != null && (list = I0.getList()) != null && !list.isEmpty()) {
            List<ImmersionBackRecordListInfo.ImmersionBackRecordInfo> list2 = I0.getList();
            ArrayList arrayList3 = null;
            if (list2 != null) {
                arrayList = new ArrayList();
                for (Object obj : list2) {
                    if (currentTimeMillis - ((ImmersionBackRecordListInfo.ImmersionBackRecordInfo) obj).getShowTime() < SignalManager.TWENTY_FOUR_HOURS_MILLIS) {
                        arrayList.add(obj);
                    }
                }
            } else {
                arrayList = null;
            }
            if (arrayList != null) {
                arrayList2 = new ArrayList();
                for (Object obj2 : arrayList) {
                    if (((ImmersionBackRecordListInfo.ImmersionBackRecordInfo) obj2).getShortId() == i10) {
                        arrayList2.add(obj2);
                    }
                }
            } else {
                arrayList2 = null;
            }
            if (arrayList2 != null && arrayList2.size() >= h10.getRetainCountLimitByShortPlay()) {
                return false;
            }
            if (arrayList != null) {
                arrayList3 = new ArrayList();
                for (Object obj3 : arrayList) {
                    if (currentTimeMillis - ((ImmersionBackRecordListInfo.ImmersionBackRecordInfo) obj3).getShowTime() < 10800000) {
                        arrayList3.add(obj3);
                    }
                }
            }
            if (arrayList3 != null && arrayList3.size() >= h10.getRetainCountLimitByThreeHour()) {
                return false;
            }
            if (arrayList != null && arrayList.size() >= h10.getRetainCountLimitByDay()) {
                return false;
            }
            e(i10);
            return true;
        }
        e(i10);
        return true;
    }

    public final int d() {
        ArrayList arrayList;
        List<ImmersionBackRecordListInfo.ImmersionBackRecordInfo> list;
        long currentTimeMillis = System.currentTimeMillis();
        ImmersionBackRecordListInfo I0 = ud.b.f68412a.I0();
        if (I0 != null && (list = I0.getList()) != null) {
            arrayList = new ArrayList();
            for (Object obj : list) {
                if (currentTimeMillis - ((ImmersionBackRecordListInfo.ImmersionBackRecordInfo) obj).getShowTime() < SignalManager.TWENTY_FOUR_HOURS_MILLIS) {
                    arrayList.add(obj);
                }
            }
        } else {
            arrayList = null;
        }
        if (arrayList != null) {
            return arrayList.size();
        }
        return 0;
    }
}
