package ve;

import com.startshorts.androidplayer.bean.subs.SubsSku;
import com.startshorts.androidplayer.bean.unlock.RetainConfig;
import com.startshorts.androidplayer.bean.unlock.TimeCount;
import com.startshorts.androidplayer.bean.unlock.UnlockEpisodeAdMethod;
import com.startshorts.androidplayer.manager.purchase.SubsExpansionManager;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.utils.TimeUtil;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RetainManager.kt */
@Metadata
@SourceDebugExtension({"SMAP\nRetainManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RetainManager.kt\ncom/startshorts/androidplayer/manager/dialog/RetainManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,202:1\n1863#2,2:203\n1#3:205\n*S KotlinDebug\n*F\n+ 1 RetainManager.kt\ncom/startshorts/androidplayer/manager/dialog/RetainManager\n*L\n51#1:203,2\n*E\n"})
/* loaded from: classes6.dex */
public final class h {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final h f68906a = new h();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final String f68907b = "retainSubscription";
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final String f68908c = "retainAdUnlock";
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private static final String f68909d = "retainFreeGold";
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private static final String f68910e = "retainCoinSku";

    private h() {
    }

    private final boolean d(int i10) {
        TimeCount g02 = ud.b.f68412a.g0();
        if (g02 == null) {
            return true;
        }
        if (!TimeUtil.f48175a.o(g02.getTime(), DeviceUtil.f48146a.K()) || g02.getCount() < i10) {
            return true;
        }
        return false;
    }

    private final boolean e(int i10) {
        TimeCount P1 = ud.b.f68412a.P1();
        if (P1 == null) {
            return true;
        }
        if (!TimeUtil.f48175a.o(P1.getTime(), DeviceUtil.f48146a.K()) || P1.getCount() < i10) {
            return true;
        }
        return false;
    }

    private final boolean f(int i10) {
        if (AccountRepo.f43052a.H0()) {
            return true;
        }
        SubsExpansionManager subsExpansionManager = SubsExpansionManager.f42751a;
        if (subsExpansionManager.C() && subsExpansionManager.q(subsExpansionManager.m())) {
            return false;
        }
        TimeCount S1 = ud.b.f68412a.S1();
        if (S1 == null) {
            return true;
        }
        if (!TimeUtil.f48175a.o(S1.getTime(), DeviceUtil.f48146a.K()) || S1.getCount() < i10) {
            return true;
        }
        return false;
    }

    private final String g() {
        int i10;
        RetainConfig n02 = AccountRepo.f43052a.n0();
        if (n02 != null) {
            i10 = n02.getCommonStyleTemplate();
        } else {
            i10 = 0;
        }
        if (i10 <= 0) {
            return "-1";
        }
        return String.valueOf(i10);
    }

    public final void a() {
        ud.b bVar = ud.b.f68412a;
        TimeCount g02 = bVar.g0();
        if (g02 == null) {
            bVar.r3(new TimeCount(DeviceUtil.f48146a.K(), 1));
            return;
        }
        g02.setCount(g02.getCount() + 1);
        bVar.r3(g02);
    }

    public final void b() {
        ud.b bVar = ud.b.f68412a;
        TimeCount P1 = bVar.P1();
        if (P1 == null) {
            bVar.d5(new TimeCount(DeviceUtil.f48146a.K(), 1));
            return;
        }
        P1.setCount(P1.getCount() + 1);
        bVar.d5(P1);
    }

    public final void c() {
        ud.b bVar = ud.b.f68412a;
        TimeCount S1 = bVar.S1();
        if (S1 == null) {
            bVar.f5(new TimeCount(DeviceUtil.f48146a.K(), 1));
            return;
        }
        S1.setCount(S1.getCount() + 1);
        bVar.f5(S1);
    }

    @Nullable
    public final String h(@Nullable UnlockEpisodeAdMethod unlockEpisodeAdMethod) {
        List<String> retainPageOrder;
        RetainConfig n02 = AccountRepo.f43052a.n0();
        if (n02 != null && (retainPageOrder = n02.getRetainPageOrder()) != null) {
            for (String str : retainPageOrder) {
                String str2 = f68907b;
                if (Intrinsics.areEqual(str, str2)) {
                    if (f68906a.f(n02.getRetainSubscriptionCount())) {
                        return str2;
                    }
                } else {
                    String str3 = f68910e;
                    if (Intrinsics.areEqual(str, str3)) {
                        if (f68906a.e(n02.getRetainSkuCount())) {
                            return str3;
                        }
                    } else {
                        String str4 = f68908c;
                        if (Intrinsics.areEqual(str, str4)) {
                            if (n02.getRetainAdUnlockIsShow() && unlockEpisodeAdMethod != null && unlockEpisodeAdMethod.enable()) {
                                return str4;
                            }
                        } else {
                            String str5 = f68909d;
                            if (Intrinsics.areEqual(str, str5) && f68906a.d(n02.getRetainFreeGoldCount())) {
                                return str5;
                            }
                        }
                    }
                }
            }
        }
        return null;
    }

    @NotNull
    public final String i() {
        return f68908c;
    }

    @NotNull
    public final String j() {
        return f68910e;
    }

    @NotNull
    public final String k() {
        return f68909d;
    }

    @NotNull
    public final String l() {
        return f68907b;
    }

    @NotNull
    public final String m() {
        String g10 = g();
        if (!Intrinsics.areEqual(g10, "21") && !Intrinsics.areEqual(g10, "22")) {
            return "21";
        }
        return g10;
    }

    public final boolean n() {
        return Intrinsics.areEqual(m(), "21");
    }

    public final boolean o() {
        return Intrinsics.areEqual(m(), "22");
    }

    public final void p(@Nullable SubsSku subsSku, @NotNull Function2<? super SubsSku, ? super Boolean, Unit> onShowListener) {
        SubsSku m10;
        Intrinsics.checkNotNullParameter(onShowListener, "onShowListener");
        AccountRepo accountRepo = AccountRepo.f43052a;
        boolean H0 = accountRepo.H0();
        SubsExpansionManager subsExpansionManager = SubsExpansionManager.f42751a;
        boolean p10 = subsExpansionManager.p(subsSku);
        boolean C = subsExpansionManager.C();
        boolean B = subsExpansionManager.B();
        boolean I0 = accountRepo.I0();
        boolean z10 = false;
        if (subsSku != null && subsSku.isDayToWeekSub()) {
            z10 = true;
        }
        boolean o10 = qf.h.f65328a.o(subsSku);
        if ((p10 && H0) || (I0 && z10 && o10)) {
            if (subsSku != null) {
                onShowListener.invoke(subsSku, Boolean.TRUE);
            }
        } else if (p10 && (B || C)) {
            if (subsSku != null) {
                onShowListener.invoke(subsSku, Boolean.valueOf(!B));
            }
        } else if (!H0 && (m10 = subsExpansionManager.m()) != null) {
            if (!C && !B) {
                onShowListener.invoke(m10, Boolean.FALSE);
            } else if (!subsExpansionManager.q(m10)) {
                onShowListener.invoke(m10, Boolean.valueOf(!B));
            }
        }
    }
}
