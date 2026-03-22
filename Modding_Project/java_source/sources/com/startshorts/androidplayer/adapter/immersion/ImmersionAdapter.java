package com.startshorts.androidplayer.adapter.immersion;

import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.transition.TransitionManager;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.adapter.base.BaseAdapter;
import com.startshorts.androidplayer.adapter.immersion.ImmersionAdapter;
import com.startshorts.androidplayer.bean.immersion.ImmersionShortsInfo;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.databinding.ItemImmersionNormalBinding;
import com.startshorts.androidplayer.databinding.ItemImmersionSubtitleBinding;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.ui.view.base.SwipingFrameLayout;
import com.startshorts.androidplayer.ui.view.immersion.adapter.BaseImmersionAdapterView;
import com.startshorts.androidplayer.ui.view.immersion.adapter.ImmersionNormalAdapterView;
import com.startshorts.androidplayer.ui.view.immersion.adapter.ImmersionSubtitleAdapterView;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ImmersionAdapter.kt */
@Metadata
/* loaded from: classes6.dex */
public final class ImmersionAdapter extends BaseAdapter<BaseEpisode> {
    @NotNull

    /* renamed from: s  reason: collision with root package name */
    public static final a f37676s = new a(null);
    @NotNull

    /* renamed from: o  reason: collision with root package name */
    private final i f37677o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private b f37678p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private WeakReference<RecyclerView> f37679q;

    /* renamed from: r  reason: collision with root package name */
    private int f37680r;

    /* compiled from: ImmersionAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: ImmersionAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static class b extends SwipingFrameLayout.b {
        public void m(int i10, int i11) {
            throw null;
        }
    }

    /* compiled from: ImmersionAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class c extends BaseAdapter<BaseEpisode>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemImmersionNormalBinding f37681g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ ImmersionAdapter f37682h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(@NotNull ImmersionAdapter immersionAdapter, ItemImmersionNormalBinding binding) {
            super(immersionAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37682h = immersionAdapter;
            this.f37681g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemImmersionNormalBinding c() {
            return this.f37681g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: k */
        public void f(int i10, @NotNull BaseEpisode item) {
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            ImmersionAdapter immersionAdapter = this.f37682h;
            ImmersionNormalAdapterView adapterView = c().f40457a;
            Intrinsics.checkNotNullExpressionValue(adapterView, "adapterView");
            immersionAdapter.P(item, adapterView);
        }
    }

    /* compiled from: ImmersionAdapter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private final class d extends BaseAdapter<BaseEpisode>.ViewHolder {
        @NotNull

        /* renamed from: g  reason: collision with root package name */
        private final ItemImmersionSubtitleBinding f37683g;

        /* renamed from: h  reason: collision with root package name */
        final /* synthetic */ ImmersionAdapter f37684h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(@NotNull ImmersionAdapter immersionAdapter, ItemImmersionSubtitleBinding binding) {
            super(immersionAdapter, binding);
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.f37684h = immersionAdapter;
            this.f37683g = binding;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        @NotNull
        /* renamed from: j */
        public ItemImmersionSubtitleBinding c() {
            return this.f37683g;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.ViewHolder
        /* renamed from: k */
        public void f(int i10, @NotNull BaseEpisode item) {
            Intrinsics.checkNotNullParameter(item, "item");
            super.f(i10, item);
            ImmersionSubtitleAdapterView adapterView = c().f40461a;
            Intrinsics.checkNotNullExpressionValue(adapterView, "adapterView");
            this.f37684h.P(item, adapterView);
        }
    }

    public ImmersionAdapter() {
        super(0L, 1, null);
        this.f37677o = kotlin.c.b(new Function0() { // from class: md.a
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                List T;
                T = ImmersionAdapter.T();
                return T;
            }
        });
        this.f37680r = -1;
    }

    private final BaseImmersionAdapterView H(int i10) {
        View view;
        RecyclerView recyclerView;
        RecyclerView.ViewHolder findViewHolderForLayoutPosition;
        WeakReference<RecyclerView> weakReference = this.f37679q;
        if (weakReference != null && (recyclerView = weakReference.get()) != null && (findViewHolderForLayoutPosition = recyclerView.findViewHolderForLayoutPosition(i10)) != null) {
            view = findViewHolderForLayoutPosition.itemView;
        } else {
            view = null;
        }
        if (!(view instanceof BaseImmersionAdapterView)) {
            return null;
        }
        return (BaseImmersionAdapterView) view;
    }

    private final List<Integer> I() {
        return (List) this.f37677o.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void P(BaseEpisode baseEpisode, BaseImmersionAdapterView baseImmersionAdapterView) {
        baseImmersionAdapterView.setEpisode(baseEpisode);
        baseImmersionAdapterView.setMListener(this.f37678p);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List T() {
        return Collections.synchronizedList(new ArrayList());
    }

    public final void G(int i10) {
        BaseImmersionAdapterView H = H(i10);
        if (H != null) {
            H.m();
        }
    }

    @Nullable
    public final TextureView J(int i10) {
        BaseImmersionAdapterView H = H(i10);
        if (H != null) {
            return H.getVideoRenderView();
        }
        return null;
    }

    public final void K(int i10) {
        BaseImmersionAdapterView H = H(i10);
        if (H != null) {
            H.x();
        }
    }

    public final void L(int i10) {
        BaseImmersionAdapterView H = H(i10);
        if (H != null) {
            H.y();
        }
    }

    public final void M(int i10) {
        BaseImmersionAdapterView H = H(i10);
        if (H != null) {
            H.z();
        }
    }

    public final void N(int i10) {
        BaseImmersionAdapterView H = H(i10);
        if (H != null) {
            H.A();
        }
    }

    public final void O(int i10) {
        BaseImmersionAdapterView H = H(i10);
        if (H != null) {
            TransitionManager.beginDelayedTransition(H);
            H.B();
        }
    }

    public final void Q(int i10) {
        BaseImmersionAdapterView H = H(i10);
        if (H != null) {
            H.C();
        }
    }

    public final void R(int i10) {
        BaseImmersionAdapterView H = H(i10);
        if (H != null) {
            H.D();
        }
    }

    public final boolean S(int i10) {
        BaseImmersionAdapterView H = H(i10);
        if (H != null) {
            return H.F();
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: U */
    public void onViewAttachedToWindow(@NotNull BaseAdapter<BaseEpisode>.ViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        int layoutPosition = holder.getLayoutPosition();
        r("onViewAttachedToWindow -> position(" + layoutPosition + ')');
        if (!I().contains(Integer.valueOf(layoutPosition))) {
            I().add(Integer.valueOf(layoutPosition));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* renamed from: V */
    public void onViewDetachedFromWindow(@NotNull BaseAdapter<BaseEpisode>.ViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        int layoutPosition = holder.getLayoutPosition();
        r("onViewDetachedFromWindow -> pos(" + layoutPosition + ')');
        I().remove(Integer.valueOf(layoutPosition));
    }

    public final void W(@Nullable b bVar) {
        this.f37678p = bVar;
    }

    public final void X(int i10) {
        BaseImmersionAdapterView H = H(i10);
        if (H != null) {
            H.setMVideoRendered(true);
        }
    }

    public final void Y(int i10) {
        BaseImmersionAdapterView H = H(i10);
        if (H != null) {
            H.I();
        }
    }

    public final void Z(int i10, boolean z10) {
        BaseImmersionAdapterView H = H(i10);
        if (H != null) {
            H.J(z10);
        }
    }

    public final void a0(int i10, @NotNull String tip) {
        Intrinsics.checkNotNullParameter(tip, "tip");
        BaseImmersionAdapterView H = H(i10);
        if (H != null) {
            H.K(tip);
        }
    }

    public final void b0(int i10, @NotNull pj.a view) {
        Intrinsics.checkNotNullParameter(view, "view");
        BaseImmersionAdapterView H = H(i10);
        if (H != null) {
            TransitionManager.beginDelayedTransition(H);
            H.L(view);
        }
    }

    public final void c0(int i10) {
        List<Integer> I = I();
        Intrinsics.checkNotNullExpressionValue(I, "<get-mAttachedViewPositions>(...)");
        synchronized (I) {
            try {
                int size = I().size();
                for (int i11 = 0; i11 < size; i11++) {
                    Integer num = I().get(i11);
                    int intValue = num.intValue() + i10;
                    Logger logger = Logger.f41511a;
                    logger.h("ImmersionAdapter", "updateAttachedViewsPosition -> oldPosition(" + num + ") newPosition(" + intValue + ')');
                    I().set(i11, Integer.valueOf(intValue));
                    b bVar = this.f37678p;
                    if (bVar != null) {
                        Intrinsics.checkNotNull(num);
                        bVar.m(num.intValue(), intValue);
                    }
                }
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void d0(int i10, @NotNull BaseEpisode episode) {
        Intrinsics.checkNotNullParameter(episode, "episode");
        BaseImmersionAdapterView H = H(i10);
        if (H != null) {
            H.setEpisode(episode);
        }
    }

    public final void e0(int i10) {
        this.f37680r = i10;
    }

    public final void f0(int i10, @NotNull ImmersionShortsInfo shortsInfo, @NotNull BaseEpisode baseEpisode, boolean z10) {
        Intrinsics.checkNotNullParameter(shortsInfo, "shortsInfo");
        Intrinsics.checkNotNullParameter(baseEpisode, "baseEpisode");
        BaseImmersionAdapterView H = H(i10);
        if (H != null) {
            H.M(shortsInfo, baseEpisode, z10);
        }
    }

    public final void g0(int i10, @NotNull String content) {
        ImmersionSubtitleAdapterView immersionSubtitleAdapterView;
        Intrinsics.checkNotNullParameter(content, "content");
        BaseImmersionAdapterView H = H(i10);
        if (H instanceof ImmersionSubtitleAdapterView) {
            immersionSubtitleAdapterView = (ImmersionSubtitleAdapterView) H;
        } else {
            immersionSubtitleAdapterView = null;
        }
        if (immersionSubtitleAdapterView != null) {
            immersionSubtitleAdapterView.O(content);
        }
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        int i10 = this.f37680r;
        if (i10 == -1) {
            return m().size();
        }
        return i10 + 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i10) {
        BaseEpisode item = getItem(i10);
        if (item == null || !item.enableSubtitle()) {
            return 1;
        }
        return 2;
    }

    public final void h0(int i10, int i11) {
        BaseImmersionAdapterView H = H(i10);
        if (H != null) {
            H.a(i11);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onAttachedToRecyclerView(@NotNull RecyclerView recyclerView) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        this.f37679q = new WeakReference<>(recyclerView);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onDetachedFromRecyclerView(@NotNull RecyclerView recyclerView) {
        Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
        WeakReference<RecyclerView> weakReference = this.f37679q;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.f37679q = null;
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    public boolean p() {
        return false;
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    @NotNull
    public String q() {
        return "ImmersionAdapter";
    }

    @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter
    @NotNull
    public BaseAdapter<BaseEpisode>.ViewHolder x(@NotNull ViewGroup parent, int i10, int i11) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        if (i10 == 2) {
            yf.a.f70794a.o();
            return new d(this, (ItemImmersionSubtitleBinding) s(parent, R$layout.item_immersion_subtitle));
        }
        return new c(this, (ItemImmersionNormalBinding) s(parent, R$layout.item_immersion_normal));
    }
}
