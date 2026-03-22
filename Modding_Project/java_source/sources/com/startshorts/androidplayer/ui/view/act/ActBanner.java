package com.startshorts.androidplayer.ui.view.act;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewStub;
import androidx.lifecycle.Lifecycle;
import ce.j;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.adapter.act.ActBannerAdapter;
import com.startshorts.androidplayer.adapter.base.SelectableAdapter;
import com.startshorts.androidplayer.bean.act.ActGuidePoint;
import com.startshorts.androidplayer.bean.act.ActResource;
import com.startshorts.androidplayer.bean.discover.DiscoverTab;
import com.startshorts.androidplayer.manager.act.SkipType;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.ui.view.act.ActBanner;
import com.startshorts.androidplayer.ui.view.banner.BannerViewPager;
import com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout;
import com.startshorts.androidplayer.ui.view.base.GuidePointView;
import fk.z;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ActBanner.kt */
@Metadata
/* loaded from: classes7.dex */
public final class ActBanner extends BaseConstraintLayout {
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    public static final a f46997i = new a(null);
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private BannerViewPager<ActResource> f46998b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private ViewStub f46999c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private GuidePointView<ActGuidePoint> f47000d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private String f47001e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f47002f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private DiscoverTab f47003g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private ActBannerAdapter f47004h;

    /* compiled from: ActBanner.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(@NotNull String from, @NotNull ActResource resource) {
            Intrinsics.checkNotNullParameter(from, "from");
            Intrinsics.checkNotNullParameter(resource, "resource");
            switch (from.hashCode()) {
                case -1181650302:
                    if (from.equals("profile_banner")) {
                        EventManager eventManager = EventManager.f42463a;
                        EventManager.s0(eventManager, "profile_banner_click", EventManager.x(eventManager, resource, false, 2, null), 0L, 4, null);
                        return;
                    }
                    return;
                case 347798594:
                    if (from.equals("discover_banner")) {
                        EventManager eventManager2 = EventManager.f42463a;
                        EventManager.s0(eventManager2, "discover_banner_click", EventManager.x(eventManager2, resource, false, 2, null), 0L, 4, null);
                        return;
                    }
                    return;
                case 777481409:
                    if (from.equals("mylist_banner")) {
                        EventManager eventManager3 = EventManager.f42463a;
                        EventManager.s0(eventManager3, "mylist_banner_click", EventManager.x(eventManager3, resource, false, 2, null), 0L, 4, null);
                        return;
                    }
                    return;
                case 963963299:
                    if (from.equals("search_banner")) {
                        EventManager eventManager4 = EventManager.f42463a;
                        EventManager.s0(eventManager4, "search_banner_click", EventManager.x(eventManager4, resource, false, 2, null), 0L, 4, null);
                        return;
                    }
                    return;
                case 1472893212:
                    if (from.equals("task_center_banner")) {
                        EventManager eventManager5 = EventManager.f42463a;
                        EventManager.s0(eventManager5, "position_click", EventManager.x(eventManager5, resource, false, 2, null), 0L, 4, null);
                        return;
                    }
                    return;
                default:
                    return;
            }
        }

        private a() {
        }
    }

    /* compiled from: ActBanner.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends BannerViewPager.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List<ActResource> f47005a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ActBanner f47006b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Function1<Integer, Unit> f47007c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ BannerViewPager<ActResource> f47008d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ String f47009e;

        /* JADX WARN: Multi-variable type inference failed */
        b(List<ActResource> list, ActBanner actBanner, Function1<? super Integer, Unit> function1, BannerViewPager<ActResource> bannerViewPager, String str) {
            this.f47005a = list;
            this.f47006b = actBanner;
            this.f47007c = function1;
            this.f47008d = bannerViewPager;
            this.f47009e = str;
        }

        @Override // com.startshorts.androidplayer.ui.view.banner.BannerViewPager.b
        public void a(boolean z10, int i10, int i11) {
            GuidePointView guidePointView;
            if (this.f47005a.size() > 1 && (guidePointView = this.f47006b.f47000d) != null) {
                guidePointView.setSelectedIndex(i10);
            }
            Function1<Integer, Unit> function1 = this.f47007c;
            if (function1 != null) {
                function1.invoke(Integer.valueOf(i10));
            }
            List<ActResource> data = this.f47008d.getData();
            Intrinsics.checkNotNullExpressionValue(data, "getData(...)");
            ActResource actResource = (ActResource) CollectionsKt.t0(data, i10);
            if (actResource != null) {
                this.f47006b.D(this.f47009e, actResource);
            }
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ActBanner(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public static /* synthetic */ void B(ActBanner actBanner, WeakReference weakReference, String str, float f10, int i10, Function1 function1, Lifecycle lifecycle, List list, DiscoverTab discoverTab, int i11, Object obj) {
        DiscoverTab discoverTab2;
        if ((i11 & 128) != 0) {
            discoverTab2 = null;
        } else {
            discoverTab2 = discoverTab;
        }
        actBanner.z(weakReference, str, f10, i10, function1, lifecycle, list, discoverTab2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C(List list, String str, ActBanner actBanner, BannerViewPager bannerViewPager, View view, int i10) {
        ActResource actResource = (ActResource) CollectionsKt.t0(list, i10);
        if (actResource == null) {
            return;
        }
        if (actResource.getRawSkipType() != SkipType.PROGRAMMATIC_AD.getType()) {
            f46997i.a(str, actResource);
            EventManager.f42463a.S(str, actResource);
            if (Intrinsics.areEqual(str, "discover_banner")) {
                actBanner.E(actResource);
            }
        }
        j jVar = j.f3485a;
        Context context = bannerViewPager.getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        jVar.n(context, str, actResource, actBanner.f47003g);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void D(String str, ActResource actResource) {
        EventManager eventManager = EventManager.f42463a;
        eventManager.T(str, actResource);
        switch (str.hashCode()) {
            case -1181650302:
                if (str.equals("profile_banner")) {
                    EventManager.s0(eventManager, "profile_banner_show", EventManager.x(eventManager, actResource, false, 2, null), 0L, 4, null);
                    break;
                }
                break;
            case 347798594:
                if (str.equals("discover_banner")) {
                    EventManager.s0(eventManager, "discover_banner_show", EventManager.x(eventManager, actResource, false, 2, null), 0L, 4, null);
                    break;
                }
                break;
            case 777481409:
                if (str.equals("mylist_banner")) {
                    EventManager.s0(eventManager, "mylist_banner_show", EventManager.x(eventManager, actResource, false, 2, null), 0L, 4, null);
                    break;
                }
                break;
            case 963963299:
                if (str.equals("search_banner")) {
                    EventManager.s0(eventManager, "search_banner_show", EventManager.x(eventManager, actResource, false, 2, null), 0L, 4, null);
                    break;
                }
                break;
            case 1472893212:
                if (str.equals("task_center_banner")) {
                    EventManager.s0(eventManager, "position_show", EventManager.x(eventManager, actResource, false, 2, null), 0L, 4, null);
                    break;
                }
                break;
        }
        if (actResource.isShorts()) {
            ag.a.d(ag.a.f646a, "resource_bit", actResource.getSkipValue(), actResource, 0, null, null, null, null, null, 504, null);
        }
    }

    private final void E(ActResource actResource) {
        EventManager eventManager = EventManager.f42463a;
        Bundle a10 = jk.b.a(EventManager.x(eventManager, actResource, false, 2, null), eventManager.B(this.f47003g));
        a10.putString("module_type", "discover_banner");
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "discover_module_click", a10, 0L, 4, null);
    }

    private final void G() {
        ActBannerAdapter actBannerAdapter = this.f47004h;
        if (actBannerAdapter != null) {
            actBannerAdapter.x();
        }
    }

    private final void I(int i10, int i11) {
        boolean z10;
        View view;
        if (this.f47000d == null) {
            ViewStub viewStub = this.f46999c;
            GuidePointView<ActGuidePoint> guidePointView = null;
            if (viewStub != null) {
                view = viewStub.inflate();
            } else {
                view = null;
            }
            if (view instanceof GuidePointView) {
                guidePointView = (GuidePointView) view;
            }
            this.f47000d = guidePointView;
        }
        ArrayList arrayList = new ArrayList();
        for (int i12 = 0; i12 < i10; i12++) {
            ActGuidePoint actGuidePoint = new ActGuidePoint();
            if (i12 == 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            actGuidePoint.setSelected(z10);
            arrayList.add(actGuidePoint);
        }
        SelectableAdapter<ActGuidePoint> selectableAdapter = new SelectableAdapter<>(R$layout.item_act_guide_point);
        GuidePointView<ActGuidePoint> guidePointView2 = this.f47000d;
        if (guidePointView2 != null) {
            guidePointView2.a(arrayList, selectableAdapter);
        }
        GuidePointView<ActGuidePoint> guidePointView3 = this.f47000d;
        if (guidePointView3 != null) {
            guidePointView3.setSelectedIndex(i11);
        }
    }

    private final void y() {
        GuidePointView<ActGuidePoint> guidePointView = this.f47000d;
        if (guidePointView != null) {
            guidePointView.setVisibility(8);
        }
    }

    public final void A(@NotNull WeakReference<Activity> actRef, @NotNull String from, @Nullable Lifecycle lifecycle, @NotNull List<ActResource> list, @Nullable DiscoverTab discoverTab) {
        Intrinsics.checkNotNullParameter(actRef, "actRef");
        Intrinsics.checkNotNullParameter(from, "from");
        Intrinsics.checkNotNullParameter(list, "list");
        z(actRef, from, z.f51786a.m(), 0, null, lifecycle, list, discoverTab);
    }

    public final void F() {
        s(CampaignEx.JSON_NATIVE_VIDEO_PAUSE);
        this.f47002f = true;
    }

    public final void H() {
        s(CampaignEx.JSON_NATIVE_VIDEO_RESUME);
        this.f47002f = false;
        G();
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public int getLayoutResource() {
        return R$layout.view_act_banner;
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    @NotNull
    public String getSTag() {
        return "ActBanner";
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i10) {
        super.onWindowVisibilityChanged(i10);
        s("onWindowVisibilityChanged -> mFrom(" + this.f47001e + ") mPaused(" + this.f47002f + ") visibility(" + i10 + ')');
        String str = this.f47001e;
        if (str != null && str.length() != 0 && !this.f47002f && i10 == 0) {
            G();
        }
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseConstraintLayout
    public void u(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f46998b = (BannerViewPager) findViewById(R$id.view_pager);
        this.f46999c = (ViewStub) findViewById(R$id.indicator_viewstub);
    }

    public final void z(@NotNull WeakReference<Activity> actRef, @NotNull final String from, float f10, int i10, @Nullable Function1<? super Integer, Unit> function1, @Nullable Lifecycle lifecycle, @NotNull final List<ActResource> list, @Nullable DiscoverTab discoverTab) {
        Intrinsics.checkNotNullParameter(actRef, "actRef");
        Intrinsics.checkNotNullParameter(from, "from");
        Intrinsics.checkNotNullParameter(list, "list");
        this.f47001e = from;
        this.f47003g = discoverTab;
        this.f47002f = false;
        ActBannerAdapter actBannerAdapter = new ActBannerAdapter(actRef);
        actBannerAdapter.z(from);
        actBannerAdapter.y(f10);
        this.f47004h = actBannerAdapter;
        final BannerViewPager<ActResource> bannerViewPager = this.f46998b;
        if (bannerViewPager != null) {
            bannerViewPager.D(actBannerAdapter);
            bannerViewPager.N(0);
            bannerViewPager.M(0);
            bannerViewPager.E(true);
            bannerViewPager.G(4000);
            bannerViewPager.R(500);
            if (lifecycle != null) {
                bannerViewPager.A(lifecycle);
            }
            bannerViewPager.J(new BannerViewPager.c() { // from class: bj.h
                @Override // com.startshorts.androidplayer.ui.view.banner.BannerViewPager.c
                public final void a(View view, int i11) {
                    ActBanner.C(list, from, this, bannerViewPager, view, i11);
                }
            });
            bannerViewPager.B(new b(list, this, function1, bannerViewPager, from));
            bannerViewPager.g(list);
        }
        if (list.size() == 1) {
            y();
        } else {
            BannerViewPager<ActResource> bannerViewPager2 = this.f46998b;
            if (bannerViewPager2 != null) {
                bannerViewPager2.setCurrentItem(i10, false);
            }
            I(list.size(), i10);
        }
        D(from, (ActResource) CollectionsKt.r0(list));
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ActBanner(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ActBanner(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47002f = true;
    }
}
