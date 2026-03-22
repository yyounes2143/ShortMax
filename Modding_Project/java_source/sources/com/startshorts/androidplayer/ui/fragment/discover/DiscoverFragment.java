package com.startshorts.androidplayer.ui.fragment.discover;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import androidx.work.PeriodicWorkRequest;
import com.lcodecore.tkrefreshlayout.TwinklingRefreshLayout;
import com.ss.texturerender.TextureRenderKeys;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.adapter.base.BaseAdapter;
import com.startshorts.androidplayer.adapter.discover.DiscoverModuleAdapter;
import com.startshorts.androidplayer.bean.act.ActResource;
import com.startshorts.androidplayer.bean.act.CallAppDataKey;
import com.startshorts.androidplayer.bean.ad.AdScene;
import com.startshorts.androidplayer.bean.adapter.SelectableItem;
import com.startshorts.androidplayer.bean.api.ApiErrorState;
import com.startshorts.androidplayer.bean.bundle.StringBundle;
import com.startshorts.androidplayer.bean.discover.DiscoverCategory;
import com.startshorts.androidplayer.bean.discover.DiscoverCategoryShorts;
import com.startshorts.androidplayer.bean.discover.DiscoverModule;
import com.startshorts.androidplayer.bean.discover.DiscoverRanking;
import com.startshorts.androidplayer.bean.discover.DiscoverResource;
import com.startshorts.androidplayer.bean.discover.DiscoverShorts;
import com.startshorts.androidplayer.bean.discover.DiscoverTab;
import com.startshorts.androidplayer.bean.discover.DiscoverTabPage;
import com.startshorts.androidplayer.bean.discover.DiscoverTitleModule;
import com.startshorts.androidplayer.bean.discover.ModuleInfo;
import com.startshorts.androidplayer.bean.discover.PlayListDiscoverCategory;
import com.startshorts.androidplayer.bean.discover.PlayListDiscoverRanking;
import com.startshorts.androidplayer.bean.discover.TagListInfo;
import com.startshorts.androidplayer.bean.discover.TagRelatedShorts;
import com.startshorts.androidplayer.bean.discover.VideoPreviewInfo;
import com.startshorts.androidplayer.bean.event.RefreshPayScoreEvent;
import com.startshorts.androidplayer.bean.eventbus.RefreshAccountEvent;
import com.startshorts.androidplayer.bean.eventbus.RefreshEpisodeNumEvent;
import com.startshorts.androidplayer.bean.eventbus.RefreshReservationEvent;
import com.startshorts.androidplayer.bean.eventbus.RefreshSpecifiedDiscoverFragmentEvent;
import com.startshorts.androidplayer.bean.eventbus.ShortDiscountUnLockEvent;
import com.startshorts.androidplayer.bean.eventbus.VideoPreviewPlayEvent;
import com.startshorts.androidplayer.bean.immersion.ImmersionParams;
import com.startshorts.androidplayer.bean.immersion.ImmersionShortsInfo;
import com.startshorts.androidplayer.bean.purchase.AcknowledgePurchaseResult;
import com.startshorts.androidplayer.bean.shorts.BaseShorts;
import com.startshorts.androidplayer.bean.shorts.ShortsLabel;
import com.startshorts.androidplayer.databinding.FragmentDiscoverBinding;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.ad.AdManager;
import com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory;
import com.startshorts.androidplayer.manager.configure.ad.AdSwitchConfigure;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.repo.billing.purchase.PurchaseRepo;
import com.startshorts.androidplayer.ui.activity.act.ActActivity;
import com.startshorts.androidplayer.ui.activity.base.FragmentContainer;
import com.startshorts.androidplayer.ui.activity.immersion.ImmersionActivity;
import com.startshorts.androidplayer.ui.fragment.base.RefreshFragment;
import com.startshorts.androidplayer.ui.fragment.discover.DiscoverFragment;
import com.startshorts.androidplayer.ui.fragment.discover.DiscoverTabFragment;
import com.startshorts.androidplayer.ui.fragment.tag.TagFilterFragment;
import com.startshorts.androidplayer.ui.view.banner.BannerViewPager;
import com.startshorts.androidplayer.ui.view.discover.VideoPreview;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.utils.IntentUtil;
import com.startshorts.androidplayer.utils.ext.FragmentExtKt;
import com.startshorts.androidplayer.viewmodel.comingsoon.ComingSoonViewModel;
import com.startshorts.androidplayer.viewmodel.comingsoon.a;
import com.startshorts.androidplayer.viewmodel.discover.DiscoverViewModel;
import com.startshorts.androidplayer.viewmodel.discover.a;
import com.startshorts.androidplayer.viewmodel.discover.b;
import com.vungle.ads.internal.presenter.MRAIDPresenter;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Set;
import java.util.function.Predicate;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlinx.coroutines.r;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DiscoverFragment.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDiscoverFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverFragment.kt\ncom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,1645:1\n774#2:1646\n865#2,2:1647\n1611#2,9:1649\n1863#2:1658\n1864#2:1660\n1620#2:1661\n774#2:1663\n865#2,2:1664\n1863#2,2:1666\n1368#2:1668\n1454#2,2:1669\n1863#2:1671\n1863#2,2:1672\n1864#2:1674\n2642#2:1675\n1456#2,3:1677\n1567#2:1680\n1598#2,3:1681\n2642#2:1684\n1601#2:1686\n1872#2,2:1687\n2642#2:1689\n1874#2:1691\n1863#2,2:1692\n1863#2,2:1694\n1567#2:1696\n1598#2,4:1697\n2642#2:1701\n1872#2,3:1705\n1872#2,2:1708\n1863#2,2:1710\n1874#2:1712\n360#2,7:1713\n774#2:1720\n865#2,2:1721\n1863#2:1723\n774#2:1724\n865#2:1725\n866#2:1727\n1611#2,9:1728\n1863#2:1737\n1864#2:1739\n1620#2:1740\n1864#2:1741\n1663#2,8:1742\n1863#2,2:1750\n1863#2,2:1752\n774#2:1754\n865#2,2:1755\n1863#2:1757\n1863#2,2:1758\n1864#2:1760\n1611#2,9:1761\n1863#2:1770\n1864#2:1772\n1620#2:1773\n1611#2,9:1774\n1863#2:1783\n1864#2:1785\n1620#2:1786\n774#2:1787\n865#2,2:1788\n1863#2:1790\n774#2:1791\n865#2,2:1792\n1863#2,2:1794\n1864#2:1796\n2642#2:1798\n2642#2:1800\n388#2,7:1802\n388#2,7:1809\n2642#2:1816\n1#3:1659\n1#3:1662\n1#3:1676\n1#3:1685\n1#3:1690\n1#3:1702\n1#3:1726\n1#3:1738\n1#3:1771\n1#3:1784\n1#3:1797\n1#3:1799\n1#3:1801\n1#3:1817\n1#3:1818\n216#4,2:1703\n*S KotlinDebug\n*F\n+ 1 DiscoverFragment.kt\ncom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment\n*L\n591#1:1646\n591#1:1647,2\n596#1:1649,9\n596#1:1658\n596#1:1660\n596#1:1661\n721#1:1663\n721#1:1664,2\n721#1:1666,2\n745#1:1668\n745#1:1669,2\n746#1:1671\n747#1:1672,2\n746#1:1674\n826#1:1675\n745#1:1677,3\n919#1:1680\n919#1:1681,3\n926#1:1684\n919#1:1686\n957#1:1687,2\n965#1:1689\n957#1:1691\n1002#1:1692,2\n1005#1:1694,2\n1009#1:1696\n1009#1:1697,4\n1028#1:1701\n1097#1:1705,3\n1148#1:1708,2\n1162#1:1710,2\n1148#1:1712\n1195#1:1713,7\n1316#1:1720\n1316#1:1721,2\n1322#1:1723\n1324#1:1724\n1324#1:1725\n1324#1:1727\n1329#1:1728,9\n1329#1:1737\n1329#1:1739\n1329#1:1740\n1322#1:1741\n1337#1:1742,8\n1344#1:1750,2\n1349#1:1752,2\n1428#1:1754\n1428#1:1755,2\n1432#1:1757\n1434#1:1758,2\n1432#1:1760\n1476#1:1761,9\n1476#1:1770\n1476#1:1772\n1476#1:1773\n1477#1:1774,9\n1477#1:1783\n1477#1:1785\n1477#1:1786\n1499#1:1787\n1499#1:1788,2\n1500#1:1790\n1501#1:1791\n1501#1:1792,2\n1501#1:1794,2\n1500#1:1796\n1548#1:1798\n1558#1:1800\n1566#1:1802,7\n1567#1:1809,7\n1573#1:1816\n596#1:1659\n826#1:1676\n926#1:1685\n965#1:1690\n1028#1:1702\n1329#1:1738\n1476#1:1771\n1477#1:1784\n1548#1:1799\n1558#1:1801\n1573#1:1817\n1061#1:1703,2\n*E\n"})
/* loaded from: classes7.dex */
public final class DiscoverFragment extends RefreshFragment<DiscoverModule, FragmentDiscoverBinding> {
    @NotNull

    /* renamed from: e0  reason: collision with root package name */
    public static final a f45854e0 = new a(null);
    @Nullable
    private DiscoverTab I;
    @Nullable
    private String J;
    @Nullable
    private DiscoverTabFragment.b N;
    private int P;
    private boolean Q;
    private boolean R;
    private boolean S;
    @Nullable
    private kotlinx.coroutines.r T;
    @Nullable
    private kotlinx.coroutines.r U;
    private final int X;
    @NotNull
    private final ms.i Y;
    @NotNull
    private List<PlayListDiscoverRanking> Z;
    @NotNull

    /* renamed from: a0  reason: collision with root package name */
    private Map<Integer, SelectableItem> f45855a0;

    /* renamed from: b0  reason: collision with root package name */
    private int f45856b0;

    /* renamed from: c0  reason: collision with root package name */
    private boolean f45857c0;

    /* renamed from: d0  reason: collision with root package name */
    private final int f45858d0;
    private final int F = jk.g.a(150.0f);
    @NotNull
    private final ms.i G = kotlin.c.b(new Function0() { // from class: com.startshorts.androidplayer.ui.fragment.discover.t
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            DiscoverViewModel j22;
            j22 = DiscoverFragment.j2(DiscoverFragment.this);
            return j22;
        }
    });
    @NotNull
    private final DiscoverFragment$mPropertyObserver$1 H = new DiscoverFragment$mPropertyObserver$1(this);
    @NotNull
    private final b K = new b();
    private boolean L = true;
    private long M = -1;
    @NotNull
    private final ms.i O = kotlin.c.b(new Function0() { // from class: com.startshorts.androidplayer.ui.fragment.discover.u
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            ye.b n22;
            n22 = DiscoverFragment.n2(DiscoverFragment.this);
            return n22;
        }
    });
    private int V = -1;
    @NotNull
    private final ms.i<List<RefreshEpisodeNumEvent>> W = kotlin.c.b(new Function0() { // from class: com.startshorts.androidplayer.ui.fragment.discover.v
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            List l22;
            l22 = DiscoverFragment.l2();
            return l22;
        }
    });

    /* compiled from: DiscoverFragment.kt */
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
    /* compiled from: DiscoverFragment.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nDiscoverFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverFragment.kt\ncom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$ScrollVerticalScrollOffsetHandler\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1645:1\n1#2:1646\n*E\n"})
    /* loaded from: classes7.dex */
    public final class b {

        /* renamed from: a  reason: collision with root package name */
        private float f45859a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private Function1<? super Float, Unit> f45860b = new Function1() { // from class: com.startshorts.androidplayer.ui.fragment.discover.w
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit b10;
                b10 = DiscoverFragment.b.b(DiscoverFragment.b.this, ((Float) obj).floatValue());
                return b10;
            }
        };

        public b() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit b(b bVar, float f10) {
            bVar.f45859a += f10;
            return Unit.f60915a;
        }

        public final void c() {
            try {
                RecyclerView g02 = DiscoverFragment.this.g0();
                if (g02 != null) {
                    this.f45859a = g02.computeVerticalScrollOffset();
                }
            } catch (Exception e10) {
                DiscoverFragment discoverFragment = DiscoverFragment.this;
                discoverFragment.g("computeScrollTotalDy onScrolled Exception -> " + e10.getMessage());
            }
        }

        public final float d() {
            return this.f45859a;
        }

        public final void e(float f10) {
            DiscoverTabFragment.b bVar;
            this.f45860b.invoke(Float.valueOf(f10));
            if (DiscoverFragment.this.R && (bVar = DiscoverFragment.this.N) != null) {
                bVar.c(this.f45859a, false);
            }
        }
    }

    /* compiled from: DiscoverFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d implements BaseAdapter.b<DiscoverModule> {
        d() {
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.b
        /* renamed from: b */
        public void a(View v10, DiscoverModule d10, int i10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            Intrinsics.checkNotNullParameter(d10, "d");
            if (d10.getStyle() == -22) {
                EventManager.s0(EventManager.f42463a, "discover_not_click", null, 0L, 6, null);
                FragmentContainer.a aVar = FragmentContainer.f45006p;
                Context requireContext = DiscoverFragment.this.requireContext();
                Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
                aVar.b(requireContext, com.startshorts.androidplayer.ui.fragment.a.f45609a.n(), new StringBundle(TextureRenderKeys.KEY_IS_ACTION, "discover_not"));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DiscoverFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class e implements Observer, FunctionAdapter {

        /* renamed from: a  reason: collision with root package name */
        private final /* synthetic */ Function1 f45872a;

        e(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f45872a = function;
        }

        public final boolean equals(@Nullable Object obj) {
            if (!(obj instanceof Observer) || !(obj instanceof FunctionAdapter)) {
                return false;
            }
            return Intrinsics.areEqual(getFunctionDelegate(), ((FunctionAdapter) obj).getFunctionDelegate());
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        @NotNull
        public final ms.f<?> getFunctionDelegate() {
            return this.f45872a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f45872a.invoke(obj);
        }
    }

    public DiscoverFragment() {
        DeviceUtil deviceUtil = DeviceUtil.f48146a;
        this.X = deviceUtil.J() + deviceUtil.t() + deviceUtil.u();
        this.Y = kotlin.c.b(new Function0() { // from class: com.startshorts.androidplayer.ui.fragment.discover.b
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int m22;
                m22 = DiscoverFragment.m2(DiscoverFragment.this);
                return Integer.valueOf(m22);
            }
        });
        this.Z = new ArrayList();
        this.f45855a0 = new LinkedHashMap();
        this.f45857c0 = true;
        this.f45858d0 = R$layout.fragment_discover;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean A2(DiscoverModule it) {
        List<DiscoverCategory> categoryVOList;
        List<DiscoverResource> contentResponseList;
        List<DiscoverRanking> rankingNameList;
        List<PlayListDiscoverRanking> rankingResponseList;
        Intrinsics.checkNotNullParameter(it, "it");
        List<DiscoverShorts> shortPlayResponseList = it.getShortPlayResponseList();
        if ((shortPlayResponseList != null && !shortPlayResponseList.isEmpty()) || (((categoryVOList = it.getCategoryVOList()) != null && !categoryVOList.isEmpty()) || (((contentResponseList = it.getContentResponseList()) != null && !contentResponseList.isEmpty()) || (((rankingNameList = it.getRankingNameList()) != null && !rankingNameList.isEmpty()) || ((rankingResponseList = it.getRankingResponseList()) != null && !rankingResponseList.isEmpty()))))) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void B2() {
        Object obj;
        Integer num;
        int i10;
        List<DiscoverModule> d02 = d0();
        if (d02 != null) {
            synchronized (d02) {
                try {
                    Iterator<T> it = d02.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            obj = it.next();
                            if (((DiscoverModule) obj).getStyle() == -22) {
                                break;
                            }
                        } else {
                            obj = null;
                            break;
                        }
                    }
                    DiscoverModule discoverModule = (DiscoverModule) obj;
                    if (discoverModule == null) {
                        return;
                    }
                    r("removeLowSkuTemplateNotification");
                    List<Integer> style_banner_group = DiscoverModule.Companion.getSTYLE_BANNER_GROUP();
                    DiscoverModule discoverModule2 = (DiscoverModule) CollectionsKt.firstOrNull(d02);
                    if (discoverModule2 != null) {
                        num = Integer.valueOf(discoverModule2.getStyle());
                    } else {
                        num = null;
                    }
                    if (CollectionsKt.g0(style_banner_group, num)) {
                        i10 = fk.z.f51786a.i();
                    } else {
                        i10 = 0;
                    }
                    M2(d02, i10);
                    BaseAdapter<DiscoverModule> Z = Z();
                    if (Z != null) {
                        BaseAdapter.j(Z, discoverModule, null, 2, null);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void C2(Function1<? super DiscoverModule, Boolean> function1) {
        CoroutineUtil.l(CoroutineUtil.f48072a, "calculateModuleStartEndPosition", false, new DiscoverFragment$removeModule$2(this, function1, null), 2, null);
    }

    private final void D2(List<DiscoverModule> list) {
        zg.c cVar = zg.c.f71648a;
        if (cVar.c() && cVar.d()) {
            final Function1 function1 = new Function1() { // from class: com.startshorts.androidplayer.ui.fragment.discover.k
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    boolean E2;
                    E2 = DiscoverFragment.E2((DiscoverModule) obj);
                    return Boolean.valueOf(E2);
                }
            };
            list.removeIf(new Predicate() { // from class: com.startshorts.androidplayer.ui.fragment.discover.m
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    boolean F2;
                    F2 = DiscoverFragment.F2(Function1.this, obj);
                    return F2;
                }
            });
        }
        CollectionsKt.O(list, new Function1() { // from class: com.startshorts.androidplayer.ui.fragment.discover.n
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                boolean G2;
                G2 = DiscoverFragment.G2((DiscoverModule) obj);
                return Boolean.valueOf(G2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean E2(DiscoverModule it) {
        Intrinsics.checkNotNullParameter(it, "it");
        if (it.getRuleCode() == 3) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean F2(Function1 function1, Object obj) {
        return ((Boolean) function1.invoke(obj)).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean G2(DiscoverModule it) {
        Intrinsics.checkNotNullParameter(it, "it");
        if (it.getStyle() != 13) {
            return false;
        }
        List<DiscoverResource> contentResponseList = it.getContentResponseList();
        if (contentResponseList != null && !contentResponseList.isEmpty() && (it.getContentResponseList().size() != 1 || !it.getContentResponseList().get(0).isProgrammaticAdBanner() || AdSwitchConfigure.f42267a.value().b(AdScene.BANNER))) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit I2(DiscoverFragment discoverFragment) {
        String str;
        VideoPreview videoPreview;
        VideoPreview videoPreview2;
        VideoPreview videoPreview3;
        VideoPreviewInfo Z1 = discoverFragment.Z1();
        Logger logger = Logger.f41511a;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("discoverFragment resume,url: ");
        if (Z1 != null) {
            str = Z1.getUrl();
        } else {
            str = null;
        }
        sb2.append(str);
        sb2.append(",view: ");
        if (Z1 != null) {
            videoPreview = Z1.getVideoPreview();
        } else {
            videoPreview = null;
        }
        sb2.append(videoPreview);
        logger.h("VideoPreviewManager", sb2.toString());
        if (Z1 != null) {
            videoPreview2 = Z1.getVideoPreview();
        } else {
            videoPreview2 = null;
        }
        VideoPreviewInfo d10 = discoverFragment.g2().d();
        if (d10 != null) {
            videoPreview3 = d10.getVideoPreview();
        } else {
            videoPreview3 = null;
        }
        if (Intrinsics.areEqual(videoPreview2, videoPreview3)) {
            logger.h("VideoPreviewManager", "discoverFragment resume,videoPreviewInfo is same，run resume");
            discoverFragment.g2().l();
        } else {
            logger.h("VideoPreviewManager", "discoverFragment resume,videoPreviewInfo is not same，run previewVideoPlay");
            discoverFragment.g2().g(null);
            discoverFragment.r2("onResume, getVideoPreviewInfo is not null");
        }
        return Unit.f60915a;
    }

    private final boolean J2() {
        if (this.V != 0 || ABTestFactory.f42224a.c1().abTestIntValue() != 1) {
            return false;
        }
        ud.a aVar = ud.a.f68411a;
        if (aVar.h()) {
            return false;
        }
        return aVar.i();
    }

    private final void K1() {
        List<DiscoverModule> d02;
        Object obj;
        if (J2() && (d02 = d0()) != null) {
            synchronized (d02) {
                try {
                    if (d02.size() < 1) {
                        return;
                    }
                    Iterator<T> it = d02.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            obj = it.next();
                            if (((DiscoverModule) obj).getStyle() == -22) {
                                break;
                            }
                        } else {
                            obj = null;
                            break;
                        }
                    }
                    if (((DiscoverModule) obj) != null) {
                        return;
                    }
                    r("addLowSkuTemplateNotification");
                    EventManager.s0(EventManager.f42463a, "discover_not_show", null, 0L, 6, null);
                    BaseAdapter<DiscoverModule> Z = Z();
                    if (Z != null) {
                        try {
                            Z.b(Q1(), new DiscoverModule(-22, "", null, null, false, 0, null, null, null, null, null, null, 0, null, null, 0, null, null, null, null, null, 0, null, 8388604, null));
                        } catch (Throwable th2) {
                            th = th2;
                            throw th;
                        }
                    }
                    M2(d02, 0);
                    Unit unit = Unit.f60915a;
                } catch (Throwable th3) {
                    th = th3;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void K2(String str, ModuleInfo moduleInfo, BaseShorts baseShorts) {
        int i10;
        ImmersionActivity.a aVar = ImmersionActivity.V0;
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        ImmersionParams immersionParams = new ImmersionParams();
        immersionParams.setFrom(str);
        if (baseShorts.getEpisodeNum() != 0) {
            i10 = 1;
        } else {
            i10 = 3;
        }
        immersionParams.setType(i10);
        if (baseShorts.getEpisodeNum() != 0) {
            immersionParams.setEpisodeNum(baseShorts.getEpisodeNum());
        }
        ImmersionShortsInfo immersionShortsInfo = new ImmersionShortsInfo();
        immersionShortsInfo.setShortsId(baseShorts.getId());
        immersionShortsInfo.setShortPlayCode(baseShorts.getShortPlayCode());
        immersionShortsInfo.setShortsName(baseShorts.getShortPlayName());
        immersionShortsInfo.setCover(baseShorts.getPicUrl());
        immersionShortsInfo.setUpack(baseShorts.getUpack());
        immersionParams.setShortsInfo(immersionShortsInfo);
        immersionParams.setModuleInfo(moduleInfo);
        Unit unit = Unit.f60915a;
        aVar.a(requireContext, immersionParams);
    }

    private final void L1(DiscoverModule discoverModule) {
        List<DiscoverShorts> shortPlayResponseList;
        List<DiscoverModule> d02;
        Integer num;
        DiscoverModule discoverModule2;
        int i10;
        int i11;
        if (discoverModule != null && (shortPlayResponseList = discoverModule.getShortPlayResponseList()) != null && !shortPlayResponseList.isEmpty() && (d02 = d0()) != null) {
            ListIterator<DiscoverModule> listIterator = d02.listIterator(d02.size());
            while (true) {
                num = null;
                if (listIterator.hasPrevious()) {
                    discoverModule2 = listIterator.previous();
                    if (discoverModule2.getStyle() != -100) {
                        break;
                    }
                } else {
                    discoverModule2 = null;
                    break;
                }
            }
            DiscoverModule discoverModule3 = discoverModule2;
            if (discoverModule3 == null || !Intrinsics.areEqual(discoverModule.getBannerId(), discoverModule3.getBannerId())) {
                return;
            }
            int style = discoverModule3.getStyle();
            if (style != -32) {
                if (style != -20) {
                    if (style == 8) {
                        List<DiscoverModule> d03 = d0();
                        int i12 = -1;
                        int i13 = 0;
                        if (d03 != null) {
                            ListIterator<DiscoverModule> listIterator2 = d03.listIterator(d03.size());
                            while (true) {
                                if (listIterator2.hasPrevious()) {
                                    if (listIterator2.previous().getStyle() == -8) {
                                        i10 = listIterator2.nextIndex();
                                        break;
                                    }
                                } else {
                                    i10 = -1;
                                    break;
                                }
                            }
                        } else {
                            i10 = 0;
                        }
                        List<DiscoverModule> d04 = d0();
                        if (d04 != null) {
                            ListIterator<DiscoverModule> listIterator3 = d04.listIterator(d04.size());
                            while (true) {
                                if (listIterator3.hasPrevious()) {
                                    if (listIterator3.previous().getStyle() == 8) {
                                        i12 = listIterator3.nextIndex();
                                        break;
                                    }
                                } else {
                                    break;
                                }
                            }
                        } else {
                            i12 = 0;
                        }
                        Integer valueOf = Integer.valueOf(i12 - i10);
                        if (valueOf.intValue() >= 0) {
                            num = valueOf;
                        }
                        if (num != null) {
                            i11 = num.intValue();
                        } else {
                            i11 = 0;
                        }
                        if (i10 != 0) {
                            i13 = i11;
                        }
                        List<DiscoverModule> U1 = U1(discoverModule, true, i13);
                        for (DiscoverModule discoverModule4 : U1) {
                            discoverModule4.setPosition(discoverModule4.getPosition() + discoverModule3.getPosition() + 1);
                        }
                        M1(this, discoverModule3, U1);
                        return;
                    }
                    return;
                }
                List<DiscoverModule> X1 = X1(discoverModule, new Function1() { // from class: com.startshorts.androidplayer.ui.fragment.discover.g
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        Unit O1;
                        O1 = DiscoverFragment.O1((DiscoverModule) obj);
                        return O1;
                    }
                });
                for (DiscoverModule discoverModule5 : X1) {
                    discoverModule5.setPosition(discoverModule5.getPosition() + discoverModule3.getPosition() + 1);
                }
                M1(this, discoverModule3, X1);
                return;
            }
            List<DiscoverModule> X12 = X1(discoverModule, new Function1() { // from class: com.startshorts.androidplayer.ui.fragment.discover.f
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit N1;
                    N1 = DiscoverFragment.N1((DiscoverModule) obj);
                    return N1;
                }
            });
            for (DiscoverModule discoverModule6 : X12) {
                discoverModule6.setPosition(discoverModule6.getPosition() + discoverModule3.getPosition() + 1);
            }
            M1(this, discoverModule3, X12);
        }
    }

    private final kotlinx.coroutines.r L2(List<DiscoverModule> list) {
        return CoroutineUtil.l(CoroutineUtil.f48072a, "showModules", false, new DiscoverFragment$showModules$1(this, list, null), 2, null);
    }

    private static final void M1(DiscoverFragment discoverFragment, DiscoverModule discoverModule, List<? extends DiscoverModule> list) {
        int i10;
        List<DiscoverModule> d02 = discoverFragment.d0();
        if (d02 != null) {
            i10 = d02.indexOf(discoverModule);
        } else {
            i10 = -1;
        }
        BaseAdapter<DiscoverModule> Z = discoverFragment.Z();
        if (Z != null) {
            Z.d(i10 + 1, list);
        }
        discoverFragment.D0(discoverFragment.u0() + 1);
    }

    private final void M2(List<DiscoverModule> list, int i10) {
        Iterator<DiscoverModule> it = list.iterator();
        int i11 = 0;
        while (true) {
            if (it.hasNext()) {
                if (it.next().getStyle() == -22) {
                    break;
                }
                i11++;
            } else {
                i11 = -1;
                break;
            }
        }
        if (i11 > 0) {
            P2(list, i11 + 1, i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit N1(DiscoverModule discoverShorts2DiscoverModules) {
        Intrinsics.checkNotNullParameter(discoverShorts2DiscoverModules, "$this$discoverShorts2DiscoverModules");
        discoverShorts2DiscoverModules.setStyle(-32);
        return Unit.f60915a;
    }

    private final void N2(List<? extends DiscoverModule> list, Function1<? super DiscoverModule, Boolean> function1) {
        DiscoverModuleAdapter discoverModuleAdapter;
        BaseAdapter<DiscoverModule> Z = Z();
        if (Z instanceof DiscoverModuleAdapter) {
            discoverModuleAdapter = (DiscoverModuleAdapter) Z;
        } else {
            discoverModuleAdapter = null;
        }
        if (discoverModuleAdapter == null) {
            return;
        }
        List<DiscoverModule> g12 = CollectionsKt.g1(list);
        z2(g12);
        D2(g12);
        ArrayList arrayList = new ArrayList();
        for (DiscoverModule discoverModule : g12) {
            String bannerId = discoverModule.getBannerId();
            if (bannerId != null) {
                arrayList.add(bannerId);
            }
        }
        Set i12 = CollectionsKt.i1(arrayList);
        ArrayList arrayList2 = new ArrayList();
        for (DiscoverModule discoverModule2 : discoverModuleAdapter.m()) {
            String bannerId2 = discoverModule2.getBannerId();
            if (bannerId2 != null) {
                arrayList2.add(bannerId2);
            }
        }
        Set i13 = CollectionsKt.i1(arrayList2);
        if (!kotlin.collections.y0.k(i12, i13).isEmpty()) {
            RecyclerView g02 = g0();
            if (g02 != null) {
                g02.smoothScrollToPosition(0);
            }
            X0();
            L2(g12);
            return;
        }
        final Set k10 = kotlin.collections.y0.k(i13, i12);
        if (!k10.isEmpty()) {
            r("refreshModule -> start removeModule,bannerIdsToBeRemoved=" + k10);
            C2(new Function1() { // from class: com.startshorts.androidplayer.ui.fragment.discover.e
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    boolean O2;
                    O2 = DiscoverFragment.O2(k10, (DiscoverModule) obj);
                    return Boolean.valueOf(O2);
                }
            });
        }
        ArrayList<DiscoverModule> arrayList3 = new ArrayList();
        for (Object obj : list) {
            if (function1.invoke((DiscoverModule) obj).booleanValue()) {
                arrayList3.add(obj);
            }
        }
        for (DiscoverModule discoverModule3 : arrayList3) {
            ArrayList<DiscoverModule> arrayList4 = new ArrayList();
            for (Object obj2 : discoverModuleAdapter.m()) {
                if (Intrinsics.areEqual(((DiscoverModule) obj2).getBannerId(), discoverModule3.getBannerId())) {
                    arrayList4.add(obj2);
                }
            }
            for (DiscoverModule discoverModule4 : arrayList4) {
                if (discoverModule4 instanceof DiscoverTitleModule) {
                    DiscoverTitleModule discoverTitleModule = (DiscoverTitleModule) discoverModule4;
                    discoverTitleModule.setTitle(discoverModule3.getTitle());
                    discoverTitleModule.setShowMore(discoverModule3.isShowMore());
                    if (discoverModule4.getStyle() == -13) {
                        discoverModule4.setValidStartTime(discoverModule3.getValidStartTime());
                        discoverModule4.setValidEndTime(discoverModule3.getValidEndTime());
                    } else if (discoverTitleModule.getContentModuleStyle() == 11) {
                        discoverModule4.setCategoryVOList(discoverModule3.getCategoryVOList());
                    }
                } else {
                    r("refreshModule -> start update module,formattedModuleItem=" + discoverModule4);
                    discoverModule4.update(discoverModule3);
                }
                discoverModuleAdapter.notifyItemChanged(discoverModuleAdapter.m().indexOf(discoverModule4));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit O1(DiscoverModule discoverShorts2DiscoverModules) {
        Intrinsics.checkNotNullParameter(discoverShorts2DiscoverModules, "$this$discoverShorts2DiscoverModules");
        discoverShorts2DiscoverModules.setStyle(-20);
        discoverShorts2DiscoverModules.setTopMargin(fk.z.f51786a.b());
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean O2(Set set, DiscoverModule it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return CollectionsKt.g0(set, it.getBannerId());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void P1(List<DiscoverModule> list) {
        Integer valueOf;
        List q10 = CollectionsKt.q(-20, -32, 8);
        int i10 = 0;
        int i11 = -1;
        Integer num = null;
        for (Object obj : list) {
            int i12 = i10 + 1;
            if (i10 < 0) {
                CollectionsKt.y();
            }
            DiscoverModule discoverModule = (DiscoverModule) obj;
            if (i11 == -1 && q10.contains(Integer.valueOf(discoverModule.getStyle()))) {
                num = Integer.valueOf(discoverModule.getStyle());
                i11 = i10;
            }
            if (i11 != -1) {
                int style = discoverModule.getStyle();
                if (num == null || style != num.intValue()) {
                    valueOf = Integer.valueOf(i10 - 1);
                } else if (i10 == list.size() - 1) {
                    valueOf = Integer.valueOf(i10);
                } else {
                    valueOf = null;
                }
                if (valueOf != null) {
                    r("calculateModuleStartEndPosition -> style=" + num + ",position=(" + i11 + ',' + valueOf + ')');
                    for (DiscoverModule discoverModule2 : list.subList(i11, valueOf.intValue() + 1)) {
                        discoverModule2.setModuleStartPosition(i11);
                        discoverModule2.setModuleEndPosition(valueOf.intValue());
                    }
                    i11 = -1;
                    num = null;
                }
            }
            i10 = i12;
        }
    }

    private final void P2(List<DiscoverModule> list, final int i10, int i11) {
        RecyclerView g02;
        DiscoverModule discoverModule = (DiscoverModule) CollectionsKt.t0(list, i10);
        if (discoverModule != null) {
            discoverModule.setTopMargin(i11);
            if (i10 != -1 && (g02 = g0()) != null) {
                g02.post(new Runnable() { // from class: com.startshorts.androidplayer.ui.fragment.discover.l
                    @Override // java.lang.Runnable
                    public final void run() {
                        DiscoverFragment.Q2(DiscoverFragment.this, i10);
                    }
                });
            }
        }
    }

    private final int Q1() {
        return 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Q2(DiscoverFragment discoverFragment, int i10) {
        BaseAdapter<DiscoverModule> Z = discoverFragment.Z();
        if (Z != null) {
            Z.notifyItemChanged(i10);
        }
    }

    /* JADX WARN: Type inference failed for: r7v16, types: [T, java.util.ArrayList] */
    private final void R1(List<RefreshEpisodeNumEvent> list) {
        ArrayList arrayList;
        RefreshEpisodeNumEvent refreshEpisodeNumEvent;
        DiscoverModuleAdapter discoverModuleAdapter;
        DiscoverShorts discoverShorts;
        Object obj;
        zg.c cVar = zg.c.f71648a;
        if (!cVar.c() || !cVar.d()) {
            List<DiscoverModule> d02 = d0();
            if (d02 != null) {
                arrayList = new ArrayList();
                for (Object obj2 : d02) {
                    if (((DiscoverModule) obj2).getRuleCode() == 3) {
                        arrayList.add(obj2);
                    }
                }
            } else {
                arrayList = null;
            }
            if (arrayList != null && !arrayList.isEmpty()) {
                final Ref.ObjectRef objectRef = new Ref.ObjectRef();
                List<RefreshEpisodeNumEvent> list2 = list;
                for (RefreshEpisodeNumEvent refreshEpisodeNumEvent2 : list2) {
                    ArrayList<DiscoverModule> arrayList2 = new ArrayList();
                    for (Object obj3 : arrayList) {
                        DiscoverModule discoverModule = (DiscoverModule) obj3;
                        if (discoverModule.getStyle() == 5 || discoverModule.getStyle() == 3) {
                            List<DiscoverShorts> shortPlayResponseList = discoverModule.getShortPlayResponseList();
                            if (shortPlayResponseList != null) {
                                Iterator<T> it = shortPlayResponseList.iterator();
                                while (true) {
                                    if (it.hasNext()) {
                                        obj = it.next();
                                        if (((DiscoverShorts) obj).getId() == refreshEpisodeNumEvent2.getShortsId()) {
                                            break;
                                        }
                                    } else {
                                        obj = null;
                                        break;
                                    }
                                }
                                discoverShorts = (DiscoverShorts) obj;
                            } else {
                                discoverShorts = null;
                            }
                            if (discoverShorts == null) {
                                arrayList2.add(obj3);
                            }
                        }
                    }
                    ArrayList arrayList3 = new ArrayList();
                    for (DiscoverModule discoverModule2 : arrayList2) {
                        String bannerId = discoverModule2.getBannerId();
                        if (bannerId != null) {
                            arrayList3.add(bannerId);
                        }
                    }
                    List d12 = CollectionsKt.d1(arrayList3);
                    if (!d12.isEmpty()) {
                        if (objectRef.element == 0) {
                            objectRef.element = new ArrayList();
                        }
                        List list3 = (List) objectRef.element;
                        if (list3 != null) {
                            list3.addAll(d12);
                        }
                    }
                }
                List list4 = (List) objectRef.element;
                if (list4 != null) {
                    HashSet hashSet = new HashSet();
                    ArrayList arrayList4 = new ArrayList();
                    for (Object obj4 : list4) {
                        if (hashSet.add((String) obj4)) {
                            arrayList4.add(obj4);
                        }
                    }
                }
                Collection collection = (Collection) objectRef.element;
                if (collection != null && !collection.isEmpty()) {
                    Logger.f41511a.h("DiscoverFragment", "consumeRefreshNumEvents -> bannerIds(" + objectRef.element + ')');
                    y2(new Function1() { // from class: com.startshorts.androidplayer.ui.fragment.discover.s
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj5) {
                            boolean S1;
                            S1 = DiscoverFragment.S1(Ref.ObjectRef.this, (DiscoverModule) obj5);
                            return Boolean.valueOf(S1);
                        }
                    });
                    return;
                }
                ArrayList<Number> arrayList5 = new ArrayList();
                for (RefreshEpisodeNumEvent refreshEpisodeNumEvent3 : list2) {
                    if (!arrayList5.contains(Integer.valueOf(refreshEpisodeNumEvent3.getShortsId()))) {
                        arrayList5.add(Integer.valueOf(refreshEpisodeNumEvent3.getShortsId()));
                    }
                }
                for (Number number : arrayList5) {
                    int intValue = number.intValue();
                    ListIterator<RefreshEpisodeNumEvent> listIterator = list.listIterator(list.size());
                    while (true) {
                        if (listIterator.hasPrevious()) {
                            refreshEpisodeNumEvent = listIterator.previous();
                            if (refreshEpisodeNumEvent.getShortsId() == intValue) {
                                break;
                            }
                        } else {
                            refreshEpisodeNumEvent = null;
                            break;
                        }
                    }
                    RefreshEpisodeNumEvent refreshEpisodeNumEvent4 = refreshEpisodeNumEvent;
                    if (refreshEpisodeNumEvent4 != null) {
                        Logger.f41511a.h("DiscoverFragment", "consumeRefreshNumEvents -> shortId(" + refreshEpisodeNumEvent4.getShortsId() + ") episodeNum(" + refreshEpisodeNumEvent4.getEpisodeNum() + ')');
                        BaseAdapter<DiscoverModule> Z = Z();
                        if (Z instanceof DiscoverModuleAdapter) {
                            discoverModuleAdapter = (DiscoverModuleAdapter) Z;
                        } else {
                            discoverModuleAdapter = null;
                        }
                        if (discoverModuleAdapter != null) {
                            discoverModuleAdapter.F0(refreshEpisodeNumEvent4.getShortsId(), refreshEpisodeNumEvent4.getEpisodeNum());
                        }
                    }
                }
                return;
            }
            R();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean S1(Ref.ObjectRef objectRef, DiscoverModule it) {
        Intrinsics.checkNotNullParameter(it, "it");
        T t10 = objectRef.element;
        Intrinsics.checkNotNull(t10);
        return CollectionsKt.g0((Iterable) t10, it.getBannerId());
    }

    private final DiscoverModule T1(int i10) {
        DiscoverModule discoverModule = new DiscoverModule(-100, "STYLE_EMPTY_SPACE", null, null, false, 0, null, null, null, null, null, null, 0, null, null, 0, null, null, null, null, null, 0, null, 8388604, null);
        discoverModule.setTopMargin(i10);
        return discoverModule;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final List<DiscoverModule> U1(DiscoverModule discoverModule, boolean z10, int i10) {
        ArrayList arrayList;
        int i11;
        Integer id2;
        List<DiscoverShorts> list;
        DiscoverModule discoverModule2;
        DiscoverModule discoverModule3;
        int i12 = 0;
        if (!z10) {
            this.Z.clear();
            this.f45856b0 = 0;
            List<PlayListDiscoverRanking> rankingResponseList = discoverModule.getRankingResponseList();
            if (rankingResponseList != null) {
                this.Z.addAll(rankingResponseList);
            }
            this.f45855a0.clear();
            List<TagListInfo> labelRankingList = discoverModule.getLabelRankingList();
            if (labelRankingList != null) {
                for (TagListInfo tagListInfo : labelRankingList) {
                    this.f45855a0.put(Integer.valueOf(tagListInfo.getPosition()), tagListInfo);
                }
                Unit unit = Unit.f60915a;
            }
            List<TagRelatedShorts> labelRelatedShortPlayRankingList = discoverModule.getLabelRelatedShortPlayRankingList();
            if (labelRelatedShortPlayRankingList != null) {
                for (TagRelatedShorts tagRelatedShorts : labelRelatedShortPlayRankingList) {
                    this.f45855a0.put(Integer.valueOf(tagRelatedShorts.getPosition()), tagRelatedShorts);
                }
                Unit unit2 = Unit.f60915a;
            }
        }
        List<PlayListDiscoverRanking> list2 = this.Z;
        ArrayList arrayList2 = new ArrayList(CollectionsKt.z(list2, 10));
        int i13 = 0;
        for (Object obj : list2) {
            int i14 = i13 + 1;
            if (i13 < 0) {
                CollectionsKt.y();
            }
            PlayListDiscoverRanking playListDiscoverRanking = (PlayListDiscoverRanking) obj;
            arrayList2.add(new DiscoverModule(-8, discoverModule.getTitle(), discoverModule.getBannerId() + '_' + i13, playListDiscoverRanking.getShortPlayResponseList(), false, 0, null, null, null, CollectionsKt.t(playListDiscoverRanking), null, null, 0, null, null, 0, null, null, null, null, discoverModule.getUpack(), 0, discoverModule.getDisableBannerTitle(), 3145200, null));
            i13 = i14;
        }
        List<DiscoverShorts> shortPlayResponseList = discoverModule.getShortPlayResponseList();
        if (shortPlayResponseList != null) {
            ArrayList arrayList3 = new ArrayList();
            int i15 = 0;
            for (Object obj2 : shortPlayResponseList) {
                int i16 = i15 + 1;
                if (i15 < 0) {
                    CollectionsKt.y();
                }
                DiscoverShorts discoverShorts = (DiscoverShorts) obj2;
                String title = discoverModule.getTitle();
                String bannerId = discoverModule.getBannerId();
                List<DiscoverShorts> shortPlayResponseList2 = discoverModule.getShortPlayResponseList();
                if (shortPlayResponseList2 != null) {
                    List<DiscoverShorts> list3 = shortPlayResponseList2;
                    for (DiscoverShorts discoverShorts2 : list3) {
                        discoverShorts2.setModuleId(discoverModule.getBannerId());
                        discoverShorts2.setModuleName(discoverModule.getTitle());
                    }
                    list = list3;
                } else {
                    list = null;
                }
                DiscoverModule discoverModule4 = new DiscoverModule(8, title, bannerId, list, false, 0, null, null, null, null, null, null, 0, null, null, 0, null, null, null, null, null, 0, null, 8388592, null);
                discoverShorts.setModuleId(discoverModule.getBannerId());
                discoverShorts.setModuleName(discoverModule.getTitle());
                discoverModule4.setShorts(discoverShorts);
                Unit unit3 = Unit.f60915a;
                List t10 = CollectionsKt.t(discoverModule4);
                if (!z10) {
                    int i17 = this.f45856b0;
                    if (i15 == i17 * 5 && (discoverModule3 = (DiscoverModule) CollectionsKt.t0(arrayList2, i17)) != null) {
                        this.f45856b0++;
                        t10.add(discoverModule3);
                    }
                } else if (this.f45856b0 < this.Z.size() && (i16 + i10) % 5 == 0 && (discoverModule2 = (DiscoverModule) CollectionsKt.t0(arrayList2, this.f45856b0)) != null) {
                    this.f45856b0++;
                    t10.add(discoverModule2);
                }
                CollectionsKt.E(arrayList3, t10);
                i15 = i16;
            }
            arrayList = arrayList3;
        } else {
            arrayList = null;
        }
        List<DiscoverModule> asMutableList = TypeIntrinsics.asMutableList(arrayList);
        for (Map.Entry entry : kotlin.collections.p0.h(this.f45855a0).entrySet()) {
            List<DiscoverModule> list4 = asMutableList;
            if (list4 != null && !list4.isEmpty()) {
                SelectableItem selectableItem = (SelectableItem) entry.getValue();
                if (selectableItem instanceof TagListInfo) {
                    TagListInfo tagListInfo2 = (TagListInfo) selectableItem;
                    if (tagListInfo2.getPosition() > 0 && tagListInfo2.getPosition() - 1 <= asMutableList.size() && !tagListInfo2.getHasInsert()) {
                        tagListInfo2.setHasInsert(true);
                        asMutableList.add(tagListInfo2.getPosition() - 1, new DiscoverModule(-10, discoverModule.getTitle(), discoverModule.getBannerId() + '_' + (tagListInfo2.getPosition() - 1), null, false, 0, null, null, null, null, CollectionsKt.t(selectableItem), null, 0, null, null, 0, null, null, null, null, discoverModule.getUpack(), 0, null, 7339000, null));
                    }
                } else if (selectableItem instanceof TagRelatedShorts) {
                    TagRelatedShorts tagRelatedShorts2 = (TagRelatedShorts) selectableItem;
                    if (tagRelatedShorts2.getPosition() > 0 && tagRelatedShorts2.getPosition() - 1 <= asMutableList.size() && !tagRelatedShorts2.getHasInsert()) {
                        tagRelatedShorts2.setHasInsert(true);
                        int position = tagRelatedShorts2.getPosition() - 1;
                        String title2 = discoverModule.getTitle();
                        String str = discoverModule.getBannerId() + '_' + (tagRelatedShorts2.getPosition() - 1);
                        String upack = discoverModule.getUpack();
                        List t11 = CollectionsKt.t(selectableItem);
                        ShortsLabel label = tagRelatedShorts2.getLabel();
                        if (label != null && (id2 = label.getId()) != null) {
                            i11 = id2.intValue();
                        } else {
                            i11 = -1;
                        }
                        asMutableList.add(position, new DiscoverModule(-9, title2, str, null, false, 0, null, null, null, null, null, t11, 0, null, null, 0, null, null, null, null, upack, i11, null, 5240824, null));
                    }
                }
            }
        }
        if (asMutableList != null) {
            for (Object obj3 : asMutableList) {
                int i18 = i12 + 1;
                if (i12 < 0) {
                    CollectionsKt.y();
                }
                ((DiscoverModule) obj3).setPosition(i12);
                i12 = i18;
            }
            Unit unit4 = Unit.f60915a;
        }
        if (asMutableList == null) {
            return new ArrayList();
        }
        return asMutableList;
    }

    private final DiscoverModule V1(int i10, DiscoverModule discoverModule) {
        int i11;
        fk.z zVar = fk.z.f51786a;
        int i12 = zVar.i();
        DiscoverTitleModule discoverTitleModule = new DiscoverTitleModule(discoverModule.getBannerId(), discoverModule.getTitle(), discoverModule.isShowMore(), i10, null, null, 48, null);
        switch (discoverModule.getStyle()) {
            case 10:
                discoverTitleModule.setStyle(-12);
                discoverTitleModule.setIconRes(Integer.valueOf(R$drawable.ic_discover_module_title_hot));
                break;
            case 11:
                discoverTitleModule.setCategoryVOList(discoverModule.getCategoryVOList());
                discoverTitleModule.setBackgroundRes(Integer.valueOf(R$drawable.bg_discover_module_category_title));
                discoverTitleModule.setBottomMargin(zVar.s());
                i12 = zVar.c();
                break;
            case 12:
                discoverTitleModule.setStyle(-13);
                discoverTitleModule.setValidStartTime(discoverModule.getValidStartTime());
                discoverTitleModule.setValidEndTime(discoverModule.getValidEndTime());
                break;
        }
        discoverTitleModule.setRecommendId(discoverModule.getRecommendId());
        if (discoverModule.isShowMore()) {
            i11 = 1;
        } else {
            i11 = -1;
        }
        discoverTitleModule.setPosition(i11);
        discoverTitleModule.setTopMargin(i12);
        return discoverTitleModule;
    }

    private final List<DiscoverModule> W1(int i10, int i11, DiscoverModule discoverModule) {
        List j12;
        ArrayList arrayList = new ArrayList();
        List<DiscoverShorts> shortPlayResponseList = discoverModule.getShortPlayResponseList();
        if (shortPlayResponseList != null && (j12 = CollectionsKt.j1(shortPlayResponseList, i11, i11, true)) != null) {
            int i12 = 0;
            for (Object obj : j12) {
                int i13 = i12 + 1;
                if (i12 < 0) {
                    CollectionsKt.y();
                }
                String title = discoverModule.getTitle();
                String bannerId = discoverModule.getBannerId();
                Boolean disableBannerTitle = discoverModule.getDisableBannerTitle();
                String upack = discoverModule.getUpack();
                List<DiscoverShorts> list = (List) obj;
                for (DiscoverShorts discoverShorts : list) {
                    discoverShorts.setModuleId(discoverModule.getBannerId());
                    discoverShorts.setModuleName(discoverModule.getTitle());
                    discoverShorts.setRecommendId(discoverModule.getRecommendId());
                }
                DiscoverModule discoverModule2 = new DiscoverModule(i10, title, bannerId, CollectionsKt.g1(list), false, 0, null, null, null, null, null, null, 0, null, null, 0, null, null, null, null, upack, 0, disableBannerTitle, 3145712, null);
                arrayList.add(discoverModule2);
                discoverModule2.setPosition(i12);
                discoverModule2.setRuleCode(discoverModule.getRuleCode());
                discoverModule2.setRecommendId(discoverModule.getRecommendId());
                i12 = i13;
            }
        }
        return arrayList;
    }

    private final List<DiscoverModule> X1(DiscoverModule discoverModule, Function1<? super DiscoverModule, Unit> function1) {
        List<DiscoverShorts> list;
        List<DiscoverShorts> shortPlayResponseList = discoverModule.getShortPlayResponseList();
        if (shortPlayResponseList != null) {
            List<DiscoverShorts> list2 = shortPlayResponseList;
            ArrayList arrayList = new ArrayList(CollectionsKt.z(list2, 10));
            int i10 = 0;
            for (Object obj : list2) {
                int i11 = i10 + 1;
                if (i10 < 0) {
                    CollectionsKt.y();
                }
                DiscoverShorts discoverShorts = (DiscoverShorts) obj;
                String title = discoverModule.getTitle();
                String bannerId = discoverModule.getBannerId();
                String upack = discoverModule.getUpack();
                Boolean disableBannerTitle = discoverModule.getDisableBannerTitle();
                List<DiscoverShorts> shortPlayResponseList2 = discoverModule.getShortPlayResponseList();
                if (shortPlayResponseList2 != null) {
                    List<DiscoverShorts> list3 = shortPlayResponseList2;
                    for (DiscoverShorts discoverShorts2 : list3) {
                        discoverShorts2.setModuleId(discoverModule.getBannerId());
                        discoverShorts2.setModuleName(discoverModule.getTitle());
                        discoverShorts2.setRecommendId(discoverModule.getRecommendId());
                    }
                    list = list3;
                } else {
                    list = null;
                }
                DiscoverModule discoverModule2 = new DiscoverModule(-20, title, bannerId, list, false, 0, null, null, null, null, null, null, 0, null, null, 0, null, null, null, null, upack, 0, disableBannerTitle, 3145712, null);
                discoverModule2.setPosition(i10);
                discoverShorts.setModuleId(discoverModule.getBannerId());
                discoverShorts.setModuleName(discoverModule.getTitle());
                discoverShorts.setRecommendId(discoverModule.getRecommendId());
                discoverModule2.setShorts(discoverShorts);
                discoverModule2.setRuleCode(discoverModule.getRuleCode());
                discoverModule2.setRecommendId(discoverModule.getRecommendId());
                function1.invoke(discoverModule2);
                arrayList.add(discoverModule2);
                i10 = i11;
            }
            return arrayList;
        }
        return CollectionsKt.n();
    }

    private final Set<String> Y1(List<Integer> list) {
        DiscoverModuleAdapter discoverModuleAdapter;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        BaseAdapter<DiscoverModule> Z = Z();
        if (Z instanceof DiscoverModuleAdapter) {
            discoverModuleAdapter = (DiscoverModuleAdapter) Z;
        } else {
            discoverModuleAdapter = null;
        }
        if (discoverModuleAdapter == null) {
            return linkedHashSet;
        }
        ArrayList<DiscoverModule> arrayList = new ArrayList();
        for (Object obj : discoverModuleAdapter.m()) {
            if (((DiscoverModule) obj).getStyle() == 12) {
                arrayList.add(obj);
            }
        }
        for (DiscoverModule discoverModule : arrayList) {
            List<DiscoverShorts> shortPlayResponseList = discoverModule.getShortPlayResponseList();
            if (shortPlayResponseList != null) {
                Iterator<T> it = shortPlayResponseList.iterator();
                while (true) {
                    if (it.hasNext()) {
                        if (list.contains(Integer.valueOf(((DiscoverShorts) it.next()).getId()))) {
                            linkedHashSet.add(discoverModule.getBannerId());
                            break;
                        }
                    } else {
                        break;
                    }
                }
            }
        }
        return linkedHashSet;
    }

    private final VideoPreviewInfo Z1() {
        StaggeredGridLayoutManager staggeredGridLayoutManager;
        RecyclerView.ViewHolder findViewHolderForAdapterPosition;
        DiscoverModuleAdapter.l lVar;
        VideoPreviewInfo videoPreviewInfo;
        View view;
        int[] iArr = new int[2];
        int[] iArr2 = new int[2];
        RecyclerView.LayoutManager f02 = f0();
        if (f02 instanceof StaggeredGridLayoutManager) {
            staggeredGridLayoutManager = (StaggeredGridLayoutManager) f02;
        } else {
            staggeredGridLayoutManager = null;
        }
        if (staggeredGridLayoutManager != null) {
            staggeredGridLayoutManager.findFirstVisibleItemPositions(iArr);
        }
        if (staggeredGridLayoutManager != null) {
            staggeredGridLayoutManager.findLastVisibleItemPositions(iArr2);
        }
        boolean z10 = false;
        int min = Math.min(iArr[0], iArr[1]);
        int max = Math.max(iArr2[0], iArr2[1]);
        if (min > max) {
            return null;
        }
        VideoPreviewInfo videoPreviewInfo2 = null;
        while (true) {
            RecyclerView g02 = g0();
            if (g02 != null && (findViewHolderForAdapterPosition = g02.findViewHolderForAdapterPosition(min)) != null) {
                if (findViewHolderForAdapterPosition instanceof DiscoverModuleAdapter.l) {
                    lVar = (DiscoverModuleAdapter.l) findViewHolderForAdapterPosition;
                } else {
                    lVar = null;
                }
                if (lVar != null) {
                    videoPreviewInfo = lVar.a();
                } else {
                    videoPreviewInfo = null;
                }
                if (id.a.f53392a.c()) {
                    r("findVisibleVideoPreviewInfo index(" + min + ") info(" + videoPreviewInfo + ')');
                }
                if (videoPreviewInfo != null) {
                    ViewParent parent = videoPreviewInfo.getVideoPreview().getParent();
                    if (parent instanceof View) {
                        view = (View) parent;
                    } else {
                        view = null;
                    }
                    if (a2(this, view)) {
                        r("findVisibleVideoPreviewInfo:" + min);
                        z10 = true;
                        videoPreviewInfo2 = videoPreviewInfo;
                    }
                }
            }
            if (!z10 && min != max) {
                min++;
            }
        }
        return videoPreviewInfo2;
    }

    private static final boolean a2(DiscoverFragment discoverFragment, View view) {
        boolean z10 = false;
        if (view != null) {
            int[] iArr = new int[2];
            view.getLocationOnScreen(iArr);
            int i10 = iArr[1];
            int height = view.getHeight() + i10;
            if (i10 >= discoverFragment.X && height <= discoverFragment.f2()) {
                z10 = true;
            }
            discoverFragment.r("isPreviewVisible:(" + i10 + ") mSearchBottom(" + discoverFragment.X + ") viewTop(" + i10 + ") mRecyclerViewBottom(" + discoverFragment.f2() + ") flag(" + z10 + ')');
        }
        return z10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<DiscoverModule> b2(List<DiscoverModule> list) {
        int J;
        int t10;
        int J2;
        int t11;
        List<DiscoverModule> e10;
        int i10;
        List n10;
        int i11;
        D2(list);
        DiscoverModule discoverModule = (DiscoverModule) CollectionsKt.D0(list);
        if (discoverModule != null) {
            List<DiscoverShorts> shortPlayResponseList = discoverModule.getShortPlayResponseList();
            if (shortPlayResponseList != null) {
                i11 = shortPlayResponseList.size();
            } else {
                i11 = 0;
            }
            this.P = i11;
        }
        List<DiscoverModule> list2 = list;
        ArrayList<DiscoverModule> arrayList = new ArrayList();
        for (Object obj : list2) {
            if (((DiscoverModule) obj).getStyle() == 4) {
                arrayList.add(obj);
            }
        }
        for (DiscoverModule discoverModule2 : arrayList) {
            int propagandaPattern = discoverModule2.getPropagandaPattern();
            if (propagandaPattern != 1) {
                if (propagandaPattern != 2) {
                    if (propagandaPattern != 3) {
                        if (propagandaPattern != 4) {
                            discoverModule2.setStyle(4);
                        } else {
                            discoverModule2.setStyle(-33);
                        }
                    } else {
                        discoverModule2.setStyle(-31);
                    }
                } else {
                    discoverModule2.setStyle(-30);
                }
            } else {
                discoverModule2.setStyle(4);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (DiscoverModule discoverModule3 : list2) {
            List<PlayListDiscoverCategory> categoryConfigItemVOList = discoverModule3.getCategoryConfigItemVOList();
            if (categoryConfigItemVOList != null) {
                for (PlayListDiscoverCategory playListDiscoverCategory : categoryConfigItemVOList) {
                    List<DiscoverCategoryShorts> shortPlayResponseList2 = playListDiscoverCategory.getShortPlayResponseList();
                    if (shortPlayResponseList2 != null) {
                        for (DiscoverCategoryShorts discoverCategoryShorts : shortPlayResponseList2) {
                            discoverCategoryShorts.setModuleId(discoverModule3.getBannerId());
                            discoverCategoryShorts.setModuleName(discoverModule3.getTitle());
                            discoverCategoryShorts.setCategoryID(playListDiscoverCategory.getCategoryId());
                            discoverCategoryShorts.setCategoryName(playListDiscoverCategory.getCategoryName());
                            discoverCategoryShorts.setRecommendId(discoverModule3.getRecommendId());
                        }
                    }
                }
            }
            int style = discoverModule3.getStyle();
            if (style != -33) {
                if (style != 2) {
                    if (style != 4) {
                        if (style != -31) {
                            if (style != -30) {
                                if (style != 13) {
                                    if (style != 14) {
                                        switch (style) {
                                            case 8:
                                                List<DiscoverModule> U1 = U1(discoverModule3, false, 0);
                                                DiscoverModule V1 = V1(8, discoverModule3);
                                                V1.setBottomMargin(0);
                                                e10 = CollectionsKt.K0(CollectionsKt.e(V1), U1);
                                                continue;
                                            case 9:
                                                List<DiscoverModule> W1 = W1(9, 3, discoverModule3);
                                                if (Intrinsics.areEqual(discoverModule3.getDisableBannerTitle(), Boolean.TRUE)) {
                                                    e10 = W1;
                                                    continue;
                                                } else {
                                                    e10 = CollectionsKt.K0(CollectionsKt.e(V1(9, discoverModule3)), W1);
                                                    break;
                                                }
                                            case 10:
                                                e10 = CollectionsKt.t(V1(-23, discoverModule3));
                                                List<DiscoverShorts> shortPlayResponseList3 = discoverModule3.getShortPlayResponseList();
                                                if (shortPlayResponseList3 != null) {
                                                    for (DiscoverShorts discoverShorts : shortPlayResponseList3) {
                                                        discoverShorts.setModuleId(discoverModule3.getBannerId());
                                                        discoverShorts.setModuleName(discoverModule3.getTitle());
                                                        discoverShorts.setRecommendId(discoverModule3.getRecommendId());
                                                    }
                                                    DiscoverShorts discoverShorts2 = (DiscoverShorts) CollectionsKt.firstOrNull(shortPlayResponseList3);
                                                    if (discoverShorts2 != null) {
                                                        this.Q = true;
                                                        e10.add(new DiscoverModule(-23, discoverModule3.getTitle(), discoverModule3.getBannerId(), CollectionsKt.t(discoverShorts2), false, 0, null, null, null, null, null, null, 0, null, null, 0, null, null, null, null, null, 0, null, 8388592, null));
                                                    }
                                                }
                                                List<DiscoverShorts> shortPlayResponseList4 = discoverModule3.getShortPlayResponseList();
                                                if (shortPlayResponseList4 == null || (n10 = CollectionsKt.j0(shortPlayResponseList4, 1)) == null) {
                                                    n10 = CollectionsKt.n();
                                                }
                                                List list3 = n10;
                                                if (!list3.isEmpty()) {
                                                    e10.add(new DiscoverModule(-24, discoverModule3.getTitle(), discoverModule3.getBannerId(), CollectionsKt.g1(list3), false, 0, null, null, null, null, null, null, 0, null, null, 0, null, null, null, null, null, 0, null, 8388592, null));
                                                    break;
                                                } else {
                                                    continue;
                                                }
                                            case 11:
                                                this.Q = true;
                                                e10 = CollectionsKt.q(T1(fk.z.f51786a.i()), V1(discoverModule3.getStyle(), discoverModule3), discoverModule3);
                                                continue;
                                            default:
                                                e10 = CollectionsKt.q(V1(discoverModule3.getStyle(), discoverModule3), discoverModule3);
                                                continue;
                                        }
                                    } else {
                                        this.Q = true;
                                        e10 = CollectionsKt.K0(CollectionsKt.e(V1(-32, discoverModule3)), X1(discoverModule3, new Function1() { // from class: com.startshorts.androidplayer.ui.fragment.discover.j
                                            @Override // kotlin.jvm.functions.Function1
                                            public final Object invoke(Object obj2) {
                                                Unit d22;
                                                d22 = DiscoverFragment.d2((DiscoverModule) obj2);
                                                return d22;
                                            }
                                        }));
                                    }
                                } else {
                                    e10 = CollectionsKt.e(discoverModule3);
                                }
                            }
                        } else {
                            if (this.S) {
                                i10 = jk.g.a(20.0f);
                            } else {
                                i10 = 0;
                            }
                            discoverModule3.setTopMargin(i10);
                            e10 = CollectionsKt.e(discoverModule3);
                        }
                    }
                } else {
                    e10 = CollectionsKt.K0(CollectionsKt.e(V1(-20, discoverModule3)), X1(discoverModule3, new Function1() { // from class: com.startshorts.androidplayer.ui.fragment.discover.i
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj2) {
                            Unit c22;
                            c22 = DiscoverFragment.c2((DiscoverModule) obj2);
                            return c22;
                        }
                    }));
                }
                CollectionsKt.E(arrayList2, e10);
            }
            if (this.S) {
                DeviceUtil deviceUtil = DeviceUtil.f48146a;
                J2 = deviceUtil.J() + deviceUtil.u();
                t11 = deviceUtil.t();
            } else {
                DeviceUtil deviceUtil2 = DeviceUtil.f48146a;
                J2 = deviceUtil2.J();
                t11 = deviceUtil2.t();
            }
            discoverModule3.setTopMargin(J2 + t11);
            e10 = CollectionsKt.e(discoverModule3);
            CollectionsKt.E(arrayList2, e10);
        }
        List<DiscoverModule> g12 = CollectionsKt.g1(arrayList2);
        if (!g12.isEmpty()) {
            DiscoverModule discoverModule4 = g12.get(0);
            if (!DiscoverModule.Companion.getSTYLE_BANNER_GROUP().contains(Integer.valueOf(discoverModule4.getStyle()))) {
                discoverModule4.setTopMargin(0);
                if (this.S) {
                    DeviceUtil deviceUtil3 = DeviceUtil.f48146a;
                    J = deviceUtil3.J() + deviceUtil3.u();
                    t10 = deviceUtil3.t();
                } else {
                    DeviceUtil deviceUtil4 = DeviceUtil.f48146a;
                    J = deviceUtil4.J();
                    t10 = deviceUtil4.t();
                }
                g12.add(0, T1(J + t10));
            }
            if (J2()) {
                EventManager.s0(EventManager.f42463a, "discover_not_show", null, 0L, 6, null);
                int Q1 = Q1();
                DiscoverModule discoverModule5 = new DiscoverModule(-22, "", null, null, false, 0, null, null, null, null, null, null, 0, null, null, 0, null, null, null, null, null, 0, null, 8388604, null);
                discoverModule5.setTopMargin(0);
                Unit unit = Unit.f60915a;
                g12.add(Q1, discoverModule5);
                M2(g12, 0);
            }
            g12.add(T1(fk.z.f51786a.g()));
        }
        return g12;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit c2(DiscoverModule discoverShorts2DiscoverModules) {
        Intrinsics.checkNotNullParameter(discoverShorts2DiscoverModules, "$this$discoverShorts2DiscoverModules");
        discoverShorts2DiscoverModules.setStyle(-20);
        discoverShorts2DiscoverModules.setTopMargin(fk.z.f51786a.b());
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit d2(DiscoverModule discoverShorts2DiscoverModules) {
        Intrinsics.checkNotNullParameter(discoverShorts2DiscoverModules, "$this$discoverShorts2DiscoverModules");
        discoverShorts2DiscoverModules.setStyle(-32);
        return Unit.f60915a;
    }

    private final DiscoverViewModel e2() {
        return (DiscoverViewModel) this.G.getValue();
    }

    private final int f2() {
        return ((Number) this.Y.getValue()).intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ye.b g2() {
        return (ye.b) this.O.getValue();
    }

    private final void h2() {
        ((FragmentDiscoverBinding) A()).f39420c.setEnableRefresh(false);
        V0(false);
    }

    private final boolean i2() {
        DiscoverTab discoverTab;
        boolean z10;
        int i10;
        String string;
        Bundle arguments = getArguments();
        this.J = (arguments == null || (r0 = arguments.getString("from")) == null) ? "icon" : "icon";
        Bundle arguments2 = getArguments();
        if (arguments2 != null && (string = arguments2.getString("tab")) != null) {
            discoverTab = (DiscoverTab) jk.l.b(string, DiscoverTab.class);
        } else {
            discoverTab = null;
        }
        this.I = discoverTab;
        Bundle arguments3 = getArguments();
        if (arguments3 != null) {
            z10 = arguments3.getBoolean("is_show_tab_view");
        } else {
            z10 = false;
        }
        this.S = z10;
        Bundle arguments4 = getArguments();
        if (arguments4 != null) {
            i10 = arguments4.getInt("position");
        } else {
            i10 = -1;
        }
        this.V = i10;
        if (this.I == null) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DiscoverViewModel j2(final DiscoverFragment discoverFragment) {
        DiscoverViewModel discoverViewModel = (DiscoverViewModel) new ViewModelProvider(discoverFragment).get(DiscoverViewModel.class);
        discoverViewModel.F().observe(discoverFragment, new e(new Function1() { // from class: com.startshorts.androidplayer.ui.fragment.discover.d
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit k22;
                k22 = DiscoverFragment.k2(DiscoverFragment.this, (com.startshorts.androidplayer.viewmodel.discover.b) obj);
                return k22;
            }
        }));
        return discoverViewModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit k2(DiscoverFragment discoverFragment, com.startshorts.androidplayer.viewmodel.discover.b bVar) {
        int i10;
        List<DiscoverShorts> shortPlayResponseList;
        int i11;
        List<DiscoverModule> list = null;
        String str = null;
        boolean z10 = false;
        if (bVar instanceof b.a) {
            if (discoverFragment.P0()) {
                discoverFragment.G0();
            } else {
                discoverFragment.F0();
            }
            RecyclerView.Adapter<?> e02 = discoverFragment.e0();
            if (e02 != null) {
                i11 = e02.getItemCount();
            } else {
                i11 = 1;
            }
            if (i11 == 1) {
                b.a aVar = (b.a) bVar;
                ApiErrorState a10 = aVar.a();
                if (a10 != null && a10.getState() == 1) {
                    z10 = true;
                }
                if (z10) {
                    discoverFragment.U();
                } else {
                    ApiErrorState a11 = aVar.a();
                    if (a11 != null) {
                        str = a11.getMsg();
                    }
                    discoverFragment.V(str);
                }
            }
            ((FragmentDiscoverBinding) discoverFragment.A()).f39420c.setEnableRefresh(true);
        } else if (bVar instanceof b.c) {
            discoverFragment.G0();
            DiscoverTabPage a12 = ((b.c) bVar).a();
            if (a12 != null) {
                list = a12.getBannerResponseList();
            }
            discoverFragment.L2(list);
            ((FragmentDiscoverBinding) discoverFragment.A()).f39420c.setEnableRefresh(true);
        } else if (bVar instanceof b.d) {
            b.d dVar = (b.d) bVar;
            discoverFragment.N2(dVar.b(), dVar.a());
        } else if (bVar instanceof b.C0659b) {
            discoverFragment.F0();
            b.C0659b c0659b = (b.C0659b) bVar;
            DiscoverModule a13 = c0659b.a();
            if (a13 != null && (shortPlayResponseList = a13.getShortPlayResponseList()) != null) {
                i10 = shortPlayResponseList.size();
            } else {
                i10 = 0;
            }
            if (i10 < discoverFragment.v0()) {
                discoverFragment.V0(false);
            }
            discoverFragment.L1(c0659b.a());
            List<DiscoverModule> d02 = discoverFragment.d0();
            if (d02 == null) {
                d02 = new ArrayList<>();
            }
            discoverFragment.P1(d02);
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List l2() {
        return new ArrayList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int m2(DiscoverFragment discoverFragment) {
        int i10;
        int[] iArr = new int[2];
        RecyclerView g02 = discoverFragment.g0();
        if (g02 != null) {
            g02.getLocationOnScreen(iArr);
        }
        int i11 = iArr[1];
        RecyclerView g03 = discoverFragment.g0();
        if (g03 != null) {
            i10 = g03.getHeight();
        } else {
            i10 = 0;
        }
        return i11 + i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ye.b n2(DiscoverFragment discoverFragment) {
        return new ye.b(discoverFragment);
    }

    private final void o2() {
        AccountRepo.f43052a.O(this.H);
    }

    private final void q2() {
        Object obj;
        List<DiscoverModule> d02 = d0();
        if (d02 != null) {
            synchronized (d02) {
                try {
                    Iterator<T> it = d02.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            obj = it.next();
                            if (((DiscoverModule) obj).getStyle() == -32) {
                                break;
                            }
                        } else {
                            obj = null;
                            break;
                        }
                    }
                    if (obj != null) {
                        AdManager.f41600a.a0(AdScene.NATIVE);
                    }
                    Unit unit = Unit.f60915a;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    private final void r2(String str) {
        try {
            if (id.a.f53392a.c()) {
                Logger logger = Logger.f41511a;
                logger.h("VideoPreviewManager", "discoverFragment previewVideoPlay,from: " + str);
            }
            if (!this.Q) {
                return;
            }
            kotlinx.coroutines.r rVar = this.T;
            if (rVar != null) {
                r.a.b(rVar, null, 1, null);
            }
            this.T = CoroutineUtil.g(CoroutineUtil.f48072a, 1000L, null, new Function0() { // from class: com.startshorts.androidplayer.ui.fragment.discover.a
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit s22;
                    s22 = DiscoverFragment.s2(DiscoverFragment.this);
                    return s22;
                }
            }, 2, null);
        } catch (Exception e10) {
            g(str + ",mVideoPreviewManager.play failed -> " + e10.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit s2(DiscoverFragment discoverFragment) {
        if (discoverFragment.isResumed()) {
            discoverFragment.g2().g(discoverFragment.Z1());
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean t2(Set set, DiscoverModule it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return set.contains(it.getBannerId());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit u2(DiscoverFragment discoverFragment) {
        discoverFragment.Z0();
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean v2(Set set, DiscoverModule it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return set.contains(it.getBannerId());
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0077, code lost:
        if (r0 == null) goto L47;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void w2() {
        /*
            r11 = this;
            java.util.List r0 = r11.d0()
            if (r0 == 0) goto L79
            java.lang.Iterable r0 = (java.lang.Iterable) r0
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            java.util.Iterator r0 = r0.iterator()
        L11:
            boolean r2 = r0.hasNext()
            if (r2 == 0) goto L54
            java.lang.Object r2 = r0.next()
            r3 = r2
            com.startshorts.androidplayer.bean.discover.DiscoverModule r3 = (com.startshorts.androidplayer.bean.discover.DiscoverModule) r3
            java.lang.Long r4 = r3.getValidStartTime()
            r5 = 0
            if (r4 == 0) goto L2b
            long r7 = r4.longValue()
            goto L2c
        L2b:
            r7 = r5
        L2c:
            java.lang.Long r4 = r3.getValidEndTime()
            if (r4 == 0) goto L36
            long r5 = r4.longValue()
        L36:
            int r3 = r3.getStyle()
            r4 = 12
            if (r3 != r4) goto L11
            com.startshorts.androidplayer.utils.DeviceUtil r3 = com.startshorts.androidplayer.utils.DeviceUtil.f48146a
            long r9 = r3.K()
            int r4 = (r9 > r7 ? 1 : (r9 == r7 ? 0 : -1))
            if (r4 < 0) goto L50
            long r3 = r3.K()
            int r3 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r3 <= 0) goto L11
        L50:
            r1.add(r2)
            goto L11
        L54:
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.util.Iterator r1 = r1.iterator()
        L5d:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto L73
            java.lang.Object r2 = r1.next()
            com.startshorts.androidplayer.bean.discover.DiscoverModule r2 = (com.startshorts.androidplayer.bean.discover.DiscoverModule) r2
            java.lang.String r2 = r2.getBannerId()
            if (r2 == 0) goto L5d
            r0.add(r2)
            goto L5d
        L73:
            java.util.Set r0 = kotlin.collections.CollectionsKt.i1(r0)
            if (r0 != 0) goto L7d
        L79:
            java.util.Set r0 = kotlin.collections.y0.f()
        L7d:
            r1 = r0
            java.util.Collection r1 = (java.util.Collection) r1
            boolean r1 = r1.isEmpty()
            if (r1 != 0) goto L8e
            com.startshorts.androidplayer.ui.fragment.discover.r r1 = new com.startshorts.androidplayer.ui.fragment.discover.r
            r1.<init>()
            r11.y2(r1)
        L8e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.ui.fragment.discover.DiscoverFragment.w2():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean x2(Set set, DiscoverModule it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return CollectionsKt.g0(set, it.getBannerId());
    }

    private final void y2(Function1<? super DiscoverModule, Boolean> function1) {
        int i10;
        Integer tabId;
        DiscoverViewModel e22 = e2();
        DiscoverTab discoverTab = this.I;
        if (discoverTab != null && (tabId = discoverTab.getTabId()) != null) {
            i10 = tabId.intValue();
        } else {
            i10 = 0;
        }
        e22.Q(new a.e(i10, function1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void z2(List<DiscoverModule> list) {
        if (list != null) {
            CollectionsKt.O(list, new Function1() { // from class: com.startshorts.androidplayer.ui.fragment.discover.h
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    boolean A2;
                    A2 = DiscoverFragment.A2((DiscoverModule) obj);
                    return Boolean.valueOf(A2);
                }
            });
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.ListFragment
    public void A0(@NotNull RecyclerView recyclerView, int i10, int i11) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        this.K.e(i11);
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.ListFragment
    public void B0() {
        DiscoverModuleAdapter discoverModuleAdapter;
        WeakReference<BannerViewPager<DiscoverShorts>> h02;
        BannerViewPager<DiscoverShorts> bannerViewPager;
        BaseAdapter<DiscoverModule> Z = Z();
        if (Z instanceof DiscoverModuleAdapter) {
            discoverModuleAdapter = (DiscoverModuleAdapter) Z;
        } else {
            discoverModuleAdapter = null;
        }
        if (discoverModuleAdapter != null && (h02 = discoverModuleAdapter.h0()) != null && (bannerViewPager = h02.get()) != null) {
            bannerViewPager.onPause();
        }
        DiscoverTabFragment.b bVar = this.N;
        if (bVar != null) {
            bVar.e();
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.ListFragment
    public void C0() {
        DiscoverModuleAdapter discoverModuleAdapter;
        WeakReference<BannerViewPager<DiscoverShorts>> h02;
        BannerViewPager<DiscoverShorts> bannerViewPager;
        BaseAdapter<DiscoverModule> Z = Z();
        StaggeredGridLayoutManager staggeredGridLayoutManager = null;
        if (Z instanceof DiscoverModuleAdapter) {
            discoverModuleAdapter = (DiscoverModuleAdapter) Z;
        } else {
            discoverModuleAdapter = null;
        }
        if (discoverModuleAdapter != null && (h02 = discoverModuleAdapter.h0()) != null && (bannerViewPager = h02.get()) != null) {
            bannerViewPager.onResume();
        }
        int[] iArr = new int[2];
        RecyclerView.LayoutManager f02 = f0();
        if (f02 instanceof StaggeredGridLayoutManager) {
            staggeredGridLayoutManager = (StaggeredGridLayoutManager) f02;
        }
        if (staggeredGridLayoutManager != null) {
            staggeredGridLayoutManager.findFirstVisibleItemPositions(iArr);
        }
        TwinklingRefreshLayout twinklingRefreshLayout = ((FragmentDiscoverBinding) A()).f39420c;
        boolean z10 = false;
        if (iArr[0] == 0 || iArr[1] == 0) {
            z10 = true;
        }
        twinklingRefreshLayout.setEnableRefresh(z10);
        DiscoverTabFragment.b bVar = this.N;
        if (bVar != null) {
            bVar.d();
        }
        try {
            q2();
            r2("onStopScroll");
        } catch (Exception e10) {
            g("onStopScroll,mVideoPreviewManager.play failed -> " + e10.getMessage());
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.RefreshFragment
    public boolean H0() {
        return false;
    }

    public final void H2() {
        if (g2().d() != null) {
            kotlinx.coroutines.r rVar = this.U;
            if (rVar != null) {
                r.a.b(rVar, null, 1, null);
            }
            this.U = CoroutineUtil.g(CoroutineUtil.f48072a, 100L, null, new Function0() { // from class: com.startshorts.androidplayer.ui.fragment.discover.o
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit I2;
                    I2 = DiscoverFragment.I2(DiscoverFragment.this);
                    return I2;
                }
            }, 2, null);
            return;
        }
        r2("onResume,getVideoPreviewInfo is null");
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.RefreshFragment
    public int J0() {
        DeviceUtil deviceUtil = DeviceUtil.f48146a;
        return deviceUtil.J() + deviceUtil.t() + deviceUtil.u();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.RefreshFragment
    public void R0(@Nullable List<DiscoverModule> list, boolean z10, @Nullable String str) {
        Object obj;
        Object obj2;
        super.R0(list, z10, str);
        V0(false);
        List<DiscoverModule> d02 = d0();
        DiscoverTitleModule discoverTitleModule = null;
        if (d02 != null) {
            ListIterator<DiscoverModule> listIterator = d02.listIterator(d02.size());
            while (true) {
                if (listIterator.hasPrevious()) {
                    obj2 = listIterator.previous();
                    if (((DiscoverModule) obj2) instanceof DiscoverTitleModule) {
                        break;
                    }
                } else {
                    obj2 = null;
                    break;
                }
            }
            obj = (DiscoverModule) obj2;
        } else {
            obj = null;
        }
        if (obj instanceof DiscoverTitleModule) {
            discoverTitleModule = (DiscoverTitleModule) obj;
        }
        if (discoverTitleModule != null && ((discoverTitleModule.getContentModuleStyle() == -32 || discoverTitleModule.getContentModuleStyle() == -20 || discoverTitleModule.getContentModuleStyle() == 8) && discoverTitleModule.isShowMore())) {
            V0(true);
        }
        r2("loadList");
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.RefreshFragment
    public void T0(int i10, int i11) {
        DiscoverModule discoverModule;
        super.T0(i10, i11);
        List<DiscoverModule> d02 = d0();
        if (d02 != null) {
            synchronized (d02) {
                try {
                    ListIterator<DiscoverModule> listIterator = d02.listIterator(d02.size());
                    while (true) {
                        if (listIterator.hasPrevious()) {
                            discoverModule = listIterator.previous();
                            if (discoverModule.getStyle() != -100) {
                                break;
                            }
                        } else {
                            discoverModule = null;
                            break;
                        }
                    }
                    DiscoverModule discoverModule2 = discoverModule;
                    if (discoverModule2 != null) {
                        DiscoverViewModel e22 = e2();
                        String str = this.J;
                        if (str == null) {
                            str = "";
                        }
                        e22.Q(new a.b(discoverModule2, str, i11, i10, this.P));
                        Unit unit = Unit.f60915a;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.RefreshFragment
    public void U0(int i10, int i11) {
        int i12;
        Integer tabId;
        super.U0(i10, i11);
        DiscoverViewModel e22 = e2();
        DiscoverTab discoverTab = this.I;
        if (discoverTab != null && (tabId = discoverTab.getTabId()) != null) {
            i12 = tabId.intValue();
        } else {
            i12 = 0;
        }
        e22.Q(new a.C0658a(i12));
        if (this.f45857c0) {
            this.f45857c0 = false;
            return;
        }
        FragmentActivity activity = getActivity();
        if (activity != null) {
            ((ComingSoonViewModel) new ViewModelProvider(activity).get(ComingSoonViewModel.class)).F(a.b.f48432a);
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.RefreshFragment, com.startshorts.androidplayer.ui.fragment.base.ListFragment, com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment
    public void i0() {
        DiscoverTabFragment discoverTabFragment;
        RecyclerView g02 = g0();
        if (g02 != null) {
            Fragment parentFragment = getParentFragment();
            RecyclerView.RecycledViewPool recycledViewPool = null;
            if (parentFragment instanceof DiscoverTabFragment) {
                discoverTabFragment = (DiscoverTabFragment) parentFragment;
            } else {
                discoverTabFragment = null;
            }
            if (discoverTabFragment != null) {
                recycledViewPool = discoverTabFragment.G0();
            }
            g02.setRecycledViewPool(recycledViewPool);
        }
        m0(new RecyclerView.ItemDecoration() { // from class: com.startshorts.androidplayer.ui.fragment.discover.DiscoverFragment$initRecyclerView$1

            /* renamed from: a  reason: collision with root package name */
            private final int f45873a = jk.g.a(16.0f);

            /* renamed from: b  reason: collision with root package name */
            private final int f45874b = jk.g.a(16.0f);

            /* renamed from: c  reason: collision with root package name */
            private final int f45875c = jk.g.a(6.0f);

            /* renamed from: d  reason: collision with root package name */
            private final int f45876d = jk.g.a(8.0f);

            @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
            public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.State state) {
                DiscoverModuleAdapter discoverModuleAdapter;
                DiscoverModule item;
                Intrinsics.checkNotNullParameter(outRect, "outRect");
                Intrinsics.checkNotNullParameter(view, "view");
                Intrinsics.checkNotNullParameter(parent, "parent");
                Intrinsics.checkNotNullParameter(state, "state");
                RecyclerView.Adapter<?> e02 = DiscoverFragment.this.e0();
                StaggeredGridLayoutManager.LayoutParams layoutParams = null;
                if (e02 instanceof DiscoverModuleAdapter) {
                    discoverModuleAdapter = (DiscoverModuleAdapter) e02;
                } else {
                    discoverModuleAdapter = null;
                }
                if (discoverModuleAdapter == null || (item = discoverModuleAdapter.getItem(parent.getChildLayoutPosition(view))) == null) {
                    return;
                }
                if ((item.getStyle() != -10 && item.getStyle() != -8 && item.getStyle() != -9 && item.getStyle() != 8) || (item instanceof DiscoverTitleModule)) {
                    return;
                }
                ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
                if (layoutParams2 instanceof StaggeredGridLayoutManager.LayoutParams) {
                    layoutParams = (StaggeredGridLayoutManager.LayoutParams) layoutParams2;
                }
                if (layoutParams == null) {
                    return;
                }
                if (layoutParams.getSpanIndex() % 2 == 0) {
                    outRect.set(this.f45873a, this.f45874b, this.f45875c, this.f45876d);
                } else {
                    outRect.set(this.f45875c, this.f45874b, this.f45873a, this.f45876d);
                }
            }
        });
        l0(20);
        StaggeredGridLayoutManager staggeredGridLayoutManager = new StaggeredGridLayoutManager(2, 1);
        n0(staggeredGridLayoutManager);
        DiscoverModuleAdapter discoverModuleAdapter = new DiscoverModuleAdapter(new WeakReference(requireActivity()));
        discoverModuleAdapter.K0(this.I);
        discoverModuleAdapter.I0(getLifecycle());
        discoverModuleAdapter.H0(staggeredGridLayoutManager);
        discoverModuleAdapter.J0(new c(discoverModuleAdapter, this));
        discoverModuleAdapter.B(new d());
        k0(discoverModuleAdapter);
        super.i0();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.RefreshFragment, com.startshorts.androidplayer.ui.fragment.base.ListFragment, com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public int l() {
        return this.f45858d0;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public boolean o() {
        return true;
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(@NotNull Context context) {
        DiscoverTabFragment discoverTabFragment;
        Intrinsics.checkNotNullParameter(context, "context");
        super.onAttach(context);
        if (getParentFragment() instanceof DiscoverTabFragment) {
            Fragment parentFragment = getParentFragment();
            DiscoverTabFragment.b bVar = null;
            if (parentFragment instanceof DiscoverTabFragment) {
                discoverTabFragment = (DiscoverTabFragment) parentFragment;
            } else {
                discoverTabFragment = null;
            }
            if (discoverTabFragment != null) {
                bVar = discoverTabFragment.C0();
            }
            this.N = bVar;
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        kotlinx.coroutines.r rVar = this.T;
        DiscoverModuleAdapter discoverModuleAdapter = null;
        if (rVar != null) {
            r.a.b(rVar, null, 1, null);
        }
        kotlinx.coroutines.r rVar2 = this.U;
        if (rVar2 != null) {
            r.a.b(rVar2, null, 1, null);
        }
        p2();
        BaseAdapter<DiscoverModule> Z = Z();
        if (Z instanceof DiscoverModuleAdapter) {
            discoverModuleAdapter = (DiscoverModuleAdapter) Z;
        }
        if (discoverModuleAdapter != null) {
            discoverModuleAdapter.A0();
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateFragment, com.startshorts.androidplayer.ui.fragment.base.PermissionFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment, androidx.fragment.app.Fragment
    public void onResume() {
        DiscoverModuleAdapter discoverModuleAdapter;
        super.onResume();
        EventManager eventManager = EventManager.f42463a;
        Bundle B = eventManager.B(this.I);
        B.putString("from", this.J);
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "discover_show", B, 0L, 4, null);
        BaseAdapter<DiscoverModule> Z = Z();
        if (Z instanceof DiscoverModuleAdapter) {
            discoverModuleAdapter = (DiscoverModuleAdapter) Z;
        } else {
            discoverModuleAdapter = null;
        }
        if (discoverModuleAdapter != null) {
            discoverModuleAdapter.B0();
        }
        if (this.L) {
            this.L = false;
        } else {
            if (ABTestFactory.f42224a.c1().isEnable().invoke().booleanValue()) {
                long L = DeviceUtil.f48146a.L();
                if (L - this.M > PeriodicWorkRequest.MIN_PERIODIC_FLEX_MILLIS) {
                    this.M = L;
                    PurchaseRepo.f43366a.u();
                }
            }
            w2();
            q2();
            H2();
            if (this.W.isInitialized()) {
                if (!j0()) {
                    R1(this.W.getValue());
                }
                this.W.getValue().clear();
            }
        }
        if (this.R) {
            this.K.c();
            DiscoverTabFragment.b bVar = this.N;
            if (bVar != null) {
                bVar.c(this.K.d(), true);
                return;
            }
            return;
        }
        DiscoverTabFragment.b bVar2 = this.N;
        if (bVar2 != null) {
            DiscoverTabFragment.b.a.a(bVar2, 1.0f, false, 2, null);
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public boolean p() {
        return true;
    }

    public final void p2() {
        g2().f();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.RefreshFragment, com.startshorts.androidplayer.ui.fragment.base.ListFragment, com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment, com.startshorts.androidplayer.ui.fragment.base.PageStateFragment, com.startshorts.androidplayer.ui.fragment.base.PermissionFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    @NotNull
    public String q() {
        String str;
        String sb2;
        StringBuilder sb3 = new StringBuilder();
        sb3.append("DiscoverFragment");
        if (this.I == null) {
            sb2 = "";
        } else {
            StringBuilder sb4 = new StringBuilder();
            sb4.append('_');
            DiscoverTab discoverTab = this.I;
            if (discoverTab != null) {
                str = discoverTab.getTabDisplayName();
            } else {
                str = null;
            }
            sb4.append(str);
            sb2 = sb4.toString();
        }
        sb3.append(sb2);
        return sb3.toString();
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveAcknowledgePurchaseResult(@NotNull AcknowledgePurchaseResult result) {
        Intrinsics.checkNotNullParameter(result, "result");
        if (!m()) {
            return;
        }
        final Set<String> Y1 = Y1(result.getRecoverShortsIdList());
        if (!Y1.isEmpty()) {
            y2(new Function1() { // from class: com.startshorts.androidplayer.ui.fragment.discover.q
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    boolean t22;
                    t22 = DiscoverFragment.t2(Y1, (DiscoverModule) obj);
                    return Boolean.valueOf(t22);
                }
            });
        }
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveRefreshAccountEvent(@NotNull RefreshAccountEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (!m()) {
            return;
        }
        r("receiveRefreshAccountEvent");
        X();
        o2();
        T();
        R();
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveRefreshEpisodeNumEvent(@NotNull RefreshEpisodeNumEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (!m()) {
            return;
        }
        r("receiveRefreshEpisodeNumEvent -> " + event);
        if (j0()) {
            return;
        }
        if (n()) {
            this.W.getValue().add(event);
        } else {
            R1(CollectionsKt.t(event));
        }
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveRefreshPayScoreEvent(@NotNull RefreshPayScoreEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (!m()) {
            return;
        }
        r("receiveRefreshPayScoreEvent");
        this.M = DeviceUtil.f48146a.L();
        if (J2()) {
            K1();
        } else {
            B2();
        }
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveRefreshReservationEvent(@NotNull RefreshReservationEvent event) {
        Object obj;
        Object obj2;
        List<DiscoverShorts> shortPlayResponseList;
        Intrinsics.checkNotNullParameter(event, "event");
        if (!m()) {
            return;
        }
        r("receiveRefreshReservationEvent -> event(" + event + ')');
        List<DiscoverModule> d02 = d0();
        if (d02 != null) {
            Iterator<T> it = d02.iterator();
            while (true) {
                obj = null;
                if (it.hasNext()) {
                    obj2 = it.next();
                    if (((DiscoverModule) obj2).getStyle() == 7) {
                        break;
                    }
                } else {
                    obj2 = null;
                    break;
                }
            }
            DiscoverModule discoverModule = (DiscoverModule) obj2;
            if (discoverModule != null && (shortPlayResponseList = discoverModule.getShortPlayResponseList()) != null) {
                Iterator<T> it2 = shortPlayResponseList.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    }
                    Object next = it2.next();
                    if (((DiscoverShorts) next).getId() == event.getShortsId()) {
                        obj = next;
                        break;
                    }
                }
                DiscoverShorts discoverShorts = (DiscoverShorts) obj;
                if (discoverShorts != null) {
                    discoverShorts.setReservation(event.getReservation());
                }
            }
        }
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveRefreshSpecifiedDiscoverFragmentEvent(@NotNull RefreshSpecifiedDiscoverFragmentEvent event) {
        DiscoverTab discoverTab;
        Intrinsics.checkNotNullParameter(event, "event");
        if (m() && (discoverTab = this.I) != null) {
            int tabId = event.getTabId();
            Integer tabId2 = discoverTab.getTabId();
            if (tabId2 != null && tabId == tabId2.intValue()) {
                RecyclerView g02 = g0();
                if (g02 != null) {
                    g02.scrollToPosition(0);
                }
                CoroutineUtil.g(CoroutineUtil.f48072a, 500L, null, new Function0() { // from class: com.startshorts.androidplayer.ui.fragment.discover.p
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        Unit u22;
                        u22 = DiscoverFragment.u2(DiscoverFragment.this);
                        return u22;
                    }
                }, 2, null);
            }
        }
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveShortDiscountUnLockEvent(@NotNull ShortDiscountUnLockEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (!m()) {
            return;
        }
        final Set<String> Y1 = Y1(CollectionsKt.t(Integer.valueOf(event.getShortsId())));
        if (!Y1.isEmpty()) {
            y2(new Function1() { // from class: com.startshorts.androidplayer.ui.fragment.discover.c
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    boolean v22;
                    v22 = DiscoverFragment.v2(Y1, (DiscoverModule) obj);
                    return Boolean.valueOf(v22);
                }
            });
        }
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveVideoPreviewPlayEvent(@NotNull VideoPreviewPlayEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (m() && isResumed()) {
            g2().g(null);
            r2("receiveVideoPreviewPlayEvent");
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public void t() {
        if (!i2()) {
            return;
        }
        super.t();
        o2();
        h2();
        R();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.ListFragment, com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment, com.startshorts.androidplayer.ui.fragment.base.PageStateFragment, com.startshorts.androidplayer.ui.fragment.base.BaseVDBFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public void v() {
        super.v();
        AccountRepo.f43052a.d1(this.H);
        g2().i();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.ListFragment
    public int v0() {
        return 10;
    }

    /* compiled from: DiscoverFragment.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nDiscoverFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverFragment.kt\ncom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$initRecyclerView$2$1\n+ 2 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt\n*L\n1#1,1645:1\n15#2,9:1646\n*S KotlinDebug\n*F\n+ 1 DiscoverFragment.kt\ncom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$initRecyclerView$2$1\n*L\n532#1:1646,9\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class c implements DiscoverModuleAdapter.n {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DiscoverModuleAdapter f45862a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ DiscoverFragment f45863b;

        /* compiled from: FragmentExt.kt */
        @Metadata
        @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 DiscoverFragment.kt\ncom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$initRecyclerView$2$1\n*L\n1#1,20:1\n534#2,14:21\n*E\n"})
        /* loaded from: classes7.dex */
        public static final class a implements Function0<Unit> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ DiscoverFragment f45864a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ DiscoverModule f45865b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ ShortsLabel f45866c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ String f45867d;

            /* renamed from: e  reason: collision with root package name */
            final /* synthetic */ DiscoverModuleAdapter f45868e;

            /* renamed from: f  reason: collision with root package name */
            final /* synthetic */ int f45869f;

            /* renamed from: g  reason: collision with root package name */
            final /* synthetic */ String f45870g;

            public a(DiscoverFragment discoverFragment, DiscoverModule discoverModule, ShortsLabel shortsLabel, String str, DiscoverModuleAdapter discoverModuleAdapter, int i10, String str2) {
                this.f45864a = discoverFragment;
                this.f45865b = discoverModule;
                this.f45866c = shortsLabel;
                this.f45867d = str;
                this.f45868e = discoverModuleAdapter;
                this.f45869f = i10;
                this.f45870g = str2;
            }

            public final void a() {
                String str;
                TagFilterFragment.a aVar = TagFilterFragment.f46869v;
                Context requireContext = this.f45864a.requireContext();
                Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
                aVar.a(requireContext, this.f45865b.getShorts(), this.f45866c, this.f45867d);
                EventManager eventManager = EventManager.f42463a;
                Bundle B = eventManager.B(this.f45868e.l0());
                B.putString("module_name", this.f45865b.getTitle());
                B.putString("module_id", this.f45865b.getBannerId());
                B.putString("position_id", String.valueOf(this.f45869f + 1));
                B.putInt("subtag_id", this.f45865b.getSubTagId());
                B.putString("module_type", this.f45870g);
                B.putString("type", "positive");
                Integer sort = this.f45865b.getSort();
                if (sort != null) {
                    str = sort.toString();
                } else {
                    str = null;
                }
                B.putString("module_list", str);
                Unit unit = Unit.f60915a;
                EventManager.s0(eventManager, "discover_module_click", B, 0L, 4, null);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                a();
                return Unit.f60915a;
            }
        }

        c(DiscoverModuleAdapter discoverModuleAdapter, DiscoverFragment discoverFragment) {
            this.f45862a = discoverModuleAdapter;
            this.f45863b = discoverFragment;
        }

        @Override // com.startshorts.androidplayer.adapter.discover.DiscoverModuleAdapter.n
        public void a(String from, Integer num) {
            Intrinsics.checkNotNullParameter(from, "from");
            DiscoverTabFragment.b bVar = this.f45863b.N;
            if (bVar != null) {
                bVar.a(from, num);
            }
        }

        @Override // com.startshorts.androidplayer.adapter.discover.DiscoverModuleAdapter.n
        public void b(VideoPreviewInfo info) {
            Intrinsics.checkNotNullParameter(info, "info");
            try {
                this.f45863b.g2().j(info);
            } catch (Exception e10) {
                DiscoverModuleAdapter discoverModuleAdapter = this.f45862a;
                discoverModuleAdapter.l("onPreviewDetachedFromWindow,mVideoPreviewManager.releaseByInfo failed -> " + e10.getMessage());
            }
        }

        @Override // com.startshorts.androidplayer.adapter.discover.DiscoverModuleAdapter.n
        public void c(int i10, BaseShorts baseShorts, String moduleType, DiscoverModule module, DiscoverRanking discoverRanking) {
            String str;
            DiscoverResource bannerContent;
            int intValue;
            Intrinsics.checkNotNullParameter(moduleType, "moduleType");
            Intrinsics.checkNotNullParameter(module, "module");
            if (baseShorts == null) {
                return;
            }
            EventManager eventManager = EventManager.f42463a;
            Bundle B = eventManager.B(this.f45862a.l0());
            B.putString("module_name", module.getTitle());
            B.putString("module_id", module.getBannerId());
            int i11 = i10 + 1;
            B.putString("position_id", String.valueOf(i11));
            B.putInt("subtag_id", module.getSubTagId());
            B.putString("module_type", moduleType);
            B.putString("reel_id", baseShorts.getShortPlayCode());
            B.putString("type", "positive");
            B.putString("skip_type", "reel");
            Integer sort = module.getSort();
            if (sort != null) {
                str = sort.toString();
            } else {
                str = null;
            }
            B.putString("module_list", str);
            Integer status = module.getStatus();
            if (status != null && status.intValue() == 2) {
                B.putString("module_list_type", "close");
            } else if (status != null && status.intValue() == 1) {
                B.putString("module_list_type", MRAIDPresenter.OPEN);
            } else {
                B.putString("module_list_type", null);
            }
            Integer recommendId = module.getRecommendId();
            if (recommendId != null && (intValue = recommendId.intValue()) > 0) {
                B.putInt(CallAppDataKey.KEY_AUDIENCE_RECOMMEND_ID, intValue);
            }
            if (!TextUtils.isEmpty(baseShorts.getUpack())) {
                B.putString("upack", baseShorts.getUpack());
            }
            if ((baseShorts instanceof DiscoverShorts) && (bannerContent = ((DiscoverShorts) baseShorts).getBannerContent()) != null) {
                bannerContent.toActResource(i11, module.getBannerId(), module.getTitle());
            }
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "discover_module_click", B, 0L, 4, null);
            this.f45863b.K2(module.formatTitleForEvent(), new ModuleInfo(module.getBannerId(), moduleType, module.getTitle(), i11, null, baseShorts.getShortPlayCode(), module.getRecommendId(), this.f45862a.l0(), discoverRanking, module.getStatus(), module.getSort(), 16, null), baseShorts);
        }

        @Override // com.startshorts.androidplayer.adapter.discover.DiscoverModuleAdapter.n
        public void d(int i10, DiscoverResource discoverResource, ActResource actResource) {
            Intrinsics.checkNotNullParameter(discoverResource, "discoverResource");
            if (discoverResource.isH5BrowserBanner()) {
                IntentUtil intentUtil = IntentUtil.f48164a;
                Context requireContext = this.f45863b.requireContext();
                Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
                intentUtil.c(requireContext, discoverResource.formatBrowserUrl(i10 + 1));
            } else if (actResource != null) {
                DiscoverFragment discoverFragment = this.f45863b;
                DiscoverModuleAdapter discoverModuleAdapter = this.f45862a;
                ActActivity.a aVar = ActActivity.B;
                Context requireContext2 = discoverFragment.requireContext();
                Intrinsics.checkNotNullExpressionValue(requireContext2, "requireContext(...)");
                aVar.a(requireContext2, "discover_carousel", actResource, discoverModuleAdapter.l0());
            }
        }

        @Override // com.startshorts.androidplayer.adapter.discover.DiscoverModuleAdapter.n
        public void e() {
            EventManager.s0(EventManager.f42463a, "discover_not_close", null, 0L, 6, null);
            ud.a.f68411a.h0(true);
            this.f45863b.B2();
        }

        @Override // com.startshorts.androidplayer.adapter.discover.DiscoverModuleAdapter.n
        public void f(int i10, ShortsLabel label, String moduleType, DiscoverModule module, String from) {
            Intrinsics.checkNotNullParameter(label, "label");
            Intrinsics.checkNotNullParameter(moduleType, "moduleType");
            Intrinsics.checkNotNullParameter(module, "module");
            Intrinsics.checkNotNullParameter(from, "from");
            DiscoverFragment discoverFragment = this.f45863b;
            FragmentExtKt.b(discoverFragment, new a(discoverFragment, module, label, from, this.f45862a, i10, moduleType), new b());
        }

        @Override // com.startshorts.androidplayer.adapter.discover.DiscoverModuleAdapter.n
        public void g(int i10, DiscoverResource discoverResource) {
            String contentUrl;
            if (discoverResource != null && (contentUrl = discoverResource.getContentUrl()) != null) {
                DiscoverFragment discoverFragment = this.f45863b;
                IntentUtil intentUtil = IntentUtil.f48164a;
                Context requireContext = discoverFragment.requireContext();
                Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
                intentUtil.c(requireContext, contentUrl);
            }
        }

        /* compiled from: FragmentExt.kt */
        @Metadata
        @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$4\n+ 2 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$2\n*L\n1#1,21:1\n17#2:22\n*E\n"})
        /* loaded from: classes7.dex */
        public static final class b implements Function0<Unit> {
            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                a();
                return Unit.f60915a;
            }

            public final void a() {
            }
        }
    }
}
