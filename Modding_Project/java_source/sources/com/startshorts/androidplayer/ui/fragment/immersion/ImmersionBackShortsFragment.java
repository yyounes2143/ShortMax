package com.startshorts.androidplayer.ui.fragment.immersion;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.TextureView;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.core.view.ViewGroupKt;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import com.google.android.flexbox.FlexboxLayout;
import com.ss.ttm.player.MediaPlayer;
import com.ss.ttvideoengine.source.DirectUrlSource;
import com.startshorts.androidplayer.R$color;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.adapter.shorts.ImmersionBackAdapter;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.shorts.ShortPlayContentInfo;
import com.startshorts.androidplayer.bean.shorts.ShortsLabel;
import com.startshorts.androidplayer.databinding.DialogFragmentImmersionBackShortsBinding;
import com.startshorts.androidplayer.databinding.ViewShortsImmersionTagClickableBinding;
import com.startshorts.androidplayer.databinding.ViewShortsImmersionTagNormalBinding;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory;
import com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment;
import com.startshorts.androidplayer.ui.fragment.immersion.ImmersionBackShortsFragment;
import com.startshorts.androidplayer.ui.view.banner.BannerViewPager;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
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
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yh.x2;
/* compiled from: ImmersionBackShortsFragment.kt */
@Metadata
@SourceDebugExtension({"SMAP\nImmersionBackShortsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImmersionBackShortsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ViewGroup.kt\nandroidx/core/view/ViewGroupKt\n+ 4 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,571:1\n1863#2,2:572\n774#2:578\n865#2,2:579\n1872#2,3:581\n46#3:574\n1328#4,3:575\n*S KotlinDebug\n*F\n+ 1 ImmersionBackShortsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment\n*L\n404#1:572,2\n339#1:578\n339#1:579,2\n351#1:581,3\n363#1:574\n368#1:575,3\n*E\n"})
/* loaded from: classes7.dex */
public final class ImmersionBackShortsFragment extends BaseDialogFragment<DialogFragmentImmersionBackShortsBinding> {
    @NotNull
    public static final b A = new b(null);

    /* renamed from: i  reason: collision with root package name */
    private boolean f46094i;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private a f46099n;

    /* renamed from: p  reason: collision with root package name */
    private int f46101p;

    /* renamed from: q  reason: collision with root package name */
    private int f46102q;

    /* renamed from: r  reason: collision with root package name */
    private int f46103r;

    /* renamed from: s  reason: collision with root package name */
    private int f46104s;

    /* renamed from: t  reason: collision with root package name */
    private int f46105t;

    /* renamed from: u  reason: collision with root package name */
    private int f46106u;

    /* renamed from: v  reason: collision with root package name */
    private int f46107v;
    @Nullable

    /* renamed from: w  reason: collision with root package name */
    private ShortRatingHandler f46108w;
    @Nullable

    /* renamed from: x  reason: collision with root package name */
    private ShortRatingLayout f46109x;
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    private final ms.i f46095j = kotlin.c.b(new Function0() { // from class: com.startshorts.androidplayer.ui.fragment.immersion.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            ViewModelProvider u02;
            u02 = ImmersionBackShortsFragment.u0(ImmersionBackShortsFragment.this);
            return u02;
        }
    });
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    private final ms.i f46096k = kotlin.c.b(new Function0() { // from class: com.startshorts.androidplayer.ui.fragment.immersion.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            ImmersionBackShortViewModel s02;
            s02 = ImmersionBackShortsFragment.s0(ImmersionBackShortsFragment.this);
            return s02;
        }
    });
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    private final ms.i<PlayerViewModel> f46097l = kotlin.c.b(new Function0() { // from class: com.startshorts.androidplayer.ui.fragment.immersion.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            PlayerViewModel t02;
            t02 = ImmersionBackShortsFragment.t0(ImmersionBackShortsFragment.this);
            return t02;
        }
    });
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    private ArrayList<BaseEpisode> f46098m = new ArrayList<>();
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    private String f46100o = "";
    @NotNull

    /* renamed from: y  reason: collision with root package name */
    private ImmersionBackAdapter f46110y = new ImmersionBackAdapter(new at.n() { // from class: com.startshorts.androidplayer.ui.fragment.immersion.d
        @Override // at.n
        public final Object invoke(Object obj, Object obj2, Object obj3) {
            Unit r02;
            r02 = ImmersionBackShortsFragment.r0(ImmersionBackShortsFragment.this, (TextureView) obj, (BaseEpisode) obj2, (ShortRatingLayout) obj3);
            return r02;
        }
    });

    /* renamed from: z  reason: collision with root package name */
    private final int f46111z = R$layout.dialog_fragment_immersion_back_shorts;

    /* compiled from: ImmersionBackShortsFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface a {
        void a();

        void b(@NotNull BaseEpisode baseEpisode, boolean z10);
    }

    /* compiled from: ImmersionBackShortsFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final ImmersionBackShortsFragment a(@NotNull String currShortPlayCode, int i10, int i11, @NotNull List<BaseEpisode> data, @NotNull a lis) {
            Intrinsics.checkNotNullParameter(currShortPlayCode, "currShortPlayCode");
            Intrinsics.checkNotNullParameter(data, "data");
            Intrinsics.checkNotNullParameter(lis, "lis");
            ImmersionBackShortsFragment immersionBackShortsFragment = new ImmersionBackShortsFragment();
            immersionBackShortsFragment.f46100o = currShortPlayCode;
            immersionBackShortsFragment.f46101p = i10;
            immersionBackShortsFragment.f46102q = i11;
            immersionBackShortsFragment.f46099n = lis;
            immersionBackShortsFragment.f46098m.addAll(data);
            return immersionBackShortsFragment;
        }

        private b() {
        }
    }

    /* compiled from: ImmersionBackShortsFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends yd.d {
        c() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            ImmersionBackShortsFragment immersionBackShortsFragment = ImmersionBackShortsFragment.this;
            immersionBackShortsFragment.o0(immersionBackShortsFragment.f46103r);
            ImmersionBackShortsFragment.this.dismiss();
            a aVar = ImmersionBackShortsFragment.this.f46099n;
            if (aVar != null) {
                aVar.a();
            }
        }
    }

    /* compiled from: ImmersionBackShortsFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d extends yd.d {
        d() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            BaseEpisode o10 = ImmersionBackShortsFragment.this.f46110y.o();
            if (o10 == null) {
                return;
            }
            ImmersionBackShortsFragment immersionBackShortsFragment = ImmersionBackShortsFragment.this;
            immersionBackShortsFragment.o0(immersionBackShortsFragment.f46103r);
            ImmersionBackShortsFragment.this.f0().G("play_icon", o10);
            ImmersionBackShortsFragment.this.dismiss();
            a aVar = ImmersionBackShortsFragment.this.f46099n;
            if (aVar != null) {
                aVar.b(o10, false);
            }
        }
    }

    /* compiled from: ImmersionBackShortsFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class e extends BannerViewPager.b {
        e() {
        }

        @Override // com.startshorts.androidplayer.ui.view.banner.BannerViewPager.b
        public void a(boolean z10, int i10, int i11) {
            if (ImmersionBackShortsFragment.this.f46103r != i10) {
                ImmersionBackShortsFragment immersionBackShortsFragment = ImmersionBackShortsFragment.this;
                immersionBackShortsFragment.q0(immersionBackShortsFragment.f46103r);
            }
            ImmersionBackShortsFragment.this.f46103r = i10;
            ImmersionBackShortsFragment.this.B0(i10);
        }

        @Override // com.startshorts.androidplayer.ui.view.banner.BannerViewPager.b
        public void b(int i10) {
            super.b(i10);
            if (i10 == 0) {
                ImmersionBackShortsFragment.this.w0();
            } else {
                ImmersionBackShortsFragment.this.v0();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ImmersionBackShortsFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class f implements Observer, FunctionAdapter {

        /* renamed from: a  reason: collision with root package name */
        private final /* synthetic */ Function1 f46115a;

        f(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f46115a = function;
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
            return this.f46115a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f46115a.invoke(obj);
        }
    }

    /* compiled from: ImmersionBackShortsFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class g implements ShortRatingHandler.b {
        g() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void c(ImmersionBackShortsFragment immersionBackShortsFragment, ShortPlayContentInfo shortPlayContentInfo) {
            BaseEpisode o10;
            int shortPlayId;
            ShortRatingHandler shortRatingHandler;
            if (!immersionBackShortsFragment.r() && (o10 = immersionBackShortsFragment.f46110y.o()) != null) {
                if (o10.isTrailer()) {
                    shortPlayId = o10.getBindShortPlayId();
                } else {
                    shortPlayId = o10.getShortPlayId();
                }
                Integer shortPlayId2 = shortPlayContentInfo.getShortPlayId();
                if (shortPlayId2 != null && shortPlayId == shortPlayId2.intValue() && (shortRatingHandler = immersionBackShortsFragment.f46108w) != null) {
                    shortRatingHandler.j(shortPlayContentInfo);
                }
            }
        }

        @Override // com.startshorts.androidplayer.ui.view.shortsV2.shortrating.ShortRatingHandler.b
        public void a(final ShortPlayContentInfo shortPlayContentInfo) {
            Intrinsics.checkNotNullParameter(shortPlayContentInfo, "shortPlayContentInfo");
            FragmentActivity requireActivity = ImmersionBackShortsFragment.this.requireActivity();
            final ImmersionBackShortsFragment immersionBackShortsFragment = ImmersionBackShortsFragment.this;
            requireActivity.runOnUiThread(new Runnable() { // from class: com.startshorts.androidplayer.ui.fragment.immersion.j
                @Override // java.lang.Runnable
                public final void run() {
                    ImmersionBackShortsFragment.g.c(ImmersionBackShortsFragment.this, shortPlayContentInfo);
                }
            });
        }
    }

    /* compiled from: ImmersionBackShortsFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class h extends yd.d {
        h() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
        }
    }

    private final void A0(BaseEpisode baseEpisode, ShortRatingLayout shortRatingLayout) {
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
            ShortRatingHandler shortRatingHandler = this.f46108w;
            if (shortRatingHandler != null) {
                shortRatingHandler.f();
                return;
            }
            return;
        }
        if (this.f46108w == null) {
            this.f46108w = new ShortRatingHandler(new g());
        }
        this.f46109x = shortRatingLayout;
        ShortRatingHandler shortRatingHandler2 = this.f46108w;
        String str = (shortRatingHandler2 == null || (str = shortRatingHandler2.e(baseEpisode.getShortPlayId(), baseEpisode.isTrailer())) == null) ? "" : "";
        ShortRatingHandler shortRatingHandler3 = this.f46108w;
        if (shortRatingHandler3 != null) {
            shortRatingHandler3.g(str, shortPlayContentInfo, shortRatingLayout);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void B0(int i10) {
        this.f46110y.s(i10);
        final BaseEpisode o10 = this.f46110y.o();
        if (o10 == null) {
            return;
        }
        m().f38840e.post(new Runnable() { // from class: com.startshorts.androidplayer.ui.fragment.immersion.h
            @Override // java.lang.Runnable
            public final void run() {
                ImmersionBackShortsFragment.C0(BaseEpisode.this, this);
            }
        });
        ag.a.d(ag.a.f646a, "immersion_back", o10.getShortPlayCode(), null, 0, null, null, null, o10.getUpack(), null, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_STALL_COUNTER, null);
        f0().J(o10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C0(BaseEpisode baseEpisode, ImmersionBackShortsFragment immersionBackShortsFragment) {
        boolean z10;
        ArrayList arrayList;
        boolean z11;
        if (ABTestFactory.f42224a.Q0().isEnable().invoke().booleanValue()) {
            Logger.f41511a.h("ImmersionBackShortsFragment", "ImmersionBackShortsFragment updatePlayPosition");
            String checkedShortPlayName = baseEpisode.getCheckedShortPlayName();
            if (checkedShortPlayName != null && checkedShortPlayName.length() != 0) {
                immersionBackShortsFragment.m().f38840e.setText(checkedShortPlayName);
                jk.b0.l(immersionBackShortsFragment.m().f38840e);
            } else {
                jk.b0.d(immersionBackShortsFragment.m().f38840e);
            }
            final FlexboxLayout flexboxLayout = immersionBackShortsFragment.m().f38837b;
            flexboxLayout.removeAllViews();
            LayoutInflater from = LayoutInflater.from(flexboxLayout.getContext());
            String cornerLabelText = baseEpisode.getCornerLabelText();
            int cornerLabelStyle = baseEpisode.getCornerLabelStyle();
            final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
            int i10 = 0;
            if (cornerLabelStyle > 0 && cornerLabelText != null && !StringsKt.t0(cornerLabelText)) {
                z10 = true;
            } else {
                z10 = false;
            }
            booleanRef.element = z10;
            List<ShortsLabel> labelList = baseEpisode.getLabelList();
            if (labelList != null) {
                arrayList = new ArrayList();
                for (Object obj : labelList) {
                    String labelName = ((ShortsLabel) obj).getLabelName();
                    if (labelName != null && !StringsKt.t0(labelName)) {
                        z11 = false;
                    } else {
                        z11 = true;
                    }
                    if (!z11) {
                        arrayList.add(obj);
                    }
                }
            } else {
                arrayList = null;
            }
            if (!booleanRef.element && (arrayList == null || arrayList.isEmpty())) {
                jk.b0.d(flexboxLayout);
                return;
            }
            jk.b0.l(flexboxLayout);
            if (booleanRef.element) {
                ViewShortsImmersionTagNormalBinding b10 = ViewShortsImmersionTagNormalBinding.b(from, flexboxLayout, true);
                Intrinsics.checkNotNullExpressionValue(b10, "inflate(...)");
                BaseTextView tvTag = b10.f41364a;
                Intrinsics.checkNotNullExpressionValue(tvTag, "tvTag");
                immersionBackShortsFragment.z0(tvTag, cornerLabelStyle, cornerLabelText);
            }
            if (arrayList != null) {
                for (Object obj2 : arrayList) {
                    int i11 = i10 + 1;
                    if (i10 < 0) {
                        CollectionsKt.y();
                    }
                    ViewShortsImmersionTagClickableBinding b11 = ViewShortsImmersionTagClickableBinding.b(from, flexboxLayout, true);
                    Intrinsics.checkNotNullExpressionValue(b11, "inflate(...)");
                    b11.f41360a.setCompoundDrawablesRelativeWithIntrinsicBounds((Drawable) null, (Drawable) null, (Drawable) null, (Drawable) null);
                    b11.f41360a.setText(((ShortsLabel) obj2).getLabelName());
                    b11.f41360a.setOnClickListener(new h());
                    i10 = i11;
                }
            }
            flexboxLayout.post(new Runnable() { // from class: com.startshorts.androidplayer.ui.fragment.immersion.i
                @Override // java.lang.Runnable
                public final void run() {
                    ImmersionBackShortsFragment.D0(FlexboxLayout.this, booleanRef);
                }
            });
            return;
        }
        jk.b0.d(immersionBackShortsFragment.m().f38840e);
        jk.b0.d(immersionBackShortsFragment.m().f38837b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void D0(FlexboxLayout flexboxLayout, Ref.BooleanRef booleanRef) {
        boolean z10;
        Intrinsics.checkNotNull(flexboxLayout);
        if (flexboxLayout.getChildCount() == 0) {
            jk.b0.d(flexboxLayout);
            return;
        }
        int top = flexboxLayout.getChildAt(0).getTop();
        int i10 = 0;
        for (View view : ViewGroupKt.getChildren(flexboxLayout)) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                CollectionsKt.y();
            }
            View view2 = view;
            BaseTextView baseTextView = (BaseTextView) view2.findViewById(R$id.tv_tag);
            boolean z11 = true;
            if (view2.getTop() > top) {
                z10 = true;
            } else {
                z10 = false;
            }
            z11 = (baseTextView == null || !baseTextView.c()) ? false : false;
            if (!z10 && !z11) {
                jk.b0.l(view2);
            } else if (booleanRef.element) {
                jk.b0.d(view2);
            } else if (i10 == 0) {
                jk.b0.d(flexboxLayout);
                return;
            } else {
                jk.b0.d(view2);
            }
            i10 = i11;
        }
    }

    private final void e0() {
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
    public final ImmersionBackShortViewModel f0() {
        return (ImmersionBackShortViewModel) this.f46096k.getValue();
    }

    private final ViewModelProvider g0() {
        return (ViewModelProvider) this.f46095j.getValue();
    }

    private final void h0() {
        ShortRatingHandler shortRatingHandler = this.f46108w;
        if (shortRatingHandler != null) {
            shortRatingHandler.f();
        }
    }

    private final void i0() {
        f0().F(this.f46100o, this.f46101p, this.f46102q, x2.f70966a.d());
        B0(0);
    }

    private final void j0() {
        this.f46097l.getValue().H().observe(this, new f(new Function1() { // from class: com.startshorts.androidplayer.ui.fragment.immersion.e
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit k02;
                k02 = ImmersionBackShortsFragment.k0(ImmersionBackShortsFragment.this, (com.startshorts.androidplayer.viewmodel.player.c) obj);
                return k02;
            }
        }));
        this.f46097l.getValue().G().observe(this, new f(new Function1() { // from class: com.startshorts.androidplayer.ui.fragment.immersion.f
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit l02;
                l02 = ImmersionBackShortsFragment.l0(ImmersionBackShortsFragment.this, (com.startshorts.androidplayer.viewmodel.player.a) obj);
                return l02;
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit k0(ImmersionBackShortsFragment immersionBackShortsFragment, com.startshorts.androidplayer.viewmodel.player.c cVar) {
        if (cVar instanceof c.j) {
            immersionBackShortsFragment.f46105t = ((c.j) cVar).b();
        } else if (cVar instanceof c.C0672c) {
            BaseEpisode o10 = immersionBackShortsFragment.f46110y.o();
            if (o10 == null) {
                return Unit.f60915a;
            }
            immersionBackShortsFragment.p0();
            immersionBackShortsFragment.dismiss();
            a aVar = immersionBackShortsFragment.f46099n;
            if (aVar != null) {
                aVar.b(o10, true);
            }
        } else if (cVar instanceof c.h) {
            BaseEpisode o11 = immersionBackShortsFragment.f46110y.o();
            if (o11 == null) {
                return Unit.f60915a;
            }
            immersionBackShortsFragment.f46110y.r();
            immersionBackShortsFragment.f0().C(o11);
            immersionBackShortsFragment.f0().B(o11, ((c.h) cVar).a());
        } else if (cVar instanceof c.b) {
            BaseEpisode o12 = immersionBackShortsFragment.f46110y.o();
            if (o12 == null) {
                return Unit.f60915a;
            }
            c.b bVar = (c.b) cVar;
            immersionBackShortsFragment.f0().D(o12, bVar.c(), bVar.b(), bVar.a());
        } else if (cVar instanceof c.d) {
            BaseEpisode o13 = immersionBackShortsFragment.f46110y.o();
            if (o13 == null) {
                return Unit.f60915a;
            }
            String parseVideoUrl$default = BaseEpisode.parseVideoUrl$default(o13, 0, 1, null);
            CoroutineUtil.l(CoroutineUtil.f48072a, "logPlayFailed", false, new ImmersionBackShortsFragment$initPlayerVM$1$1(o13, cVar, parseVideoUrl$default, null), 2, null);
            ResourceHandler.m(ResourceHandler.f48167a, parseVideoUrl$default, null, 2, null);
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit l0(ImmersionBackShortsFragment immersionBackShortsFragment, com.startshorts.androidplayer.viewmodel.player.a aVar) {
        if (aVar instanceof a.C0670a) {
            BaseEpisode o10 = immersionBackShortsFragment.f46110y.o();
            if (o10 == null) {
                return Unit.f60915a;
            }
            a.C0670a c0670a = (a.C0670a) aVar;
            immersionBackShortsFragment.f46104s = c0670a.a();
            ud.b.f68412a.E3(o10.getId(), c0670a.a());
            immersionBackShortsFragment.f46106u += 200;
            immersionBackShortsFragment.f46107v += bt.a.c(200.0f);
            return Unit.f60915a;
        }
        throw new NoWhenBranchMatchedException();
    }

    private final void m0() {
        m().f38838c.setOnClickListener(new c());
        m().f38839d.setOnClickListener(new d());
        BannerViewPager bannerViewPager = m().f38836a;
        int i10 = bannerViewPager.getResources().getDisplayMetrics().widthPixels;
        fk.z zVar = fk.z.f51786a;
        int k10 = zVar.k();
        int b10 = zVar.b();
        float f10 = i10 - ((k10 + b10) * 2);
        bannerViewPager.getLayoutParams().height = (int) (1.331f * f10);
        bannerViewPager.D(this.f46110y);
        bannerViewPager.F(true);
        bannerViewPager.O(8, (f10 * 1.0f) / i10);
        bannerViewPager.M(b10);
        bannerViewPager.Q(k10, k10);
        bannerViewPager.P(false);
        bannerViewPager.A(getLifecycle());
        bannerViewPager.J(new BannerViewPager.c() { // from class: com.startshorts.androidplayer.ui.fragment.immersion.g
            @Override // com.startshorts.androidplayer.ui.view.banner.BannerViewPager.c
            public final void a(View view, int i11) {
                ImmersionBackShortsFragment.n0(ImmersionBackShortsFragment.this, view, i11);
            }
        });
        bannerViewPager.B(new e());
        bannerViewPager.g(this.f46098m);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n0(ImmersionBackShortsFragment immersionBackShortsFragment, View view, int i10) {
        List data = immersionBackShortsFragment.m().f38836a.getData();
        if (data.size() > i10) {
            Object obj = data.get(i10);
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type com.startshorts.androidplayer.bean.shorts.BaseEpisode");
            BaseEpisode baseEpisode = (BaseEpisode) obj;
            immersionBackShortsFragment.f0().G("cover", baseEpisode);
            a aVar = immersionBackShortsFragment.f46099n;
            if (aVar != null) {
                aVar.b(baseEpisode, false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void o0(int i10) {
        BaseEpisode q10 = this.f46110y.q(i10);
        if (q10 == null) {
            return;
        }
        int i11 = this.f46104s;
        int i12 = this.f46105t;
        int i13 = this.f46106u;
        int i14 = this.f46107v;
        f0().I(q10, i11, i12);
        f0().H(q10, i13, i14);
        this.f46104s = 0;
        this.f46105t = 0;
        this.f46107v = 0;
        this.f46106u = 0;
    }

    private final void p0() {
        int p10 = this.f46110y.p();
        if (p10 != -1) {
            q0(p10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void q0(int i10) {
        BaseEpisode q10 = this.f46110y.q(i10);
        if (q10 == null) {
            return;
        }
        int i11 = this.f46104s;
        int i12 = this.f46105t;
        int i13 = this.f46106u;
        int i14 = this.f46107v;
        f0().K(q10, i11);
        f0().I(q10, i11, i12);
        f0().H(q10, i13, i14);
        this.f46104s = 0;
        this.f46105t = 0;
        this.f46107v = 0;
        this.f46106u = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit r0(ImmersionBackShortsFragment immersionBackShortsFragment, TextureView renderView, BaseEpisode data, ShortRatingLayout shortRatingLayout) {
        Intrinsics.checkNotNullParameter(renderView, "renderView");
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(shortRatingLayout, "shortRatingLayout");
        String parseVideoUrl$default = BaseEpisode.parseVideoUrl$default(data, 0, 1, null);
        if (parseVideoUrl$default == null) {
            return Unit.f60915a;
        }
        DirectUrlSource b10 = pf.l.f64869a.b(parseVideoUrl$default);
        PlayerViewModel value = immersionBackShortsFragment.f46097l.getValue();
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
        ShortRatingHandler shortRatingHandler = immersionBackShortsFragment.f46108w;
        if (shortRatingHandler != null) {
            shortRatingHandler.i();
        }
        immersionBackShortsFragment.A0(data, shortRatingLayout);
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ImmersionBackShortViewModel s0(ImmersionBackShortsFragment immersionBackShortsFragment) {
        return (ImmersionBackShortViewModel) immersionBackShortsFragment.g0().get(ImmersionBackShortViewModel.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final PlayerViewModel t0(ImmersionBackShortsFragment immersionBackShortsFragment) {
        return (PlayerViewModel) immersionBackShortsFragment.g0().get(PlayerViewModel.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ViewModelProvider u0(ImmersionBackShortsFragment immersionBackShortsFragment) {
        return new ViewModelProvider(immersionBackShortsFragment);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void v0() {
        String videoUrl;
        BaseEpisode o10 = this.f46110y.o();
        if (o10 != null && (videoUrl = o10.getVideoUrl()) != null && videoUrl.length() != 0) {
            q("pausePlay");
            this.f46097l.getValue().M(b.d.f48937a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void w0() {
        String videoUrl;
        BaseEpisode o10 = this.f46110y.o();
        if (o10 != null && (videoUrl = o10.getVideoUrl()) != null && videoUrl.length() != 0) {
            q("resumePlay");
            this.f46097l.getValue().M(b.g.f48941a);
        }
    }

    private final void x0(TextView textView) {
        textView.setPadding(jk.g.a(4.0f), 0, jk.g.a(4.0f), 0);
    }

    private final void y0(TextView textView) {
        if (fk.v.f51778a.b()) {
            textView.setPadding(jk.g.a(4.0f), 0, 0, 0);
        } else {
            textView.setPadding(0, 0, jk.g.a(4.0f), 0);
        }
        textView.setCompoundDrawablePadding(jk.g.a(2.0f));
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    public int k() {
        return this.f46111z;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    @NotNull
    public String o() {
        return "ImmersionBackShortsFragment";
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment, androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(@NotNull DialogInterface dialog) {
        Intrinsics.checkNotNullParameter(dialog, "dialog");
        super.onDismiss(dialog);
        f0().A(this.f46100o, this.f46101p);
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        v0();
        h0();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (!this.f46094i) {
            this.f46094i = true;
            return;
        }
        w0();
        A0(this.f46110y.o(), this.f46109x);
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        setCancelable(false);
        e0();
        j0();
        m0();
        i0();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseDialogFragment
    public void t() {
        super.t();
        ShortRatingHandler shortRatingHandler = this.f46108w;
        if (shortRatingHandler != null) {
            shortRatingHandler.h();
        }
    }

    public final void z0(@NotNull TextView view, int i10, @Nullable String str) {
        Intrinsics.checkNotNullParameter(view, "view");
        view.setCompoundDrawablesRelativeWithIntrinsicBounds((Drawable) null, (Drawable) null, (Drawable) null, (Drawable) null);
        if (i10 != 2) {
            if (i10 != 3) {
                if (i10 != 5) {
                    if (i10 == 6) {
                        view.setTextColor(view.getContext().getColor(R$color.drama_member_only_label));
                        view.setCompoundDrawablesRelativeWithIntrinsicBounds(ContextCompat.getDrawable(view.getContext(), R$drawable.ic_shorts_member_only_label), (Drawable) null, (Drawable) null, (Drawable) null);
                        y0(view);
                        view.setBackgroundResource(R$drawable.bg_short_label_style_member_only);
                    }
                } else {
                    view.setTextColor(view.getContext().getColor(R$color.color_common_white));
                    x0(view);
                    view.setBackgroundResource(R$drawable.bg_shorts_label_style_new);
                }
            } else {
                view.setTextColor(view.getContext().getColor(R$color.color_common_white));
                x0(view);
                view.setBackgroundResource(R$drawable.bg_shorts_label_style_hot);
            }
        } else {
            view.setTextColor(view.getContext().getColor(R$color.color_common_white));
            view.setCompoundDrawablesRelativeWithIntrinsicBounds(ContextCompat.getDrawable(view.getContext(), R$drawable.ic_shorts_excusive_label), (Drawable) null, (Drawable) null, (Drawable) null);
            y0(view);
            view.setBackgroundResource(R$drawable.bg_shorts_label_style_exclusive);
        }
        view.setText(str);
    }
}
