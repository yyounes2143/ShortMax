package com.startshorts.androidplayer.adapter.discover;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.hades.aar.pagestate.State;
import com.hades.aar.pagestate.StateViewGroup;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.adapter.discover.DiscoverCategoryViewPagerItemAdapter;
import com.startshorts.androidplayer.adapter.discover.DiscoverModuleAdapter;
import com.startshorts.androidplayer.bean.act.CallAppDataKey;
import com.startshorts.androidplayer.bean.discover.DiscoverCategory;
import com.startshorts.androidplayer.bean.discover.DiscoverCategoryShorts;
import com.startshorts.androidplayer.bean.discover.DiscoverModule;
import com.startshorts.androidplayer.bean.discover.DiscoverShorts;
import com.startshorts.androidplayer.bean.discover.DiscoverTab;
import com.startshorts.androidplayer.bean.discover.PlayListDiscoverCategory;
import com.startshorts.androidplayer.bean.discover.VideoPreviewInfo;
import com.startshorts.androidplayer.bean.eventbus.VideoPreviewPlayEvent;
import com.startshorts.androidplayer.bean.exception.ResponseException;
import com.startshorts.androidplayer.bean.fresco.FrescoConfig;
import com.startshorts.androidplayer.bean.shorts.BaseShorts;
import com.startshorts.androidplayer.databinding.ItemDiscoverCategoryPageItemBinding;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.ui.activity.MainActivity;
import com.startshorts.androidplayer.ui.fragment.discover.DiscoverTabFragment;
import com.startshorts.androidplayer.ui.view.banner.BannerViewPager;
import com.startshorts.androidplayer.ui.view.banner.BaseBannerAdapter;
import com.startshorts.androidplayer.ui.view.banner.BaseViewHolder;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.discover.VideoPreview;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import com.startshorts.androidplayer.ui.view.pagestate.SNetworkErrorView;
import com.startshorts.androidplayer.ui.view.pagestate.SOtherErrorView;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.utils.exposure.ExposureLayout;
import com.startshorts.androidplayer.utils.ext.LifeCycleExtKt;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
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
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DiscoverCategoryViewPagerItemAdapter.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDiscoverCategoryViewPagerItemAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverCategoryViewPagerItemAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,475:1\n295#2,2:476\n1#3:478\n*S KotlinDebug\n*F\n+ 1 DiscoverCategoryViewPagerItemAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter\n*L\n178#1:476,2\n*E\n"})
/* loaded from: classes6.dex */
public final class DiscoverCategoryViewPagerItemAdapter extends BaseBannerAdapter<DiscoverShorts> {
    @NotNull
    private static final ms.i<Float> A;
    private static final int B;
    private static final int C;
    private static final float D;
    private static final int E;
    @NotNull

    /* renamed from: t  reason: collision with root package name */
    public static final b f37283t = new b(null);

    /* renamed from: u  reason: collision with root package name */
    private static final int f37284u;

    /* renamed from: v  reason: collision with root package name */
    private static final int f37285v;

    /* renamed from: w  reason: collision with root package name */
    private static final float f37286w;

    /* renamed from: x  reason: collision with root package name */
    private static final float f37287x;
    @NotNull

    /* renamed from: y  reason: collision with root package name */
    private static final ms.i<Float> f37288y;

    /* renamed from: z  reason: collision with root package name */
    private static final float f37289z;

    /* renamed from: l  reason: collision with root package name */
    private final int f37290l;
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    private final DiscoverModule f37291m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private final DiscoverModuleAdapter.n f37292n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private final Lifecycle f37293o;
    @NotNull

    /* renamed from: p  reason: collision with root package name */
    private final ItemDiscoverCategoryPageItemBinding f37294p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private kotlinx.coroutines.r f37295q;
    @NotNull

    /* renamed from: r  reason: collision with root package name */
    private final MutableLiveData<a> f37296r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f37297s;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DiscoverCategoryViewPagerItemAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static abstract class a {

        /* compiled from: DiscoverCategoryViewPagerItemAdapter.kt */
        @Metadata
        /* renamed from: com.startshorts.androidplayer.adapter.discover.DiscoverCategoryViewPagerItemAdapter$a$a  reason: collision with other inner class name */
        /* loaded from: classes6.dex */
        public static final class C0607a extends a {
            @NotNull

            /* renamed from: a  reason: collision with root package name */
            private final DiscoverCategory f37298a;
            @NotNull

            /* renamed from: b  reason: collision with root package name */
            private final ResponseException f37299b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0607a(@NotNull DiscoverCategory category, @NotNull ResponseException responseException) {
                super(null);
                Intrinsics.checkNotNullParameter(category, "category");
                Intrinsics.checkNotNullParameter(responseException, "responseException");
                this.f37298a = category;
                this.f37299b = responseException;
            }

            @NotNull
            public final DiscoverCategory a() {
                return this.f37298a;
            }

            @NotNull
            public final ResponseException b() {
                return this.f37299b;
            }

            public boolean equals(@Nullable Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof C0607a)) {
                    return false;
                }
                C0607a c0607a = (C0607a) obj;
                if (Intrinsics.areEqual(this.f37298a, c0607a.f37298a) && Intrinsics.areEqual(this.f37299b, c0607a.f37299b)) {
                    return true;
                }
                return false;
            }

            public int hashCode() {
                return (this.f37298a.hashCode() * 31) + this.f37299b.hashCode();
            }

            @NotNull
            public String toString() {
                return "CategoryFailed(category=" + this.f37298a + ", responseException=" + this.f37299b + ')';
            }
        }

        /* compiled from: DiscoverCategoryViewPagerItemAdapter.kt */
        @Metadata
        /* loaded from: classes6.dex */
        public static final class b extends a {
            @NotNull

            /* renamed from: a  reason: collision with root package name */
            private final DiscoverCategory f37300a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public b(@NotNull DiscoverCategory category) {
                super(null);
                Intrinsics.checkNotNullParameter(category, "category");
                this.f37300a = category;
            }

            @NotNull
            public final DiscoverCategory a() {
                return this.f37300a;
            }

            public boolean equals(@Nullable Object obj) {
                if (this == obj) {
                    return true;
                }
                if ((obj instanceof b) && Intrinsics.areEqual(this.f37300a, ((b) obj).f37300a)) {
                    return true;
                }
                return false;
            }

            public int hashCode() {
                return this.f37300a.hashCode();
            }

            @NotNull
            public String toString() {
                return "CategoryLoadingStart(category=" + this.f37300a + ')';
            }
        }

        /* compiled from: DiscoverCategoryViewPagerItemAdapter.kt */
        @Metadata
        /* loaded from: classes6.dex */
        public static final class c extends a {
            @NotNull

            /* renamed from: a  reason: collision with root package name */
            private final DiscoverCategory f37301a;
            @NotNull

            /* renamed from: b  reason: collision with root package name */
            private final List<DiscoverCategoryShorts> f37302b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public c(@NotNull DiscoverCategory category, @NotNull List<DiscoverCategoryShorts> shorts) {
                super(null);
                Intrinsics.checkNotNullParameter(category, "category");
                Intrinsics.checkNotNullParameter(shorts, "shorts");
                this.f37301a = category;
                this.f37302b = shorts;
            }

            @NotNull
            public final DiscoverCategory a() {
                return this.f37301a;
            }

            @NotNull
            public final List<DiscoverCategoryShorts> b() {
                return this.f37302b;
            }

            public boolean equals(@Nullable Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof c)) {
                    return false;
                }
                c cVar = (c) obj;
                if (Intrinsics.areEqual(this.f37301a, cVar.f37301a) && Intrinsics.areEqual(this.f37302b, cVar.f37302b)) {
                    return true;
                }
                return false;
            }

            public int hashCode() {
                return (this.f37301a.hashCode() * 31) + this.f37302b.hashCode();
            }

            @NotNull
            public String toString() {
                return "CategorySucceed(category=" + this.f37301a + ", shorts=" + this.f37302b + ')';
            }
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: DiscoverCategoryViewPagerItemAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final float c() {
            return ((Number) DiscoverCategoryViewPagerItemAdapter.f37288y.getValue()).floatValue();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final float d() {
            return ((Number) DiscoverCategoryViewPagerItemAdapter.A.getValue()).floatValue();
        }

        private b() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DiscoverCategoryViewPagerItemAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public final class c implements ViewPager2.PageTransformer {

        /* renamed from: a  reason: collision with root package name */
        private final float f37303a;

        public c(float f10) {
            this.f37303a = f10;
        }

        @Override // androidx.viewpager2.widget.ViewPager2.PageTransformer
        public void transformPage(@NotNull View view, float f10) {
            float d10;
            Intrinsics.checkNotNullParameter(view, "view");
            try {
                int width = view.getWidth();
                view.setPivotY(view.getHeight());
                int i10 = 1;
                float f11 = 0.0f;
                if (f10 < -1.0f) {
                    view.setScaleX(this.f37303a);
                    view.setScaleY(this.f37303a);
                } else if (f10 <= 1.0f) {
                    if (f10 < 0.0f) {
                        float f12 = 1;
                        float f13 = this.f37303a;
                        float f14 = ((f12 + f10) * (f12 - f13)) + f13;
                        view.setScaleX(f14);
                        view.setScaleY(f14);
                    } else {
                        float f15 = 1;
                        float f16 = this.f37303a;
                        float f17 = ((f15 - f10) * (f15 - f16)) + f16;
                        view.setScaleX(f17);
                        view.setScaleY(f17);
                    }
                } else {
                    view.setScaleX(this.f37303a);
                    view.setScaleY(this.f37303a);
                }
                boolean b10 = fk.v.f51778a.b();
                if (b10) {
                    i10 = -1;
                }
                int i11 = (f10 > 0.0f ? 1 : (f10 == 0.0f ? 0 : -1));
                if (i11 >= 0 ? !b10 : b10) {
                    f11 = width;
                }
                if (i11 < 0) {
                    d10 = i10 * (DiscoverCategoryViewPagerItemAdapter.f37289z - 3.0f);
                } else {
                    d10 = i10 * (DiscoverCategoryViewPagerItemAdapter.f37289z + (f10 * DiscoverCategoryViewPagerItemAdapter.f37283t.d()));
                }
                view.setPivotX(f11);
                view.setTranslationX(d10);
            } catch (Exception unused) {
            }
        }

        public /* synthetic */ c(DiscoverCategoryViewPagerItemAdapter discoverCategoryViewPagerItemAdapter, float f10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this((i10 & 1) != 0 ? DiscoverCategoryViewPagerItemAdapter.f37283t.c() : f10);
        }
    }

    /* compiled from: DiscoverCategoryViewPagerItemAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class d implements ik.c {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ DiscoverShorts f37306b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f37307c;

        d(DiscoverShorts discoverShorts, int i10) {
            this.f37306b = discoverShorts;
            this.f37307c = i10;
        }

        @Override // ik.c
        public void show() {
            MainActivity mainActivity;
            DiscoverTabFragment f02;
            Context context = DiscoverCategoryViewPagerItemAdapter.this.f37294p.getRoot().getContext();
            DiscoverTab discoverTab = null;
            if (context instanceof MainActivity) {
                mainActivity = (MainActivity) context;
            } else {
                mainActivity = null;
            }
            if (mainActivity != null && (f02 = mainActivity.f0()) != null) {
                discoverTab = f02.H0();
            }
            ag.a.c(ag.a.f646a, this.f37306b, this.f37307c, 0, discoverTab, null, null, null, null, 244, null);
        }
    }

    /* compiled from: DiscoverCategoryViewPagerItemAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class e extends BannerViewPager.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BannerViewPager<DiscoverShorts> f37308a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ DiscoverCategoryViewPagerItemAdapter f37309b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ List<DiscoverCategoryShorts> f37310c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ int f37311d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ Function2<Integer, Boolean, Unit> f37312e;

        /* JADX WARN: Multi-variable type inference failed */
        e(BannerViewPager<DiscoverShorts> bannerViewPager, DiscoverCategoryViewPagerItemAdapter discoverCategoryViewPagerItemAdapter, List<DiscoverCategoryShorts> list, int i10, Function2<? super Integer, ? super Boolean, Unit> function2) {
            this.f37308a = bannerViewPager;
            this.f37309b = discoverCategoryViewPagerItemAdapter;
            this.f37310c = list;
            this.f37311d = i10;
            this.f37312e = function2;
        }

        @Override // com.startshorts.androidplayer.ui.view.banner.BannerViewPager.b
        public void a(boolean z10, int i10, int i11) {
            DiscoverCategoryViewPagerItemAdapter discoverCategoryViewPagerItemAdapter = this.f37309b;
            List<DiscoverCategoryShorts> list = this.f37310c;
            List<DiscoverShorts> data = this.f37308a.getData();
            Intrinsics.checkNotNullExpressionValue(data, "getData(...)");
            DiscoverCategoryViewPagerItemAdapter.J(discoverCategoryViewPagerItemAdapter, list, i10, (DiscoverShorts) CollectionsKt.t0(data, i10));
            au.c.d().l(new VideoPreviewPlayEvent());
        }

        @Override // com.startshorts.androidplayer.ui.view.banner.BannerViewPager.b
        public void b(int i10) {
            super.b(i10);
            if (i10 == 0) {
                int currentItem = this.f37308a.getCurrentItem() % this.f37311d;
                if (currentItem == 0) {
                    this.f37312e.invoke(0, Boolean.FALSE);
                } else {
                    this.f37312e.invoke(Integer.valueOf(currentItem), Boolean.FALSE);
                }
            }
            this.f37309b.f37297s = true;
        }
    }

    /* compiled from: DiscoverCategoryViewPagerItemAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class f implements la.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ StateViewGroup f37313a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Function0<Unit> f37314b;

        /* compiled from: DiscoverCategoryViewPagerItemAdapter.kt */
        @Metadata
        /* loaded from: classes6.dex */
        public /* synthetic */ class a {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[State.values().length];
                try {
                    iArr[State.EMPTY.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[State.NETWORK_ERROR.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[State.OTHER_ERROR.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        /* compiled from: DiscoverCategoryViewPagerItemAdapter.kt */
        @Metadata
        /* loaded from: classes6.dex */
        public static final class b implements rj.a {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Function0<Unit> f37315a;

            b(Function0<Unit> function0) {
                this.f37315a = function0;
            }

            @Override // rj.a
            public void onRefresh() {
                this.f37315a.invoke();
            }
        }

        /* compiled from: DiscoverCategoryViewPagerItemAdapter.kt */
        @Metadata
        /* loaded from: classes6.dex */
        public static final class c implements rj.a {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Function0<Unit> f37316a;

            c(Function0<Unit> function0) {
                this.f37316a = function0;
            }

            @Override // rj.a
            public void onRefresh() {
                this.f37316a.invoke();
            }
        }

        f(StateViewGroup stateViewGroup, Function0<Unit> function0) {
            this.f37313a = stateViewGroup;
            this.f37314b = function0;
        }

        @Override // la.a
        public void a(State state) {
            Object obj;
            la.b bVar;
            Intrinsics.checkNotNullParameter(state, "state");
            int i10 = a.$EnumSwitchMapping$0[state.ordinal()];
            SNetworkErrorView sNetworkErrorView = null;
            SOtherErrorView sOtherErrorView = null;
            if (i10 != 2) {
                if (i10 == 3) {
                    WeakReference<la.b> a10 = this.f37313a.a(State.OTHER_ERROR);
                    if (a10 != null) {
                        bVar = a10.get();
                    } else {
                        bVar = null;
                    }
                    if (bVar instanceof SOtherErrorView) {
                        sOtherErrorView = (SOtherErrorView) bVar;
                    }
                    if (sOtherErrorView != null) {
                        sOtherErrorView.setMOnRefreshListener(new c(this.f37314b));
                        return;
                    }
                    return;
                }
                return;
            }
            WeakReference<la.b> a11 = this.f37313a.a(State.NETWORK_ERROR);
            if (a11 != null) {
                obj = (la.b) a11.get();
            } else {
                obj = null;
            }
            if (obj instanceof SNetworkErrorView) {
                sNetworkErrorView = (SNetworkErrorView) obj;
            }
            if (sNetworkErrorView != null) {
                sNetworkErrorView.setMOnRefreshListener(new b(this.f37314b));
            }
        }
    }

    /* compiled from: DiscoverCategoryViewPagerItemAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    static final class g implements Observer, FunctionAdapter {

        /* renamed from: a  reason: collision with root package name */
        private final /* synthetic */ Function1 f37317a;

        g(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f37317a = function;
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
            return this.f37317a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f37317a.invoke(obj);
        }
    }

    static {
        int a10 = jk.g.a(180.0f);
        f37284u = a10;
        int a11 = jk.g.a(135.0f);
        f37285v = a11;
        fk.z zVar = fk.z.f51786a;
        float d10 = zVar.d();
        f37286w = d10;
        f37287x = zVar.a();
        f37288y = kotlin.c.b(new Function0() { // from class: com.startshorts.androidplayer.adapter.discover.d
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                float u10;
                u10 = DiscoverCategoryViewPagerItemAdapter.u();
                return Float.valueOf(u10);
            }
        });
        f37289z = d10;
        A = kotlin.c.b(new Function0() { // from class: com.startshorts.androidplayer.adapter.discover.e
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                float v10;
                v10 = DiscoverCategoryViewPagerItemAdapter.v();
                return Float.valueOf(v10);
            }
        });
        B = a11;
        C = a10;
        D = zVar.r();
        E = zVar.n();
    }

    public DiscoverCategoryViewPagerItemAdapter(int i10, @NotNull DiscoverModule module, @Nullable DiscoverModuleAdapter.n nVar, @Nullable Lifecycle lifecycle, @NotNull ItemDiscoverCategoryPageItemBinding mBinding) {
        Intrinsics.checkNotNullParameter(module, "module");
        Intrinsics.checkNotNullParameter(mBinding, "mBinding");
        this.f37290l = i10;
        this.f37291m = module;
        this.f37292n = nVar;
        this.f37293o = lifecycle;
        this.f37294p = mBinding;
        this.f37296r = new MutableLiveData<>();
    }

    @SuppressLint({"NotifyDataSetChanged"})
    private final void G() {
        this.f37297s = false;
        final List<DiscoverCategoryShorts> P = P();
        final int size = P.size();
        if (size == 0) {
            Logger.f41511a.h("DiscoverCategoryViewPagerItemAdapter", "createBannerViewPager ignore -> shorts is empty");
            return;
        }
        d().clear();
        notifyDataSetChanged();
        final BannerViewPager bannerViewPager = new BannerViewPager(this.f37294p.getRoot().getContext());
        final Function2 function2 = new Function2() { // from class: com.startshorts.androidplayer.adapter.discover.f
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                Unit H;
                H = DiscoverCategoryViewPagerItemAdapter.H(BannerViewPager.this, ((Integer) obj).intValue(), ((Boolean) obj2).booleanValue());
                return H;
            }
        };
        bannerViewPager.setId(R$id.view_pager);
        this.f37294p.f39988a.removeAllViews();
        this.f37294p.f39988a.addView(bannerViewPager, new ConstraintLayout.LayoutParams(-1, f37284u));
        Boolean bool = Boolean.FALSE;
        bannerViewPager.setResetCurrentItemWhenCanLoop(bool);
        bannerViewPager.I(1);
        bannerViewPager.D(this);
        bannerViewPager.M(0);
        bannerViewPager.F(false);
        bannerViewPager.Q(0, DeviceUtil.f48146a.G() - f37285v);
        bannerViewPager.E(false);
        bannerViewPager.A(this.f37293o);
        bannerViewPager.J(new BannerViewPager.c() { // from class: com.startshorts.androidplayer.adapter.discover.g
            @Override // com.startshorts.androidplayer.ui.view.banner.BannerViewPager.c
            public final void a(View view, int i10) {
                DiscoverCategoryViewPagerItemAdapter.I(BannerViewPager.this, this, P, size, function2, view, i10);
            }
        });
        bannerViewPager.B(new e(bannerViewPager, this, P, size, function2));
        bannerViewPager.g(CollectionsKt.d1(P));
        bannerViewPager.f(new c(this, 0.0f, 1, null));
        Integer O = O(P);
        if (O != null) {
            int intValue = O.intValue();
            function2.invoke(Integer.valueOf(intValue), bool);
            J(this, P, intValue, (DiscoverShorts) CollectionsKt.t0(P, intValue));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit H(BannerViewPager bannerViewPager, int i10, boolean z10) {
        ((ViewPager2) bannerViewPager.findViewById(R$id.vp_main)).setCurrentItem(i10, z10);
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void I(BannerViewPager bannerViewPager, DiscoverCategoryViewPagerItemAdapter discoverCategoryViewPagerItemAdapter, List list, int i10, Function2 function2, View view, int i11) {
        MainActivity mainActivity;
        String num;
        DiscoverTabFragment f02;
        if (i11 == bannerViewPager.getCurrentItem()) {
            DiscoverModuleAdapter.n nVar = discoverCategoryViewPagerItemAdapter.f37292n;
            if (nVar != null) {
                DiscoverModuleAdapter.n.a.a(nVar, i11, (BaseShorts) list.get(i11), "category_filtering", discoverCategoryViewPagerItemAdapter.f37291m, null, 16, null);
            }
            VideoPreview videoPreview = (VideoPreview) view.findViewById(R$id.video_preview);
            if (videoPreview != null && videoPreview.getVisibility() == 0) {
                Context context = view.getContext();
                DiscoverTab discoverTab = null;
                if (context instanceof MainActivity) {
                    mainActivity = (MainActivity) context;
                } else {
                    mainActivity = null;
                }
                if (mainActivity != null && (f02 = mainActivity.f0()) != null) {
                    discoverTab = f02.H0();
                }
                EventManager eventManager = EventManager.f42463a;
                Bundle B2 = eventManager.B(discoverTab);
                String shortPlayCode = ((DiscoverCategoryShorts) list.get(i11)).getShortPlayCode();
                String str = "";
                if (shortPlayCode == null) {
                    shortPlayCode = "";
                }
                B2.putString("reel_id", shortPlayCode);
                B2.putString("scene", "discover");
                B2.putString("module_name", discoverCategoryViewPagerItemAdapter.f37291m.getTitle());
                B2.putString("module_id", discoverCategoryViewPagerItemAdapter.f37291m.getBannerId());
                B2.putInt("position_id", i11 + 1);
                Integer recommendId = discoverCategoryViewPagerItemAdapter.f37291m.getRecommendId();
                if (recommendId != null && (num = recommendId.toString()) != null) {
                    str = num;
                }
                B2.putString(CallAppDataKey.KEY_AUDIENCE_RECOMMEND_ID, str);
                Unit unit = Unit.f60915a;
                EventManager.s0(eventManager, "reel_video_preview_click", B2, 0L, 4, null);
                return;
            }
            return;
        }
        int i12 = i11 % i10;
        if (i12 < bannerViewPager.getCurrentItem()) {
            i12 += list.size();
        }
        function2.invoke(Integer.valueOf(i12), Boolean.TRUE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void J(final DiscoverCategoryViewPagerItemAdapter discoverCategoryViewPagerItemAdapter, List<DiscoverCategoryShorts> list, final int i10, final DiscoverShorts discoverShorts) {
        String summary;
        String str = "";
        discoverCategoryViewPagerItemAdapter.f37294p.f39992e.setText((discoverShorts == null || (r2 = discoverShorts.getShortPlayName()) == null) ? "" : "");
        BaseTextView baseTextView = discoverCategoryViewPagerItemAdapter.f37294p.f39990c;
        if (discoverShorts != null && (summary = discoverShorts.getSummary()) != null) {
            str = summary;
        }
        baseTextView.setText(str);
        discoverCategoryViewPagerItemAdapter.f37294p.f39991d.setOnClickListener(new View.OnClickListener() { // from class: com.startshorts.androidplayer.adapter.discover.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DiscoverCategoryViewPagerItemAdapter.K(DiscoverCategoryViewPagerItemAdapter.this, i10, discoverShorts, view);
            }
        });
        if (discoverShorts != null) {
            discoverCategoryViewPagerItemAdapter.X(i10, list);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void K(DiscoverCategoryViewPagerItemAdapter discoverCategoryViewPagerItemAdapter, int i10, DiscoverShorts discoverShorts, View view) {
        DiscoverModuleAdapter.n nVar = discoverCategoryViewPagerItemAdapter.f37292n;
        if (nVar != null) {
            DiscoverModuleAdapter.n.a.a(nVar, i10, discoverShorts, "category_filtering", discoverCategoryViewPagerItemAdapter.f37291m, null, 16, null);
        }
    }

    private final List<DiscoverCategoryShorts> L() {
        Object obj;
        List<DiscoverCategoryShorts> shortPlayResponseList;
        List<PlayListDiscoverCategory> categoryConfigItemVOList = this.f37291m.getCategoryConfigItemVOList();
        if (categoryConfigItemVOList != null) {
            Iterator<T> it = categoryConfigItemVOList.iterator();
            while (true) {
                if (it.hasNext()) {
                    obj = it.next();
                    if (Intrinsics.areEqual(((PlayListDiscoverCategory) obj).getCategoryId(), N())) {
                        break;
                    }
                } else {
                    obj = null;
                    break;
                }
            }
            PlayListDiscoverCategory playListDiscoverCategory = (PlayListDiscoverCategory) obj;
            if (playListDiscoverCategory != null && (shortPlayResponseList = playListDiscoverCategory.getShortPlayResponseList()) != null) {
                return shortPlayResponseList;
            }
        }
        return new ArrayList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final DiscoverCategory M() {
        a value = this.f37296r.getValue();
        if (value instanceof a.b) {
            return ((a.b) value).a();
        }
        if (value instanceof a.c) {
            return ((a.c) value).a();
        }
        if (value instanceof a.C0607a) {
            return ((a.C0607a) value).a();
        }
        return null;
    }

    private final String N() {
        String id2;
        DiscoverCategory M = M();
        if (M == null || (id2 = M.getId()) == null) {
            return "";
        }
        return id2;
    }

    private final Integer O(List<? extends DiscoverShorts> list) {
        Integer orDefault;
        if (list.isEmpty()) {
            return null;
        }
        String N = N();
        HashMap<String, Integer> categoryTabPosMap = this.f37291m.getCategoryTabPosMap();
        int i10 = 0;
        if (categoryTabPosMap != null && (orDefault = categoryTabPosMap.getOrDefault(N, 0)) != null) {
            i10 = orDefault.intValue();
        }
        return Integer.valueOf(Math.min(i10, list.size() - 1));
    }

    private final List<DiscoverCategoryShorts> P() {
        a value = this.f37296r.getValue();
        if (value instanceof a.c) {
            return ((a.c) value).b();
        }
        return new ArrayList();
    }

    private final void R(StateViewGroup stateViewGroup, Function0<Unit> function0) {
        stateViewGroup.setMOnInflatedListener(new f(stateViewGroup, function0));
        stateViewGroup.f(R$layout.viewstub_page_state_gray_loading, State.LOADING);
        stateViewGroup.f(R$layout.viewstub_page_state_empty, State.EMPTY);
        stateViewGroup.f(R$layout.viewstub_page_state_network_error, State.NETWORK_ERROR);
        stateViewGroup.f(R$layout.viewstub_page_state_other_error, State.OTHER_ERROR);
    }

    private final void S(ItemDiscoverCategoryPageItemBinding itemDiscoverCategoryPageItemBinding, a aVar) {
        Object obj;
        la.b bVar;
        StateViewGroup categoryStateView = itemDiscoverCategoryPageItemBinding.f39989b;
        Intrinsics.checkNotNullExpressionValue(categoryStateView, "categoryStateView");
        SOtherErrorView sOtherErrorView = null;
        SNetworkErrorView sNetworkErrorView = null;
        if (aVar instanceof a.b) {
            List<DiscoverCategoryShorts> L = L();
            if (!L.isEmpty()) {
                jk.o.b(this.f37296r, new a.c(((a.b) aVar).a(), L));
                return;
            }
            categoryStateView.h(State.LOADING);
            categoryStateView.setVisibility(0);
            kotlinx.coroutines.r rVar = this.f37295q;
            if (rVar != null) {
                r.a.b(rVar, null, 1, null);
            }
            this.f37295q = CoroutineUtil.l(CoroutineUtil.f48072a, "fetchDiscoverModulesCategoryMore", false, new DiscoverCategoryViewPagerItemAdapter$observeCategoryChangeState$1(this, aVar, null), 2, null);
        } else if (aVar instanceof a.c) {
            if (!((a.c) aVar).b().isEmpty()) {
                G();
                categoryStateView.c(State.LOADING);
                categoryStateView.setVisibility(8);
                return;
            }
            T(itemDiscoverCategoryPageItemBinding);
            categoryStateView.h(State.EMPTY);
        } else if (aVar instanceof a.C0607a) {
            T(itemDiscoverCategoryPageItemBinding);
            a.C0607a c0607a = (a.C0607a) aVar;
            if (c0607a.b().isNetworkError()) {
                State state = State.NETWORK_ERROR;
                categoryStateView.h(state);
                WeakReference<la.b> a10 = categoryStateView.a(state);
                if (a10 != null) {
                    bVar = a10.get();
                } else {
                    bVar = null;
                }
                if (bVar instanceof SNetworkErrorView) {
                    sNetworkErrorView = (SNetworkErrorView) bVar;
                }
                if (sNetworkErrorView != null) {
                    sNetworkErrorView.v();
                    sNetworkErrorView.w(E);
                }
            } else {
                State state2 = State.OTHER_ERROR;
                categoryStateView.h(state2);
                WeakReference<la.b> a11 = categoryStateView.a(state2);
                if (a11 != null) {
                    obj = (la.b) a11.get();
                } else {
                    obj = null;
                }
                if (obj instanceof SOtherErrorView) {
                    sOtherErrorView = (SOtherErrorView) obj;
                }
                if (sOtherErrorView != null) {
                    sOtherErrorView.v();
                    String message = c0607a.b().getMessage();
                    if (message == null) {
                        message = "";
                    }
                    sOtherErrorView.w(message);
                    sOtherErrorView.x(E);
                }
            }
            Logger.f41511a.h("DiscoverCategoryViewPagerItemAdapter", "CategoryFailed -> " + c0607a.a().getName());
        } else {
            Logger.f41511a.h("DiscoverCategoryViewPagerItemAdapter", "CategoryChangeState -> " + aVar);
        }
    }

    private final void T(ItemDiscoverCategoryPageItemBinding itemDiscoverCategoryPageItemBinding) {
        itemDiscoverCategoryPageItemBinding.f39988a.removeAllViews();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit V(DiscoverCategoryViewPagerItemAdapter discoverCategoryViewPagerItemAdapter, a aVar) {
        discoverCategoryViewPagerItemAdapter.S(discoverCategoryViewPagerItemAdapter.f37294p, aVar);
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit W(DiscoverCategoryViewPagerItemAdapter discoverCategoryViewPagerItemAdapter) {
        DiscoverCategory M = discoverCategoryViewPagerItemAdapter.M();
        if (M != null) {
            jk.o.b(discoverCategoryViewPagerItemAdapter.f37296r, new a.b(M));
        }
        return Unit.f60915a;
    }

    private final void X(int i10, List<? extends DiscoverShorts> list) {
        String N = N();
        int min = Math.min(i10, list.size() - 1);
        HashMap<String, Integer> categoryTabPosMap = this.f37291m.getCategoryTabPosMap();
        if (categoryTabPosMap != null) {
            categoryTabPosMap.put(N, Integer.valueOf(min));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float u() {
        return 0.8888889f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float v() {
        return ((-f37285v) * (1 - f37283t.c())) + f37287x;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.startshorts.androidplayer.ui.view.banner.BaseBannerAdapter
    /* renamed from: F */
    public void b(@NotNull BaseViewHolder<DiscoverShorts> holder, @NotNull DiscoverShorts data, int i10, int i11, int i12) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(data, "data");
        ExposureLayout exposureLayout = (ExposureLayout) holder.findViewById(R$id.exposure_layout);
        exposureLayout.setShowRatio(0.0f);
        exposureLayout.setTimeLimit(0);
        exposureLayout.setExposureCallback(new d(data, i10));
        holder.d(R$id.shorts_name_tv, data.getShortPlayName());
        CustomFrescoView customFrescoView = (CustomFrescoView) holder.findViewById(R$id.cover_iv);
        customFrescoView.setContentDescription(data.getShortPlayName() + ' ' + i10 + ' ' + data.getId());
        kk.f fVar = kk.f.f60747a;
        FrescoConfig frescoConfig = new FrescoConfig();
        frescoConfig.setUrl(data.getPicUrl());
        frescoConfig.setOssWidth(B);
        frescoConfig.setOssHeight(C);
        frescoConfig.setResizeWidth(f37285v);
        frescoConfig.setResizeHeight(f37284u);
        frescoConfig.setPlaceholderResId(R$drawable.ic_banner_placeholder);
        frescoConfig.setCornerTransform(true);
        float f10 = D;
        frescoConfig.setCornerRadius(f10);
        Unit unit = Unit.f60915a;
        fVar.A(customFrescoView, frescoConfig);
        DiscoverModuleAdapter.C.i((TextView) holder.findViewById(R$id.tvPlayCount), data.getPlayNum());
        VideoPreview videoPreview = (VideoPreview) holder.findViewById(R$id.video_preview);
        if (videoPreview != null) {
            videoPreview.setCornerRadius(Float.valueOf(f10));
        }
    }

    @Nullable
    public final VideoPreviewInfo Q() {
        Integer O;
        RecyclerView b10;
        RecyclerView.LayoutManager layoutManager;
        View findViewByPosition;
        List<DiscoverCategoryShorts> P = P();
        if (P.size() == 0 || (O = O(P)) == null) {
            return null;
        }
        int intValue = O.intValue();
        ViewPager2 viewPager2 = (ViewPager2) this.f37294p.getRoot().findViewById(R$id.vp_main);
        if (viewPager2 == null || (b10 = fk.i0.f51738a.b(viewPager2)) == null || (layoutManager = b10.getLayoutManager()) == null || (findViewByPosition = layoutManager.findViewByPosition(intValue)) == null) {
            return null;
        }
        VideoPreview videoPreview = (VideoPreview) findViewByPosition.findViewById(R$id.video_preview);
        String parseVideoUrl = P.get(intValue).parseVideoUrl(480);
        if (parseVideoUrl == null) {
            parseVideoUrl = "";
        }
        String str = parseVideoUrl;
        boolean needDecrypt = P.get(intValue).getNeedDecrypt();
        if (videoPreview == null || str.length() <= 0) {
            return null;
        }
        return new VideoPreviewInfo(videoPreview, needDecrypt, str, this.f37291m, P.get(intValue), true, 2, false);
    }

    public final void U() {
        List<DiscoverCategory> categoryVOList;
        DiscoverCategory discoverCategory;
        if (this.f37293o != null && (categoryVOList = this.f37291m.getCategoryVOList()) != null && (discoverCategory = categoryVOList.get(this.f37290l)) != null) {
            if (this.f37291m.getCategoryTabPosMap() == null) {
                this.f37291m.setCategoryTabPosMap(new HashMap<>());
            }
            StateViewGroup categoryStateView = this.f37294p.f39989b;
            Intrinsics.checkNotNullExpressionValue(categoryStateView, "categoryStateView");
            R(categoryStateView, new Function0() { // from class: com.startshorts.androidplayer.adapter.discover.b
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit W;
                    W = DiscoverCategoryViewPagerItemAdapter.W(DiscoverCategoryViewPagerItemAdapter.this);
                    return W;
                }
            });
            this.f37296r.observe(LifeCycleExtKt.a(this.f37293o), new g(new Function1() { // from class: com.startshorts.androidplayer.adapter.discover.c
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit V;
                    V = DiscoverCategoryViewPagerItemAdapter.V(DiscoverCategoryViewPagerItemAdapter.this, (DiscoverCategoryViewPagerItemAdapter.a) obj);
                    return V;
                }
            }));
            jk.o.b(this.f37296r, new a.b(discoverCategory));
        }
    }

    @Override // com.startshorts.androidplayer.ui.view.banner.BaseBannerAdapter
    public int e(int i10) {
        return R$layout.item_discover_category_banner_item;
    }
}
