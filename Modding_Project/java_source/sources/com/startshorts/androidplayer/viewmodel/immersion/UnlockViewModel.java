package com.startshorts.androidplayer.viewmodel.immersion;

import android.content.Context;
import androidx.lifecycle.MutableLiveData;
import com.startshorts.androidplayer.bean.act.ActResource;
import com.startshorts.androidplayer.bean.purchase.AvailableExpansionSku;
import com.startshorts.androidplayer.bean.purchase.BatchUnlockEpisodeSku;
import com.startshorts.androidplayer.bean.purchase.CoinSku;
import com.startshorts.androidplayer.bean.purchase.GPayPriceInfo;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.shorts.ShortDiscountSku;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import com.startshorts.androidplayer.bean.unlock.UnlockEpisodeAdMethod;
import com.startshorts.androidplayer.bean.unlock.UnlockEpisodeMethod;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.manager.purchase.SubsExpansionManager;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.repo.billing.BillingRepo;
import com.startshorts.androidplayer.repo.billing.purchase.PurchaseRepo;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.viewmodel.base.BaseViewModel;
import com.startshorts.androidplayer.viewmodel.immersion.UnlockViewModel;
import com.startshorts.androidplayer.viewmodel.immersion.e;
import com.startshorts.androidplayer.viewmodel.immersion.f;
import com.tencent.wcdb.FileUtils;
import gt.d0;
import gt.q0;
import gt.r1;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import jk.o;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.r;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: UnlockViewModel.kt */
@Metadata
@SourceDebugExtension({"SMAP\nUnlockViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UnlockViewModel.kt\ncom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel\n+ 2 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,858:1\n47#2,4:859\n1863#3,2:863\n1863#3,2:865\n1863#3,2:867\n1863#3,2:869\n1863#3,2:871\n1863#3,2:873\n360#3,7:875\n*S KotlinDebug\n*F\n+ 1 UnlockViewModel.kt\ncom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel\n*L\n546#1:859,4\n575#1:863,2\n580#1:865,2\n608#1:867,2\n612#1:869,2\n617#1:871,2\n748#1:873,2\n774#1:875,7\n*E\n"})
/* loaded from: classes7.dex */
public final class UnlockViewModel extends BaseViewModel {
    @NotNull

    /* renamed from: w  reason: collision with root package name */
    public static final a f48648w = new a(null);
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private String f48650f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private String f48651g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private String f48652h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private String f48653i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private List<SubsSku> f48654j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private BaseEpisode f48655k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f48656l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private CoinSku f48657m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private CoinSku f48658n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private BatchUnlockEpisodeSku f48659o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private List<CoinSku> f48660p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private List<UnlockEpisodeMethod> f48661q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f48662r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private UnlockEpisodeAdMethod f48663s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f48664t;
    @Nullable

    /* renamed from: v  reason: collision with root package name */
    private SubsSku f48666v;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final i f48649e = kotlin.c.b(new Function0() { // from class: vk.e
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            MutableLiveData h02;
            h02 = UnlockViewModel.h0();
            return h02;
        }
    });

    /* renamed from: u  reason: collision with root package name */
    private int f48665u = 2;

    /* compiled from: UnlockViewModel.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit A0(UnlockViewModel unlockViewModel, BaseEpisode baseEpisode, String str) {
        unlockViewModel.f48664t = false;
        o.b(unlockViewModel.a0(), new f.d(baseEpisode.getId(), null));
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CoinSku B0(CoinSku coinSku) {
        PurchaseRepo purchaseRepo;
        CoinSku k10;
        if (coinSku == null || (k10 = (purchaseRepo = PurchaseRepo.f43366a).k()) == null) {
            return null;
        }
        if (!Intrinsics.areEqual(k10.getSkuProductId(), coinSku.getSkuProductId())) {
            long K = DeviceUtil.f48146a.K();
            ud.b.f68412a.a3(AccountRepo.f43052a.t0(), new AvailableExpansionSku(coinSku, K, K + (coinSku.getRetentionSeconds() * 1000)));
            return purchaseRepo.k();
        }
        k10.setCoins(coinSku.getCoins());
        k10.setKeepGiveCoins(coinSku.getKeepGiveCoins());
        k10.setCoinsUnit(coinSku.getCoinsUnit());
        k10.setGiveCoinsUnit(coinSku.getGiveCoinsUnit());
        k10.setSubscript(coinSku.getSubscript());
        return k10;
    }

    private final void C0(Context context, ShortDiscountSku shortDiscountSku, String str, String str2) {
        BaseEpisode baseEpisode = this.f48655k;
        if (baseEpisode == null) {
            return;
        }
        BaseViewModel.i(this, "unlockEpisodeByDiscount", false, new UnlockViewModel$unlockEpisodeByDiscount$1(context, shortDiscountSku, str, str2, this, baseEpisode, null), 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void P(List<UnlockEpisodeMethod> list, UnlockEpisodeAdMethod unlockEpisodeAdMethod, long j10) {
        if (unlockEpisodeAdMethod != null && unlockEpisodeAdMethod.getTotalWatchAdNum() > 0) {
            this.f48663s = unlockEpisodeAdMethod;
            list.add(new UnlockEpisodeMethod(2, unlockEpisodeAdMethod));
            unlockEpisodeAdMethod.setNextRefreshTime(j10);
        }
    }

    private final void b0() {
        int i10;
        CoinSku coinSku;
        List<UnlockEpisodeMethod> list = this.f48661q;
        if (list != null) {
            i10 = 0;
            for (UnlockEpisodeMethod unlockEpisodeMethod : list) {
                if (unlockEpisodeMethod.getType() == 1) {
                    break;
                }
                i10++;
            }
        }
        i10 = -1;
        if (i10 != -1 && (coinSku = this.f48658n) != null) {
            o.b(a0(), new f.g(i10, new UnlockEpisodeMethod(1, coinSku)));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x002d, code lost:
        if (r2.equals("unlock_template_21") != false) goto L7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0034, code lost:
        if (r2.equals("subs_first_discount") == false) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0038, code lost:
        r2 = r17.f48658n;
        r14 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x003d, code lost:
        if (r2 == null) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x003f, code lost:
        jk.u.l(r2, r18, false, 2, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0042, code lost:
        r2 = r17.f48657m;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0044, code lost:
        if (r2 == null) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0046, code lost:
        jk.u.l(r2, r18, false, 2, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0049, code lost:
        r2 = r17.f48660p;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x004b, code lost:
        if (r2 == null) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x004d, code lost:
        r2 = r2.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0057, code lost:
        if (r2.hasNext() == false) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0059, code lost:
        jk.u.l((com.startshorts.androidplayer.bean.purchase.CoinSku) r2.next(), r18, false, 2, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0069, code lost:
        if (com.startshorts.androidplayer.repo.account.AccountRepo.f43052a.z0() != false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x006b, code lost:
        r2 = r17.f48654j;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x006d, code lost:
        if (r2 == null) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x006f, code lost:
        r16 = r2.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0079, code lost:
        if (r16.hasNext() == false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x007b, code lost:
        r4 = (com.startshorts.androidplayer.bean.subs.SubsSku) r16.next();
        jk.u.k(r4, r18);
        com.startshorts.androidplayer.manager.event.EventManager.f42463a.N0(r10, r4, r17.f48655k, r11, r17.f48651g, r17.f48652h, r17.f48653i);
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0095, code lost:
        r2 = r17.f48661q;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0097, code lost:
        if (r2 == null) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0099, code lost:
        r16 = r2.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00a3, code lost:
        if (r16.hasNext() == false) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00a5, code lost:
        r2 = ((com.startshorts.androidplayer.bean.unlock.UnlockEpisodeMethod) r16.next()).getExtra();
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00b1, code lost:
        if ((r2 instanceof com.startshorts.androidplayer.bean.purchase.CoinSku) == false) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00b3, code lost:
        r4 = (com.startshorts.androidplayer.bean.purchase.CoinSku) r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00bb, code lost:
        if (r4.getSkuType() == 7) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00c3, code lost:
        if (r4.getSkuType() != 10) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00c5, code lost:
        jk.u.l(r4, r18, false, 2, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00ce, code lost:
        if (kotlin.jvm.internal.Intrinsics.areEqual(r17.f48650f, "subs_first_discount") != false) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00d0, code lost:
        com.startshorts.androidplayer.manager.event.EventManager.f42463a.M0(r10, r4, r17.f48655k, r11, r17.f48651g, r17.f48652h, r17.f48653i);
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00e2, code lost:
        if (r17.f48662r != false) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00e4, code lost:
        r17.f48662r = true;
        r2 = qf.h.f65328a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00ef, code lost:
        if (r2.p(r17.f48654j, null) != false) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00f7, code lost:
        if (r2.p(null, r17.f48660p) != false) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00ff, code lost:
        if (r2.n(r17.f48659o) != false) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0107, code lost:
        if (r2.n(r17.f48658n) != false) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x010f, code lost:
        if (r2.n(r17.f48657m) == false) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0111, code lost:
        r14 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0112, code lost:
        f0(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0023, code lost:
        if (r2.equals("unlock_template_22") == false) goto L69;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void c0(java.util.List<? extends java.lang.Object> r18) {
        /*
            Method dump skipped, instructions count: 306
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.viewmodel.immersion.UnlockViewModel.c0(java.util.List):void");
    }

    private final void d0(String str, String str2, GPayPriceInfo gPayPriceInfo, BaseEpisode baseEpisode) {
        UnlockEpisodeMethod unlockEpisodeMethod;
        Object obj;
        CoinSku coinSku;
        Object obj2;
        CoinSku coinSku2;
        String str3;
        String str4;
        List<UnlockEpisodeMethod> list = this.f48661q;
        ActResource actResource = null;
        if (list != null) {
            Iterator<T> it = list.iterator();
            while (true) {
                if (it.hasNext()) {
                    obj2 = it.next();
                    UnlockEpisodeMethod unlockEpisodeMethod2 = (UnlockEpisodeMethod) obj2;
                    if (unlockEpisodeMethod2.getType() == 1) {
                        Object extra = unlockEpisodeMethod2.getExtra();
                        if (extra instanceof CoinSku) {
                            coinSku2 = (CoinSku) extra;
                        } else {
                            coinSku2 = null;
                        }
                        if (coinSku2 != null) {
                            str4 = coinSku2.getGpSkuId();
                            str3 = str2;
                        } else {
                            str3 = str2;
                            str4 = null;
                        }
                        if (Intrinsics.areEqual(str4, str3)) {
                            break;
                        }
                    }
                } else {
                    obj2 = null;
                    break;
                }
            }
            unlockEpisodeMethod = (UnlockEpisodeMethod) obj2;
        } else {
            unlockEpisodeMethod = null;
        }
        if (unlockEpisodeMethod != null) {
            obj = unlockEpisodeMethod.getExtra();
        } else {
            obj = null;
        }
        if (obj instanceof CoinSku) {
            coinSku = (CoinSku) obj;
        } else {
            coinSku = null;
        }
        if (coinSku == null) {
            return;
        }
        EventManager eventManager = EventManager.f42463a;
        String S = S();
        if (baseEpisode != null) {
            actResource = ud.a.f68411a.p();
        }
        EventManager.T0(eventManager, S, coinSku, gPayPriceInfo, str, baseEpisode, actResource, null, null, null, FileUtils.S_IRWXU, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void e0() {
        if (Intrinsics.areEqual(this.f48650f, "subs_first_discount") || this.f48656l) {
            return;
        }
        EventManager eventManager = EventManager.f42463a;
        String S = S();
        String str = this.f48651g;
        if (str == null) {
            str = "other";
        }
        eventManager.V0(S, str, this.f48655k, ud.a.f68411a.p(), this.f48652h, this.f48653i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void f0(boolean z10) {
        if (Intrinsics.areEqual(this.f48650f, "subs_first_discount") || this.f48656l) {
            return;
        }
        EventManager eventManager = EventManager.f42463a;
        String S = S();
        String str = this.f48651g;
        if (str == null) {
            str = "other";
        }
        eventManager.X0(S, str, this.f48655k, z10, ud.a.f68411a.p());
    }

    private final void g0(String str, String str2, GPayPriceInfo gPayPriceInfo, BaseEpisode baseEpisode) {
        ActResource actResource;
        Object obj;
        List<SubsSku> list = this.f48654j;
        if (list != null) {
            Iterator<T> it = list.iterator();
            while (true) {
                actResource = null;
                if (it.hasNext()) {
                    obj = it.next();
                    if (Intrinsics.areEqual(((SubsSku) obj).getSkuId(), str2)) {
                        break;
                    }
                } else {
                    obj = null;
                    break;
                }
            }
            SubsSku subsSku = (SubsSku) obj;
            if (subsSku != null) {
                EventManager eventManager = EventManager.f42463a;
                String S = S();
                if (baseEpisode != null) {
                    actResource = ud.a.f68411a.p();
                }
                EventManager.U0(eventManager, S, subsSku, gPayPriceInfo, str, baseEpisode, actResource, null, null, null, null, 960, null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MutableLiveData h0() {
        return new MutableLiveData();
    }

    private final void i0() {
        n0(true);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x002c, code lost:
        if (r3.equals("unlock_template_21") != false) goto L7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0035, code lost:
        if (r3.equals("subs_first_discount") == false) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0038, code lost:
        r3 = r6.f48657m;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x003a, code lost:
        if (r3 == null) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x003c, code lost:
        r3 = r3.getGpSkuId();
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0040, code lost:
        if (r3 == null) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0042, code lost:
        r1.add(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0045, code lost:
        r3 = r6.f48658n;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0047, code lost:
        if (r3 == null) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0049, code lost:
        r3 = r3.getGpSkuId();
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x004d, code lost:
        if (r3 == null) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x004f, code lost:
        r1.add(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0052, code lost:
        r3 = r6.f48660p;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0054, code lost:
        if (r3 == null) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0056, code lost:
        r3 = r3.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0060, code lost:
        if (r3.hasNext() == false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0062, code lost:
        r1.add(((com.startshorts.androidplayer.bean.purchase.CoinSku) r3.next()).getGpSkuId());
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0076, code lost:
        if (com.startshorts.androidplayer.repo.account.AccountRepo.f43052a.z0() != false) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0078, code lost:
        r3 = r6.f48654j;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x007a, code lost:
        if (r3 == null) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x007c, code lost:
        r3 = r3.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0086, code lost:
        if (r3.hasNext() == false) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0088, code lost:
        r4 = (com.startshorts.androidplayer.bean.subs.SubsSku) r3.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0096, code lost:
        if (r4.getSkuId().length() <= 0) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0098, code lost:
        r2.add(r4.getSkuId());
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0022, code lost:
        if (r3.equals("unlock_template_22") == false) goto L43;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void k0() {
        /*
            r6 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            java.lang.String r3 = r6.f48650f
            if (r3 == 0) goto La0
            int r4 = r3.hashCode()
            switch(r4) {
                case -1323748996: goto L2f;
                case -314176599: goto L26;
                case -314176598: goto L1c;
                default: goto L1a;
            }
        L1a:
            goto La0
        L1c:
            java.lang.String r4 = "unlock_template_22"
            boolean r3 = r3.equals(r4)
            if (r3 != 0) goto L38
            goto La0
        L26:
            java.lang.String r4 = "unlock_template_21"
            boolean r3 = r3.equals(r4)
            if (r3 == 0) goto La0
            goto L38
        L2f:
            java.lang.String r4 = "subs_first_discount"
            boolean r3 = r3.equals(r4)
            if (r3 != 0) goto L38
            goto La0
        L38:
            com.startshorts.androidplayer.bean.purchase.CoinSku r3 = r6.f48657m
            if (r3 == 0) goto L45
            java.lang.String r3 = r3.getGpSkuId()
            if (r3 == 0) goto L45
            r1.add(r3)
        L45:
            com.startshorts.androidplayer.bean.purchase.CoinSku r3 = r6.f48658n
            if (r3 == 0) goto L52
            java.lang.String r3 = r3.getGpSkuId()
            if (r3 == 0) goto L52
            r1.add(r3)
        L52:
            java.util.List<com.startshorts.androidplayer.bean.purchase.CoinSku> r3 = r6.f48660p
            if (r3 == 0) goto L70
            java.lang.Iterable r3 = (java.lang.Iterable) r3
            java.util.Iterator r3 = r3.iterator()
        L5c:
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L70
            java.lang.Object r4 = r3.next()
            com.startshorts.androidplayer.bean.purchase.CoinSku r4 = (com.startshorts.androidplayer.bean.purchase.CoinSku) r4
            java.lang.String r4 = r4.getGpSkuId()
            r1.add(r4)
            goto L5c
        L70:
            com.startshorts.androidplayer.repo.account.AccountRepo r3 = com.startshorts.androidplayer.repo.account.AccountRepo.f43052a
            boolean r3 = r3.z0()
            if (r3 != 0) goto La0
            java.util.List<com.startshorts.androidplayer.bean.subs.SubsSku> r3 = r6.f48654j
            if (r3 == 0) goto La0
            java.lang.Iterable r3 = (java.lang.Iterable) r3
            java.util.Iterator r3 = r3.iterator()
        L82:
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto La0
            java.lang.Object r4 = r3.next()
            com.startshorts.androidplayer.bean.subs.SubsSku r4 = (com.startshorts.androidplayer.bean.subs.SubsSku) r4
            java.lang.String r5 = r4.getSkuId()
            int r5 = r5.length()
            if (r5 <= 0) goto L82
            java.lang.String r4 = r4.getSkuId()
            r2.add(r4)
            goto L82
        La0:
            boolean r3 = r1.isEmpty()
            if (r3 != 0) goto Lb4
            zc.g r3 = new zc.g
            le.h r4 = le.h.f62164a
            java.lang.String r4 = r4.a()
            r3.<init>(r4, r1)
            r0.add(r3)
        Lb4:
            boolean r1 = r2.isEmpty()
            if (r1 != 0) goto Lc8
            zc.g r1 = new zc.g
            le.h r3 = le.h.f62164a
            java.lang.String r3 = r3.b()
            r1.<init>(r3, r2)
            r0.add(r1)
        Lc8:
            androidx.lifecycle.MutableLiveData r1 = r6.a0()
            com.startshorts.androidplayer.viewmodel.immersion.f$b r2 = new com.startshorts.androidplayer.viewmodel.immersion.f$b
            r2.<init>(r0)
            jk.o.b(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.viewmodel.immersion.UnlockViewModel.k0():void");
    }

    private final r l0(boolean z10) {
        return BaseViewModel.i(this, "querySubsDiscount", false, new UnlockViewModel$querySubsDiscount$1(this, z10, null), 2, null);
    }

    static /* synthetic */ r m0(UnlockViewModel unlockViewModel, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        return unlockViewModel.l0(z10);
    }

    private final r n0(boolean z10) {
        return BaseViewModel.i(this, "queryUnlockEpisodeProductList", false, new UnlockViewModel$queryUnlockEpisodeProductList$1(this, z10, null), 2, null);
    }

    static /* synthetic */ r o0(UnlockViewModel unlockViewModel, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        return unlockViewModel.n0(z10);
    }

    private final r p0() {
        return BaseViewModel.i(this, "queryUnlockPanelAdd", false, new UnlockViewModel$queryUnlockPanelAdd$1(null), 2, null);
    }

    private final r q0(Context context) {
        return BaseViewModel.i(this, "queryWatchAdResult", false, new UnlockViewModel$queryWatchAdResult$1(this, context, null), 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void r0() {
        if (BillingRepo.f43237a.C()) {
            ArrayList arrayList = new ArrayList();
            List<UnlockEpisodeMethod> list = this.f48661q;
            if (list != null) {
                for (UnlockEpisodeMethod unlockEpisodeMethod : list) {
                    if (unlockEpisodeMethod.getType() == 1) {
                        Object extra = unlockEpisodeMethod.getExtra();
                        Intrinsics.checkNotNull(extra, "null cannot be cast to non-null type com.startshorts.androidplayer.bean.purchase.CoinSku");
                        arrayList.add((CoinSku) extra);
                    }
                }
            }
            BillingRepo.f43237a.h0(arrayList);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void s0(SubsSku subsSku) {
        this.f48666v = subsSku;
        AccountRepo accountRepo = AccountRepo.f43052a;
        boolean H0 = accountRepo.H0();
        SubsExpansionManager subsExpansionManager = SubsExpansionManager.f42751a;
        boolean C = subsExpansionManager.C();
        boolean I0 = accountRepo.I0();
        if (subsSku != null && subsSku.isDayToWeekSub() && !I0 && this.f48656l) {
            AccountRepo.c1(accountRepo, true, null, 2, null);
        }
        if (!H0 && !C && !this.f48656l && subsSku != null && !subsSku.isDayToWeekSub()) {
            SubsExpansionManager.x(subsExpansionManager, subsSku, false, 2, null);
        }
    }

    private final r y0(Context context, boolean z10, String str) {
        return BaseViewModel.n(this, kotlinx.coroutines.i.a(r1.b(null, 1, null).plus(q0.b()).plus(new b(d0.D8))), "singleUnlockEpisodeByAd", false, new UnlockViewModel$singleUnlockEpisodeByAd$2(this, context, z10, str, null), 4, null);
    }

    private final void z0(Context context, boolean z10, boolean z11, String str) {
        final BaseEpisode baseEpisode = this.f48655k;
        if (baseEpisode == null) {
            return;
        }
        this.f48664t = true;
        BaseViewModel.j(this, "singleUnlockEpisodeByCoins", false, new UnlockViewModel$singleUnlockEpisodeByCoins$1(context, baseEpisode, z10, z11, str, this, null), new Function1() { // from class: vk.f
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit A0;
                A0 = UnlockViewModel.A0(UnlockViewModel.this, baseEpisode, (String) obj);
                return A0;
            }
        }, 2, null);
    }

    public final void Q() {
        this.f48661q = null;
        this.f48659o = null;
        this.f48660p = null;
        this.f48654j = null;
    }

    public final boolean R() {
        if (this.f48661q != null) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String S() {
        String str = this.f48650f;
        if (Intrinsics.areEqual(str, "unlock_template_21")) {
            return "ads_coins";
        }
        if (Intrinsics.areEqual(str, "unlock_template_22")) {
            return "db_facsimile_pay";
        }
        return "";
    }

    @Nullable
    public final UnlockEpisodeAdMethod T() {
        return this.f48663s;
    }

    public final int U() {
        return this.f48665u;
    }

    @Nullable
    public final List<CoinSku> V() {
        return this.f48660p;
    }

    @Nullable
    public final CoinSku W() {
        return this.f48657m;
    }

    @Nullable
    public final SubsSku X() {
        return this.f48666v;
    }

    @Nullable
    public final List<SubsSku> Y() {
        return this.f48654j;
    }

    public final boolean Z() {
        return this.f48664t;
    }

    @NotNull
    public final MutableLiveData<f> a0() {
        return (MutableLiveData) this.f48649e.getValue();
    }

    public final void j0(@NotNull e intent) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        if (intent instanceof e.d) {
            this.f48655k = ((e.d) intent).a();
        } else if (intent instanceof e.i) {
            e.i iVar = (e.i) intent;
            this.f48650f = iVar.c();
            this.f48651g = iVar.a();
            this.f48652h = iVar.b();
            this.f48653i = iVar.d();
            if (!Intrinsics.areEqual(this.f48650f, "subs_first_discount")) {
                p0();
            }
            String c10 = iVar.c();
            switch (c10.hashCode()) {
                case -1323748996:
                    if (c10.equals("subs_first_discount")) {
                        m0(this, false, 1, null);
                        return;
                    }
                    return;
                case -314176599:
                    if (!c10.equals("unlock_template_21")) {
                        return;
                    }
                    break;
                case -314176598:
                    if (!c10.equals("unlock_template_22")) {
                        return;
                    }
                    break;
                default:
                    return;
            }
            o0(this, false, 1, null);
        } else if (intent instanceof e.g) {
            i0();
        } else if (intent instanceof e.k) {
            i0();
        } else if (intent instanceof e.j) {
            e.j jVar = (e.j) intent;
            this.f48651g = jVar.a();
            q0(jVar.b());
        } else if (intent instanceof e.h) {
            k0();
        } else if (intent instanceof e.m) {
            e.m mVar = (e.m) intent;
            z0(mVar.c(), mVar.b(), mVar.d(), mVar.a());
        } else if (intent instanceof e.n) {
            e.n nVar = (e.n) intent;
            C0(nVar.b(), nVar.a(), nVar.c(), nVar.d());
        } else if (intent instanceof e.l) {
            e.l lVar = (e.l) intent;
            y0(lVar.b(), lVar.a(), lVar.c());
            i0();
        } else if (intent instanceof e.c) {
            c0(((e.c) intent).a());
        } else if (intent instanceof e.C0664e) {
            e.C0664e c0664e = (e.C0664e) intent;
            d0(c0664e.a(), c0664e.b(), c0664e.c(), this.f48655k);
        } else if (intent instanceof e.f) {
            e.f fVar = (e.f) intent;
            g0(fVar.a(), fVar.b(), fVar.c(), this.f48655k);
        } else if (Intrinsics.areEqual(intent, e.b.f48753b)) {
            b0();
        } else {
            throw new NoWhenBranchMatchedException();
        }
    }

    @Override // com.startshorts.androidplayer.viewmodel.base.BaseViewModel
    @NotNull
    public String t() {
        return "UnlockViewModel";
    }

    public final void t0(int i10) {
        this.f48665u = i10;
    }

    public final void u0(@Nullable List<CoinSku> list) {
        this.f48660p = list;
    }

    public final void v0(@Nullable CoinSku coinSku) {
        this.f48658n = coinSku;
    }

    @Override // com.startshorts.androidplayer.viewmodel.base.BaseViewModel
    public void w() {
        super.w();
        this.f48664t = false;
    }

    public final void w0(@Nullable List<SubsSku> list) {
        this.f48654j = list;
    }

    public final void x0(boolean z10) {
        this.f48664t = z10;
    }

    @Override // com.startshorts.androidplayer.viewmodel.base.BaseViewModel
    public void z(@NotNull Throwable throwable) {
        Intrinsics.checkNotNullParameter(throwable, "throwable");
        if (this.f48656l) {
            return;
        }
        super.z(throwable);
    }

    /* compiled from: CoroutineExceptionHandler.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nCoroutineExceptionHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt$CoroutineExceptionHandler$1\n+ 2 UnlockViewModel.kt\ncom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel\n*L\n1#1,49:1\n546#2:50\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class b extends kotlin.coroutines.a implements d0 {
        public b(d0.b bVar) {
            super(bVar);
        }

        @Override // gt.d0
        public void handleException(CoroutineContext coroutineContext, Throwable th2) {
        }
    }
}
