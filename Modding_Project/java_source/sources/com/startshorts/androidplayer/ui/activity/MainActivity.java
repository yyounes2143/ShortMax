package com.startshorts.androidplayer.ui.activity;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import androidx.viewpager2.widget.ViewPager2;
import au.l;
import bf.e;
import ce.j;
import com.adjust.sdk.Constants;
import com.bytedance.applog.log.LogUtils;
import com.ss.ttm.player.MediaPlayer;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.bean.ad.AdScene;
import com.startshorts.androidplayer.bean.bundle.IFragmentBundle;
import com.startshorts.androidplayer.bean.bundle.IntBundle;
import com.startshorts.androidplayer.bean.discover.DiscoverTab;
import com.startshorts.androidplayer.bean.eventbus.AppStateEvent;
import com.startshorts.androidplayer.bean.eventbus.CampaignFailureEvent;
import com.startshorts.androidplayer.bean.eventbus.DestroyNotificationActivityEvent;
import com.startshorts.androidplayer.bean.eventbus.HandleHomeDialogProcessorEvent;
import com.startshorts.androidplayer.bean.eventbus.HandleNotificationNavigatorCacheEvent;
import com.startshorts.androidplayer.bean.eventbus.MainTabClickEvent;
import com.startshorts.androidplayer.bean.eventbus.RefreshContinuePlayLayoutEvent;
import com.startshorts.androidplayer.bean.eventbus.RefreshMyListRedPointEvent;
import com.startshorts.androidplayer.bean.eventbus.SubsExpansionShowEvent;
import com.startshorts.androidplayer.bean.eventbus.UpdateMainTabEvent;
import com.startshorts.androidplayer.bean.eventbus.UserRechargedEvent;
import com.startshorts.androidplayer.bean.immersion.ImmersionParams;
import com.startshorts.androidplayer.bean.immersion.ImmersionShortsInfo;
import com.startshorts.androidplayer.bean.notification.ShortPlayNotification;
import com.startshorts.androidplayer.bean.shorts.PlayContinue;
import com.startshorts.androidplayer.bean.shorts.ShortsEpisode;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import com.startshorts.androidplayer.bean.tab.MainTab;
import com.startshorts.androidplayer.bean.update.UpdateData;
import com.startshorts.androidplayer.databinding.ActivityMainBinding;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.account.AccountManager;
import com.startshorts.androidplayer.manager.ad.AdManager;
import com.startshorts.androidplayer.manager.attribution.CampaignParser;
import com.startshorts.androidplayer.manager.attribution.CampaignReporter;
import com.startshorts.androidplayer.manager.attribution.CampaignType;
import com.startshorts.androidplayer.manager.attribution.provider.BaseCampaignProvider;
import com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.manager.purchase.HomeRetainDiscountSubsPresent;
import com.startshorts.androidplayer.manager.purchase.SubsExpansionManager;
import com.startshorts.androidplayer.manager.push.PushManager;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.repo.discover.DiscoverRepo;
import com.startshorts.androidplayer.repo.rewards.RewardsRepo;
import com.startshorts.androidplayer.ui.activity.MainActivity;
import com.startshorts.androidplayer.ui.activity.base.FragmentContainer;
import com.startshorts.androidplayer.ui.activity.base.PermissionActivity;
import com.startshorts.androidplayer.ui.activity.download.DownloadEpisodeManager;
import com.startshorts.androidplayer.ui.activity.immersion.ImmersionActivity;
import com.startshorts.androidplayer.ui.activity.library.LibraryActivity;
import com.startshorts.androidplayer.ui.activity.subs.SubsDetailActivity;
import com.startshorts.androidplayer.ui.fragment.discover.DiscoverTabFragment;
import com.startshorts.androidplayer.ui.fragment.mylist.MyListFragment;
import com.startshorts.androidplayer.ui.fragment.profile.ProfileFragment;
import com.startshorts.androidplayer.ui.fragment.reward.RewardsFragment;
import com.startshorts.androidplayer.ui.fragment.shorts.v2.ShortsFragment;
import com.startshorts.androidplayer.ui.view.main.ContinuePlayLayout;
import com.startshorts.androidplayer.ui.view.main.tab.MainTabLayout;
import com.startshorts.androidplayer.utils.BillingUtil;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import com.startshorts.androidplayer.utils.IntentUtil;
import com.startshorts.androidplayer.viewmodel.comingsoon.ComingSoonViewModel;
import com.startshorts.androidplayer.viewmodel.comingsoon.a;
import com.startshorts.androidplayer.viewmodel.comingsoon.b;
import com.startshorts.androidplayer.viewmodel.cps.CpsViewModel;
import de.s;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import jk.b0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.r;
import ms.f;
import ms.i;
import ng.g;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import uh.i0;
/* compiled from: MainActivity.kt */
@Metadata
@SourceDebugExtension({"SMAP\nMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivity.kt\ncom/startshorts/androidplayer/ui/activity/MainActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,958:1\n295#2,2:959\n1863#2,2:961\n1863#2,2:963\n1#3:965\n*S KotlinDebug\n*F\n+ 1 MainActivity.kt\ncom/startshorts/androidplayer/ui/activity/MainActivity\n*L\n239#1:959,2\n381#1:961,2\n410#1:963,2\n*E\n"})
/* loaded from: classes7.dex */
public final class MainActivity extends PermissionActivity<ActivityMainBinding> {
    @NotNull

    /* renamed from: w  reason: collision with root package name */
    public static final a f44873w = new a(null);
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private List<WeakReference<Fragment>> f44875q;
    @NotNull

    /* renamed from: p  reason: collision with root package name */
    private String f44874p = "DISCOVER";
    @NotNull

    /* renamed from: r  reason: collision with root package name */
    private final i f44876r = kotlin.c.b(new Function0() { // from class: ph.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            ComingSoonViewModel y02;
            y02 = MainActivity.y0(MainActivity.this);
            return y02;
        }
    });
    @NotNull

    /* renamed from: s  reason: collision with root package name */
    private final i f44877s = kotlin.c.b(new Function0() { // from class: ph.d
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            CpsViewModel z02;
            z02 = MainActivity.z0(MainActivity.this);
            return z02;
        }
    });
    @NotNull

    /* renamed from: t  reason: collision with root package name */
    private String f44878t = "icon";
    @NotNull

    /* renamed from: u  reason: collision with root package name */
    private String f44879u = "";
    @NotNull

    /* renamed from: v  reason: collision with root package name */
    private String f44880v = "";

    /* compiled from: MainActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: MainActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public /* synthetic */ class b {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[MainTab.Type.values().length];
            try {
                iArr[MainTab.Type.DISCOVER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[MainTab.Type.SHORTS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[MainTab.Type.MY_LIST.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[MainTab.Type.REWARDS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[MainTab.Type.PROFILE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* compiled from: MainActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c implements ContinuePlayLayout.a {
        c() {
        }

        @Override // com.startshorts.androidplayer.ui.view.main.ContinuePlayLayout.a
        public void a() {
            int i10;
            PlayContinue r02 = ud.b.f68412a.r0();
            if (r02 == null) {
                return;
            }
            ImmersionActivity.a aVar = ImmersionActivity.V0;
            MainActivity mainActivity = MainActivity.this;
            ImmersionParams immersionParams = new ImmersionParams();
            immersionParams.setFrom(r02.getFrom());
            if (r02.getEpisodeNum() != 0) {
                i10 = 1;
            } else {
                i10 = 3;
            }
            immersionParams.setType(i10);
            if (r02.getEpisodeNum() != 0) {
                immersionParams.setEpisodeNum(r02.getEpisodeNum());
            }
            ImmersionShortsInfo immersionShortsInfo = new ImmersionShortsInfo();
            immersionShortsInfo.setShortsId(r02.getShortPlayId());
            immersionShortsInfo.setShortPlayCode(r02.getShortPlayCode());
            immersionShortsInfo.setShortsName(r02.getShortPlayName());
            immersionShortsInfo.setCover(r02.getCoverId());
            immersionShortsInfo.setUpack(r02.getUpack());
            immersionParams.setShortsInfo(immersionShortsInfo);
            Unit unit = Unit.f60915a;
            aVar.a(mainActivity, immersionParams);
            MainActivity.this.x0("continue_watch_pop_click", r02.getShowType());
        }

        @Override // com.startshorts.androidplayer.ui.view.main.ContinuePlayLayout.a
        public void b() {
            PlayContinue r02 = ud.b.f68412a.r0();
            if (r02 == null) {
                return;
            }
            ag.a.d(ag.a.f646a, "continue_watch", r02.getShortPlayCode(), null, 0, null, null, null, r02.getUpack(), null, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_STALL_COUNTER, null);
            MainActivity.this.x0("continue_watch_pop_show", r02.getShowType());
        }

        @Override // com.startshorts.androidplayer.ui.view.main.ContinuePlayLayout.a
        public void onClose() {
            PlayContinue r02 = ud.b.f68412a.r0();
            if (r02 != null) {
                MainActivity.this.x0("continue_watch_pop_close", r02.getShowType());
            }
        }
    }

    /* compiled from: MainActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    static final class d implements Observer, FunctionAdapter {

        /* renamed from: a  reason: collision with root package name */
        private final /* synthetic */ Function1 f44885a;

        d(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f44885a = function;
        }

        public final boolean equals(@Nullable Object obj) {
            if (!(obj instanceof Observer) || !(obj instanceof FunctionAdapter)) {
                return false;
            }
            return Intrinsics.areEqual(getFunctionDelegate(), ((FunctionAdapter) obj).getFunctionDelegate());
        }

        @Override // kotlin.jvm.internal.FunctionAdapter
        @NotNull
        public final f<?> getFunctionDelegate() {
            return this.f44885a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f44885a.invoke(obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit A0(com.startshorts.androidplayer.viewmodel.comingsoon.b bVar) {
        List<String> a10;
        if ((bVar instanceof b.C0656b) && (a10 = ((b.C0656b) bVar).a()) != null) {
            CoroutineUtil.l(CoroutineUtil.f48072a, "ShortCutsUtil setDynamicShortcuts", false, new MainActivity$onCreate$1$1$1(a10, null), 2, null);
        }
        return Unit.f60915a;
    }

    private final void B0() {
        DiscoverTabFragment f02;
        DiscoverTabFragment f03;
        DiscoverTab H0;
        boolean z10 = true;
        if (p0() && (f03 = f0()) != null && (H0 = f03.H0()) != null && H0.isH5()) {
            ((ActivityMainBinding) E()).f38363a.setVisibility(8);
            return;
        }
        if (!p0() || (f02 = f0()) == null || !f02.S0()) {
            z10 = false;
        }
        MainTab.Type type = MainTab.Companion.toEnum(this.f44874p);
        if (type != null) {
            ((ActivityMainBinding) E()).f38363a.n(type, z10);
        }
    }

    private final void D0() {
        Object obj;
        e eVar = e.f2616a;
        Iterator it = CollectionsKt.q(eVar.j(), eVar.i(), eVar.h()).iterator();
        while (true) {
            if (it.hasNext()) {
                obj = it.next();
                if (((e.a) obj).h()) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        e.a aVar = (e.a) obj;
        if (aVar != null) {
            e.a.d(aVar, this, null, null, 6, null);
        }
    }

    private final void Z() {
        if (!qe.a.f65321a.value().getShortsProgressBarOptimizationEnable()) {
            return;
        }
        try {
            ShortsFragment k02 = k0();
            boolean z10 = false;
            if (k02 != null && k02.f3()) {
                z10 = true;
            }
            s("checkEnableTabTouchView -> seekbarVisible(" + z10 + ')');
            if (z10) {
                d0();
            } else {
                c0();
            }
        } catch (Exception e10) {
            m("checkEnableTabTouchView exception -> " + e10.getMessage());
            c0();
        }
    }

    private final List<Class<?>> a0() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(DiscoverTabFragment.class);
        arrayList.add(ShortsFragment.class);
        if (RewardsRepo.f44515a.q()) {
            arrayList.add(RewardsFragment.class);
        }
        arrayList.add(MyListFragment.class);
        arrayList.add(ProfileFragment.class);
        return arrayList;
    }

    private final FragmentStateAdapter b0(List<MainTab> list) {
        final List<Class<?>> list2;
        if (list == null) {
            list2 = a0();
        } else {
            ArrayList arrayList = new ArrayList();
            for (MainTab mainTab : list) {
                int i10 = b.$EnumSwitchMapping$0[mainTab.getType().ordinal()];
                if (i10 != 1) {
                    if (i10 != 2) {
                        if (i10 != 3) {
                            if (i10 != 4) {
                                if (i10 == 5) {
                                    arrayList.add(ProfileFragment.class);
                                }
                            } else {
                                arrayList.add(RewardsFragment.class);
                            }
                        } else {
                            arrayList.add(MyListFragment.class);
                        }
                    } else {
                        arrayList.add(ShortsFragment.class);
                    }
                } else {
                    arrayList.add(DiscoverTabFragment.class);
                }
            }
            list2 = arrayList;
        }
        final ArrayList arrayList2 = new ArrayList();
        Iterator<T> it = list2.iterator();
        while (it.hasNext()) {
            arrayList2.add(Long.valueOf(((Class) it.next()).hashCode()));
        }
        return new FragmentStateAdapter() { // from class: com.startshorts.androidplayer.ui.activity.MainActivity$createFragmentStateAdapter$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(MainActivity.this);
            }

            @Override // androidx.viewpager2.adapter.FragmentStateAdapter
            public boolean containsItem(long j10) {
                return arrayList2.contains(Long.valueOf(j10));
            }

            @Override // androidx.viewpager2.adapter.FragmentStateAdapter
            public Fragment createFragment(int i11) {
                String str;
                List list3;
                List list4;
                String str2;
                String str3;
                Object newInstance = list2.get(i11).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                Intrinsics.checkNotNull(newInstance, "null cannot be cast to non-null type androidx.fragment.app.Fragment");
                Fragment fragment = (Fragment) newInstance;
                if (DiscoverRepo.f43967a.B(fragment)) {
                    Bundle bundle = new Bundle();
                    str3 = MainActivity.this.f44878t;
                    bundle.putString("from", str3);
                    fragment.setArguments(bundle);
                }
                if (fragment instanceof RewardsFragment) {
                    str2 = MainActivity.this.f44879u;
                    ((RewardsFragment) fragment).R2(str2);
                    MainActivity.this.f44879u = "";
                } else if (fragment instanceof ShortsFragment) {
                    str = MainActivity.this.f44879u;
                    ((ShortsFragment) fragment).j4(str);
                    MainActivity.this.f44880v = "";
                }
                list3 = MainActivity.this.f44875q;
                if (list3 == null) {
                    MainActivity.this.f44875q = new ArrayList();
                }
                list4 = MainActivity.this.f44875q;
                if (list4 != null) {
                    list4.add(new WeakReference(fragment));
                }
                return fragment;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.Adapter
            public int getItemCount() {
                return list2.size();
            }

            @Override // androidx.viewpager2.adapter.FragmentStateAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
            public long getItemId(int i11) {
                return arrayList2.get(i11).longValue();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean e0(MainActivity mainActivity, View view, MotionEvent motionEvent) {
        if (mainActivity.r0()) {
            try {
                ShortsFragment k02 = mainActivity.k0();
                if (k02 != null) {
                    Intrinsics.checkNotNull(motionEvent);
                    ShortsFragment.r2(k02, 2, motionEvent, false, 4, null);
                }
            } catch (Exception e10) {
                mainActivity.m("processProgressBarTouchEvent exception -> " + e10.getMessage());
            }
            return true;
        }
        return false;
    }

    private final ComingSoonViewModel g0() {
        return (ComingSoonViewModel) this.f44876r.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CpsViewModel h0() {
        return (CpsViewModel) this.f44877s.getValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:25:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final com.startshorts.androidplayer.ui.fragment.mylist.MyListFragment i0() {
        /*
            r5 = this;
            java.util.List<java.lang.ref.WeakReference<androidx.fragment.app.Fragment>> r0 = r5.f44875q
            r1 = 0
            if (r0 == 0) goto L3b
            java.lang.Iterable r0 = (java.lang.Iterable) r0
            java.util.Iterator r0 = r0.iterator()
        Lb:
            boolean r2 = r0.hasNext()
            if (r2 == 0) goto L2f
            java.lang.Object r2 = r0.next()
            r3 = r2
            java.lang.ref.WeakReference r3 = (java.lang.ref.WeakReference) r3
            java.lang.Object r3 = r3.get()
            androidx.fragment.app.Fragment r3 = (androidx.fragment.app.Fragment) r3
            if (r3 == 0) goto L25
            java.lang.Class r3 = r3.getClass()
            goto L26
        L25:
            r3 = r1
        L26:
            java.lang.Class<com.startshorts.androidplayer.ui.fragment.mylist.MyListFragment> r4 = com.startshorts.androidplayer.ui.fragment.mylist.MyListFragment.class
            boolean r3 = kotlin.jvm.internal.Intrinsics.areEqual(r3, r4)
            if (r3 == 0) goto Lb
            goto L30
        L2f:
            r2 = r1
        L30:
            java.lang.ref.WeakReference r2 = (java.lang.ref.WeakReference) r2
            if (r2 == 0) goto L3b
            java.lang.Object r0 = r2.get()
            androidx.fragment.app.Fragment r0 = (androidx.fragment.app.Fragment) r0
            goto L3c
        L3b:
            r0 = r1
        L3c:
            boolean r2 = r0 instanceof com.startshorts.androidplayer.ui.fragment.mylist.MyListFragment
            if (r2 == 0) goto L43
            r1 = r0
            com.startshorts.androidplayer.ui.fragment.mylist.MyListFragment r1 = (com.startshorts.androidplayer.ui.fragment.mylist.MyListFragment) r1
        L43:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.ui.activity.MainActivity.i0():com.startshorts.androidplayer.ui.fragment.mylist.MyListFragment");
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:25:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final com.startshorts.androidplayer.ui.fragment.reward.RewardsFragment j0() {
        /*
            r5 = this;
            java.util.List<java.lang.ref.WeakReference<androidx.fragment.app.Fragment>> r0 = r5.f44875q
            r1 = 0
            if (r0 == 0) goto L3b
            java.lang.Iterable r0 = (java.lang.Iterable) r0
            java.util.Iterator r0 = r0.iterator()
        Lb:
            boolean r2 = r0.hasNext()
            if (r2 == 0) goto L2f
            java.lang.Object r2 = r0.next()
            r3 = r2
            java.lang.ref.WeakReference r3 = (java.lang.ref.WeakReference) r3
            java.lang.Object r3 = r3.get()
            androidx.fragment.app.Fragment r3 = (androidx.fragment.app.Fragment) r3
            if (r3 == 0) goto L25
            java.lang.Class r3 = r3.getClass()
            goto L26
        L25:
            r3 = r1
        L26:
            java.lang.Class<com.startshorts.androidplayer.ui.fragment.reward.RewardsFragment> r4 = com.startshorts.androidplayer.ui.fragment.reward.RewardsFragment.class
            boolean r3 = kotlin.jvm.internal.Intrinsics.areEqual(r3, r4)
            if (r3 == 0) goto Lb
            goto L30
        L2f:
            r2 = r1
        L30:
            java.lang.ref.WeakReference r2 = (java.lang.ref.WeakReference) r2
            if (r2 == 0) goto L3b
            java.lang.Object r0 = r2.get()
            androidx.fragment.app.Fragment r0 = (androidx.fragment.app.Fragment) r0
            goto L3c
        L3b:
            r0 = r1
        L3c:
            boolean r2 = r0 instanceof com.startshorts.androidplayer.ui.fragment.reward.RewardsFragment
            if (r2 == 0) goto L43
            r1 = r0
            com.startshorts.androidplayer.ui.fragment.reward.RewardsFragment r1 = (com.startshorts.androidplayer.ui.fragment.reward.RewardsFragment) r1
        L43:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.ui.activity.MainActivity.j0():com.startshorts.androidplayer.ui.fragment.reward.RewardsFragment");
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:25:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final com.startshorts.androidplayer.ui.fragment.shorts.v2.ShortsFragment k0() {
        /*
            r5 = this;
            java.util.List<java.lang.ref.WeakReference<androidx.fragment.app.Fragment>> r0 = r5.f44875q
            r1 = 0
            if (r0 == 0) goto L3b
            java.lang.Iterable r0 = (java.lang.Iterable) r0
            java.util.Iterator r0 = r0.iterator()
        Lb:
            boolean r2 = r0.hasNext()
            if (r2 == 0) goto L2f
            java.lang.Object r2 = r0.next()
            r3 = r2
            java.lang.ref.WeakReference r3 = (java.lang.ref.WeakReference) r3
            java.lang.Object r3 = r3.get()
            androidx.fragment.app.Fragment r3 = (androidx.fragment.app.Fragment) r3
            if (r3 == 0) goto L25
            java.lang.Class r3 = r3.getClass()
            goto L26
        L25:
            r3 = r1
        L26:
            java.lang.Class<com.startshorts.androidplayer.ui.fragment.shorts.v2.ShortsFragment> r4 = com.startshorts.androidplayer.ui.fragment.shorts.v2.ShortsFragment.class
            boolean r3 = kotlin.jvm.internal.Intrinsics.areEqual(r3, r4)
            if (r3 == 0) goto Lb
            goto L30
        L2f:
            r2 = r1
        L30:
            java.lang.ref.WeakReference r2 = (java.lang.ref.WeakReference) r2
            if (r2 == 0) goto L3b
            java.lang.Object r0 = r2.get()
            androidx.fragment.app.Fragment r0 = (androidx.fragment.app.Fragment) r0
            goto L3c
        L3b:
            r0 = r1
        L3c:
            boolean r2 = r0 instanceof com.startshorts.androidplayer.ui.fragment.shorts.v2.ShortsFragment
            if (r2 == 0) goto L43
            r1 = r0
            com.startshorts.androidplayer.ui.fragment.shorts.v2.ShortsFragment r1 = (com.startshorts.androidplayer.ui.fragment.shorts.v2.ShortsFragment) r1
        L43:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.ui.activity.MainActivity.k0():com.startshorts.androidplayer.ui.fragment.shorts.v2.ShortsFragment");
    }

    private final r m0() {
        return CoroutineUtil.l(CoroutineUtil.f48072a, "handleJumpPage", false, new MainActivity$handleJumpPage$1(this, null), 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean n0() {
        rf.c cVar = rf.c.f65843a;
        if (cVar.d() != null) {
            Logger.f41511a.e("CampaignNewTag", "handleNotificationNavigatorCache -> exist campaign jump");
            ImmersionActivity.a aVar = ImmersionActivity.V0;
            ImmersionParams d10 = cVar.d();
            Intrinsics.checkNotNull(d10);
            aVar.a(this, d10);
            cVar.t(null);
            return true;
        } else if (cVar.n()) {
            Logger.f41511a.e("CampaignNewTag", "handleNotificationNavigatorCache -> exist redReward page");
            cVar.D(false);
            fk.a.f51702a.i(true, true);
            return true;
        } else if (cVar.h()) {
            s("handleNotificationNavigatorCache -> exist mShowCheckInPage");
            cVar.x(false);
            RewardsRepo rewardsRepo = RewardsRepo.f44515a;
            rewardsRepo.z();
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            bundle.putString("scene", Constants.PUSH);
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "reward_show", bundle, 0L, 4, null);
            RewardsFragment.a.d(RewardsFragment.Y, this, Constants.PUSH, !rewardsRepo.q(), null, null, 24, null);
            return true;
        } else if (cVar.e() != null) {
            s("handleNotificationNavigatorCache -> exist mImmersionParams");
            ImmersionActivity.a aVar2 = ImmersionActivity.V0;
            ImmersionParams e10 = cVar.e();
            Intrinsics.checkNotNull(e10);
            aVar2.a(this, e10);
            cVar.u(null);
            return true;
        } else if (cVar.f() != null) {
            s("handleNotificationNavigatorCache -> exist mShortsEpisode");
            aa.a aVar3 = aa.a.f321a;
            String name = MainActivity.class.getName();
            Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
            aVar3.i(name);
            ShortsEpisode f10 = cVar.f();
            if (f10 != null) {
                ShortsFragment k02 = k0();
                if (k02 != null) {
                    k02.q3("Push", f10);
                }
                receiveUpdateMainTabEvent(new UpdateMainTabEvent(MainTab.Type.SHORTS, false, null, null, 14, null));
            }
            return true;
        } else if (cVar.i()) {
            s("handleNotificationNavigatorCache -> exist mShowDiscover");
            cVar.y(false);
            aa.a aVar4 = aa.a.f321a;
            String name2 = MainActivity.class.getName();
            Intrinsics.checkNotNullExpressionValue(name2, "getName(...)");
            aVar4.i(name2);
            receiveUpdateMainTabEvent(new UpdateMainTabEvent(MainTab.Type.DISCOVER, false, null, null, 14, null));
            return true;
        } else if (cVar.m()) {
            s("handleNotificationNavigatorCache -> exist mShowProfile");
            cVar.C(false);
            aa.a aVar5 = aa.a.f321a;
            String name3 = MainActivity.class.getName();
            Intrinsics.checkNotNullExpressionValue(name3, "getName(...)");
            aVar5.i(name3);
            receiveUpdateMainTabEvent(new UpdateMainTabEvent(MainTab.Type.PROFILE, false, null, null, 14, null));
            return true;
        } else {
            String b10 = cVar.b();
            if (b10 != null && b10.length() != 0) {
                s("handleNotificationNavigatorCache -> exist mActUrl");
                j jVar = j.f3485a;
                String c10 = cVar.c();
                if (c10 == null) {
                    c10 = "";
                }
                jVar.m(this, c10, cVar.b());
                cVar.r(null);
                cVar.s(null);
                return true;
            } else if (cVar.q()) {
                s("handleNotificationNavigatorCache -> exist mShowTopupPage");
                cVar.G(false);
                FragmentContainer.f45006p.b(this, com.startshorts.androidplayer.ui.fragment.a.f45609a.n(), new IFragmentBundle[0]);
                return true;
            } else if (cVar.g()) {
                s("handleNotificationNavigatorCache -> exist mShowBonusRecordPage");
                cVar.w(false);
                FragmentContainer.f45006p.b(this, com.startshorts.androidplayer.ui.fragment.a.f45609a.h(), new IntBundle("tab_index", 2));
                return true;
            } else if (cVar.o()) {
                s("handleNotificationNavigatorCache -> exist mShowShortsPage");
                cVar.E(false);
                aa.a aVar6 = aa.a.f321a;
                String name4 = MainActivity.class.getName();
                Intrinsics.checkNotNullExpressionValue(name4, "getName(...)");
                aVar6.i(name4);
                receiveUpdateMainTabEvent(new UpdateMainTabEvent(MainTab.Type.SHORTS, false, null, null, 14, null));
                return true;
            } else if (cVar.k()) {
                s("handleNotificationNavigatorCache -> exist mShowMyListPage");
                cVar.A(false);
                aa.a aVar7 = aa.a.f321a;
                String name5 = MainActivity.class.getName();
                Intrinsics.checkNotNullExpressionValue(name5, "getName(...)");
                aVar7.i(name5);
                receiveUpdateMainTabEvent(new UpdateMainTabEvent(MainTab.Type.MY_LIST, false, null, 1, 6, null));
                return true;
            } else if (cVar.l()) {
                s("handleNotificationNavigatorCache -> exist mShowMyRecentPage");
                cVar.B(false);
                aa.a aVar8 = aa.a.f321a;
                String name6 = MainActivity.class.getName();
                Intrinsics.checkNotNullExpressionValue(name6, "getName(...)");
                aVar8.i(name6);
                receiveUpdateMainTabEvent(new UpdateMainTabEvent(MainTab.Type.MY_LIST, false, null, 0, 6, null));
                return true;
            } else if (cVar.p()) {
                s("handleNotificationNavigatorCache -> exist mShowSubsDetailPage");
                cVar.F(false);
                if (AccountRepo.f43052a.w0()) {
                    SubsDetailActivity.a.b(SubsDetailActivity.Q, this, "mine", null, null, false, null, 60, null);
                }
                return true;
            } else if (!cVar.j()) {
                return false;
            } else {
                s("handleNotificationNavigatorCache -> exist mShowLibrary");
                cVar.z(false);
                LibraryActivity.f45393z.a(this);
                return true;
            }
        }
    }

    private final boolean q0() {
        return Intrinsics.areEqual(this.f44874p, "REWARDS");
    }

    private final void s0() {
        ((ActivityMainBinding) E()).f38363a.setCallback(new c());
    }

    private final void t0() {
        g.f62917a.j();
        ((ActivityMainBinding) E()).f38364b.setOnViewClick(new Function2() { // from class: ph.e
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                Unit u02;
                u02 = MainActivity.u0(MainActivity.this, (String) obj, (SubsSku) obj2);
                return u02;
            }
        });
        ((ActivityMainBinding) E()).f38364b.setOnViewHidden(new Function1() { // from class: ph.f
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit v02;
                v02 = MainActivity.v0(MainActivity.this, ((Boolean) obj).booleanValue());
                return v02;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit u0(MainActivity mainActivity, String type, SubsSku subsSku) {
        Intrinsics.checkNotNullParameter(type, "type");
        if (subsSku != null) {
            if (Intrinsics.areEqual(type, "lowest_subs_sku")) {
                SubsExpansionManager.f42751a.y(mainActivity, subsSku, "discover");
            } else {
                SubsExpansionManager.f42751a.z(mainActivity, subsSku);
            }
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit v0(MainActivity mainActivity, boolean z10) {
        if (z10) {
            ((ActivityMainBinding) mainActivity.E()).f38365c.r(mainActivity.f44874p);
        } else {
            b0.d(((ActivityMainBinding) mainActivity.E()).f38365c);
        }
        return Unit.f60915a;
    }

    private final void w0(FragmentStateAdapter fragmentStateAdapter) {
        ViewPager2 viewPager2 = ((ActivityMainBinding) E()).f38369g;
        viewPager2.setSaveEnabled(false);
        viewPager2.setAdapter(fragmentStateAdapter);
        viewPager2.setUserInputEnabled(false);
        viewPager2.setOffscreenPageLimit(fragmentStateAdapter.getItemCount());
        Intrinsics.checkNotNull(viewPager2);
        kd.d.b(viewPager2, 2);
        int e10 = ((ActivityMainBinding) E()).f38367e.e(MainTab.Companion.toEnum(this.f44874p));
        if (e10 > 0) {
            ((ActivityMainBinding) E()).f38369g.setCurrentItem(e10, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void x0(String str, int i10) {
        String str2;
        String str3;
        if (!r0() && !q0()) {
            if (i10 == 1) {
                str2 = "banner";
            } else {
                str2 = "cover";
            }
            String str4 = this.f44874p;
            int hashCode = str4.hashCode();
            if (hashCode != -2038594735) {
                if (hashCode != 408556937) {
                    if (hashCode == 1055811561 && str4.equals("DISCOVER")) {
                        str3 = "discover";
                    }
                    str3 = "";
                } else {
                    if (str4.equals(LogUtils.EVENT_TYPE_PROFILE)) {
                        str3 = "profile";
                    }
                    str3 = "";
                }
            } else {
                if (str4.equals("MY_LIST")) {
                    str3 = "mylist";
                }
                str3 = "";
            }
            if (str3.length() > 0) {
                EventManager eventManager = EventManager.f42463a;
                Bundle bundle = new Bundle();
                bundle.putString("type", str2);
                bundle.putString("scene", str3);
                Unit unit = Unit.f60915a;
                EventManager.s0(eventManager, str, bundle, 0L, 4, null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ComingSoonViewModel y0(MainActivity mainActivity) {
        return (ComingSoonViewModel) new ViewModelProvider(mainActivity).get(ComingSoonViewModel.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CpsViewModel z0(MainActivity mainActivity) {
        return (CpsViewModel) new ViewModelProvider(mainActivity).get(CpsViewModel.class);
    }

    public final void C0() {
        ud.a aVar = ud.a.f68411a;
        if (aVar.K()) {
            Logger.f41511a.h("CampaignNewTag", "resolveCpsEvent return");
            return;
        }
        aVar.d0(true);
        Logger.f41511a.h("CampaignNewTag", "resolveCpsEvent");
        CoroutineUtil.l(CoroutineUtil.f48072a, "resolveCpsEvent", false, new MainActivity$resolveCpsEvent$1(this, null), 2, null);
    }

    public final void E0() {
        ((ActivityMainBinding) E()).f38363a.m();
    }

    public final void F0(@NotNull MainTab.Type targetType, boolean z10) {
        Intrinsics.checkNotNullParameter(targetType, "targetType");
        l0().k(this.f44874p, targetType, z10);
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public final void c0() {
        s("disableTabTouchView");
        ((ActivityMainBinding) E()).f38368f.setOnTouchListener(null);
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public final void d0() {
        if (!qe.a.f65321a.value().getShortsProgressBarOptimizationEnable()) {
            return;
        }
        s("enableTabTouchView");
        ((ActivityMainBinding) E()).f38368f.setOnTouchListener(new View.OnTouchListener() { // from class: ph.b
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean e02;
                e02 = MainActivity.e0(MainActivity.this, view, motionEvent);
                return e02;
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:25:? A[RETURN, SYNTHETIC] */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.startshorts.androidplayer.ui.fragment.discover.DiscoverTabFragment f0() {
        /*
            r5 = this;
            java.util.List<java.lang.ref.WeakReference<androidx.fragment.app.Fragment>> r0 = r5.f44875q
            r1 = 0
            if (r0 == 0) goto L3b
            java.lang.Iterable r0 = (java.lang.Iterable) r0
            java.util.Iterator r0 = r0.iterator()
        Lb:
            boolean r2 = r0.hasNext()
            if (r2 == 0) goto L2f
            java.lang.Object r2 = r0.next()
            r3 = r2
            java.lang.ref.WeakReference r3 = (java.lang.ref.WeakReference) r3
            java.lang.Object r3 = r3.get()
            androidx.fragment.app.Fragment r3 = (androidx.fragment.app.Fragment) r3
            if (r3 == 0) goto L25
            java.lang.Class r3 = r3.getClass()
            goto L26
        L25:
            r3 = r1
        L26:
            java.lang.Class<com.startshorts.androidplayer.ui.fragment.discover.DiscoverTabFragment> r4 = com.startshorts.androidplayer.ui.fragment.discover.DiscoverTabFragment.class
            boolean r3 = kotlin.jvm.internal.Intrinsics.areEqual(r3, r4)
            if (r3 == 0) goto Lb
            goto L30
        L2f:
            r2 = r1
        L30:
            java.lang.ref.WeakReference r2 = (java.lang.ref.WeakReference) r2
            if (r2 == 0) goto L3b
            java.lang.Object r0 = r2.get()
            androidx.fragment.app.Fragment r0 = (androidx.fragment.app.Fragment) r0
            goto L3c
        L3b:
            r0 = r1
        L3c:
            boolean r2 = r0 instanceof com.startshorts.androidplayer.ui.fragment.discover.DiscoverTabFragment
            if (r2 == 0) goto L43
            r1 = r0
            com.startshorts.androidplayer.ui.fragment.discover.DiscoverTabFragment r1 = (com.startshorts.androidplayer.ui.fragment.discover.DiscoverTabFragment) r1
        L43:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.ui.activity.MainActivity.f0():com.startshorts.androidplayer.ui.fragment.discover.DiscoverTabFragment");
    }

    @NotNull
    public final MainTabLayout l0() {
        MainTabLayout tabLayout = ((ActivityMainBinding) E()).f38367e;
        Intrinsics.checkNotNullExpressionValue(tabLayout, "tabLayout");
        return tabLayout;
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.BaseActivity
    public int o() {
        return R$layout.activity_main;
    }

    public final void o0() {
        ((ActivityMainBinding) E()).f38363a.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    @ms.c
    public void onActivityResult(int i10, int i11, @Nullable Intent intent) {
        WeakReference<Fragment> weakReference;
        Fragment fragment;
        super.onActivityResult(i10, i11, intent);
        int e10 = ((ActivityMainBinding) E()).f38367e.e(MainTab.Companion.toEnum(this.f44874p));
        if (e10 == -1) {
            return;
        }
        try {
            List<WeakReference<Fragment>> list = this.f44875q;
            if (list != null && (weakReference = list.get(e10)) != null && (fragment = weakReference.get()) != null) {
                fragment.onActivityResult(i10, i11, intent);
            }
        } catch (Exception e11) {
            m("handleActivityResult exception -> " + e11.getMessage());
        }
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.BaseVDBActivity, com.startshorts.androidplayer.ui.activity.base.BaseActivity, com.hades.aar.activity.IDActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        String str;
        String str2;
        aa.a.f321a.h();
        super.onCreate(bundle);
        if (ABTestFactory.f42224a.h1().isEnable().invoke().booleanValue()) {
            str = "SHORTS";
        } else {
            str = "DISCOVER";
        }
        if (!i0.f68447a.b()) {
            DownloadEpisodeManager.f45066a.N();
        }
        s.f50371a.a(true);
        BillingUtil.f48070a.a();
        AccountRepo accountRepo = AccountRepo.f43052a;
        if (accountRepo.H0()) {
            HomeRetainDiscountSubsPresent.f42741a.k();
        }
        if (bundle == null || (str2 = bundle.getString("tab_type", str)) == null) {
            str2 = str;
        }
        this.f44874p = str2;
        if (bundle != null) {
            s("savedInstanceState mCurrentTabType -> " + this.f44874p);
        }
        if (!MainTab.Companion.isValidType(this.f44874p)) {
            this.f44874p = str;
        }
        if (bundle != null) {
            startActivity(new Intent(this, RoutingActivity.class));
            finish();
            return;
        }
        String stringExtra = getIntent().getStringExtra("from");
        if (stringExtra == null) {
            stringExtra = "icon";
        }
        this.f44878t = stringExtra;
        ed.a.f51339a.b(this, true);
        ((ActivityMainBinding) E()).f38367e.g(this.f44874p);
        w0(b0(((ActivityMainBinding) E()).f38367e.getTabLists()));
        if (com.startshorts.androidplayer.manager.configure.ad.a.f42306a.value().p("home_reward")) {
            AdManager.f41600a.a0(AdScene.INTERSTITIAL);
        }
        EventManager.f42463a.Z(this.f44878t);
        s0();
        t0();
        g0().F(a.b.f48432a);
        if (Build.VERSION.SDK_INT >= 25) {
            g0().F(a.c.f48433a);
            g0().C().observe(this, new d(new Function1() { // from class: ph.a
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit A0;
                    A0 = MainActivity.A0((com.startshorts.androidplayer.viewmodel.comingsoon.b) obj);
                    return A0;
                }
            }));
        }
        g.f62917a.l(accountRepo.t0());
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i10, @NotNull KeyEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (i10 == 4 && event.getRepeatCount() == 0) {
            IntentUtil.f48164a.a(this);
            return true;
        }
        return super.onKeyDown(i10, event);
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.PermissionActivity, com.startshorts.androidplayer.ui.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        D0();
        fk.c.c(fk.c.f51707a, false, 1, null);
        af.i.f639a.g();
        AccountManager.f41533a.v();
        au.c.d().l(new DestroyNotificationActivityEvent(null, 1, null));
        m0();
        B0();
        PushManager.f42838a.j();
        ((ActivityMainBinding) E()).f38364b.B(this.f44874p);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(@NotNull Bundle outState) {
        Intrinsics.checkNotNullParameter(outState, "outState");
        super.onSaveInstanceState(outState);
        outState.putString("tab_type", this.f44874p);
    }

    public final boolean p0() {
        return Intrinsics.areEqual(this.f44874p, "DISCOVER");
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.BaseActivity
    public boolean q() {
        return true;
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.PermissionActivity, com.startshorts.androidplayer.ui.activity.base.BaseActivity
    @NotNull
    public String r() {
        return "MainActivity";
    }

    public final boolean r0() {
        return Intrinsics.areEqual(this.f44874p, "SHORTS");
    }

    @l(threadMode = ThreadMode.MAIN)
    public final void receiveAppStateEvent(@NotNull AppStateEvent event) {
        ShortPlayNotification d22;
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.getState() == 2) {
            if (Intrinsics.areEqual(kf.b.f60715a.c(), MainActivity.class.getSimpleName())) {
                if (r0()) {
                    ShortsFragment k02 = k0();
                    if (k02 != null && (d22 = k02.d2()) != null) {
                        PushManager.f42838a.h(d22);
                    }
                } else if (q0() && ud.a.f68411a.H() > 0) {
                    PushManager.f42838a.g();
                } else {
                    PlayContinue r02 = ud.b.f68412a.r0();
                    if (r02 == null) {
                        return;
                    }
                    ShortPlayNotification shortPlayNotification = new ShortPlayNotification();
                    shortPlayNotification.setShortId(Integer.valueOf(r02.getShortPlayId()));
                    shortPlayNotification.setShortPlayCode(r02.getShortPlayCode());
                    shortPlayNotification.setTitle(r02.getShortPlayName());
                    shortPlayNotification.setDramaNum(Integer.valueOf(r02.getEpisodeNum()));
                    shortPlayNotification.setCover(r02.getCoverId());
                    PushManager.f42838a.h(shortPlayNotification);
                }
            }
        } else if (event.getState() == 1 && q0()) {
            PushManager.f42838a.b();
        }
    }

    @l(threadMode = ThreadMode.MAIN)
    public final void receiveCampaignFailureEvent(@NotNull CampaignFailureEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        C0();
    }

    @l(threadMode = ThreadMode.POSTING)
    public final void receiveHandleHomeDialogProcessorEvent(@NotNull HandleHomeDialogProcessorEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        s("receiveHandleHomeDialogProcessorEvent -> mPaused(" + p() + ')');
        if (p()) {
            return;
        }
        CoroutineUtil.l(CoroutineUtil.f48072a, "HandleHomeDialogProcessorEvent", false, new MainActivity$receiveHandleHomeDialogProcessorEvent$1(this, null), 2, null);
    }

    @l(threadMode = ThreadMode.POSTING)
    public final void receiveHandleNotificationNavigatorCacheEvent(@NotNull HandleNotificationNavigatorCacheEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        s("receive HandleNotificationNavigatorCacheEvent");
        CoroutineUtil.l(CoroutineUtil.f48072a, "handleNotificationNavigatorCache", false, new MainActivity$receiveHandleNotificationNavigatorCacheEvent$1(this, null), 2, null);
    }

    @l(threadMode = ThreadMode.MAIN)
    public final void receiveMainTabClickEvent(@NotNull MainTabClickEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        s("receive MainTabClickEvent -> " + event);
        ((ActivityMainBinding) E()).f38367e.dispatchTouchEvent(event.getMotionEvent());
    }

    @l(threadMode = ThreadMode.MAIN)
    public final void receiveRefreshContinuePlayLayoutEvent(@NotNull RefreshContinuePlayLayoutEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        B0();
    }

    @l(threadMode = ThreadMode.MAIN)
    public final void receiveRefreshMyListRedPointEvent(@NotNull RefreshMyListRedPointEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (((ActivityMainBinding) E()).f38367e.d(MainTab.Type.REWARDS) != null) {
            ((ActivityMainBinding) E()).f38367e.l(MainTab.Type.PROFILE, !event.getShortIds().isEmpty());
        } else {
            ((ActivityMainBinding) E()).f38367e.l(MainTab.Type.MY_LIST, !event.getShortIds().isEmpty());
        }
    }

    @l(threadMode = ThreadMode.MAIN)
    public final void receiveSubsExpansionShowEvent(@NotNull SubsExpansionShowEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        s("receive receiveSubsExpansionShowEvent");
        ((ActivityMainBinding) E()).f38364b.B(this.f44874p);
    }

    @l(threadMode = ThreadMode.POSTING)
    public final void receiveUpdateDataEvent(@NotNull UpdateData event) {
        Intrinsics.checkNotNullParameter(event, "event");
        s("receiveUpdateDataEvent -> mPaused(" + p() + ')');
        if (p()) {
            return;
        }
        CoroutineUtil.l(CoroutineUtil.f48072a, "ShowUpdateDialog", false, new MainActivity$receiveUpdateDataEvent$1(this, null), 2, null);
    }

    @l(threadMode = ThreadMode.MAIN)
    public final void receiveUpdateMainTabEvent(@NotNull UpdateMainTabEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        s("receive UpdateMainTabEvent -> " + event);
        MainTab.Type tabType = event.getTabType();
        MainTab.Type type = MainTab.Type.ACT;
        if (tabType != type) {
            this.f44874p = event.getTabType().name();
        }
        ((ActivityMainBinding) E()).f38364b.B(event.getTabType().name());
        int i10 = b.$EnumSwitchMapping$0[event.getTabType().ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 != 4) {
                        if (i10 == 5) {
                            AccountRepo.c1(AccountRepo.f43052a, false, null, 3, null);
                            EventManager.s0(EventManager.f42463a, "me_show", null, 0L, 6, null);
                        }
                    } else {
                        this.f44874p = "REWARDS";
                        this.f44879u = event.getFrom();
                        RewardsFragment j02 = j0();
                        if (j02 != null) {
                            j02.R2(event.getFrom());
                        }
                    }
                } else {
                    EventManager.s0(EventManager.f42463a, "mylist_show", null, 0L, 6, null);
                    i0();
                    Intrinsics.areEqual(event.getExtra(), (Object) 0);
                }
            } else {
                Logger.f41511a.e("CampaignNewTag", "receiveUpdateMainTabEvent MainTab.Type.SHORTS CampaignParser.parse()");
                EventManager.s0(EventManager.f42463a, "short_show", null, 0L, 6, null);
                this.f44880v = event.getFrom();
                ShortsFragment k02 = k0();
                if (k02 != null) {
                    k02.j4(event.getFrom());
                }
                CoroutineUtil.l(CoroutineUtil.f48072a, "HomeDialogProcessor.process", false, new MainActivity$receiveUpdateMainTabEvent$2(this, null), 2, null);
            }
        } else {
            Logger.f41511a.e("CampaignNewTag", "receiveUpdateMainTabEvent MainTab.Type.DISCOVER CampaignParser.parse()");
            if (!TextUtils.isEmpty(BaseCampaignProvider.f42007e.a(CampaignType.UPLOAD_CAMPAIGN_INFO_RESULT)) || CampaignReporter.f41888a.s()) {
                CampaignParser.f41836a.x();
            }
            CoroutineUtil.l(CoroutineUtil.f48072a, "HomeDialogProcessor.process", false, new MainActivity$receiveUpdateMainTabEvent$1(this, null), 2, null);
        }
        if (event.getTabType() != type) {
            if (event.getTabType() == MainTab.Type.SHORTS) {
                Z();
            } else {
                c0();
            }
            B0();
            int e10 = ((ActivityMainBinding) E()).f38367e.e(event.getTabType());
            if (e10 != -1) {
                ((ActivityMainBinding) E()).f38369g.setCurrentItem(e10, false);
            }
            if (event.getClickTab()) {
                com.startshorts.androidplayer.manager.configure.ad.c.f42340a.s(this.f44878t, this);
            }
        }
        ((ActivityMainBinding) E()).f38367e.j(event.getTabType());
        EventManager.s(EventManager.f42463a, false, 1, null);
    }

    @l(threadMode = ThreadMode.MAIN)
    public final void receiveUserRechargedEvent(@NotNull UserRechargedEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        s("receive UserRechargedEvent");
        RewardsRepo.f44515a.h();
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.BaseVDBActivity, com.startshorts.androidplayer.ui.activity.base.BaseActivity
    public void v() {
        super.v();
        if (F()) {
            ((ActivityMainBinding) E()).f38369g.setAdapter(null);
        }
    }
}
