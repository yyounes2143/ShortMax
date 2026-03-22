package com.startshorts.androidplayer.ui.fragment.immersion;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.TextureView;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import com.ss.ttm.player.MediaPlayer;
import com.ss.ttvideoengine.source.DirectUrlSource;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.adapter.shorts.ImmersionBackAdapter;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.shorts.ShortPlayContentInfo;
import com.startshorts.androidplayer.databinding.DialogFragmentImmersionBackShortsBottomBinding;
import com.startshorts.androidplayer.repo.immersion.ImmersionRepo;
import com.startshorts.androidplayer.ui.fragment.base.BottomSheetPageStateFragment;
import com.startshorts.androidplayer.ui.fragment.immersion.ImmersionBottomBackShortsDialog;
import com.startshorts.androidplayer.ui.view.banner.BannerViewPager;
import com.startshorts.androidplayer.ui.view.shortsV2.shortrating.ShortRatingHandler;
import com.startshorts.androidplayer.ui.view.shortsV2.shortrating.ShortRatingLayout;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import com.startshorts.androidplayer.utils.ResourceHandler;
import com.startshorts.androidplayer.viewmodel.immersion.ImmersionBackShortViewModel;
import com.startshorts.androidplayer.viewmodel.player.PlayerViewModel;
import com.startshorts.androidplayer.viewmodel.player.a;
import com.startshorts.androidplayer.viewmodel.player.b;
import com.startshorts.androidplayer.viewmodel.player.c;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ImmersionBottomBackShortsDialog.kt */
@Metadata
@SourceDebugExtension({"SMAP\nImmersionBottomBackShortsDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImmersionBottomBackShortsDialog.kt\ncom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,489:1\n1863#2,2:490\n*S KotlinDebug\n*F\n+ 1 ImmersionBottomBackShortsDialog.kt\ncom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog\n*L\n357#1:490,2\n*E\n"})
/* loaded from: classes7.dex */
public final class ImmersionBottomBackShortsDialog extends BottomSheetPageStateFragment<DialogFragmentImmersionBackShortsBottomBinding> {
    @NotNull
    public static final b G = new b(null);
    private int A;
    private boolean B;
    @Nullable
    private ShortRatingHandler C;
    @Nullable
    private ShortRatingLayout D;

    /* renamed from: o  reason: collision with root package name */
    private boolean f46121o;
    @Nullable

    /* renamed from: t  reason: collision with root package name */
    private a f46126t;

    /* renamed from: v  reason: collision with root package name */
    private int f46128v;

    /* renamed from: w  reason: collision with root package name */
    private int f46129w;

    /* renamed from: x  reason: collision with root package name */
    private int f46130x;

    /* renamed from: y  reason: collision with root package name */
    private int f46131y;

    /* renamed from: z  reason: collision with root package name */
    private int f46132z;
    @NotNull

    /* renamed from: p  reason: collision with root package name */
    private final ms.i f46122p = kotlin.c.b(new Function0() { // from class: com.startshorts.androidplayer.ui.fragment.immersion.n
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            ViewModelProvider B0;
            B0 = ImmersionBottomBackShortsDialog.B0(ImmersionBottomBackShortsDialog.this);
            return B0;
        }
    });
    @NotNull

    /* renamed from: q  reason: collision with root package name */
    private final ms.i f46123q = kotlin.c.b(new Function0() { // from class: com.startshorts.androidplayer.ui.fragment.immersion.o
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            ImmersionBackShortViewModel z02;
            z02 = ImmersionBottomBackShortsDialog.z0(ImmersionBottomBackShortsDialog.this);
            return z02;
        }
    });
    @NotNull

    /* renamed from: r  reason: collision with root package name */
    private final ms.i<PlayerViewModel> f46124r = kotlin.c.b(new Function0() { // from class: com.startshorts.androidplayer.ui.fragment.immersion.p
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            PlayerViewModel A0;
            A0 = ImmersionBottomBackShortsDialog.A0(ImmersionBottomBackShortsDialog.this);
            return A0;
        }
    });
    @NotNull

    /* renamed from: s  reason: collision with root package name */
    private ArrayList<BaseEpisode> f46125s = new ArrayList<>();
    @NotNull

    /* renamed from: u  reason: collision with root package name */
    private String f46127u = "";
    @NotNull
    private ImmersionBackAdapter E = new ImmersionBackAdapter(new at.n() { // from class: com.startshorts.androidplayer.ui.fragment.immersion.q
        @Override // at.n
        public final Object invoke(Object obj, Object obj2, Object obj3) {
            Unit y02;
            y02 = ImmersionBottomBackShortsDialog.y0(ImmersionBottomBackShortsDialog.this, (TextureView) obj, (BaseEpisode) obj2, (ShortRatingLayout) obj3);
            return y02;
        }
    });
    private final int F = R$layout.dialog_fragment_immersion_back_shorts_bottom;

    /* compiled from: ImmersionBottomBackShortsDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface a {
        void a();

        void b(@NotNull BaseEpisode baseEpisode, boolean z10);
    }

    /* compiled from: ImmersionBottomBackShortsDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final ImmersionBottomBackShortsDialog a(@NotNull String currShortPlayCode, int i10, @NotNull List<BaseEpisode> data, @NotNull a lis) {
            Intrinsics.checkNotNullParameter(currShortPlayCode, "currShortPlayCode");
            Intrinsics.checkNotNullParameter(data, "data");
            Intrinsics.checkNotNullParameter(lis, "lis");
            ImmersionBottomBackShortsDialog immersionBottomBackShortsDialog = new ImmersionBottomBackShortsDialog();
            immersionBottomBackShortsDialog.f46127u = currShortPlayCode;
            immersionBottomBackShortsDialog.f46128v = i10;
            immersionBottomBackShortsDialog.f46126t = lis;
            immersionBottomBackShortsDialog.f46125s.addAll(data);
            return immersionBottomBackShortsDialog;
        }

        private b() {
        }
    }

    /* compiled from: ImmersionBottomBackShortsDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends yd.d {
        c() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            ImmersionBottomBackShortsDialog immersionBottomBackShortsDialog = ImmersionBottomBackShortsDialog.this;
            immersionBottomBackShortsDialog.v0(immersionBottomBackShortsDialog.f46129w);
            ImmersionBottomBackShortsDialog.this.dismiss();
            a aVar = ImmersionBottomBackShortsDialog.this.f46126t;
            if (aVar != null) {
                aVar.a();
            }
        }
    }

    /* compiled from: ImmersionBottomBackShortsDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d extends yd.d {
        d() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            BaseEpisode o10 = ImmersionBottomBackShortsDialog.this.E.o();
            if (o10 == null) {
                return;
            }
            ImmersionBottomBackShortsDialog immersionBottomBackShortsDialog = ImmersionBottomBackShortsDialog.this;
            immersionBottomBackShortsDialog.v0(immersionBottomBackShortsDialog.f46129w);
            ImmersionBottomBackShortsDialog.this.l0().G("play_icon", o10);
            ImmersionBottomBackShortsDialog.this.dismiss();
            a aVar = ImmersionBottomBackShortsDialog.this.f46126t;
            if (aVar != null) {
                aVar.b(o10, false);
            }
        }
    }

    /* compiled from: ImmersionBottomBackShortsDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class e extends BannerViewPager.b {
        e() {
        }

        @Override // com.startshorts.androidplayer.ui.view.banner.BannerViewPager.b
        public void a(boolean z10, int i10, int i11) {
            if (ImmersionBottomBackShortsDialog.this.f46129w != i10) {
                ImmersionBottomBackShortsDialog immersionBottomBackShortsDialog = ImmersionBottomBackShortsDialog.this;
                immersionBottomBackShortsDialog.x0(immersionBottomBackShortsDialog.f46129w);
            }
            ImmersionBottomBackShortsDialog.this.f46129w = i10;
            ImmersionBottomBackShortsDialog.this.F0(i10);
        }

        @Override // com.startshorts.androidplayer.ui.view.banner.BannerViewPager.b
        public void b(int i10) {
            super.b(i10);
            if (i10 == 0) {
                ImmersionBottomBackShortsDialog.this.D0();
            } else {
                ImmersionBottomBackShortsDialog.this.C0();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ImmersionBottomBackShortsDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class f implements Observer, FunctionAdapter {

        /* renamed from: a  reason: collision with root package name */
        private final /* synthetic */ Function1 f46136a;

        f(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f46136a = function;
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
            return this.f46136a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f46136a.invoke(obj);
        }
    }

    /* compiled from: ImmersionBottomBackShortsDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class g implements ShortRatingHandler.b {
        g() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void c(ImmersionBottomBackShortsDialog immersionBottomBackShortsDialog, ShortPlayContentInfo shortPlayContentInfo) {
            BaseEpisode o10;
            int shortPlayId;
            ShortRatingHandler shortRatingHandler;
            if (!immersionBottomBackShortsDialog.u0() && (o10 = immersionBottomBackShortsDialog.E.o()) != null) {
                if (o10.isTrailer()) {
                    shortPlayId = o10.getBindShortPlayId();
                } else {
                    shortPlayId = o10.getShortPlayId();
                }
                Integer shortPlayId2 = shortPlayContentInfo.getShortPlayId();
                if (shortPlayId2 != null && shortPlayId == shortPlayId2.intValue() && (shortRatingHandler = immersionBottomBackShortsDialog.C) != null) {
                    shortRatingHandler.j(shortPlayContentInfo);
                }
            }
        }

        @Override // com.startshorts.androidplayer.ui.view.shortsV2.shortrating.ShortRatingHandler.b
        public void a(final ShortPlayContentInfo shortPlayContentInfo) {
            Intrinsics.checkNotNullParameter(shortPlayContentInfo, "shortPlayContentInfo");
            FragmentActivity requireActivity = ImmersionBottomBackShortsDialog.this.requireActivity();
            final ImmersionBottomBackShortsDialog immersionBottomBackShortsDialog = ImmersionBottomBackShortsDialog.this;
            requireActivity.runOnUiThread(new Runnable() { // from class: com.startshorts.androidplayer.ui.fragment.immersion.r
                @Override // java.lang.Runnable
                public final void run() {
                    ImmersionBottomBackShortsDialog.g.c(ImmersionBottomBackShortsDialog.this, shortPlayContentInfo);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final PlayerViewModel A0(ImmersionBottomBackShortsDialog immersionBottomBackShortsDialog) {
        return (PlayerViewModel) immersionBottomBackShortsDialog.m0().get(PlayerViewModel.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ViewModelProvider B0(ImmersionBottomBackShortsDialog immersionBottomBackShortsDialog) {
        return new ViewModelProvider(immersionBottomBackShortsDialog);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void C0() {
        String videoUrl;
        BaseEpisode o10 = this.E.o();
        if (o10 != null && (videoUrl = o10.getVideoUrl()) != null && videoUrl.length() != 0) {
            q("pausePlay");
            this.f46124r.getValue().M(b.d.f48937a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void D0() {
        String videoUrl;
        BaseEpisode o10 = this.E.o();
        if (o10 != null && (videoUrl = o10.getVideoUrl()) != null && videoUrl.length() != 0) {
            q("resumePlay");
            this.f46124r.getValue().M(b.g.f48941a);
        }
    }

    private final void E0(BaseEpisode baseEpisode, ShortRatingLayout shortRatingLayout) {
        ShortPlayContentInfo shortPlayContentInfo;
        if (shortRatingLayout == null) {
            return;
        }
        if (baseEpisode != null) {
            shortPlayContentInfo = baseEpisode.getShortPlayContentRatingResponse();
        } else {
            shortPlayContentInfo = null;
        }
        if (shortPlayContentInfo == null) {
            ShortRatingHandler shortRatingHandler = this.C;
            if (shortRatingHandler != null) {
                shortRatingHandler.f();
                return;
            }
            return;
        }
        if (this.C == null) {
            this.C = new ShortRatingHandler(new g());
        }
        this.D = shortRatingLayout;
        ShortRatingHandler shortRatingHandler2 = this.C;
        String str = (shortRatingHandler2 == null || (str = shortRatingHandler2.e(baseEpisode.getShortPlayId(), baseEpisode.isTrailer())) == null) ? "" : "";
        ShortRatingHandler shortRatingHandler3 = this.C;
        if (shortRatingHandler3 != null) {
            shortRatingHandler3.g(str, shortPlayContentInfo, shortRatingLayout);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void F0(int i10) {
        this.E.s(i10);
        BaseEpisode o10 = this.E.o();
        if (o10 == null) {
            return;
        }
        ag.a.d(ag.a.f646a, "immersion_back", o10.getShortPlayCode(), null, 0, null, null, null, o10.getUpack(), null, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_STALL_COUNTER, null);
        l0().J(o10);
        ((DialogFragmentImmersionBackShortsBottomBinding) n()).f38849d.setText(this.f46125s.get(i10).getShortPlayName());
    }

    private final void k0() {
        Window window;
        Dialog dialog = getDialog();
        if (dialog != null && (window = dialog.getWindow()) != null) {
            window.getDecorView().setPadding(0, 0, 0, 0);
            WindowManager.LayoutParams attributes = window.getAttributes();
            if (attributes != null) {
                attributes.width = -1;
            }
            WindowManager.LayoutParams attributes2 = window.getAttributes();
            if (attributes2 != null) {
                attributes2.height = -2;
            }
            window.getDecorView().setBackgroundColor(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ImmersionBackShortViewModel l0() {
        return (ImmersionBackShortViewModel) this.f46123q.getValue();
    }

    private final ViewModelProvider m0() {
        return (ViewModelProvider) this.f46122p.getValue();
    }

    private final void n0() {
        ShortRatingHandler shortRatingHandler = this.C;
        if (shortRatingHandler != null) {
            shortRatingHandler.f();
        }
    }

    private final void o0() {
        l0().E(this.f46127u, this.f46128v);
        F0(0);
    }

    private final void p0() {
        this.f46124r.getValue().H().observe(this, new f(new Function1() { // from class: com.startshorts.androidplayer.ui.fragment.immersion.l
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit q02;
                q02 = ImmersionBottomBackShortsDialog.q0(ImmersionBottomBackShortsDialog.this, (com.startshorts.androidplayer.viewmodel.player.c) obj);
                return q02;
            }
        }));
        this.f46124r.getValue().G().observe(this, new f(new Function1() { // from class: com.startshorts.androidplayer.ui.fragment.immersion.m
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit r02;
                r02 = ImmersionBottomBackShortsDialog.r0(ImmersionBottomBackShortsDialog.this, (com.startshorts.androidplayer.viewmodel.player.a) obj);
                return r02;
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit q0(ImmersionBottomBackShortsDialog immersionBottomBackShortsDialog, com.startshorts.androidplayer.viewmodel.player.c cVar) {
        if (cVar instanceof c.j) {
            immersionBottomBackShortsDialog.f46131y = ((c.j) cVar).b();
        } else if (cVar instanceof c.C0672c) {
            BaseEpisode o10 = immersionBottomBackShortsDialog.E.o();
            if (o10 == null) {
                return Unit.f60915a;
            }
            immersionBottomBackShortsDialog.w0();
            immersionBottomBackShortsDialog.dismiss();
            a aVar = immersionBottomBackShortsDialog.f46126t;
            if (aVar != null) {
                aVar.b(o10, true);
            }
        } else if (cVar instanceof c.h) {
            BaseEpisode o11 = immersionBottomBackShortsDialog.E.o();
            if (o11 == null) {
                return Unit.f60915a;
            }
            immersionBottomBackShortsDialog.E.r();
            immersionBottomBackShortsDialog.l0().C(o11);
            immersionBottomBackShortsDialog.l0().B(o11, ((c.h) cVar).a());
        } else if (cVar instanceof c.b) {
            BaseEpisode o12 = immersionBottomBackShortsDialog.E.o();
            if (o12 == null) {
                return Unit.f60915a;
            }
            c.b bVar = (c.b) cVar;
            immersionBottomBackShortsDialog.l0().D(o12, bVar.c(), bVar.b(), bVar.a());
        } else if (cVar instanceof c.d) {
            BaseEpisode o13 = immersionBottomBackShortsDialog.E.o();
            if (o13 == null) {
                return Unit.f60915a;
            }
            String parseVideoUrl$default = BaseEpisode.parseVideoUrl$default(o13, 0, 1, null);
            CoroutineUtil.l(CoroutineUtil.f48072a, "logPlayFailed", false, new ImmersionBottomBackShortsDialog$initPlayerVM$1$1(o13, cVar, parseVideoUrl$default, null), 2, null);
            ResourceHandler.m(ResourceHandler.f48167a, parseVideoUrl$default, null, 2, null);
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit r0(ImmersionBottomBackShortsDialog immersionBottomBackShortsDialog, com.startshorts.androidplayer.viewmodel.player.a aVar) {
        if (aVar instanceof a.C0670a) {
            BaseEpisode o10 = immersionBottomBackShortsDialog.E.o();
            if (o10 == null) {
                return Unit.f60915a;
            }
            a.C0670a c0670a = (a.C0670a) aVar;
            immersionBottomBackShortsDialog.f46130x = c0670a.a();
            ud.b.f68412a.E3(o10.getId(), c0670a.a());
            immersionBottomBackShortsDialog.f46132z += 200;
            immersionBottomBackShortsDialog.A += bt.a.c(200.0f);
            return Unit.f60915a;
        }
        throw new NoWhenBranchMatchedException();
    }

    private final void s0() {
        ImmersionRepo immersionRepo = ImmersionRepo.f44129a;
        if (immersionRepo.j().length() != 0) {
            ((DialogFragmentImmersionBackShortsBottomBinding) n()).f38850e.setText(immersionRepo.j());
        }
        ((DialogFragmentImmersionBackShortsBottomBinding) n()).f38847b.setOnClickListener(new c());
        ((DialogFragmentImmersionBackShortsBottomBinding) n()).f38848c.setOnClickListener(new d());
        ((DialogFragmentImmersionBackShortsBottomBinding) n()).f38849d.setText(this.f46125s.get(0).getShortPlayName());
        BannerViewPager bannerViewPager = ((DialogFragmentImmersionBackShortsBottomBinding) n()).f38846a;
        int i10 = bannerViewPager.getResources().getDisplayMetrics().widthPixels;
        int a10 = jk.g.a(100.0f);
        int a11 = jk.g.a(16.0f);
        float f10 = i10 - ((a10 + a11) * 2);
        bannerViewPager.getLayoutParams().height = (int) (1.333f * f10);
        bannerViewPager.D(this.E);
        bannerViewPager.F(true);
        bannerViewPager.O(8, (f10 * 1.9f) / i10);
        bannerViewPager.M(a11);
        bannerViewPager.Q(a10, a10);
        bannerViewPager.P(false);
        bannerViewPager.A(getLifecycle());
        bannerViewPager.J(new BannerViewPager.c() { // from class: com.startshorts.androidplayer.ui.fragment.immersion.k
            @Override // com.startshorts.androidplayer.ui.view.banner.BannerViewPager.c
            public final void a(View view, int i11) {
                ImmersionBottomBackShortsDialog.t0(ImmersionBottomBackShortsDialog.this, view, i11);
            }
        });
        bannerViewPager.B(new e());
        bannerViewPager.g(this.f46125s);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t0(ImmersionBottomBackShortsDialog immersionBottomBackShortsDialog, View view, int i10) {
        List data = ((DialogFragmentImmersionBackShortsBottomBinding) immersionBottomBackShortsDialog.n()).f38846a.getData();
        if (data.size() > i10) {
            Object obj = data.get(i10);
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type com.startshorts.androidplayer.bean.shorts.BaseEpisode");
            BaseEpisode baseEpisode = (BaseEpisode) obj;
            immersionBottomBackShortsDialog.l0().G("cover", baseEpisode);
            a aVar = immersionBottomBackShortsDialog.f46126t;
            if (aVar != null) {
                aVar.b(baseEpisode, false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void v0(int i10) {
        BaseEpisode q10 = this.E.q(i10);
        if (q10 == null) {
            return;
        }
        int i11 = this.f46130x;
        int i12 = this.f46131y;
        int i13 = this.f46132z;
        int i14 = this.A;
        l0().I(q10, i11, i12);
        l0().H(q10, i13, i14);
        this.f46130x = 0;
        this.f46131y = 0;
        this.A = 0;
        this.f46132z = 0;
    }

    private final void w0() {
        int p10 = this.E.p();
        if (p10 != -1) {
            x0(p10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void x0(int i10) {
        BaseEpisode q10 = this.E.q(i10);
        if (q10 == null) {
            return;
        }
        int i11 = this.f46130x;
        int i12 = this.f46131y;
        int i13 = this.f46132z;
        int i14 = this.A;
        l0().K(q10, i11);
        l0().I(q10, i11, i12);
        l0().H(q10, i13, i14);
        this.f46130x = 0;
        this.f46131y = 0;
        this.A = 0;
        this.f46132z = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit y0(ImmersionBottomBackShortsDialog immersionBottomBackShortsDialog, TextureView renderView, BaseEpisode data, ShortRatingLayout shortRatingLayout) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(shortRatingLayout, "shortRatingLayout");
        String parseVideoUrl$default = BaseEpisode.parseVideoUrl$default(data, 0, 1, null);
        if (parseVideoUrl$default == null) {
            return Unit.f60915a;
        }
        DirectUrlSource b10 = pf.l.f64869a.b(parseVideoUrl$default);
        PlayerViewModel value = immersionBottomBackShortsDialog.f46124r.getValue();
        Context b11 = fk.u.f51776a.b();
        lf.s sVar = new lf.s();
        sVar.y("ImmersionBack");
        sVar.u(renderView);
        sVar.w(b10);
        sVar.v(0);
        if (data.getNeedDecrypt()) {
            sVar.o(CollectionsKt.t(new com.startshorts.androidplayer.manager.player.feature.d()));
        }
        Unit unit = Unit.f60915a;
        value.M(new b.e(b11, sVar));
        ShortRatingHandler shortRatingHandler = immersionBottomBackShortsDialog.C;
        if (shortRatingHandler != null) {
            shortRatingHandler.i();
        }
        immersionBottomBackShortsDialog.E0(data, shortRatingLayout);
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ImmersionBackShortViewModel z0(ImmersionBottomBackShortsDialog immersionBottomBackShortsDialog) {
        return (ImmersionBackShortViewModel) immersionBottomBackShortsDialog.m0().get(ImmersionBackShortViewModel.class);
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment
    public float l() {
        return 0.0f;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment
    public int m() {
        return this.F;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment, androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(@NotNull DialogInterface dialog) {
        Intrinsics.checkNotNullParameter(dialog, "dialog");
        super.onDismiss(dialog);
        l0().A(this.f46127u, this.f46128v);
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BottomSheetPageStateFragment, com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        this.B = true;
        C0();
        n0();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BottomSheetPageStateFragment, com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment, com.startshorts.androidplayer.ui.fragment.base.PermissionBottomSheetDialogFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        this.B = false;
        if (!this.f46121o) {
            this.f46121o = true;
            return;
        }
        D0();
        E0(this.E.o(), this.D);
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BottomSheetPageStateFragment, com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        setCancelable(false);
        k0();
        p0();
        s0();
        o0();
        ImmersionRepo.f44129a.f();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BottomSheetPageStateFragment, com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment
    @NotNull
    public String p() {
        return "ImmersionBottomBackShortsDialog";
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BottomSheetPageStateFragment, com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment
    public void s() {
        super.s();
        ShortRatingHandler shortRatingHandler = this.C;
        if (shortRatingHandler != null) {
            shortRatingHandler.h();
        }
    }

    public final boolean u0() {
        return this.B;
    }
}
