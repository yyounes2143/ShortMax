package com.startshorts.androidplayer.ui.fragment.immersion;

import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import androidx.databinding.ViewStubProxy;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import com.startshorts.androidplayer.R$drawable;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.api.ApiErrorState;
import com.startshorts.androidplayer.bean.eventbus.RefreshShortsCollectEvent;
import com.startshorts.androidplayer.bean.fresco.FrescoConfig;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.shorts.ShortsDetail;
import com.startshorts.androidplayer.bean.shorts.ShortsLabel;
import com.startshorts.androidplayer.databinding.DialogFragmentImmersionIntroductionBinding;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.ui.fragment.base.BottomSheetPageStateFragment;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.base.FoldableTextArea;
import com.startshorts.androidplayer.ui.view.fresco.CustomFrescoView;
import com.startshorts.androidplayer.viewmodel.immersion.ImmersionViewModel;
import com.startshorts.androidplayer.viewmodel.immersion.c;
import com.startshorts.androidplayer.viewmodel.immersion.d;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ImmersionIntroductionDialog.kt */
@Metadata
/* loaded from: classes7.dex */
public final class ImmersionIntroductionDialog extends BottomSheetPageStateFragment<DialogFragmentImmersionIntroductionBinding> {
    @NotNull

    /* renamed from: w  reason: collision with root package name */
    public static final a f46164w = new a(null);
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private String f46168r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private BaseEpisode f46169s;
    @Nullable

    /* renamed from: t  reason: collision with root package name */
    private b f46170t;
    @Nullable

    /* renamed from: u  reason: collision with root package name */
    private ShortsDetail f46171u;

    /* renamed from: o  reason: collision with root package name */
    private final int f46165o = jk.g.a(64.0f);

    /* renamed from: p  reason: collision with root package name */
    private final int f46166p = jk.g.a(86.0f);

    /* renamed from: q  reason: collision with root package name */
    private final float f46167q = fk.z.f51786a.m();
    @NotNull

    /* renamed from: v  reason: collision with root package name */
    private final ms.i f46172v = kotlin.c.b(new Function0() { // from class: com.startshorts.androidplayer.ui.fragment.immersion.z
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            ImmersionViewModel Y;
            Y = ImmersionIntroductionDialog.Y(ImmersionIntroductionDialog.this);
            return Y;
        }
    });

    /* compiled from: ImmersionIntroductionDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final ImmersionIntroductionDialog a(@Nullable String str, @Nullable BaseEpisode baseEpisode, @NotNull b listener) {
            Intrinsics.checkNotNullParameter(listener, "listener");
            ImmersionIntroductionDialog immersionIntroductionDialog = new ImmersionIntroductionDialog();
            immersionIntroductionDialog.f46168r = str;
            immersionIntroductionDialog.f46169s = baseEpisode;
            immersionIntroductionDialog.f46170t = listener;
            return immersionIntroductionDialog;
        }

        private a() {
        }
    }

    /* compiled from: ImmersionIntroductionDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface b {
        void a();

        void b();

        void c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ImmersionIntroductionDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c implements Observer, FunctionAdapter {

        /* renamed from: a  reason: collision with root package name */
        private final /* synthetic */ Function1 f46173a;

        c(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f46173a = function;
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
            return this.f46173a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f46173a.invoke(obj);
        }
    }

    /* compiled from: ImmersionIntroductionDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d extends yd.d {
        d() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            b bVar = ImmersionIntroductionDialog.this.f46170t;
            if (bVar != null) {
                bVar.b();
            }
        }
    }

    /* compiled from: ImmersionIntroductionDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class e extends yd.d {
        e() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            EventManager eventManager = EventManager.f42463a;
            Bundle C = eventManager.C(ImmersionIntroductionDialog.this.f46169s);
            C.putString("scene", "immersion");
            C.putString("from", "introduction_pop");
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "short_menu_click", C, 0L, 4, null);
            ImmersionIntroductionDialog.this.dismiss();
            b bVar = ImmersionIntroductionDialog.this.f46170t;
            if (bVar != null) {
                bVar.a();
            }
        }
    }

    /* compiled from: ImmersionIntroductionDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class f extends yd.d {
        f() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            ImmersionIntroductionDialog.this.dismiss();
            b bVar = ImmersionIntroductionDialog.this.f46170t;
            if (bVar != null) {
                bVar.c();
            }
        }
    }

    private final ImmersionViewModel W() {
        return (ImmersionViewModel) this.f46172v.getValue();
    }

    private final void X() {
        if (this.f46171u == null) {
            return;
        }
        ((DialogFragmentImmersionIntroductionBinding) n()).f38885k.setVisibility(0);
        c0();
        h0();
        i0();
        e0();
        f0();
        g0();
        d0();
        b0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ImmersionViewModel Y(final ImmersionIntroductionDialog immersionIntroductionDialog) {
        ImmersionViewModel immersionViewModel = (ImmersionViewModel) new ViewModelProvider(immersionIntroductionDialog).get(ImmersionViewModel.class);
        immersionViewModel.o().observe(immersionIntroductionDialog, new c(new Function1() { // from class: com.startshorts.androidplayer.ui.fragment.immersion.a0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit Z;
                Z = ImmersionIntroductionDialog.Z(ImmersionIntroductionDialog.this, (ApiErrorState) obj);
                return Z;
            }
        }));
        immersionViewModel.Q().observe(immersionIntroductionDialog, new c(new Function1() { // from class: com.startshorts.androidplayer.ui.fragment.immersion.b0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit a02;
                a02 = ImmersionIntroductionDialog.a0(ImmersionIntroductionDialog.this, (com.startshorts.androidplayer.viewmodel.immersion.d) obj);
                return a02;
            }
        }));
        return immersionViewModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit Z(ImmersionIntroductionDialog immersionIntroductionDialog, ApiErrorState apiErrorState) {
        if (apiErrorState.getState() == 1) {
            immersionIntroductionDialog.M();
            immersionIntroductionDialog.F();
        } else {
            immersionIntroductionDialog.N(apiErrorState.getMsg());
            immersionIntroductionDialog.H();
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit a0(ImmersionIntroductionDialog immersionIntroductionDialog, com.startshorts.androidplayer.viewmodel.immersion.d dVar) {
        if (dVar instanceof d.h) {
            immersionIntroductionDialog.f46171u = ((d.h) dVar).a();
            immersionIntroductionDialog.X();
            immersionIntroductionDialog.D();
        }
        return Unit.f60915a;
    }

    private final void b0() {
        int i10;
        BaseEpisode baseEpisode = this.f46169s;
        if (baseEpisode != null) {
            ((DialogFragmentImmersionIntroductionBinding) n()).f38877c.setText(fk.w.f51779a.a(baseEpisode.getCollectNum()));
            ImageView imageView = ((DialogFragmentImmersionIntroductionBinding) n()).f38876b;
            if (baseEpisode.isCollected()) {
                i10 = R$drawable.ic_shorts_collected;
            } else {
                i10 = R$drawable.ic_shorts_uncollect;
            }
            imageView.setImageResource(i10);
            ((DialogFragmentImmersionIntroductionBinding) n()).f38875a.setOnClickListener(new d());
        }
    }

    private final void c0() {
        String str;
        kk.f fVar = kk.f.f60747a;
        CustomFrescoView customFrescoView = ((DialogFragmentImmersionIntroductionBinding) n()).f38878d;
        FrescoConfig frescoConfig = new FrescoConfig();
        ShortsDetail shortsDetail = this.f46171u;
        if (shortsDetail != null) {
            str = shortsDetail.getPicUrl();
        } else {
            str = null;
        }
        frescoConfig.setUrl(str);
        id.c cVar = id.c.f53397a;
        frescoConfig.setOssWidth(cVar.b());
        frescoConfig.setOssHeight(cVar.a());
        frescoConfig.setResizeWidth(this.f46165o);
        frescoConfig.setResizeHeight(this.f46166p);
        frescoConfig.setPlaceholderResId(R$drawable.ic_cover_placeholder);
        frescoConfig.setCornerTransform(true);
        frescoConfig.setCornerRadius(this.f46167q);
        Unit unit = Unit.f60915a;
        fVar.A(customFrescoView, frescoConfig);
    }

    private final void d0() {
        ShortsDetail shortsDetail = this.f46171u;
        if (shortsDetail != null) {
            FoldableTextArea foldableTextArea = ((DialogFragmentImmersionIntroductionBinding) n()).f38879e;
            String summary = shortsDetail.getSummary();
            if (summary == null) {
                summary = "";
            }
            foldableTextArea.e(4, 6, summary, 4);
        }
    }

    private final void e0() {
        List<ShortsLabel> list;
        ShortsDetail shortsDetail = this.f46171u;
        if (shortsDetail != null) {
            list = shortsDetail.getLabelResponseList();
        } else {
            list = null;
        }
        List<ShortsLabel> list2 = list;
        if (list2 != null && !list2.isEmpty()) {
            StringBuilder sb2 = new StringBuilder();
            for (ShortsLabel shortsLabel : list) {
                sb2.append(shortsLabel.getLabelName());
                sb2.append(" · ");
            }
            ViewStubProxy labelViewstub = ((DialogFragmentImmersionIntroductionBinding) n()).f38881g;
            Intrinsics.checkNotNullExpressionValue(labelViewstub, "labelViewstub");
            jk.e0.g(labelViewstub);
            BaseTextView baseTextView = ((DialogFragmentImmersionIntroductionBinding) n()).f38880f;
            String sb3 = sb2.toString();
            Intrinsics.checkNotNullExpressionValue(sb3, "toString(...)");
            baseTextView.setText(StringsKt.B1(sb3, 3));
        }
    }

    private final void f0() {
        ((DialogFragmentImmersionIntroductionBinding) n()).f38882h.setOnClickListener(new e());
    }

    private final void g0() {
        ((DialogFragmentImmersionIntroductionBinding) n()).f38887m.setOnClickListener(new f());
    }

    private final void h0() {
        String str;
        BaseTextView baseTextView = ((DialogFragmentImmersionIntroductionBinding) n()).f38890p;
        ShortsDetail shortsDetail = this.f46171u;
        if (shortsDetail != null) {
            str = shortsDetail.getShortPlayName();
        } else {
            str = null;
        }
        baseTextView.setText(str);
    }

    private final void i0() {
        int i10;
        BaseTextView baseTextView = ((DialogFragmentImmersionIntroductionBinding) n()).f38892r;
        int i11 = R$string.episode_list_dialog_fragment_shorts_episode_status;
        ShortsDetail shortsDetail = this.f46171u;
        int i12 = 0;
        if (shortsDetail != null) {
            i10 = shortsDetail.getUpdateEpisode();
        } else {
            i10 = 0;
        }
        String valueOf = String.valueOf(i10);
        ShortsDetail shortsDetail2 = this.f46171u;
        if (shortsDetail2 != null) {
            i12 = shortsDetail2.getTotalEpisodes();
        }
        baseTextView.setText(getString(i11, valueOf, String.valueOf(i12)));
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BottomSheetPageStateFragment
    public void J() {
        BaseEpisode baseEpisode = this.f46169s;
        if (baseEpisode != null) {
            W().e0(new c.j(baseEpisode.getShortPlayId()));
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment
    public float l() {
        return 0.0f;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment
    public int m() {
        return R$layout.dialog_fragment_immersion_introduction;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment
    public boolean o() {
        return true;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BottomSheetPageStateFragment, com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        if (this.f46169s == null) {
            j("dismiss for invalid arguments -> mEpisode is null");
            dismiss();
            return;
        }
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle2 = new Bundle();
        bundle2.putString("scene", "immersion");
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "introduction_pop_show", bundle2, 0L, 4, null);
        W().e0(new c.m(this.f46168r));
        J();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BottomSheetPageStateFragment, com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment
    @NotNull
    public String p() {
        return "ImmersionIntroductionDialog";
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveRefreshCollectEvent(@NotNull RefreshShortsCollectEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        q("receive RefreshShortsCollectEvent -> " + event);
        BaseEpisode baseEpisode = this.f46169s;
        if (baseEpisode != null && baseEpisode.getShortPlayId() == event.getShortsId()) {
            if (event.getCollect()) {
                BaseEpisode baseEpisode2 = this.f46169s;
                if (baseEpisode2 != null) {
                    baseEpisode2.setCollected();
                }
            } else {
                BaseEpisode baseEpisode3 = this.f46169s;
                if (baseEpisode3 != null) {
                    baseEpisode3.cancelCollected();
                }
            }
            b0();
        }
    }
}
