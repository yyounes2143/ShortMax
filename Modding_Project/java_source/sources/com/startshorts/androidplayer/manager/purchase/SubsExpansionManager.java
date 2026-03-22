package com.startshorts.androidplayer.manager.purchase;

import android.text.TextUtils;
import com.mbridge.msdk.playercommon.exoplayer2.source.chunk.ChunkedTrackBlacklistUtil;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory;
import com.startshorts.androidplayer.manager.purchase.SubsExpansionManager;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.repo.billing.BillingRepo;
import com.startshorts.androidplayer.ui.activity.base.BaseActivity;
import com.startshorts.androidplayer.ui.fragment.purchase.v2.RetainDiscountDialog;
import com.startshorts.androidplayer.ui.fragment.purchase.v2.SubsExpansionNewDialog;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import com.startshorts.androidplayer.utils.DeviceUtil;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicInteger;
import jk.l;
import jk.u;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.c;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.r;
import le.g;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import ud.b;
import zc.h;
/* compiled from: SubsExpansionManager.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSubsExpansionManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubsExpansionManager.kt\ncom/startshorts/androidplayer/manager/purchase/SubsExpansionManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,286:1\n360#2,7:287\n360#2,7:295\n360#2,7:302\n1#3:294\n*S KotlinDebug\n*F\n+ 1 SubsExpansionManager.kt\ncom/startshorts/androidplayer/manager/purchase/SubsExpansionManager\n*L\n86#1:287,7\n87#1:295,7\n89#1:302,7\n*E\n"})
/* loaded from: classes6.dex */
public final class SubsExpansionManager {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final SubsExpansionManager f42751a = new SubsExpansionManager();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final i f42752b = c.b(new Function0() { // from class: qf.i
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            String r10;
            r10 = SubsExpansionManager.r();
            return r10;
        }
    });
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final i f42753c = c.b(new Function0() { // from class: qf.j
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            AtomicInteger s10;
            s10 = SubsExpansionManager.s();
            return s10;
        }
    });

    /* renamed from: d  reason: collision with root package name */
    private static boolean f42754d = true;

    /* compiled from: SubsExpansionManager.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nSubsExpansionManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubsExpansionManager.kt\ncom/startshorts/androidplayer/manager/purchase/SubsExpansionManager$connectBillingClient$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,286:1\n1863#2:287\n1863#2,2:288\n1864#2:290\n*S KotlinDebug\n*F\n+ 1 SubsExpansionManager.kt\ncom/startshorts/androidplayer/manager/purchase/SubsExpansionManager$connectBillingClient$1\n*L\n268#1:287\n269#1:288,2\n268#1:290\n*E\n"})
    /* loaded from: classes6.dex */
    public static final class a extends g {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SubsSku f42755a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Function1<SubsSku, Unit> f42756b;

        /* JADX WARN: Multi-variable type inference failed */
        a(SubsSku subsSku, Function1<? super SubsSku, Unit> function1) {
            this.f42755a = subsSku;
            this.f42756b = function1;
        }

        @Override // le.g
        public void f(List<h> list) {
            Logger logger = Logger.f41511a;
            logger.h("SubsExpansionManager", "onProductDetails -> list(" + l.d(list) + ')');
            List<h> list2 = list;
            if (list2 != null && !list2.isEmpty()) {
                ArrayList arrayList = new ArrayList();
                for (h hVar : list) {
                    List<Object> a10 = hVar.a();
                    if (a10 != null) {
                        for (Object obj : a10) {
                            arrayList.add(obj);
                        }
                    }
                }
                u.k(this.f42755a, arrayList);
                this.f42756b.invoke(this.f42755a);
            }
        }

        @Override // le.g
        public void g() {
            SubsExpansionManager.f42754d = false;
            String skuId = this.f42755a.getSkuId();
            if (skuId.length() > 0) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(new zc.g(le.h.f62164a.b(), CollectionsKt.t(skuId)));
                BillingRepo.f43237a.e0(SubsExpansionManager.f42751a.l(), arrayList);
            }
        }
    }

    private SubsExpansionManager() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit i(WeakReference weakReference, String str, SubsSku subsSku) {
        if (subsSku != null) {
            boolean enableDiscount = subsSku.enableDiscount();
            BaseActivity baseActivity = (BaseActivity) weakReference.get();
            if (baseActivity != null && baseActivity.t() && enableDiscount) {
                SubsExpansionManager subsExpansionManager = f42751a;
                if (!subsExpansionManager.q(subsSku)) {
                    subsExpansionManager.t(subsSku.getRetentionTime());
                    subsSku.setExpireTime(DeviceUtil.f48146a.K() + (subsSku.getRetentionTime() * ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS));
                }
                subsExpansionManager.y(baseActivity, subsSku, str);
            }
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String l() {
        return n() + '_' + o().getAndIncrement();
    }

    private final String n() {
        return (String) f42752b.getValue();
    }

    private final AtomicInteger o() {
        return (AtomicInteger) f42753c.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String r() {
        return UUID.randomUUID().toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AtomicInteger s() {
        return new AtomicInteger(0);
    }

    public static /* synthetic */ void x(SubsExpansionManager subsExpansionManager, SubsSku subsSku, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        subsExpansionManager.w(subsSku, z10);
    }

    public final boolean A() {
        return Intrinsics.areEqual(ABTestFactory.f42224a.Y0().abTestValue(), "B");
    }

    public final boolean B() {
        return Intrinsics.areEqual(ABTestFactory.f42224a.Y0().abTestValue(), "C");
    }

    public final boolean C() {
        if (!A() && !B()) {
            return false;
        }
        return true;
    }

    public final boolean f() {
        if (!C() && !AccountRepo.f43052a.H0()) {
            return false;
        }
        return true;
    }

    public final void g(@NotNull BaseActivity activity, @NotNull SubsSku subsSku, @NotNull final String from) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(subsSku, "subsSku");
        Intrinsics.checkNotNullParameter(from, "from");
        if (AccountRepo.f43052a.H0()) {
            SubsExpansionManager subsExpansionManager = f42751a;
            if (!subsExpansionManager.q(subsSku)) {
                final WeakReference weakReference = new WeakReference(activity);
                subsExpansionManager.k(subsSku, new Function1() { // from class: qf.k
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        Unit i10;
                        i10 = SubsExpansionManager.i(weakReference, from, (SubsSku) obj);
                        return i10;
                    }
                });
            }
        }
    }

    public final void h(@NotNull BaseActivity activity, @NotNull String from) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(from, "from");
        SubsSku m10 = m();
        if (m10 != null) {
            f42751a.g(activity, m10, from);
        }
    }

    public final void j() {
        Logger.f41511a.h("SubsExpansionManager", "clearExpansionSubsSku");
        b.f68412a.F3(AccountRepo.f43052a.t0(), null);
    }

    public final void k(@NotNull SubsSku subs, @NotNull Function1<? super SubsSku, Unit> onResult) {
        Intrinsics.checkNotNullParameter(subs, "subs");
        Intrinsics.checkNotNullParameter(onResult, "onResult");
        if (subs.getSkuId().length() == 0) {
            onResult.invoke(null);
        } else {
            BillingRepo.f43237a.t(f42754d, l(), n(), new a(subs, onResult));
        }
    }

    @Nullable
    public final SubsSku m() {
        try {
            b bVar = b.f68412a;
            AccountRepo accountRepo = AccountRepo.f43052a;
            SubsSku u02 = bVar.u0(accountRepo.t0());
            if (accountRepo.z0()) {
                j();
                return null;
            }
            return u02;
        } catch (Exception e10) {
            Logger logger = Logger.f41511a;
            logger.e("SubsExpansionManager", "getExpansionSku failed -> " + e10.getMessage());
            return null;
        }
    }

    public final boolean p(@Nullable SubsSku subsSku) {
        String productId;
        int i10;
        int i11;
        SubsSku m10 = m();
        if (AccountRepo.f43052a.H0()) {
            if (m10 != null) {
                i10 = m10.getRetainLevel();
            } else {
                i10 = 0;
            }
            if (subsSku != null) {
                i11 = subsSku.getRetainLevel();
            } else {
                i11 = 0;
            }
            if (i11 > i10) {
                return true;
            }
        } else {
            String str = "";
            String str2 = (m10 == null || (str2 = m10.getProductId()) == null) ? "" : "";
            if (subsSku != null && (productId = subsSku.getProductId()) != null) {
                str = productId;
            }
            if (!TextUtils.isEmpty(str) && !Intrinsics.areEqual(str, str2)) {
                return true;
            }
        }
        return false;
    }

    public final boolean q(@Nullable SubsSku subsSku) {
        if (subsSku == null || subsSku.getExpireTime() == 0 || DeviceUtil.f48146a.K() >= subsSku.getExpireTime() - 1000) {
            return false;
        }
        return true;
    }

    public final void t(int i10) {
        SubsSku m10 = m();
        if (m10 != null) {
            m10.setExpireTime(DeviceUtil.f48146a.K() + (i10 * ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS));
            b.f68412a.F3(AccountRepo.f43052a.t0(), m10);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0118  */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v7, types: [java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void u(boolean r11, @org.jetbrains.annotations.Nullable java.util.List<com.startshorts.androidplayer.bean.subs.SubsSku> r12, @org.jetbrains.annotations.NotNull at.n<? super java.lang.Integer, ? super com.startshorts.androidplayer.bean.subs.SubsSku, ? super java.util.List<com.startshorts.androidplayer.bean.subs.SubsSku>, kotlin.Unit> r13) {
        /*
            Method dump skipped, instructions count: 330
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.purchase.SubsExpansionManager.u(boolean, java.util.List, at.n):void");
    }

    @NotNull
    public final r v(int i10, @NotNull String productId) {
        Intrinsics.checkNotNullParameter(productId, "productId");
        return CoroutineUtil.l(CoroutineUtil.f48072a, "retainSubsSkuExpose", false, new SubsExpansionManager$retainSubsSkuExpose$1(i10, productId, null), 2, null);
    }

    public final void w(@Nullable SubsSku subsSku, boolean z10) {
        if (!p(subsSku) && !z10) {
            return;
        }
        if (z10 && !q(subsSku) && subsSku != null) {
            subsSku.setExpireTime(DeviceUtil.f48146a.K() + (subsSku.getRetentionTime() * ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS));
        }
        b.f68412a.F3(AccountRepo.f43052a.t0(), subsSku);
    }

    public final void y(@NotNull BaseActivity activity, @NotNull SubsSku subsSku, @NotNull String from) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(subsSku, "subsSku");
        Intrinsics.checkNotNullParameter(from, "from");
        RetainDiscountDialog retainDiscountDialog = new RetainDiscountDialog(subsSku);
        retainDiscountDialog.h0(from);
        retainDiscountDialog.show(activity.getSupportFragmentManager(), "SubsExpansionNewDialog");
    }

    public final void z(@NotNull BaseActivity activity, @NotNull SubsSku subsSku) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(subsSku, "subsSku");
        SubsExpansionNewDialog subsExpansionNewDialog = new SubsExpansionNewDialog();
        subsExpansionNewDialog.s0(subsSku);
        subsExpansionNewDialog.show(activity.getSupportFragmentManager(), "SubsExpansionNewDialog");
    }
}
