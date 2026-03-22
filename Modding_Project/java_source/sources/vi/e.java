package vi;

import com.startshorts.androidplayer.bean.checkin.NewbieWatchBonus;
import com.startshorts.androidplayer.bean.checkin.NewbieWatchTask;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.ListIterator;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: RewardsDoubleUtils.kt */
@Metadata
@SourceDebugExtension({"SMAP\nRewardsDoubleUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RewardsDoubleUtils.kt\ncom/startshorts/androidplayer/ui/fragment/reward/RewardsDoubleUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,92:1\n1863#2,2:93\n1010#2,2:95\n1010#2,2:97\n543#2,6:99\n774#2:105\n865#2,2:106\n*S KotlinDebug\n*F\n+ 1 RewardsDoubleUtils.kt\ncom/startshorts/androidplayer/ui/fragment/reward/RewardsDoubleUtils\n*L\n39#1:93,2\n52#1:95,2\n59#1:97,2\n63#1:99,6\n84#1:105\n84#1:106,2\n*E\n"})
/* loaded from: classes7.dex */
public final class e {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final e f68955a = new e();

    /* compiled from: Comparisons.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2\n+ 2 RewardsDoubleUtils.kt\ncom/startshorts/androidplayer/ui/fragment/reward/RewardsDoubleUtils\n*L\n1#1,102:1\n59#2:103\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class a<T> implements Comparator {
        @Override // java.util.Comparator
        public final int compare(T t10, T t11) {
            return ps.a.a(Integer.valueOf(((NewbieWatchBonus) t10).getPayTime()), Integer.valueOf(((NewbieWatchBonus) t11).getPayTime()));
        }
    }

    /* compiled from: Comparisons.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2\n+ 2 RewardsDoubleUtils.kt\ncom/startshorts/androidplayer/ui/fragment/reward/RewardsDoubleUtils\n*L\n1#1,102:1\n52#2:103\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class b<T> implements Comparator {
        @Override // java.util.Comparator
        public final int compare(T t10, T t11) {
            return ps.a.a(Integer.valueOf(((NewbieWatchBonus) t10).getPayTime()), Integer.valueOf(((NewbieWatchBonus) t11).getPayTime()));
        }
    }

    private e() {
    }

    @NotNull
    public final NewbieWatchTask a() {
        NewbieWatchTask l02 = ud.b.f68412a.l0();
        if (l02 == null) {
            return new NewbieWatchTask(true);
        }
        if (!l02.isInvalid()) {
            return new NewbieWatchTask(true);
        }
        return l02;
    }

    public final int b() {
        ud.b bVar = ud.b.f68412a;
        long X1 = bVar.X1();
        NewbieWatchTask l02 = bVar.l0();
        int i10 = 0;
        if (l02 != null) {
            ArrayList<NewbieWatchBonus> arrayList = new ArrayList();
            for (Object obj : l02.getList()) {
                NewbieWatchBonus newbieWatchBonus = (NewbieWatchBonus) obj;
                if (X1 >= newbieWatchBonus.getPayTime() * 1000 && !newbieWatchBonus.isReceive()) {
                    arrayList.add(obj);
                }
            }
            for (NewbieWatchBonus newbieWatchBonus2 : arrayList) {
                i10 += newbieWatchBonus2.getBonus();
            }
        }
        return i10;
    }

    public final boolean c(@NotNull NewbieWatchTask task) {
        Intrinsics.checkNotNullParameter(task, "task");
        if (ud.b.f68412a.X1() > task.getList().get(CollectionsKt.p(task.getList())).getPayTime() * 1000) {
            return true;
        }
        return false;
    }

    public final boolean d() {
        NewbieWatchTask a10 = a();
        if (a10.isInvalid() && !c(a10)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final NewbieWatchTask e(@NotNull NewbieWatchTask task) {
        NewbieWatchBonus newbieWatchBonus;
        Intrinsics.checkNotNullParameter(task, "task");
        ud.b bVar = ud.b.f68412a;
        NewbieWatchTask l02 = bVar.l0();
        if (l02 != null && !Intrinsics.areEqual(l02.getDay(), task.getDay())) {
            List<NewbieWatchBonus> list = task.getList();
            if (list.size() > 1) {
                CollectionsKt.D(list, new b());
            }
            bVar.w3(task);
            bVar.k5(0L);
        }
        List<NewbieWatchBonus> list2 = task.getList();
        if (list2.size() > 1) {
            CollectionsKt.D(list2, new a());
        }
        List<NewbieWatchBonus> list3 = task.getList();
        ListIterator<NewbieWatchBonus> listIterator = list3.listIterator(list3.size());
        while (true) {
            if (listIterator.hasPrevious()) {
                newbieWatchBonus = listIterator.previous();
                if (newbieWatchBonus.isReceive()) {
                    break;
                }
            } else {
                newbieWatchBonus = null;
                break;
            }
        }
        NewbieWatchBonus newbieWatchBonus2 = newbieWatchBonus;
        if (newbieWatchBonus2 != null) {
            ud.b bVar2 = ud.b.f68412a;
            long X1 = bVar2.X1();
            long payTime = newbieWatchBonus2.getPayTime() * 1000;
            if (X1 < payTime) {
                bVar2.k5(payTime);
            }
        }
        task.setDaily(true);
        ud.b.f68412a.w3(task);
        return task;
    }

    public final void f(@NotNull List<Integer> taskIds) {
        Intrinsics.checkNotNullParameter(taskIds, "taskIds");
        NewbieWatchTask l02 = ud.b.f68412a.l0();
        if (l02 == null) {
            return;
        }
        for (NewbieWatchBonus newbieWatchBonus : l02.getList()) {
            if (taskIds.contains(Integer.valueOf(newbieWatchBonus.getTaskId()))) {
                newbieWatchBonus.setReceive(true);
            }
        }
        ud.b.f68412a.w3(l02);
    }
}
