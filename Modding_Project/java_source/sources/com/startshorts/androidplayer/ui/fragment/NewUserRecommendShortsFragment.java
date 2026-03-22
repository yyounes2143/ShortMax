package com.startshorts.androidplayer.ui.fragment;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.view.LayoutInflater;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.core.content.ContextCompat;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.ss.ttvideoengine.source.DirectUrlSource;
import com.startshorts.androidplayer.R$color;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.adapter.base.BaseAdapter;
import com.startshorts.androidplayer.adapter.shorts.RecommendShortNewAdapter;
import com.startshorts.androidplayer.bean.api.ApiErrorState;
import com.startshorts.androidplayer.bean.eventbus.ShortsPausePlayEvent;
import com.startshorts.androidplayer.bean.immersion.ImmersionParams;
import com.startshorts.androidplayer.bean.immersion.ImmersionShortsInfo;
import com.startshorts.androidplayer.bean.purchase.AcknowledgePurchaseResult;
import com.startshorts.androidplayer.bean.purchase.GPayPriceInfo;
import com.startshorts.androidplayer.bean.purchase.RecommendCoinSku;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.shorts.QueryCampaignRecommendShortsResult;
import com.startshorts.androidplayer.bean.shorts.RecommendShorts;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import com.startshorts.androidplayer.databinding.DialogFragmentNewUserRecommendBinding;
import com.startshorts.androidplayer.databinding.ItemRecommendShortsNewTopBinding;
import com.startshorts.androidplayer.databinding.ItemSubsSkuRecommendNormalBinding;
import com.startshorts.androidplayer.databinding.ItemSubsSkuRecommendProBinding;
import com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.repo.billing.purchase.PurchaseRepo;
import com.startshorts.androidplayer.ui.activity.immersion.ImmersionActivity;
import com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment;
import com.startshorts.androidplayer.ui.fragment.base.PageStateDialogFragment;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.subs.SubsNormalOldStyleView;
import com.startshorts.androidplayer.ui.view.subs.SubsProOldStyleView;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.utils.ResourceHandler;
import com.startshorts.androidplayer.utils.ext.FragmentExtKt;
import com.startshorts.androidplayer.viewmodel.billing.BillingViewModel;
import com.startshorts.androidplayer.viewmodel.billing.a;
import com.startshorts.androidplayer.viewmodel.billing.b;
import com.startshorts.androidplayer.viewmodel.player.PlayerViewModel;
import com.startshorts.androidplayer.viewmodel.player.a;
import com.startshorts.androidplayer.viewmodel.player.b;
import com.startshorts.androidplayer.viewmodel.player.c;
import com.startshorts.androidplayer.viewmodel.recommend.NewUserRecommendShortViewModel;
import com.startshorts.androidplayer.viewmodel.recommend.a;
import com.tencent.mmkv.MMKV;
import com.vungle.ads.internal.signals.SignalManager;
import fk.u;
import gi.d;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import jk.r;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import lf.s;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: NewUserRecommendShortsFragment.kt */
@Metadata
@SourceDebugExtension({"SMAP\nNewUserRecommendShortsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NewUserRecommendShortsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt\n*L\n1#1,1003:1\n1863#2,2:1004\n1863#2,2:1006\n1863#2,2:1008\n1863#2,2:1028\n1863#2,2:1030\n1863#2,2:1032\n1863#2,2:1034\n15#3,9:1010\n15#3,9:1019\n*S KotlinDebug\n*F\n+ 1 NewUserRecommendShortsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment\n*L\n452#1:1004,2\n575#1:1006,2\n774#1:1008,2\n143#1:1028,2\n157#1:1030,2\n177#1:1032,2\n188#1:1034,2\n884#1:1010,9\n903#1:1019,9\n*E\n"})
/* loaded from: classes7.dex */
public final class NewUserRecommendShortsFragment extends PageStateDialogFragment<DialogFragmentNewUserRecommendBinding> {
    @NotNull
    public static final a E = new a(null);
    @Nullable
    private CountDownTimer A;

    /* renamed from: l  reason: collision with root package name */
    private boolean f45572l;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private List<SubsSku> f45579s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f45580t;

    /* renamed from: u  reason: collision with root package name */
    private boolean f45581u;
    @Nullable

    /* renamed from: w  reason: collision with root package name */
    private RecommendShortNewAdapter f45583w;
    @Nullable

    /* renamed from: x  reason: collision with root package name */
    private ItemRecommendShortsNewTopBinding f45584x;

    /* renamed from: y  reason: collision with root package name */
    private int f45585y;
    @Nullable

    /* renamed from: z  reason: collision with root package name */
    private hi.b f45586z;

    /* renamed from: k  reason: collision with root package name */
    private final int f45571k = R$layout.dialog_fragment_new_user_recommend;
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    private final ms.i f45573m = kotlin.c.b(new Function0() { // from class: com.startshorts.androidplayer.ui.fragment.h
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            ViewModelProvider K0;
            K0 = NewUserRecommendShortsFragment.K0(NewUserRecommendShortsFragment.this);
            return K0;
        }
    });
    @NotNull

    /* renamed from: n  reason: collision with root package name */
    private final ms.i<PlayerViewModel> f45574n = kotlin.c.b(new Function0() { // from class: com.startshorts.androidplayer.ui.fragment.i
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            PlayerViewModel F0;
            F0 = NewUserRecommendShortsFragment.F0(NewUserRecommendShortsFragment.this);
            return F0;
        }
    });
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    private final ms.i f45575o = kotlin.c.b(new Function0() { // from class: com.startshorts.androidplayer.ui.fragment.j
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            NewUserRecommendShortViewModel G0;
            G0 = NewUserRecommendShortsFragment.G0(NewUserRecommendShortsFragment.this);
            return G0;
        }
    });
    @NotNull

    /* renamed from: p  reason: collision with root package name */
    private final ms.i f45576p = kotlin.c.b(new Function0() { // from class: com.startshorts.androidplayer.ui.fragment.k
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            BillingViewModel D0;
            D0 = NewUserRecommendShortsFragment.D0(NewUserRecommendShortsFragment.this);
            return D0;
        }
    });
    @NotNull

    /* renamed from: q  reason: collision with root package name */
    private ArrayList<RecommendShorts> f45577q = new ArrayList<>();
    @NotNull

    /* renamed from: r  reason: collision with root package name */
    private ArrayList<RecommendCoinSku> f45578r = new ArrayList<>();

    /* renamed from: v  reason: collision with root package name */
    private int f45582v = 3;
    private boolean B = true;
    private final int C = -1;
    private final int D = -1;

    /* compiled from: NewUserRecommendShortsFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final NewUserRecommendShortsFragment a() {
            NewUserRecommendShortsFragment newUserRecommendShortsFragment = new NewUserRecommendShortsFragment();
            newUserRecommendShortsFragment.f45585y = 0;
            return newUserRecommendShortsFragment;
        }

        @NotNull
        public final NewUserRecommendShortsFragment b(@NotNull QueryCampaignRecommendShortsResult result) {
            Intrinsics.checkNotNullParameter(result, "result");
            NewUserRecommendShortsFragment newUserRecommendShortsFragment = new NewUserRecommendShortsFragment();
            newUserRecommendShortsFragment.f45585y = 1;
            if (result.getRecommendList() != null) {
                newUserRecommendShortsFragment.f45577q.addAll(result.getRecommendList());
            }
            newUserRecommendShortsFragment.L0(result);
            return newUserRecommendShortsFragment;
        }

        private a() {
        }
    }

    /* compiled from: NewUserRecommendShortsFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends yd.d {
        b() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            NewUserRecommendShortsFragment.this.dismiss();
        }
    }

    /* compiled from: NewUserRecommendShortsFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c implements BaseAdapter.b<RecommendShorts> {
        c() {
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.b
        /* renamed from: b */
        public void a(View v10, RecommendShorts d10, int i10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            Intrinsics.checkNotNullParameter(d10, "d");
            NewUserRecommendShortsFragment.this.S0(d10);
        }
    }

    /* compiled from: NewUserRecommendShortsFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d extends yd.d {
        d() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            if (!NewUserRecommendShortsFragment.this.f45581u) {
                NewUserRecommendShortsFragment.this.f45581u = true;
                NewUserRecommendShortsFragment.this.M0();
                NewUserRecommendShortsFragment.this.q0().G(NewUserRecommendShortsFragment.this.f45585y, "more");
            }
        }
    }

    /* compiled from: NewUserRecommendShortsFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class e extends yd.d {

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ RecommendCoinSku f45590e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ NewUserRecommendShortsFragment f45591f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(RecommendCoinSku recommendCoinSku, NewUserRecommendShortsFragment newUserRecommendShortsFragment) {
            super(0L, 1, null);
            this.f45590e = recommendCoinSku;
            this.f45591f = newUserRecommendShortsFragment;
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            if (this.f45590e.getPurchasedSku()) {
                return;
            }
            this.f45591f.p0().W(new a.e(this.f45591f.o0(), this.f45591f.h(), this.f45590e, null, false, null, null, null, 248, null));
            this.f45591f.q0().F(this.f45591f.f45585y, this.f45590e.getGpSkuId());
        }
    }

    /* compiled from: NewUserRecommendShortsFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class f extends CountDownTimer {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ NewUserRecommendShortsFragment f45592a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(long j10, NewUserRecommendShortsFragment newUserRecommendShortsFragment) {
            super(j10, 1000L);
            this.f45592a = newUserRecommendShortsFragment;
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            this.f45592a.Q0(0L);
            ud.b.f68412a.s4(0L);
            this.f45592a.A = null;
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j10) {
            this.f45592a.Q0(j10);
        }
    }

    /* compiled from: NewUserRecommendShortsFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class g extends yd.d {

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ SubsSku f45594f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g(SubsSku subsSku) {
            super(0L, 1, null);
            this.f45594f = subsSku;
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            NewUserRecommendShortsFragment.this.p0().W(new a.j(NewUserRecommendShortsFragment.this.o0(), NewUserRecommendShortsFragment.this.h(), this.f45594f, null, null, 0, null, null, null, null, null, null, 4088, null));
            NewUserRecommendShortsFragment.this.q0().F(NewUserRecommendShortsFragment.this.f45585y, this.f45594f.getSkuId());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NewUserRecommendShortsFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class h implements Observer, FunctionAdapter {

        /* renamed from: a  reason: collision with root package name */
        private final /* synthetic */ Function1 f45595a;

        h(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f45595a = function;
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
            return this.f45595a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f45595a.invoke(obj);
        }
    }

    /* compiled from: FragmentExt.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 NewUserRecommendShortsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment\n*L\n1#1,20:1\n885#2,9:21\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class i implements Function0<Unit> {
        public i() {
        }

        public final void a() {
            Context requireContext = NewUserRecommendShortsFragment.this.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            gi.d dVar = new gi.d(requireContext);
            dVar.x(new k());
            dVar.show();
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            a();
            return Unit.f60915a;
        }
    }

    /* compiled from: NewUserRecommendShortsFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class k implements d.b {
        k() {
        }

        @Override // gi.d.b
        public void a() {
            NewUserRecommendShortsFragment.this.V0("retry_pop");
        }
    }

    /* compiled from: FragmentExt.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 NewUserRecommendShortsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment\n*L\n1#1,20:1\n904#2,5:21\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class l implements Function0<Unit> {
        public l() {
        }

        public final void a() {
            NewUserRecommendShortsFragment newUserRecommendShortsFragment = NewUserRecommendShortsFragment.this;
            Context requireContext = NewUserRecommendShortsFragment.this.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            hi.b bVar = new hi.b(requireContext);
            bVar.setCancelable(false);
            bVar.show();
            newUserRecommendShortsFragment.f45586z = bVar;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            a();
            return Unit.f60915a;
        }
    }

    private final void A0() {
        ((DialogFragmentNewUserRecommendBinding) m()).f38942a.setOnClickListener(new b());
        RecyclerView.ItemDecoration itemDecoration = new RecyclerView.ItemDecoration() { // from class: com.startshorts.androidplayer.ui.fragment.NewUserRecommendShortsFragment$initView$itemDecoration$1

            /* renamed from: a  reason: collision with root package name */
            private final int f45601a = jk.g.a(6.0f);

            /* renamed from: b  reason: collision with root package name */
            private final int f45602b = jk.g.a(16.0f);

            /* renamed from: c  reason: collision with root package name */
            private final int f45603c = jk.g.a(19.0f);

            /* renamed from: d  reason: collision with root package name */
            private final int f45604d = jk.g.a(34.0f);

            @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
            public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.State state) {
                RecommendShortNewAdapter recommendShortNewAdapter;
                int i10;
                boolean z10;
                int i11;
                int i12;
                int i13;
                Intrinsics.checkNotNullParameter(outRect, "outRect");
                Intrinsics.checkNotNullParameter(view, "view");
                Intrinsics.checkNotNullParameter(parent, "parent");
                Intrinsics.checkNotNullParameter(state, "state");
                int childLayoutPosition = parent.getChildLayoutPosition(view);
                if (childLayoutPosition != 0) {
                    recommendShortNewAdapter = NewUserRecommendShortsFragment.this.f45583w;
                    boolean z11 = false;
                    if (recommendShortNewAdapter != null) {
                        i10 = recommendShortNewAdapter.getItemCount();
                    } else {
                        i10 = 0;
                    }
                    if (childLayoutPosition == i10 - 1) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    if (childLayoutPosition % r2 == 0) {
                        z11 = true;
                    }
                    if (z11) {
                        i11 = this.f45602b;
                    } else {
                        i11 = this.f45603c;
                    }
                    int i14 = this.f45601a;
                    if (z11) {
                        i12 = this.f45603c;
                    } else {
                        i12 = this.f45602b;
                    }
                    if (z10) {
                        i13 = this.f45604d;
                    } else {
                        i13 = i14;
                    }
                    r.a(outRect, i11, i14, i12, i13);
                }
            }
        };
        GridLayoutManager gridLayoutManager = new GridLayoutManager(requireContext(), 2);
        gridLayoutManager.setSpanSizeLookup(new GridLayoutManager.SpanSizeLookup() { // from class: com.startshorts.androidplayer.ui.fragment.NewUserRecommendShortsFragment$initView$2
            @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
            public int getSpanSize(int i10) {
                if (i10 == 0) {
                    return 2;
                }
                return 1;
            }
        });
        ((DialogFragmentNewUserRecommendBinding) m()).f38944c.setLayoutManager(gridLayoutManager);
        ((DialogFragmentNewUserRecommendBinding) m()).f38944c.setHasFixedSize(true);
        ((DialogFragmentNewUserRecommendBinding) m()).f38944c.addItemDecoration(itemDecoration);
        ItemRecommendShortsNewTopBinding b10 = ItemRecommendShortsNewTopBinding.b(LayoutInflater.from(requireContext()), ((DialogFragmentNewUserRecommendBinding) m()).f38944c, false);
        Intrinsics.checkNotNullExpressionValue(b10, "inflate(...)");
        RecommendShortNewAdapter recommendShortNewAdapter = new RecommendShortNewAdapter(b10, new Function2() { // from class: com.startshorts.androidplayer.ui.fragment.f
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                Unit B0;
                B0 = NewUserRecommendShortsFragment.B0(NewUserRecommendShortsFragment.this, (TextureView) obj, (RecommendShorts) obj2);
                return B0;
            }
        }, new Function0() { // from class: com.startshorts.androidplayer.ui.fragment.g
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit C0;
                C0 = NewUserRecommendShortsFragment.C0(NewUserRecommendShortsFragment.this);
                return C0;
            }
        });
        recommendShortNewAdapter.B(new c());
        ((DialogFragmentNewUserRecommendBinding) m()).f38944c.setAdapter(recommendShortNewAdapter);
        this.f45583w = recommendShortNewAdapter;
        this.f45584x = b10;
        b10.f40667i.setColor(ContextCompat.getColor(requireContext(), R$color.color_new_user_recommend_fragment_title_start), ContextCompat.getColor(requireContext(), R$color.color_new_user_recommend_fragment_title_end));
        for (View view : CollectionsKt.t(b10.f40673o, b10.f40661c)) {
            view.setOnClickListener(new d());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit B0(NewUserRecommendShortsFragment newUserRecommendShortsFragment, TextureView renderView, RecommendShorts data) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        Intrinsics.checkNotNullParameter(data, "data");
        String parseVideoUrl$default = BaseEpisode.parseVideoUrl$default(data, 0, 1, null);
        if (parseVideoUrl$default != null && parseVideoUrl$default.length() != 0) {
            RecommendShortNewAdapter recommendShortNewAdapter = newUserRecommendShortsFragment.f45583w;
            if (recommendShortNewAdapter != null) {
                recommendShortNewAdapter.S(false);
            }
            DirectUrlSource b10 = pf.l.f64869a.b(parseVideoUrl$default);
            PlayerViewModel value = newUserRecommendShortsFragment.f45574n.getValue();
            Context b11 = u.f51776a.b();
            s sVar = new s();
            sVar.y("Recommend");
            sVar.u(renderView);
            sVar.w(b10);
            sVar.r(true);
            sVar.v(0);
            if (data.getNeedDecrypt()) {
                sVar.o(CollectionsKt.t(new com.startshorts.androidplayer.manager.player.feature.d()));
            }
            Unit unit = Unit.f60915a;
            value.M(new b.e(b11, sVar));
        } else {
            RecommendShortNewAdapter recommendShortNewAdapter2 = newUserRecommendShortsFragment.f45583w;
            if (recommendShortNewAdapter2 != null) {
                recommendShortNewAdapter2.R();
            }
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit C0(NewUserRecommendShortsFragment newUserRecommendShortsFragment) {
        newUserRecommendShortsFragment.f45574n.getValue().M(b.f.f48940a);
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final BillingViewModel D0(final NewUserRecommendShortsFragment newUserRecommendShortsFragment) {
        final BillingViewModel billingViewModel = (BillingViewModel) newUserRecommendShortsFragment.r0().get(BillingViewModel.class);
        billingViewModel.Q().observe(newUserRecommendShortsFragment, new h(new Function1() { // from class: com.startshorts.androidplayer.ui.fragment.l
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit E0;
                E0 = NewUserRecommendShortsFragment.E0(NewUserRecommendShortsFragment.this, billingViewModel, (com.startshorts.androidplayer.viewmodel.billing.b) obj);
                return E0;
            }
        }));
        return billingViewModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit E0(NewUserRecommendShortsFragment newUserRecommendShortsFragment, BillingViewModel billingViewModel, com.startshorts.androidplayer.viewmodel.billing.b bVar) {
        if (bVar instanceof b.q) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            for (RecommendCoinSku recommendCoinSku : newUserRecommendShortsFragment.f45578r) {
                if (recommendCoinSku.getGpSkuId().length() > 0) {
                    arrayList2.add(recommendCoinSku.getGpSkuId());
                }
            }
            if (!arrayList2.isEmpty()) {
                arrayList.add(new zc.g(le.h.f62164a.a(), arrayList2));
            }
            ArrayList arrayList3 = new ArrayList();
            List<SubsSku> list = newUserRecommendShortsFragment.f45579s;
            if (list != null) {
                for (SubsSku subsSku : list) {
                    if (subsSku.getSkuId().length() > 0) {
                        arrayList3.add(subsSku.getSkuId());
                    }
                }
            }
            if (!arrayList3.isEmpty()) {
                arrayList.add(new zc.g(le.h.f62164a.b(), arrayList3));
            }
            billingViewModel.W(new a.h(arrayList));
        } else if (bVar instanceof b.m) {
            for (RecommendCoinSku recommendCoinSku2 : newUserRecommendShortsFragment.f45578r) {
                if (recommendCoinSku2.getDisRate() == 0.0f) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append('$');
                    sb2.append(recommendCoinSku2.getOriginalPrice());
                    recommendCoinSku2.setPriceText(sb2.toString());
                } else {
                    recommendCoinSku2.setDisRate(1 - recommendCoinSku2.getDisRate());
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append('$');
                    sb3.append(recommendCoinSku2.getRecharge());
                    recommendCoinSku2.setPriceText(sb3.toString());
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append('$');
                    sb4.append(recommendCoinSku2.getOriginalPrice());
                    recommendCoinSku2.setOriginPriceText(sb4.toString());
                }
                jk.u.j(recommendCoinSku2, ((b.m) bVar).a(), true);
            }
            List<SubsSku> list2 = newUserRecommendShortsFragment.f45579s;
            if (list2 != null) {
                for (SubsSku subsSku2 : list2) {
                    jk.u.k(subsSku2, ((b.m) bVar).a());
                }
            }
            if (((DialogFragmentNewUserRecommendBinding) newUserRecommendShortsFragment.m()).f38944c.getVisibility() == 4) {
                newUserRecommendShortsFragment.R0();
            }
        } else if (bVar instanceof b.u) {
            BaseDialogFragment.A(newUserRecommendShortsFragment, R$string.common_user_canceled, 0, 2, null);
        } else if (bVar instanceof b.c) {
            b.c cVar = (b.c) bVar;
            newUserRecommendShortsFragment.s0(cVar.a(), cVar.b(), cVar.c());
        } else if (bVar instanceof b.C0654b) {
            newUserRecommendShortsFragment.T0();
        } else if (bVar instanceof b.e) {
            b.e eVar = (b.e) bVar;
            newUserRecommendShortsFragment.t0(eVar.a(), eVar.b(), eVar.c());
        } else if (bVar instanceof b.d) {
            newUserRecommendShortsFragment.T0();
        } else if (bVar instanceof b.g) {
            newUserRecommendShortsFragment.u0();
        } else if (bVar instanceof b.i) {
            newUserRecommendShortsFragment.u0();
            BaseDialogFragment.A(newUserRecommendShortsFragment, R$string.top_up_fragment_not_find_lost_order_tip, 0, 2, null);
        } else if (bVar instanceof b.k) {
            Context requireContext = newUserRecommendShortsFragment.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            new gi.f(requireContext, ((b.k) bVar).a()).show();
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final PlayerViewModel F0(NewUserRecommendShortsFragment newUserRecommendShortsFragment) {
        return (PlayerViewModel) newUserRecommendShortsFragment.r0().get(PlayerViewModel.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final NewUserRecommendShortViewModel G0(final NewUserRecommendShortsFragment newUserRecommendShortsFragment) {
        NewUserRecommendShortViewModel newUserRecommendShortViewModel = (NewUserRecommendShortViewModel) newUserRecommendShortsFragment.r0().get(NewUserRecommendShortViewModel.class);
        newUserRecommendShortViewModel.D().observe(newUserRecommendShortsFragment, new h(new Function1() { // from class: com.startshorts.androidplayer.ui.fragment.m
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit H0;
                H0 = NewUserRecommendShortsFragment.H0(NewUserRecommendShortsFragment.this, (Boolean) obj);
                return H0;
            }
        }));
        newUserRecommendShortViewModel.o().observe(newUserRecommendShortsFragment, new h(new Function1() { // from class: com.startshorts.androidplayer.ui.fragment.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit I0;
                I0 = NewUserRecommendShortsFragment.I0(NewUserRecommendShortsFragment.this, (ApiErrorState) obj);
                return I0;
            }
        }));
        newUserRecommendShortViewModel.C().observe(newUserRecommendShortsFragment, new h(new Function1() { // from class: com.startshorts.androidplayer.ui.fragment.d
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit J0;
                J0 = NewUserRecommendShortsFragment.J0(NewUserRecommendShortsFragment.this, (com.startshorts.androidplayer.viewmodel.recommend.a) obj);
                return J0;
            }
        }));
        return newUserRecommendShortViewModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit H0(NewUserRecommendShortsFragment newUserRecommendShortsFragment, Boolean bool) {
        if (bool.booleanValue()) {
            newUserRecommendShortsFragment.J();
        } else {
            newUserRecommendShortsFragment.G();
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit I0(NewUserRecommendShortsFragment newUserRecommendShortsFragment, ApiErrorState apiErrorState) {
        if (apiErrorState.getState() == 1) {
            newUserRecommendShortsFragment.K();
        } else {
            newUserRecommendShortsFragment.L(apiErrorState.getMsg());
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit J0(NewUserRecommendShortsFragment newUserRecommendShortsFragment, com.startshorts.androidplayer.viewmodel.recommend.a aVar) {
        List<SubsSku> list;
        if (aVar instanceof a.C0679a) {
            a.C0679a c0679a = (a.C0679a) aVar;
            if (c0679a.a().getRecommendList() != null) {
                newUserRecommendShortsFragment.f45577q.clear();
                newUserRecommendShortsFragment.f45577q.addAll(c0679a.a().getRecommendList());
            }
            newUserRecommendShortsFragment.L0(c0679a.a());
            if (newUserRecommendShortsFragment.f45578r.isEmpty() && ((list = newUserRecommendShortsFragment.f45579s) == null || list.isEmpty())) {
                newUserRecommendShortsFragment.R0();
            } else {
                newUserRecommendShortsFragment.p0().W(new a.c("recommend"));
            }
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ViewModelProvider K0(NewUserRecommendShortsFragment newUserRecommendShortsFragment) {
        return new ViewModelProvider(newUserRecommendShortsFragment);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void L0(QueryCampaignRecommendShortsResult queryCampaignRecommendShortsResult) {
        this.f45582v = queryCampaignRecommendShortsResult.getShowSkuAmount();
        this.f45580t = queryCampaignRecommendShortsResult.getShowOriginPrice();
        this.f45578r.clear();
        if (!AccountRepo.f43052a.z0()) {
            this.f45579s = queryCampaignRecommendShortsResult.getSubscribeList();
        }
        List<RecommendCoinSku> skuInfos = queryCampaignRecommendShortsResult.getSkuInfos();
        if (skuInfos == null) {
            return;
        }
        int i10 = 0;
        for (RecommendCoinSku recommendCoinSku : skuInfos) {
            if (!recommendCoinSku.getPurchasedSku()) {
                i10++;
            }
        }
        if (i10 > 0) {
            this.f45578r.addAll(skuInfos);
            this.f45582v = Math.min(i10, this.f45582v);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x004b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x004c  */
    @android.annotation.SuppressLint({"SetTextI18n"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void M0() {
        /*
            Method dump skipped, instructions count: 869
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.ui.fragment.NewUserRecommendShortsFragment.M0():void");
    }

    private final void N0() {
        long K;
        ud.b bVar = ud.b.f68412a;
        long f12 = bVar.f1();
        if (f12 == 0) {
            Q0(0L);
            return;
        }
        if (f12 == -1) {
            long K2 = DeviceUtil.f48146a.K();
            K = SignalManager.TWENTY_FOUR_HOURS_MILLIS;
            bVar.s4(K2 + SignalManager.TWENTY_FOUR_HOURS_MILLIS);
        } else {
            K = f12 - DeviceUtil.f48146a.K();
        }
        CountDownTimer countDownTimer = this.A;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        this.A = null;
        if (K > 1000) {
            Q0(K);
            f fVar = new f(K, this);
            this.A = fVar;
            fVar.start();
            return;
        }
        Q0(0L);
    }

    private final void O0() {
        BaseTextView baseTextView;
        RecommendShortNewAdapter recommendShortNewAdapter = this.f45583w;
        if (recommendShortNewAdapter == null) {
            return;
        }
        int i10 = 0;
        if (recommendShortNewAdapter.getItemCount() == 1) {
            recommendShortNewAdapter.e(this.f45577q);
            if (recommendShortNewAdapter.getItemCount() > 1) {
                recommendShortNewAdapter.T(0);
            }
        }
        ItemRecommendShortsNewTopBinding itemRecommendShortsNewTopBinding = this.f45584x;
        if (itemRecommendShortsNewTopBinding != null && (baseTextView = itemRecommendShortsNewTopBinding.f40674p) != null) {
            if (recommendShortNewAdapter.getItemCount() <= 1) {
                i10 = 8;
            }
            baseTextView.setVisibility(i10);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v2, types: [com.startshorts.androidplayer.ui.view.subs.SubsNormalOldStyleView] */
    /* JADX WARN: Type inference failed for: r13v3, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r13v5, types: [com.startshorts.androidplayer.ui.view.subs.SubsProOldStyleView] */
    private final void P0() {
        ?? r13;
        List<SubsSku> list = this.f45579s;
        if (list != null && !list.isEmpty()) {
            ItemRecommendShortsNewTopBinding itemRecommendShortsNewTopBinding = this.f45584x;
            if (itemRecommendShortsNewTopBinding == null) {
                return;
            }
            itemRecommendShortsNewTopBinding.f40665g.removeAllViews();
            LayoutInflater from = LayoutInflater.from(getContext());
            List<SubsSku> list2 = this.f45579s;
            if (list2 != null) {
                for (SubsSku subsSku : list2) {
                    EventManager.P0(EventManager.f42463a, o0(), subsSku, null, null, null, null, null, 124, null);
                    if (subsSku.isPro()) {
                        ItemSubsSkuRecommendProBinding b10 = ItemSubsSkuRecommendProBinding.b(from, itemRecommendShortsNewTopBinding.f40665g, true);
                        Intrinsics.checkNotNullExpressionValue(b10, "inflate(...)");
                        View root = b10.getRoot();
                        Intrinsics.checkNotNull(root, "null cannot be cast to non-null type com.startshorts.androidplayer.ui.view.subs.SubsProOldStyleView");
                        r13 = (SubsProOldStyleView) root;
                        SubsProOldStyleView.setSku$default(r13, "new_user_drama", subsSku, null, false, null, 28, null);
                        r13.z(0);
                    } else {
                        ItemSubsSkuRecommendNormalBinding b11 = ItemSubsSkuRecommendNormalBinding.b(from, itemRecommendShortsNewTopBinding.f40665g, true);
                        Intrinsics.checkNotNullExpressionValue(b11, "inflate(...)");
                        View root2 = b11.getRoot();
                        Intrinsics.checkNotNull(root2, "null cannot be cast to non-null type com.startshorts.androidplayer.ui.view.subs.SubsNormalOldStyleView");
                        r13 = (SubsNormalOldStyleView) root2;
                        SubsNormalOldStyleView.setSku$default(r13, "new_user_drama", subsSku, null, false, 12, null);
                        r13.v(0);
                    }
                    r13.setOnClickListener(new g(subsSku));
                    ViewGroup.LayoutParams layoutParams = r13.getLayoutParams();
                    Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams");
                    ((LinearLayout.LayoutParams) layoutParams).bottomMargin = jk.g.a(6.0f);
                }
                return;
            }
            return;
        }
        v0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Q0(long j10) {
        ItemRecommendShortsNewTopBinding itemRecommendShortsNewTopBinding = this.f45584x;
        if (itemRecommendShortsNewTopBinding == null) {
            return;
        }
        if (j10 == 0) {
            itemRecommendShortsNewTopBinding.f40664f.setVisibility(8);
            itemRecommendShortsNewTopBinding.f40662d.setVisibility(8);
            itemRecommendShortsNewTopBinding.f40663e.setVisibility(8);
            return;
        }
        long j11 = j10 / 1000;
        long j12 = (long) MMKV.ExpireInHour;
        long j13 = j11 / j12;
        long j14 = j11 % j12;
        long j15 = 60;
        long j16 = j14 / j15;
        long j17 = j14 % j15;
        long j18 = 10;
        itemRecommendShortsNewTopBinding.f40669k.setText(String.valueOf(j13 / j18));
        itemRecommendShortsNewTopBinding.f40670l.setText(String.valueOf(j13 % j18));
        itemRecommendShortsNewTopBinding.f40671m.setText(String.valueOf(j16 / j18));
        itemRecommendShortsNewTopBinding.f40672n.setText(String.valueOf(j16 % j18));
        itemRecommendShortsNewTopBinding.f40675q.setText(String.valueOf(j17 / j18));
        itemRecommendShortsNewTopBinding.f40676r.setText(String.valueOf(j17 % j18));
    }

    private final void R0() {
        ((DialogFragmentNewUserRecommendBinding) m()).f38944c.setVisibility(0);
        G();
        N0();
        O0();
        P0();
        M0();
        EventManager.Y0(EventManager.f42463a, o0(), null, null, false, null, 18, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void S0(RecommendShorts recommendShorts) {
        q0().E(this.f45585y, recommendShorts);
        ImmersionActivity.a aVar = ImmersionActivity.V0;
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        ImmersionParams immersionParams = new ImmersionParams();
        immersionParams.setFrom(o0());
        immersionParams.setType(4);
        immersionParams.setEpisodeId(recommendShorts.getDramaId());
        ImmersionShortsInfo immersionShortsInfo = new ImmersionShortsInfo();
        immersionShortsInfo.setShortsId(recommendShorts.getShortPlayId());
        immersionShortsInfo.setShortPlayCode(recommendShorts.getShortPlayCode());
        immersionShortsInfo.setShortsName(recommendShorts.getShortPlayName());
        immersionShortsInfo.setCover(recommendShorts.getCoverUrl());
        immersionShortsInfo.setUpack(recommendShorts.getUpack());
        immersionParams.setShortsInfo(immersionShortsInfo);
        Unit unit = Unit.f60915a;
        aVar.a(requireContext, immersionParams);
        this.B = false;
        dismiss();
    }

    private final void T0() {
        FragmentExtKt.b(this, new i(), new j());
    }

    private final void U0() {
        u0();
        FragmentExtKt.b(this, new l(), new m());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void V0(String str) {
        U0();
        p0().W(new a.f(str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String o0() {
        int abTestIntValue = ABTestFactory.f42224a.U0().abTestIntValue();
        if (abTestIntValue != 1 && abTestIntValue != 3) {
            return "new_user_drama";
        }
        return "new_user_drama_subs";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final BillingViewModel p0() {
        return (BillingViewModel) this.f45576p.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final NewUserRecommendShortViewModel q0() {
        return (NewUserRecommendShortViewModel) this.f45575o.getValue();
    }

    private final ViewModelProvider r0() {
        return (ViewModelProvider) this.f45573m.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void s0(String str, String str2, GPayPriceInfo gPayPriceInfo) {
        RecommendCoinSku recommendCoinSku = null;
        BaseDialogFragment.A(this, R$string.top_up_fragment_recharge_success, 0, 2, null);
        Iterator<T> it = this.f45578r.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            if (Intrinsics.areEqual(((RecommendCoinSku) next).getGpSkuId(), str2)) {
                recommendCoinSku = next;
                break;
            }
        }
        EventManager.T0(EventManager.f42463a, o0(), recommendCoinSku, gPayPriceInfo, str, null, null, null, null, null, TTVideoEngineInterface.PLAYER_OPTION_ENABLE_OPEN_TIMEOUT, null);
        I();
        PurchaseRepo.f43366a.q();
        bf.e.f2616a.i().i();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void t0(String str, String str2, GPayPriceInfo gPayPriceInfo) {
        SubsSku subsSku = null;
        BaseDialogFragment.A(this, R$string.subscription_detail_activity_subs_success, 0, 2, null);
        List<SubsSku> list = this.f45579s;
        if (list != null) {
            Iterator<T> it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Object next = it.next();
                if (Intrinsics.areEqual(((SubsSku) next).getSkuId(), str2)) {
                    subsSku = next;
                    break;
                }
            }
            subsSku = subsSku;
        }
        EventManager.U0(EventManager.f42463a, o0(), subsSku, gPayPriceInfo, str, null, null, null, null, null, null, 1008, null);
        v0();
        PurchaseRepo.f43366a.q();
        bf.e.f2616a.i().i();
    }

    private final void u0() {
        hi.b bVar = this.f45586z;
        if (bVar != null) {
            bVar.cancel();
        }
        this.f45586z = null;
    }

    private final void v0() {
        LinearLayout linearLayout;
        this.f45579s = null;
        ItemRecommendShortsNewTopBinding itemRecommendShortsNewTopBinding = this.f45584x;
        if (itemRecommendShortsNewTopBinding != null && (linearLayout = itemRecommendShortsNewTopBinding.f40665g) != null) {
            linearLayout.removeAllViews();
            linearLayout.setVisibility(8);
        }
    }

    private final void w0() {
        if (this.f45585y == 0) {
            I();
            return;
        }
        EventManager.W0(EventManager.f42463a, o0(), null, null, null, null, null, 62, null);
        J();
        p0().W(new a.c("recommend"));
    }

    private final void x0() {
        this.f45574n.getValue().H().observe(this, new h(new Function1() { // from class: com.startshorts.androidplayer.ui.fragment.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit y02;
                y02 = NewUserRecommendShortsFragment.y0(NewUserRecommendShortsFragment.this, (com.startshorts.androidplayer.viewmodel.player.c) obj);
                return y02;
            }
        }));
        this.f45574n.getValue().G().observe(this, new h(new Function1() { // from class: com.startshorts.androidplayer.ui.fragment.e
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit z02;
                z02 = NewUserRecommendShortsFragment.z0(NewUserRecommendShortsFragment.this, (com.startshorts.androidplayer.viewmodel.player.a) obj);
                return z02;
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit y0(NewUserRecommendShortsFragment newUserRecommendShortsFragment, com.startshorts.androidplayer.viewmodel.player.c cVar) {
        RecommendShortNewAdapter recommendShortNewAdapter = newUserRecommendShortsFragment.f45583w;
        if (recommendShortNewAdapter == null) {
            return Unit.f60915a;
        }
        if (cVar instanceof c.C0672c) {
            if (!recommendShortNewAdapter.P()) {
                recommendShortNewAdapter.R();
            }
        } else if (cVar instanceof c.h) {
            recommendShortNewAdapter.M();
        } else if (cVar instanceof c.d) {
            BaseEpisode J = recommendShortNewAdapter.J();
            if (J == null) {
                return Unit.f60915a;
            }
            String parseVideoUrl$default = BaseEpisode.parseVideoUrl$default(J, 0, 1, null);
            CoroutineUtil.l(CoroutineUtil.f48072a, "logPlayFailed", false, new NewUserRecommendShortsFragment$initPlayerVM$1$1(J, cVar, parseVideoUrl$default, null), 2, null);
            recommendShortNewAdapter.R();
            ResourceHandler.m(ResourceHandler.f48167a, parseVideoUrl$default, null, 2, null);
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit z0(NewUserRecommendShortsFragment newUserRecommendShortsFragment, com.startshorts.androidplayer.viewmodel.player.a aVar) {
        RecommendShortNewAdapter recommendShortNewAdapter = newUserRecommendShortsFragment.f45583w;
        if (recommendShortNewAdapter == null) {
            return Unit.f60915a;
        }
        if (aVar instanceof a.C0670a) {
            if (((a.C0670a) aVar).a() >= 3000 && !recommendShortNewAdapter.P()) {
                recommendShortNewAdapter.S(true);
                RecommendShortNewAdapter recommendShortNewAdapter2 = newUserRecommendShortsFragment.f45583w;
                if (recommendShortNewAdapter2 != null) {
                    recommendShortNewAdapter2.R();
                }
            }
            return Unit.f60915a;
        }
        throw new NoWhenBranchMatchedException();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateDialogFragment
    public void I() {
        EventManager.W0(EventManager.f42463a, o0(), null, null, null, null, null, 62, null);
        ((DialogFragmentNewUserRecommendBinding) m()).f38944c.setVisibility(4);
        q0().I();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment, androidx.fragment.app.DialogFragment
    public void dismiss() {
        CountDownTimer countDownTimer = this.A;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        this.A = null;
        super.dismiss();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    public int j() {
        return this.D;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    public int k() {
        return this.f45571k;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    public boolean n() {
        return true;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment, androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(@NotNull DialogInterface dialog) {
        Intrinsics.checkNotNullParameter(dialog, "dialog");
        if (this.B) {
            q0().G(this.f45585y, "close");
        }
        super.onDismiss(dialog);
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateDialogFragment, com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        RecommendShortNewAdapter recommendShortNewAdapter = this.f45583w;
        if (recommendShortNewAdapter == null || !recommendShortNewAdapter.N()) {
            this.f45574n.getValue().M(b.d.f48937a);
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateDialogFragment, com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (!this.f45572l) {
            this.f45572l = true;
        } else {
            RecommendShortNewAdapter recommendShortNewAdapter = this.f45583w;
            if (recommendShortNewAdapter == null || !recommendShortNewAdapter.N()) {
                this.f45574n.getValue().M(b.g.f48941a);
            }
        }
        au.c.d().l(new ShortsPausePlayEvent());
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateDialogFragment, com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        x0();
        A0();
        w0();
        if (this.f45585y == 0) {
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle2 = new Bundle();
            bundle2.putString("scene", "suspension_window");
            bundle2.putString(TtmlNode.TAG_STYLE, "new");
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "new_user_drama_show", bundle2, 0L, 4, null);
            return;
        }
        EventManager eventManager2 = EventManager.f42463a;
        Bundle bundle3 = new Bundle();
        bundle3.putString("scene", "immersion_back");
        bundle3.putString(TtmlNode.TAG_STYLE, "new");
        Unit unit2 = Unit.f60915a;
        EventManager.s0(eventManager2, "new_user_drama_show", bundle3, 0L, 4, null);
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    public int p() {
        return this.C;
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveAcknowledgePurchaseResult(@NotNull AcknowledgePurchaseResult result) {
        Intrinsics.checkNotNullParameter(result, "result");
        q("receive AcknowledgePurchaseResult -> " + result);
        if (!result.onlyContainsDiscount()) {
            I();
        }
    }

    /* compiled from: FragmentExt.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$4\n+ 2 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$2\n*L\n1#1,21:1\n17#2:22\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class j implements Function0<Unit> {
        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            a();
            return Unit.f60915a;
        }

        public final void a() {
        }
    }

    /* compiled from: FragmentExt.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$4\n+ 2 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$2\n*L\n1#1,21:1\n17#2:22\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class m implements Function0<Unit> {
        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            a();
            return Unit.f60915a;
        }

        public final void a() {
        }
    }
}
