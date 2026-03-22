package com.startshorts.androidplayer.adapter.act;

import android.app.Activity;
import android.widget.FrameLayout;
import com.hades.aar.admanager.core.AdSize;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.adapter.act.ActBannerAdapter;
import com.startshorts.androidplayer.bean.act.ActResource;
import com.startshorts.androidplayer.bean.fresco.FrescoConfig;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.act.SkipType;
import com.startshorts.androidplayer.manager.ad.AdManager;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.ui.view.act.ActBanner;
import com.startshorts.androidplayer.ui.view.banner.BaseBannerAdapter;
import com.startshorts.androidplayer.ui.view.banner.BaseViewHolder;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import com.startshorts.androidplayer.utils.DeviceUtil;
import fk.z;
import java.lang.ref.WeakReference;
import java.util.List;
import jk.g;
import jk.v;
import kk.f;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ActBannerAdapter.kt */
@Metadata
@SourceDebugExtension({"SMAP\nActBannerAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActBannerAdapter.kt\ncom/startshorts/androidplayer/adapter/act/ActBannerAdapter\n+ 2 ViewGroup.kt\nandroidx/core/view/ViewGroupKt\n*L\n1#1,165:1\n46#2:166\n*S KotlinDebug\n*F\n+ 1 ActBannerAdapter.kt\ncom/startshorts/androidplayer/adapter/act/ActBannerAdapter\n*L\n105#1:166\n*E\n"})
/* loaded from: classes6.dex */
public final class ActBannerAdapter extends BaseBannerAdapter<ActResource> {
    @NotNull

    /* renamed from: q  reason: collision with root package name */
    public static final a f37164q = new a(null);

    /* renamed from: r  reason: collision with root package name */
    private static final int f37165r = DeviceUtil.f48146a.G() - (z.f51786a.d() * 2);

    /* renamed from: s  reason: collision with root package name */
    private static final int f37166s = g.a(54.0f);
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    private final WeakReference<Activity> f37167l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private String f37168m;

    /* renamed from: n  reason: collision with root package name */
    private float f37169n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private BaseViewHolder<ActResource> f37170o;

    /* renamed from: p  reason: collision with root package name */
    private long f37171p;

    /* compiled from: ActBannerAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a() {
            return ActBannerAdapter.f37166s;
        }

        private a() {
        }
    }

    public ActBannerAdapter(@NotNull WeakReference<Activity> actRef) {
        Intrinsics.checkNotNullParameter(actRef, "actRef");
        this.f37167l = actRef;
        this.f37169n = z.f51786a.m();
        this.f37171p = -1L;
    }

    private final void A(String str, BaseViewHolder<ActResource> baseViewHolder) {
        CustomFrescoView customFrescoView = (CustomFrescoView) baseViewHolder.findViewById(R$id.cover_iv);
        if (customFrescoView == null) {
            return;
        }
        customFrescoView.setImportantForAccessibility(2);
        boolean f10 = v.f(str);
        f fVar = f.f60747a;
        FrescoConfig frescoConfig = new FrescoConfig();
        frescoConfig.setUrl(str);
        if (!f10) {
            frescoConfig.setOssWidth(f37165r);
            frescoConfig.setOssHeight(f37166s);
        }
        frescoConfig.setCornerTransform(true);
        frescoConfig.setCornerRadius(this.f37169n);
        frescoConfig.setPlaceholderResId(R$drawable.ic_act_banner_placeholder);
        if (f10) {
            frescoConfig.setAutoPlayAnim(true);
        }
        Unit unit = Unit.f60915a;
        fVar.A(customFrescoView, frescoConfig);
    }

    private final void p(ActResource actResource, BaseViewHolder<ActResource> baseViewHolder) {
        String resourceMap = actResource.getResourceMap();
        if (resourceMap != null) {
            A(resourceMap, baseViewHolder);
        }
    }

    private final void r(ActResource actResource, BaseViewHolder<ActResource> baseViewHolder) {
        String resourceMap = actResource.getResourceMap();
        if (resourceMap != null) {
            A(resourceMap, baseViewHolder);
        }
    }

    private final void s(final ActResource actResource, BaseViewHolder<ActResource> baseViewHolder) {
        FrameLayout frameLayout = (FrameLayout) baseViewHolder.findViewById(R$id.ad_container);
        if (frameLayout != null && frameLayout.getChildCount() == 0) {
            Logger logger = Logger.f41511a;
            logger.h("ActBannerAdapter", "from(" + this.f37168m + "), bindProgrammaticAd");
            AdManager adManager = AdManager.f41600a;
            WeakReference<Activity> weakReference = this.f37167l;
            String str = this.f37168m;
            if (str == null) {
                str = "";
            }
            adManager.i0(weakReference, frameLayout, 4000L, str, AdSize.BANNER, new Function0() { // from class: jd.a
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit u10;
                    u10 = ActBannerAdapter.u(ActBannerAdapter.this, actResource);
                    return u10;
                }
            });
        }
    }

    private final void t(BaseViewHolder<ActResource> baseViewHolder) {
        ActResource actResource;
        if (((FrameLayout) baseViewHolder.findViewById(R$id.ad_container)) != null) {
            long L = DeviceUtil.f48146a.L();
            if (L - this.f37171p < 500) {
                return;
            }
            this.f37171p = L;
            int c10 = fj.a.c(baseViewHolder.getAdapterPosition(), this.f47064i.size());
            List<T> list = this.f47064i;
            if (list != 0 && (actResource = (ActResource) CollectionsKt.t0(list, c10)) != null) {
                s(actResource, baseViewHolder);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit u(ActBannerAdapter actBannerAdapter, ActResource actResource) {
        ActBanner.a aVar = ActBanner.f46997i;
        String str = actBannerAdapter.f37168m;
        String str2 = "";
        if (str == null) {
            str = "";
        }
        aVar.a(str, actResource);
        EventManager eventManager = EventManager.f42463a;
        String str3 = actBannerAdapter.f37168m;
        if (str3 != null) {
            str2 = str3;
        }
        eventManager.S(str2, actResource);
        return Unit.f60915a;
    }

    private final void v(ActResource actResource, BaseViewHolder<ActResource> baseViewHolder) {
        String resourceMap = actResource.getResourceMap();
        if (resourceMap != null) {
            A(resourceMap, baseViewHolder);
        }
    }

    @Override // com.startshorts.androidplayer.ui.view.banner.BaseBannerAdapter
    public int e(int i10) {
        if (i10 == SkipType.BRAND_AD.getType()) {
            return R$layout.item_act_banner_brand_ad;
        }
        if (i10 == SkipType.PROGRAMMATIC_AD.getType()) {
            return R$layout.item_act_banner_programmatic_ad;
        }
        if (i10 == SkipType.SHORTS.getType()) {
            return R$layout.item_act_banner_shorts;
        }
        return R$layout.item_act_banner_h5;
    }

    @Override // com.startshorts.androidplayer.ui.view.banner.BaseBannerAdapter
    protected int g(int i10) {
        ActResource actResource;
        List<ActResource> d10 = d();
        if (d10 != null && (actResource = d10.get(i10)) != null) {
            return actResource.getRawSkipType();
        }
        return SkipType.H5.getType();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.startshorts.androidplayer.ui.view.banner.BaseBannerAdapter
    /* renamed from: q */
    public void b(@NotNull BaseViewHolder<ActResource> holder, @NotNull ActResource data, int i10, int i11, int i12) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(data, "data");
        int rawSkipType = data.getRawSkipType();
        if (rawSkipType == SkipType.BRAND_AD.getType()) {
            p(data, holder);
        } else if (rawSkipType != SkipType.PROGRAMMATIC_AD.getType()) {
            if (rawSkipType == SkipType.SHORTS.getType()) {
                v(data, holder);
            } else {
                r(data, holder);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: w */
    public void onViewAttachedToWindow(@NotNull BaseViewHolder<ActResource> holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        super.onViewAttachedToWindow(holder);
        this.f37170o = holder;
        t(holder);
    }

    public final void x() {
        BaseViewHolder<ActResource> baseViewHolder = this.f37170o;
        if (baseViewHolder != null) {
            t(baseViewHolder);
        }
    }

    public final void y(float f10) {
        this.f37169n = f10;
    }

    public final void z(@Nullable String str) {
        this.f37168m = str;
    }
}
