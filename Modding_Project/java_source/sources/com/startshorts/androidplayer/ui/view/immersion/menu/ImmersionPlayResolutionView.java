package com.startshorts.androidplayer.ui.view.immersion.menu;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import com.startshorts.androidplayer.R$id;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.bean.immersion.ImmersionShortsInfo;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.subs.SubsSku;
import com.startshorts.androidplayer.ui.activity.base.BaseActivity;
import com.startshorts.androidplayer.ui.view.base.BaseFrameLayout;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.immersion.menu.ImmersionPlayResolutionView;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.viewmodel.billing.BillingViewModel;
import com.startshorts.androidplayer.viewmodel.billing.a;
import com.startshorts.androidplayer.viewmodel.billing.b;
import com.startshorts.androidplayer.viewmodel.immersion.UnlockViewModel;
import com.startshorts.androidplayer.viewmodel.immersion.e;
import com.startshorts.androidplayer.viewmodel.immersion.f;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import ms.f;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yd.d;
import zc.g;
/* compiled from: ImmersionPlayResolutionView.kt */
@Metadata
/* loaded from: classes7.dex */
public final class ImmersionPlayResolutionView extends BaseFrameLayout implements nj.b {
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private a f47365b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private BaseEpisode f47366c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private BaseTextView f47367d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private UnlockViewModel f47368e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private BillingViewModel f47369f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f47370g;

    /* compiled from: ImmersionPlayResolutionView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface a {
        void a(boolean z10);
    }

    /* compiled from: ImmersionPlayResolutionView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends d {
        b() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            a mListener = ImmersionPlayResolutionView.this.getMListener();
            if (mListener != null) {
                mListener.a(ImmersionPlayResolutionView.this.f47370g);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ImmersionPlayResolutionView.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c implements Observer, FunctionAdapter {

        /* renamed from: a  reason: collision with root package name */
        private final /* synthetic */ Function1 f47372a;

        c(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f47372a = function;
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
            return this.f47372a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f47372a.invoke(obj);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ImmersionPlayResolutionView(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    private final void n() {
        BillingViewModel billingViewModel = this.f47369f;
        if (billingViewModel != null) {
            billingViewModel.W(new a.c("subs_first_discount"));
        }
    }

    private final void o(List<? extends Object> list) {
        UnlockViewModel unlockViewModel = this.f47368e;
        if (unlockViewModel != null) {
            unlockViewModel.j0(new e.c(list));
        }
    }

    private final void p(LifecycleOwner lifecycleOwner) {
        MutableLiveData<com.startshorts.androidplayer.viewmodel.billing.b> Q;
        BillingViewModel billingViewModel = this.f47369f;
        if (billingViewModel != null && (Q = billingViewModel.Q()) != null) {
            Q.observe(lifecycleOwner, new c(new Function1() { // from class: nj.m
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit q10;
                    q10 = ImmersionPlayResolutionView.q(ImmersionPlayResolutionView.this, (com.startshorts.androidplayer.viewmodel.billing.b) obj);
                    return q10;
                }
            }));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit q(ImmersionPlayResolutionView immersionPlayResolutionView, com.startshorts.androidplayer.viewmodel.billing.b bVar) {
        if (bVar instanceof b.q) {
            immersionPlayResolutionView.w();
        } else if (bVar instanceof b.m) {
            immersionPlayResolutionView.o(((b.m) bVar).a());
        }
        return Unit.f60915a;
    }

    private final void s(LifecycleOwner lifecycleOwner) {
        MutableLiveData<com.startshorts.androidplayer.viewmodel.immersion.f> a02;
        UnlockViewModel unlockViewModel = this.f47368e;
        if (unlockViewModel != null && (a02 = unlockViewModel.a0()) != null) {
            a02.observe(lifecycleOwner, new c(new Function1() { // from class: nj.l
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Unit t10;
                    t10 = ImmersionPlayResolutionView.t(ImmersionPlayResolutionView.this, (com.startshorts.androidplayer.viewmodel.immersion.f) obj);
                    return t10;
                }
            }));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit t(ImmersionPlayResolutionView immersionPlayResolutionView, com.startshorts.androidplayer.viewmodel.immersion.f fVar) {
        boolean z10;
        List<SubsSku> Y;
        if (fVar instanceof f.C0665f) {
            if (!((f.C0665f) fVar).a()) {
                immersionPlayResolutionView.n();
            }
        } else if (fVar instanceof f.b) {
            immersionPlayResolutionView.v(((f.b) fVar).a());
        } else if (fVar instanceof f.c) {
            UnlockViewModel unlockViewModel = immersionPlayResolutionView.f47368e;
            Object obj = null;
            if (unlockViewModel != null && (Y = unlockViewModel.Y()) != null) {
                Iterator<T> it = Y.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    Object next = it.next();
                    if (((SubsSku) next).enableDiscount()) {
                        obj = next;
                        break;
                    }
                }
                obj = (SubsSku) obj;
            }
            if (obj != null) {
                z10 = true;
            } else {
                z10 = false;
            }
            immersionPlayResolutionView.f47370g = z10;
        }
        return Unit.f60915a;
    }

    private final void u() {
        UnlockViewModel unlockViewModel = this.f47368e;
        if (unlockViewModel != null) {
            unlockViewModel.j0(new e.i("subs_first_discount", "other", 0, null, null, 28, null));
        }
    }

    private final void v(List<g> list) {
        BillingViewModel billingViewModel = this.f47369f;
        if (billingViewModel != null) {
            billingViewModel.W(new a.h(list));
        }
    }

    private final void w() {
        UnlockViewModel unlockViewModel = this.f47368e;
        if (unlockViewModel != null) {
            unlockViewModel.j0(e.h.f48763b);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x(ImmersionPlayResolutionView immersionPlayResolutionView) {
        immersionPlayResolutionView.setVisibility(0);
    }

    @Override // nj.a
    public void a(int i10) {
        if (i10 == 0) {
            BaseEpisode baseEpisode = this.f47366c;
            if (baseEpisode != null) {
                if (baseEpisode != null && baseEpisode.isLocked()) {
                    return;
                }
            } else {
                return;
            }
        }
        if (getVisibility() != i10) {
            if (i10 == 0) {
                post(new Runnable() { // from class: nj.k
                    @Override // java.lang.Runnable
                    public final void run() {
                        ImmersionPlayResolutionView.x(ImmersionPlayResolutionView.this);
                    }
                });
            } else {
                setVisibility(i10);
            }
        }
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseFrameLayout
    public void e(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.f47367d = (BaseTextView) findViewById(R$id.resolution_tv);
        setOnClickListener(new b());
        if (Intrinsics.areEqual(DeviceUtil.f48146a.e(), "vi")) {
            setMinimumWidth(jk.g.a(52.0f));
        }
    }

    @Override // nj.a
    public boolean f() {
        return true;
    }

    @Override // nj.a
    public void g(@NotNull ImmersionShortsInfo shortsInfo, boolean z10) {
        Intrinsics.checkNotNullParameter(shortsInfo, "shortsInfo");
    }

    @Override // com.startshorts.androidplayer.ui.view.base.BaseFrameLayout
    public int getLayoutResource() {
        return R$layout.view_immersion_play_resolution;
    }

    @Nullable
    public final a getMListener() {
        return this.f47365b;
    }

    @Override // nj.b
    public void h(@NotNull String resolution) {
        Intrinsics.checkNotNullParameter(resolution, "resolution");
        BaseTextView baseTextView = this.f47367d;
        if (baseTextView != null) {
            baseTextView.setText(resolution);
        }
    }

    @Override // nj.a
    public void k(@NotNull BaseEpisode episode, boolean z10) {
        Intrinsics.checkNotNullParameter(episode, "episode");
        this.f47366c = episode;
        if (episode.isLocked()) {
            a(4);
        } else if (!z10) {
            a(0);
        }
    }

    public final void r(@NotNull BaseActivity activity, @NotNull ViewModelProvider provider) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(provider, "provider");
        this.f47368e = (UnlockViewModel) provider.get(UnlockViewModel.class);
        this.f47369f = (BillingViewModel) provider.get(BillingViewModel.class);
        s(activity);
        p(activity);
        u();
    }

    public final void setMListener(@Nullable a aVar) {
        this.f47365b = aVar;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ImmersionPlayResolutionView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersionPlayResolutionView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.checkNotNullParameter(context, "context");
    }
}
