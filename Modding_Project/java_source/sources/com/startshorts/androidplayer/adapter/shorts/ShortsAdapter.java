package com.startshorts.androidplayer.adapter.shorts;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.view.MotionEvent;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.recyclerview.widget.RecyclerView;
import c3.q;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.adapter.base.BaseAdapter;
import com.startshorts.androidplayer.adapter.shorts.ShortsAdapter;
import com.startshorts.androidplayer.bean.act.ActResource;
import com.startshorts.androidplayer.bean.act.ActResourceExtraInfo;
import com.startshorts.androidplayer.bean.eventbus.ReservationNotificationEvent;
import com.startshorts.androidplayer.bean.fresco.FrescoConfig;
import com.startshorts.androidplayer.bean.shorts.ShortsEpisode;
import com.startshorts.androidplayer.bean.shorts.ShortsLabel;
import com.startshorts.androidplayer.databinding.ItemShortsBrandPicAdBinding;
import com.startshorts.androidplayer.databinding.ItemShortsBrandVideoAdBinding;
import com.startshorts.androidplayer.databinding.ItemShortsNormalBinding;
import com.startshorts.androidplayer.databinding.ItemShortsProgrammaticAdBinding;
import com.startshorts.androidplayer.databinding.ItemShortsSubtitleBinding;
import com.startshorts.androidplayer.databinding.ItemShortsTrailerBinding;
import com.startshorts.androidplayer.manager.ad.AdManager;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.base.SwipingFrameLayout;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import com.startshorts.androidplayer.ui.view.shortsV2.adapter.BaseShortsAdapterView;
import com.startshorts.androidplayer.ui.view.shortsV2.adapter.ShortsBrandVideoAdAdapterView;
import com.startshorts.androidplayer.ui.view.shortsV2.adapter.ShortsNormalAdapterView;
import com.startshorts.androidplayer.ui.view.shortsV2.adapter.ShortsSubtitleAdapterView;
import com.startshorts.androidplayer.ui.view.shortsV2.adapter.ShortsTrailerAdapterView;
import com.startshorts.androidplayer.ui.view.shortsV2.menu.ShortsCoverView;
import com.startshorts.androidplayer.ui.view.shortsV2.menu.ShortsEpisodeNumView;
import com.startshorts.androidplayer.ui.view.shortsV2.menu.ShortsIconTextView;
import com.startshorts.androidplayer.ui.view.shortsV2.menu.ShortsSearchView;
import com.startshorts.androidplayer.ui.view.shortsV2.menu.ShortsTagView;
import com.startshorts.androidplayer.ui.view.shortsV2.menu.ShortsTextView;
import com.startshorts.androidplayer.ui.view.shortsV2.notification.ComingSoonShortsChip;
import com.startshorts.androidplayer.ui.view.shortsV2.notification.ShortsNotificationLayout;
import com.startshorts.androidplayer.ui.view.shortsV2.notification.ShortsNotificationType;
import fk.z;
import java.lang.ref.WeakReference;
import java.util.List;
import jk.v;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ShortsAdapter.kt */
@Metadata
@SourceDebugExtension({"SMAP\nShortsAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShortsAdapter.kt\ncom/startshorts/androidplayer/adapter/shorts/ShortsAdapter\n+ 2 BaseShortsAdapterView.kt\ncom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,611:1\n225#2,8:612\n225#2,8:620\n225#2,8:628\n225#2,8:636\n225#2,8:644\n225#2,8:652\n1863#3:660\n1864#3:668\n1863#3:669\n1864#3:677\n254#4:661\n254#4:662\n254#4:663\n254#4:664\n254#4:665\n254#4:666\n254#4:667\n275#4:670\n275#4:671\n275#4:672\n275#4:673\n275#4:674\n275#4:675\n275#4:676\n*S KotlinDebug\n*F\n+ 1 ShortsAdapter.kt\ncom/startshorts/androidplayer/adapter/shorts/ShortsAdapter\n*L\n356#1:612,8\n364#1:620,8\n371#1:628,8\n409#1:636,8\n416#1:644,8\n423#1:652,8\n430#1:660\n430#1:668\n469#1:669\n469#1:677\n432#1:661\n436#1:662\n440#1:663\n444#1:664\n448#1:665\n452#1:666\n456#1:667\n471#1:670\n475#1:671\n479#1:672\n483#1:673\n487#1:674\n491#1:675\n495#1:676\n*E\n"})
/* loaded from: classes6.dex */
public final class ShortsAdapter extends BaseAdapter<ShortsEpisode> {
    @NotNull

    /* renamed from: r  reason: collision with root package name */
    public static final c f38030r = new c(null);
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    private final WeakReference<Activity> f38031o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private WeakReference<RecyclerView> f38032p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private d f38033q;

    /* compiled from: ShortsAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class a extends BaseAdapter<ShortsEpisode>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemShortsBrandPicAdBinding f38034g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ ShortsAdapter f38035h;

        /* compiled from: ShortsAdapter.kt */
        @Metadata
        /* renamed from: com.startshorts.androidplayer.adapter.shorts.ShortsAdapter$a$a  reason: collision with other inner class name */
        /* loaded from: classes6.dex */
        public static final class C0614a extends yd.d {

            /* renamed from: e  reason: collision with root package name */
            final /* synthetic */ ShortsAdapter f38036e;

            /* renamed from: f  reason: collision with root package name */
            final /* synthetic */ int f38037f;

            /* renamed from: g  reason: collision with root package name */
            final /* synthetic */ ShortsEpisode f38038g;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0614a(ShortsAdapter shortsAdapter, int i10, ShortsEpisode shortsEpisode) {
                super(0L, 1, null);
                this.f38036e = shortsAdapter;
                this.f38037f = i10;
                this.f38038g = shortsEpisode;
            }

            @Override // yd.d
            public void a(View v10) {
                Intrinsics.checkNotNullParameter(v10, "v");
                d P = this.f38036e.P();
                if (P != null) {
                    P.o(this.f38037f, this.f38038g);
                }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@NotNull ShortsAdapter shortsAdapter, ItemShortsBrandPicAdBinding binding) {
            super(shortsAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f38035h = shortsAdapter;
            this.f38034g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemShortsBrandPicAdBinding c() {
            return this.f38034g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: k */
        public void f(int i10, @NotNull ShortsEpisode item) {
            ActResourceExtraInfo extendInfo;
            String str;
            Boolean bool;
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            ActResource extraAdInfo = item.getExtraAdInfo();
            if (extraAdInfo != null && (extendInfo = extraAdInfo.getExtendInfo()) != null) {
                ActResource extraAdInfo2 = item.getExtraAdInfo();
                Boolean bool2 = null;
                if (extraAdInfo2 != null) {
                    str = extraAdInfo2.getResourceMap();
                } else {
                    str = null;
                }
                if (str != null) {
                    bool = Boolean.valueOf(v.f(str));
                } else {
                    bool = null;
                }
                kk.f fVar = kk.f.f60747a;
                CustomFrescoView customFrescoView = c().f40880a;
                FrescoConfig frescoConfig = new FrescoConfig();
                frescoConfig.setUrl(str);
                frescoConfig.setOssProcess(false);
                Boolean bool3 = Boolean.TRUE;
                if (Intrinsics.areEqual(bool, bool3)) {
                    frescoConfig.setAutoPlayAnim(true);
                }
                frescoConfig.setScaleType(q.f3027i);
                frescoConfig.setIterativeBoxBlurPostProcessor(new d4.a(1, 5));
                Unit unit = Unit.f60915a;
                fVar.A(customFrescoView, frescoConfig);
                CustomFrescoView customFrescoView2 = c().f40882c;
                FrescoConfig frescoConfig2 = new FrescoConfig();
                frescoConfig2.setUrl(str);
                frescoConfig2.setOssProcess(false);
                if (Intrinsics.areEqual(bool, bool3)) {
                    frescoConfig2.setAutoPlayAnim(true);
                }
                frescoConfig2.setScaleType(q.f3020b);
                fVar.A(customFrescoView2, frescoConfig2);
                String adsPicFlag = extendInfo.getAdsPicFlag();
                if (adsPicFlag != null) {
                    bool2 = Boolean.valueOf(v.f(adsPicFlag));
                }
                CustomFrescoView customFrescoView3 = c().f40885f;
                FrescoConfig frescoConfig3 = new FrescoConfig();
                frescoConfig3.setUrl(adsPicFlag);
                if (Intrinsics.areEqual(bool2, bool3)) {
                    frescoConfig3.setAutoPlayAnim(true);
                } else {
                    z zVar = z.f51786a;
                    frescoConfig3.setOssWidth(zVar.l());
                    frescoConfig3.setOssHeight(zVar.l());
                }
                frescoConfig3.setCornerTransform(true);
                frescoConfig3.setCornerRadius(jk.g.b(2.0f));
                fVar.A(customFrescoView3, frescoConfig3);
                c().f40886g.setText(extendInfo.getAdsTitle());
                c().f40881b.setText(extendInfo.getAdsText());
                c().f40884e.setText(extendInfo.getAdsContent());
                c().getRoot().setOnClickListener(new C0614a(this.f38035h, i10, item));
            }
        }
    }

    /* compiled from: ShortsAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class b extends BaseAdapter<ShortsEpisode>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemShortsBrandVideoAdBinding f38039g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ ShortsAdapter f38040h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(@NotNull ShortsAdapter shortsAdapter, ItemShortsBrandVideoAdBinding binding) {
            super(shortsAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f38040h = shortsAdapter;
            this.f38039g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemShortsBrandVideoAdBinding c() {
            return this.f38039g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: k */
        public void f(int i10, @NotNull ShortsEpisode item) {
            ActResourceExtraInfo extendInfo;
            Boolean bool;
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            ActResource extraAdInfo = item.getExtraAdInfo();
            if (extraAdInfo != null && (extendInfo = extraAdInfo.getExtendInfo()) != null) {
                ShortsBrandVideoAdAdapterView adapterView = c().f40891a;
                Intrinsics.checkNotNullExpressionValue(adapterView, "adapterView");
                this.f38040h.V(item, adapterView);
                String adsPicFlag = extendInfo.getAdsPicFlag();
                if (adsPicFlag != null) {
                    bool = Boolean.valueOf(v.f(adsPicFlag));
                } else {
                    bool = null;
                }
                kk.f fVar = kk.f.f60747a;
                CustomFrescoView customFrescoView = (CustomFrescoView) adapterView.findViewById(R$id.logo_iv);
                FrescoConfig frescoConfig = new FrescoConfig();
                frescoConfig.setUrl(adsPicFlag);
                if (Intrinsics.areEqual(bool, Boolean.TRUE)) {
                    frescoConfig.setAutoPlayAnim(true);
                } else {
                    z zVar = z.f51786a;
                    frescoConfig.setOssWidth(zVar.l());
                    frescoConfig.setOssHeight(zVar.l());
                }
                frescoConfig.setCornerTransform(true);
                frescoConfig.setCornerRadius(jk.g.b(2.0f));
                Unit unit = Unit.f60915a;
                fVar.A(customFrescoView, frescoConfig);
                BaseTextView baseTextView = (BaseTextView) adapterView.findViewById(R$id.title_tv);
                if (baseTextView != null) {
                    baseTextView.setText(extendInfo.getAdsTitle());
                }
                BaseTextView baseTextView2 = (BaseTextView) adapterView.findViewById(R$id.content_tv);
                if (baseTextView2 != null) {
                    baseTextView2.setText(extendInfo.getAdsText());
                }
                BaseTextView baseTextView3 = (BaseTextView) adapterView.findViewById(R$id.install_tv);
                if (baseTextView3 != null) {
                    baseTextView3.setText(extendInfo.getAdsContent());
                }
            }
        }
    }

    /* compiled from: ShortsAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class c {
        public /* synthetic */ c(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private c() {
        }
    }

    /* compiled from: ShortsAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static class d extends SwipingFrameLayout.b {
        public static /* synthetic */ void n(d dVar, int i10, MotionEvent motionEvent, boolean z10, int i11, Object obj) {
            if (obj == null) {
                if ((i11 & 4) != 0) {
                    z10 = false;
                }
                dVar.m(i10, motionEvent, z10);
                return;
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: handleSeekbarMotionEvent");
        }

        public void m(int i10, @NotNull MotionEvent motionEvent, boolean z10) {
            throw null;
        }

        public void o(int i10, @NotNull ShortsEpisode shortsEpisode) {
            throw null;
        }

        public void p(int i10, @NotNull ShortsEpisode shortsEpisode) {
            throw null;
        }

        public void q(int i10, @NotNull ShortsEpisode shortsEpisode) {
            throw null;
        }

        public void r(int i10, @NotNull ShortsEpisode shortsEpisode) {
            throw null;
        }

        public void s(int i10, @NotNull ShortsEpisode shortsEpisode) {
            throw null;
        }

        public void t(int i10, @NotNull ShortsEpisode shortsEpisode) {
            throw null;
        }

        public void u(int i10, @NotNull ShortsEpisode shortsEpisode, @NotNull ShortsLabel shortsLabel) {
            throw null;
        }

        public void v(int i10, @NotNull ShortsEpisode shortsEpisode) {
            throw null;
        }
    }

    /* compiled from: ShortsAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class e extends BaseAdapter<ShortsEpisode>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemShortsNormalBinding f38041g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ ShortsAdapter f38042h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(@NotNull ShortsAdapter shortsAdapter, ItemShortsNormalBinding binding) {
            super(shortsAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f38042h = shortsAdapter;
            this.f38041g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemShortsNormalBinding c() {
            return this.f38041g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: k */
        public void f(int i10, @NotNull ShortsEpisode item) {
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            ShortsNormalAdapterView adapterView = c().f40895a;
            Intrinsics.checkNotNullExpressionValue(adapterView, "adapterView");
            this.f38042h.V(item, adapterView);
            this.f38042h.W(i10, item, adapterView);
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: l */
        public void g(int i10, @Nullable ShortsEpisode shortsEpisode, @NotNull List<Object> payloads) {
            Intrinsics.checkNotNullParameter(payloads, "payloads");
            i(i10);
            h(shortsEpisode);
            if (shortsEpisode != null && !payloads.contains("ignore_refresh")) {
                if (payloads.contains("update_collect_info")) {
                    ShortsIconTextView u10 = c().f40895a.u(1);
                    if (u10 != null) {
                        u10.e(shortsEpisode);
                        return;
                    }
                    return;
                }
                f(i10, shortsEpisode);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ShortsAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public final class f extends BaseAdapter<ShortsEpisode>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemShortsProgrammaticAdBinding f38043g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ ShortsAdapter f38044h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(@NotNull ShortsAdapter shortsAdapter, ItemShortsProgrammaticAdBinding binding) {
            super(shortsAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f38044h = shortsAdapter;
            this.f38043g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemShortsProgrammaticAdBinding c() {
            return this.f38043g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: k */
        public void f(int i10, @NotNull ShortsEpisode item) {
            int i11;
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            c().f40899a.setTag(null);
            AdManager adManager = AdManager.f41600a;
            WeakReference weakReference = this.f38044h.f38031o;
            FrameLayout adContainer = c().f40899a;
            Intrinsics.checkNotNullExpressionValue(adContainer, "adContainer");
            if (adManager.M()) {
                i11 = R$layout.view_native_ad_admob_2;
            } else {
                i11 = R$layout.view_native_ad_tp_2;
            }
            AdManager.o0(adManager, weakReference, adContainer, i11, "shorts_native", null, null, null, 112, null);
        }
    }

    /* compiled from: ShortsAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class g extends BaseAdapter<ShortsEpisode>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemShortsSubtitleBinding f38045g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ ShortsAdapter f38046h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(@NotNull ShortsAdapter shortsAdapter, ItemShortsSubtitleBinding binding) {
            super(shortsAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f38046h = shortsAdapter;
            this.f38045g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemShortsSubtitleBinding c() {
            return this.f38045g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: k */
        public void f(int i10, @NotNull ShortsEpisode item) {
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            ShortsSubtitleAdapterView adapterView = c().f40903a;
            Intrinsics.checkNotNullExpressionValue(adapterView, "adapterView");
            this.f38046h.V(item, adapterView);
            this.f38046h.W(i10, item, adapterView);
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: l */
        public void g(int i10, @Nullable ShortsEpisode shortsEpisode, @NotNull List<Object> payloads) {
            Intrinsics.checkNotNullParameter(payloads, "payloads");
            i(i10);
            h(shortsEpisode);
            if (shortsEpisode != null && !payloads.contains("ignore_refresh")) {
                if (payloads.contains("update_collect_info")) {
                    ShortsIconTextView u10 = c().f40903a.u(1);
                    if (u10 != null) {
                        u10.e(shortsEpisode);
                        return;
                    }
                    return;
                }
                f(i10, shortsEpisode);
            }
        }
    }

    /* compiled from: ShortsAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class h extends BaseAdapter<ShortsEpisode>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemShortsTrailerBinding f38047g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ ShortsAdapter f38048h;

        /* compiled from: ShortsAdapter.kt */
        @Metadata
        /* loaded from: classes6.dex */
        public static final class a extends yd.d {

            /* renamed from: e  reason: collision with root package name */
            final /* synthetic */ ShortsAdapter f38049e;

            /* renamed from: f  reason: collision with root package name */
            final /* synthetic */ int f38050f;

            /* renamed from: g  reason: collision with root package name */
            final /* synthetic */ ShortsEpisode f38051g;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(ShortsAdapter shortsAdapter, int i10, ShortsEpisode shortsEpisode) {
                super(0L, 1, null);
                this.f38049e = shortsAdapter;
                this.f38050f = i10;
                this.f38051g = shortsEpisode;
            }

            @Override // yd.d
            public void a(View v10) {
                Intrinsics.checkNotNullParameter(v10, "v");
                d P = this.f38049e.P();
                if (P != null) {
                    P.v(this.f38050f, this.f38051g);
                }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(@NotNull ShortsAdapter shortsAdapter, ItemShortsTrailerBinding binding) {
            super(shortsAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f38048h = shortsAdapter;
            this.f38047g = binding;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit o(ShortsEpisode shortsEpisode) {
            au.c.d().l(new ReservationNotificationEvent(shortsEpisode.getShortPlayId(), true));
            return Unit.f60915a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit p(ShortsEpisode shortsEpisode) {
            au.c.d().l(new ReservationNotificationEvent(shortsEpisode.getShortPlayId(), false));
            return Unit.f60915a;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: l */
        public ItemShortsTrailerBinding c() {
            return this.f38047g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: m */
        public void f(int i10, @NotNull final ShortsEpisode item) {
            FragmentActivity fragmentActivity;
            FragmentManager supportFragmentManager;
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            ShortsTrailerAdapterView adapterView = c().f40907a;
            Intrinsics.checkNotNullExpressionValue(adapterView, "adapterView");
            this.f38048h.V(item, adapterView);
            ComingSoonShortsChip comingSoonShortsChip = (ComingSoonShortsChip) adapterView.findViewById(R$id.coming_soon_button);
            if (comingSoonShortsChip != null) {
                Context context = adapterView.getContext();
                if (context instanceof FragmentActivity) {
                    fragmentActivity = (FragmentActivity) context;
                } else {
                    fragmentActivity = null;
                }
                int i11 = 0;
                if (fragmentActivity != null && (supportFragmentManager = fragmentActivity.getSupportFragmentManager()) != null) {
                    comingSoonShortsChip.I(supportFragmentManager, item.getBindShortPlayId(), item.getShortPlayCode(), Intrinsics.areEqual(item.isReservation(), Boolean.TRUE), null, null, (Function0) TypeIntrinsics.beforeCheckcastToFunctionOfArity(new Function0() { // from class: com.startshorts.androidplayer.adapter.shorts.a
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            Unit o10;
                            o10 = ShortsAdapter.h.o(ShortsEpisode.this);
                            return o10;
                        }
                    }, 0), (Function0) TypeIntrinsics.beforeCheckcastToFunctionOfArity(new Function0() { // from class: com.startshorts.androidplayer.adapter.shorts.b
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            Unit p10;
                            p10 = ShortsAdapter.h.p(ShortsEpisode.this);
                            return p10;
                        }
                    }, 0));
                }
                if (item.getFirstDramId() > 0 && Intrinsics.areEqual(item.isRelease(), Boolean.TRUE)) {
                    i11 = 8;
                }
                comingSoonShortsChip.setVisibility(i11);
            }
            ShortsTextView shortsTextView = (ShortsTextView) adapterView.findViewById(R$id.watch_now_button);
            if (shortsTextView != null) {
                shortsTextView.setOnClickListener(new a(this.f38048h, i10, item));
            }
            if (Intrinsics.areEqual(item.isRelease(), Boolean.TRUE)) {
                this.f38048h.i0(adapterView);
            } else {
                this.f38048h.U(adapterView);
            }
            this.f38048h.W(i10, item, adapterView);
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: n */
        public void g(int i10, @Nullable ShortsEpisode shortsEpisode, @NotNull List<Object> payloads) {
            ShortsIconTextView u10;
            Intrinsics.checkNotNullParameter(payloads, "payloads");
            i(i10);
            h(shortsEpisode);
            if (shortsEpisode != null && !payloads.contains("ignore_refresh")) {
                if (payloads.contains("update_collect_info")) {
                    if (shortsEpisode.isTrailer() && Intrinsics.areEqual(shortsEpisode.isRelease(), Boolean.TRUE) && (u10 = c().f40907a.u(1)) != null) {
                        u10.e(shortsEpisode);
                        return;
                    }
                    return;
                }
                f(i10, shortsEpisode);
            }
        }
    }

    /* compiled from: ShortsAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class i extends yd.d {

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ int f38053f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ ShortsEpisode f38054g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        i(int i10, ShortsEpisode shortsEpisode) {
            super(0L, 1, null);
            this.f38053f = i10;
            this.f38054g = shortsEpisode;
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            d P = ShortsAdapter.this.P();
            if (P != null) {
                P.s(this.f38053f, this.f38054g);
            }
        }
    }

    /* compiled from: ShortsAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class j implements ShortsTagView.a {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f38056b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ ShortsEpisode f38057c;

        j(int i10, ShortsEpisode shortsEpisode) {
            this.f38056b = i10;
            this.f38057c = shortsEpisode;
        }

        @Override // com.startshorts.androidplayer.ui.view.shortsV2.menu.ShortsTagView.a
        public void a(ShortsLabel shortsLabel) {
            Intrinsics.checkNotNullParameter(shortsLabel, "shortsLabel");
            d P = ShortsAdapter.this.P();
            if (P != null) {
                P.u(this.f38056b, this.f38057c, shortsLabel);
            }
        }
    }

    /* compiled from: ShortsAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class k extends yd.d {

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ int f38059f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ ShortsEpisode f38060g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        k(int i10, ShortsEpisode shortsEpisode) {
            super(0L, 1, null);
            this.f38059f = i10;
            this.f38060g = shortsEpisode;
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            d P = ShortsAdapter.this.P();
            if (P != null) {
                P.q(this.f38059f, this.f38060g);
            }
        }
    }

    /* compiled from: ShortsAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class l extends yd.d {

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ int f38062f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ ShortsEpisode f38063g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        l(int i10, ShortsEpisode shortsEpisode) {
            super(0L, 1, null);
            this.f38062f = i10;
            this.f38063g = shortsEpisode;
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            d P = ShortsAdapter.this.P();
            if (P != null) {
                P.p(this.f38062f, this.f38063g);
            }
        }
    }

    /* compiled from: ShortsAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class m extends yd.d {

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ int f38065f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ ShortsEpisode f38066g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        m(int i10, ShortsEpisode shortsEpisode) {
            super(0L, 1, null);
            this.f38065f = i10;
            this.f38066g = shortsEpisode;
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            d P = ShortsAdapter.this.P();
            if (P != null) {
                P.r(this.f38065f, this.f38066g);
            }
        }
    }

    /* compiled from: ShortsAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class n extends yd.d {

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ int f38068f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ ShortsEpisode f38069g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        n(int i10, ShortsEpisode shortsEpisode) {
            super(0L, 1, null);
            this.f38068f = i10;
            this.f38069g = shortsEpisode;
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            d P = ShortsAdapter.this.P();
            if (P != null) {
                P.t(this.f38068f, this.f38069g);
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShortsAdapter(@NotNull WeakReference<Activity> actRef) {
        super(0L, 1, null);
        Intrinsics.checkNotNullParameter(actRef, "actRef");
        this.f38031o = actRef;
    }

    private final BaseShortsAdapterView N(int i10) {
        View O = O(i10);
        if (O instanceof BaseShortsAdapterView) {
            return (BaseShortsAdapterView) O;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void U(BaseShortsAdapterView baseShortsAdapterView) {
        ViewGroup viewGroup = (ViewGroup) baseShortsAdapterView.findViewById(R$id.menu_layout);
        zj.a aVar = null;
        if (viewGroup != null) {
            int childCount = viewGroup.getChildCount();
            int i10 = 0;
            while (true) {
                if (i10 >= childCount) {
                    break;
                }
                View childAt = viewGroup.getChildAt(i10);
                if (childAt instanceof ShortsCoverView) {
                    aVar = (zj.a) childAt;
                    break;
                }
                i10++;
            }
        }
        ShortsCoverView shortsCoverView = (ShortsCoverView) aVar;
        if (shortsCoverView != null) {
            shortsCoverView.a(8);
        }
        ShortsIconTextView shortsIconTextView = (ShortsIconTextView) baseShortsAdapterView.findViewById(R$id.collect_view);
        if (shortsIconTextView != null) {
            shortsIconTextView.a(8);
        }
        ShortsIconTextView shortsIconTextView2 = (ShortsIconTextView) baseShortsAdapterView.findViewById(R$id.list_view);
        if (shortsIconTextView2 != null) {
            shortsIconTextView2.a(8);
        }
        ShortsIconTextView shortsIconTextView3 = (ShortsIconTextView) baseShortsAdapterView.findViewById(R$id.share_view);
        if (shortsIconTextView3 != null) {
            shortsIconTextView3.a(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void V(ShortsEpisode shortsEpisode, BaseShortsAdapterView baseShortsAdapterView) {
        baseShortsAdapterView.setEpisode(shortsEpisode);
        baseShortsAdapterView.setMListener(this.f38033q);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"ClickableViewAccessibility"})
    public final void W(int i10, ShortsEpisode shortsEpisode, BaseShortsAdapterView baseShortsAdapterView) {
        zj.a aVar;
        zj.a aVar2;
        zj.a aVar3;
        ViewGroup viewGroup = (ViewGroup) baseShortsAdapterView.findViewById(R$id.menu_layout);
        int i11 = 0;
        zj.a aVar4 = null;
        if (viewGroup != null) {
            int childCount = viewGroup.getChildCount();
            for (int i12 = 0; i12 < childCount; i12++) {
                View childAt = viewGroup.getChildAt(i12);
                if (childAt instanceof ShortsSearchView) {
                    aVar = (zj.a) childAt;
                    break;
                }
            }
        }
        aVar = null;
        ShortsSearchView shortsSearchView = (ShortsSearchView) aVar;
        if (shortsSearchView != null) {
            shortsSearchView.setOnClickListener(new i(i10, shortsEpisode));
        }
        ViewGroup viewGroup2 = (ViewGroup) baseShortsAdapterView.findViewById(R$id.menu_layout);
        if (viewGroup2 != null) {
            int childCount2 = viewGroup2.getChildCount();
            for (int i13 = 0; i13 < childCount2; i13++) {
                View childAt2 = viewGroup2.getChildAt(i13);
                if (childAt2 instanceof ShortsTagView) {
                    aVar2 = (zj.a) childAt2;
                    break;
                }
            }
        }
        aVar2 = null;
        ShortsTagView shortsTagView = (ShortsTagView) aVar2;
        if (shortsTagView != null) {
            shortsTagView.setMListener(new j(i10, shortsEpisode));
        }
        ViewGroup viewGroup3 = (ViewGroup) baseShortsAdapterView.findViewById(R$id.menu_layout);
        if (viewGroup3 != null) {
            int childCount3 = viewGroup3.getChildCount();
            for (int i14 = 0; i14 < childCount3; i14++) {
                View childAt3 = viewGroup3.getChildAt(i14);
                if (childAt3 instanceof ShortsCoverView) {
                    aVar3 = (zj.a) childAt3;
                    break;
                }
            }
        }
        aVar3 = null;
        ShortsCoverView shortsCoverView = (ShortsCoverView) aVar3;
        if (shortsCoverView != null) {
            shortsCoverView.setOnClickListener(new k(i10, shortsEpisode));
        }
        ShortsIconTextView shortsIconTextView = (ShortsIconTextView) baseShortsAdapterView.findViewById(R$id.collect_view);
        if (shortsIconTextView != null) {
            shortsIconTextView.setOnClickListener(new l(i10, shortsEpisode));
        }
        ShortsIconTextView shortsIconTextView2 = (ShortsIconTextView) baseShortsAdapterView.findViewById(R$id.list_view);
        if (shortsIconTextView2 != null) {
            shortsIconTextView2.setOnClickListener(new m(i10, shortsEpisode));
        }
        ShortsIconTextView shortsIconTextView3 = (ShortsIconTextView) baseShortsAdapterView.findViewById(R$id.share_view);
        if (shortsIconTextView3 != null) {
            shortsIconTextView3.setOnClickListener(new n(i10, shortsEpisode));
        }
        ViewGroup viewGroup4 = (ViewGroup) baseShortsAdapterView.findViewById(R$id.menu_layout);
        if (viewGroup4 != null) {
            int childCount4 = viewGroup4.getChildCount();
            while (true) {
                if (i11 >= childCount4) {
                    break;
                }
                View childAt4 = viewGroup4.getChildAt(i11);
                if (childAt4 instanceof ShortsEpisodeNumView) {
                    aVar4 = (zj.a) childAt4;
                    break;
                }
                i11++;
            }
        }
        ShortsEpisodeNumView shortsEpisodeNumView = (ShortsEpisodeNumView) aVar4;
        if (shortsEpisodeNumView != null) {
            shortsEpisodeNumView.setOnTouchListener(new View.OnTouchListener() { // from class: pd.a
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    boolean X;
                    X = ShortsAdapter.X(ShortsAdapter.this, view, motionEvent);
                    return X;
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean X(ShortsAdapter shortsAdapter, View view, MotionEvent motionEvent) {
        d dVar = shortsAdapter.f38033q;
        if (dVar != null) {
            Intrinsics.checkNotNull(motionEvent);
            d.n(dVar, 3, motionEvent, false, 4, null);
            return true;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void i0(BaseShortsAdapterView baseShortsAdapterView) {
        ViewGroup viewGroup = (ViewGroup) baseShortsAdapterView.findViewById(R$id.menu_layout);
        zj.a aVar = null;
        if (viewGroup != null) {
            int childCount = viewGroup.getChildCount();
            int i10 = 0;
            while (true) {
                if (i10 >= childCount) {
                    break;
                }
                View childAt = viewGroup.getChildAt(i10);
                if (childAt instanceof ShortsCoverView) {
                    aVar = (zj.a) childAt;
                    break;
                }
                i10++;
            }
        }
        ShortsCoverView shortsCoverView = (ShortsCoverView) aVar;
        if (shortsCoverView != null) {
            shortsCoverView.a(0);
        }
        ShortsIconTextView shortsIconTextView = (ShortsIconTextView) baseShortsAdapterView.findViewById(R$id.collect_view);
        if (shortsIconTextView != null) {
            shortsIconTextView.a(0);
        }
        ShortsIconTextView shortsIconTextView2 = (ShortsIconTextView) baseShortsAdapterView.findViewById(R$id.list_view);
        if (shortsIconTextView2 != null) {
            shortsIconTextView2.a(0);
        }
        ShortsIconTextView shortsIconTextView3 = (ShortsIconTextView) baseShortsAdapterView.findViewById(R$id.share_view);
        if (shortsIconTextView3 != null) {
            shortsIconTextView3.a(0);
        }
    }

    public final void K(int i10, @NotNull ak.a notification, @NotNull LinearLayout.LayoutParams layoutParams, @Nullable yd.a aVar) {
        Intrinsics.checkNotNullParameter(notification, "notification");
        Intrinsics.checkNotNullParameter(layoutParams, "layoutParams");
        BaseShortsAdapterView N = N(i10);
        if (N != null) {
            N.t(notification, layoutParams, aVar);
        }
    }

    public final void L(int i10) {
        BaseShortsAdapterView N = N(i10);
        if (N != null) {
            N.m();
        }
    }

    @Nullable
    public final ViewGroup M(int i10) {
        View O = O(i10);
        if (O != null) {
            return (ViewGroup) O.findViewById(R$id.ad_container);
        }
        return null;
    }

    @Nullable
    public final View O(int i10) {
        RecyclerView recyclerView;
        RecyclerView.ViewHolder findViewHolderForLayoutPosition;
        WeakReference<RecyclerView> weakReference = this.f38032p;
        if (weakReference != null && (recyclerView = weakReference.get()) != null && (findViewHolderForLayoutPosition = recyclerView.findViewHolderForLayoutPosition(i10)) != null) {
            return findViewHolderForLayoutPosition.itemView;
        }
        return null;
    }

    @Nullable
    public final d P() {
        return this.f38033q;
    }

    @Nullable
    public final TextureView Q(int i10) {
        BaseShortsAdapterView N = N(i10);
        if (N != null) {
            return N.getVideoRenderView();
        }
        return null;
    }

    public final void R(int i10) {
        BaseShortsAdapterView N = N(i10);
        if (N != null) {
            N.w();
        }
    }

    public final void S(int i10) {
        List<zj.a> allMenus;
        BaseShortsAdapterView N = N(i10);
        if (N != null && (allMenus = N.getAllMenus()) != null) {
            for (zj.a aVar : allMenus) {
                boolean z10 = aVar instanceof ShortsTextView;
                if (z10) {
                    ShortsTextView shortsTextView = (ShortsTextView) aVar;
                    if (shortsTextView.j() == 3) {
                        if (((View) aVar).getVisibility() == 0) {
                            shortsTextView.a(4);
                        }
                    }
                }
                if (aVar instanceof ShortsSearchView) {
                    if (((View) aVar).getVisibility() == 0) {
                        ((ShortsSearchView) aVar).a(4);
                    }
                } else if (aVar instanceof ShortsTagView) {
                    if (((View) aVar).getVisibility() == 0) {
                        ((ShortsTagView) aVar).a(4);
                    }
                } else if (aVar instanceof ShortsNotificationLayout) {
                    if (((View) aVar).getVisibility() == 0) {
                        ((ShortsNotificationLayout) aVar).a(4);
                    }
                } else {
                    if (z10) {
                        ShortsTextView shortsTextView2 = (ShortsTextView) aVar;
                        if (shortsTextView2.j() == 4) {
                            if (((View) aVar).getVisibility() == 0) {
                                shortsTextView2.a(4);
                            }
                        }
                    }
                    if (z10) {
                        ShortsTextView shortsTextView3 = (ShortsTextView) aVar;
                        if (shortsTextView3.j() == 5) {
                            if (((View) aVar).getVisibility() == 0) {
                                shortsTextView3.a(4);
                            }
                        }
                    }
                    if (aVar instanceof ComingSoonShortsChip) {
                        if (((View) aVar).getVisibility() == 0) {
                            ((ComingSoonShortsChip) aVar).a(4);
                        }
                    } else {
                        aVar.a(4);
                    }
                }
            }
        }
    }

    public final void T(int i10) {
        BaseShortsAdapterView N = N(i10);
        if (N != null) {
            N.x();
        }
    }

    public final boolean Y(int i10) {
        BaseShortsAdapterView N = N(i10);
        if (N != null) {
            return N.z();
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: Z */
    public void onViewDetachedFromWindow(@NotNull BaseAdapter<ShortsEpisode>.ViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        super.onViewDetachedFromWindow(holder);
        if (holder instanceof f) {
            ((f) holder).c().f40899a.setTag(null);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: a0 */
    public void onViewRecycled(@NotNull BaseAdapter<ShortsEpisode>.ViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        super.onViewRecycled(holder);
        if (holder instanceof f) {
            FrameLayout frameLayout = ((f) holder).c().f40899a;
            if (frameLayout.getChildCount() > 0) {
                r("destroyNativeAdView");
                ca.k kVar = ca.k.f3414a;
                Intrinsics.checkNotNull(frameLayout);
                kVar.b(frameLayout);
            }
        }
    }

    public final void b0(int i10) {
        BaseShortsAdapterView N = N(i10);
        if (N != null) {
            N.A();
        }
    }

    public final void c0(int i10, @NotNull ShortsNotificationType type, boolean z10, @Nullable yd.a aVar) {
        Intrinsics.checkNotNullParameter(type, "type");
        BaseShortsAdapterView N = N(i10);
        if (N != null) {
            N.B(type, z10, aVar);
        }
    }

    public final void d0(@Nullable d dVar) {
        this.f38033q = dVar;
    }

    public final void e0(int i10) {
        BaseShortsAdapterView N = N(i10);
        if (N != null) {
            N.setMVideoRendered(true);
        }
    }

    public final void f0(int i10) {
        BaseShortsAdapterView N = N(i10);
        if (N != null) {
            N.D();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:70:0x0107, code lost:
        r4.a(8);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void g0(int r10) {
        /*
            Method dump skipped, instructions count: 279
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.adapter.shorts.ShortsAdapter.g0(int):void");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i10) {
        ShortsEpisode item = getItem(i10);
        if (item == null) {
            return 1;
        }
        if (item.isProgrammaticAd()) {
            return 4;
        }
        if (item.isBrandAd()) {
            ActResource extraAdInfo = item.getExtraAdInfo();
            if (extraAdInfo != null && extraAdInfo.isBrandAdVideo()) {
                return 6;
            }
            return 5;
        } else if (!item.enableSubtitle()) {
            if (!item.isTrailer()) {
                return 1;
            }
            return 3;
        } else {
            return 2;
        }
    }

    public final void h0(int i10) {
        BaseShortsAdapterView N = N(i10);
        if (N != null) {
            N.E();
        }
    }

    public final void j0(int i10, @NotNull String content) {
        ShortsSubtitleAdapterView shortsSubtitleAdapterView;
        Intrinsics.checkNotNullParameter(content, "content");
        BaseShortsAdapterView N = N(i10);
        if (N instanceof ShortsSubtitleAdapterView) {
            shortsSubtitleAdapterView = (ShortsSubtitleAdapterView) N;
        } else {
            shortsSubtitleAdapterView = null;
        }
        if (shortsSubtitleAdapterView != null) {
            shortsSubtitleAdapterView.G(content);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onAttachedToRecyclerView(@NotNull RecyclerView recyclerView) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        this.f38032p = new WeakReference<>(recyclerView);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onDetachedFromRecyclerView(@NotNull RecyclerView recyclerView) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        WeakReference<RecyclerView> weakReference = this.f38032p;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.f38032p = null;
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    public boolean p() {
        return false;
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    @NotNull
    public String q() {
        return "ShortsAdapter";
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    @NotNull
    public BaseAdapter<ShortsEpisode>.ViewHolder x(@NotNull ViewGroup parent, int i10, int i11) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        if (i10 != 2) {
            if (i10 != 3) {
                if (i10 != 4) {
                    if (i10 != 5) {
                        if (i10 != 6) {
                            return new e(this, (ItemShortsNormalBinding) s(parent, R$layout.item_shorts_normal));
                        }
                        return new b(this, (ItemShortsBrandVideoAdBinding) s(parent, R$layout.item_shorts_brand_video_ad));
                    }
                    return new a(this, (ItemShortsBrandPicAdBinding) s(parent, R$layout.item_shorts_brand_pic_ad));
                }
                return new f(this, (ItemShortsProgrammaticAdBinding) s(parent, R$layout.item_shorts_programmatic_ad));
            }
            return new h(this, (ItemShortsTrailerBinding) s(parent, R$layout.item_shorts_trailer));
        }
        yf.a.f70794a.o();
        return new g(this, (ItemShortsSubtitleBinding) s(parent, R$layout.item_shorts_subtitle));
    }
}
