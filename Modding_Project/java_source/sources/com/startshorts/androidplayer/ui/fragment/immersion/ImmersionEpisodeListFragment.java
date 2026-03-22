package com.startshorts.androidplayer.ui.fragment.immersion;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.View;
import android.widget.Toast;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.adapter.base.BaseAdapter;
import com.startshorts.androidplayer.adapter.immersion.EpisodeListAdapter;
import com.startshorts.androidplayer.bean.api.ApiErrorState;
import com.startshorts.androidplayer.bean.eventbus.EpisodePlayingEvent;
import com.startshorts.androidplayer.bean.eventbus.ScrollToEpisodeEvent;
import com.startshorts.androidplayer.bean.eventbus.ShowDisableSkipUnlockToastEvent;
import com.startshorts.androidplayer.bean.shorts.EpisodeDetail;
import com.startshorts.androidplayer.bean.shorts.ShortsListNewBean;
import com.startshorts.androidplayer.databinding.FragmentEpisodeListBinding;
import com.startshorts.androidplayer.ui.activity.base.BaseActivity;
import com.startshorts.androidplayer.ui.activity.immersion.ImmersionActivity;
import com.startshorts.androidplayer.ui.fragment.base.ListFragment;
import com.startshorts.androidplayer.utils.ext.FragmentExtKt;
import com.startshorts.androidplayer.viewmodel.immersion.EpisodeViewModel;
import com.startshorts.androidplayer.viewmodel.immersion.a;
import com.startshorts.androidplayer.viewmodel.immersion.b;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ImmersionEpisodeListFragment.kt */
@Metadata
@SourceDebugExtension({"SMAP\nImmersionEpisodeListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImmersionEpisodeListFragment.kt\ncom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment\n+ 2 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,247:1\n15#2,9:248\n1863#3,2:257\n1863#3,2:259\n1872#3,3:261\n*S KotlinDebug\n*F\n+ 1 ImmersionEpisodeListFragment.kt\ncom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment\n*L\n124#1:248,9\n199#1:257,2\n204#1:259,2\n213#1:261,3\n*E\n"})
/* loaded from: classes7.dex */
public final class ImmersionEpisodeListFragment extends ListFragment<EpisodeDetail, FragmentEpisodeListBinding> {
    @NotNull
    public static final a G = new a(null);
    @NotNull
    private final ms.i A = kotlin.c.b(new Function0() { // from class: com.startshorts.androidplayer.ui.fragment.immersion.v
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            ViewModelProvider V0;
            V0 = ImmersionEpisodeListFragment.V0(ImmersionEpisodeListFragment.this);
            return V0;
        }
    });
    @NotNull
    private final ms.i B = kotlin.c.b(new Function0() { // from class: com.startshorts.androidplayer.ui.fragment.immersion.w
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            EpisodeViewModel S0;
            S0 = ImmersionEpisodeListFragment.S0(ImmersionEpisodeListFragment.this);
            return S0;
        }
    });
    private int C;
    private int D;
    private int E;
    private boolean F;

    /* compiled from: ImmersionEpisodeListFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(@NotNull ImmersionEpisodeListFragment fragment, int i10, int i11, int i12) {
            Intrinsics.checkNotNullParameter(fragment, "fragment");
            Bundle bundle = new Bundle();
            bundle.putInt("shorts_id", i10);
            bundle.putInt("page_number", i11);
            bundle.putInt("page_size", i12);
            fragment.setArguments(bundle);
        }

        private a() {
        }
    }

    /* compiled from: FragmentExt.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 ImmersionEpisodeListFragment.kt\ncom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment\n*L\n1#1,20:1\n127#2,9:21\n177#2,4:30\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class b implements Function0<Unit> {
        public b() {
        }

        public final void a() {
            ImmersionEpisodeListFragment.this.m0(new RecyclerView.ItemDecoration() { // from class: com.startshorts.androidplayer.ui.fragment.immersion.ImmersionEpisodeListFragment$initRecyclerView$1$1
                @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
                public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.State state) {
                    Intrinsics.checkNotNullParameter(outRect, "outRect");
                    Intrinsics.checkNotNullParameter(view, "view");
                    Intrinsics.checkNotNullParameter(parent, "parent");
                    Intrinsics.checkNotNullParameter(state, "state");
                    fk.z zVar = fk.z.f51786a;
                    outRect.set(zVar.m(), 0, zVar.m(), zVar.s());
                }
            });
            ImmersionEpisodeListFragment immersionEpisodeListFragment = ImmersionEpisodeListFragment.this;
            EpisodeListAdapter episodeListAdapter = new EpisodeListAdapter();
            episodeListAdapter.B(new d(episodeListAdapter));
            immersionEpisodeListFragment.k0(episodeListAdapter);
            ImmersionEpisodeListFragment.this.n0(new GridLayoutManager(ImmersionEpisodeListFragment.this.getContext(), 5));
            ImmersionEpisodeListFragment.super.i0();
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            a();
            return Unit.f60915a;
        }
    }

    /* compiled from: ImmersionEpisodeListFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d implements BaseAdapter.b<EpisodeDetail> {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ EpisodeListAdapter f46162b;

        d(EpisodeListAdapter episodeListAdapter) {
            this.f46162b = episodeListAdapter;
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.b
        /* renamed from: b */
        public void a(View v10, EpisodeDetail d10, int i10) {
            ImmersionActivity immersionActivity;
            boolean z10;
            Intrinsics.checkNotNullParameter(v10, "v");
            Intrinsics.checkNotNullParameter(d10, "d");
            BaseActivity j10 = ImmersionEpisodeListFragment.this.j();
            ImmersionEpisodeListDialog immersionEpisodeListDialog = null;
            if (j10 instanceof ImmersionActivity) {
                immersionActivity = (ImmersionActivity) j10;
            } else {
                immersionActivity = null;
            }
            if (immersionActivity != null) {
                z10 = immersionActivity.V4("EpisodeListDialog");
            } else {
                z10 = false;
            }
            if (z10) {
                return;
            }
            if (d10.isVirtual()) {
                if (immersionActivity != null) {
                    Toast.makeText(immersionActivity, ImmersionEpisodeListFragment.this.getString(R$string.episode_list_dialog_fragment_follow_reminder), 0).show();
                }
            } else if (d10.getPlaying()) {
                if (d10.isLocked()) {
                    Fragment parentFragment = ImmersionEpisodeListFragment.this.getParentFragment();
                    if (parentFragment instanceof ImmersionEpisodeListDialog) {
                        immersionEpisodeListDialog = (ImmersionEpisodeListDialog) parentFragment;
                    }
                    if (immersionEpisodeListDialog != null) {
                        immersionEpisodeListDialog.dismiss();
                    }
                    au.c.d().l(new ScrollToEpisodeEvent(d10, "short_menu"));
                }
            } else {
                if (d10.isLocked()) {
                    if (ImmersionEpisodeListFragment.this.D != 1 && i10 == 0) {
                        ImmersionEpisodeListFragment.this.M0().D(new a.b(ImmersionEpisodeListFragment.this.getContext(), d10, ImmersionEpisodeListFragment.this.D - 1, ImmersionEpisodeListFragment.this.E));
                        return;
                    }
                    EpisodeDetail item = this.f46162b.getItem(i10 - 1);
                    if (item != null && item.isLocked()) {
                        au.c.d().l(new ShowDisableSkipUnlockToastEvent());
                        return;
                    }
                }
                Fragment parentFragment2 = ImmersionEpisodeListFragment.this.getParentFragment();
                if (parentFragment2 instanceof ImmersionEpisodeListDialog) {
                    immersionEpisodeListDialog = (ImmersionEpisodeListDialog) parentFragment2;
                }
                if (immersionEpisodeListDialog != null) {
                    immersionEpisodeListDialog.dismiss();
                }
                au.c.d().l(new ScrollToEpisodeEvent(d10, "short_menu"));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ImmersionEpisodeListFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class e implements Observer, FunctionAdapter {

        /* renamed from: a  reason: collision with root package name */
        private final /* synthetic */ Function1 f46163a;

        e(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f46163a = function;
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
            return this.f46163a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f46163a.invoke(obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final EpisodeViewModel M0() {
        return (EpisodeViewModel) this.B.getValue();
    }

    private final ViewModelProvider N0() {
        return (ViewModelProvider) this.A.getValue();
    }

    private final int O0() {
        ImmersionActivity immersionActivity;
        FragmentActivity activity = getActivity();
        if (activity instanceof ImmersionActivity) {
            immersionActivity = (ImmersionActivity) activity;
        } else {
            immersionActivity = null;
        }
        if (immersionActivity != null) {
            return immersionActivity.B5();
        }
        return -1;
    }

    private final int P0() {
        ImmersionActivity immersionActivity;
        FragmentActivity activity = getActivity();
        if (activity instanceof ImmersionActivity) {
            immersionActivity = (ImmersionActivity) activity;
        } else {
            immersionActivity = null;
        }
        if (immersionActivity != null) {
            return immersionActivity.C5();
        }
        return -1;
    }

    private final void Q0(int i10) {
        List<EpisodeDetail> d02 = d0();
        if (d02 == null) {
            return;
        }
        synchronized (d02) {
            try {
                int i11 = 0;
                for (Object obj : d02) {
                    int i12 = i11 + 1;
                    if (i11 < 0) {
                        CollectionsKt.y();
                    }
                    EpisodeDetail episodeDetail = (EpisodeDetail) obj;
                    if (episodeDetail.getPlaying()) {
                        if (episodeDetail.getId() != i10) {
                            episodeDetail.setPlaying(false);
                            RecyclerView.Adapter<?> e02 = e0();
                            if (e02 != null) {
                                e02.notifyItemChanged(i11);
                            }
                        }
                    } else if (episodeDetail.getId() == i10) {
                        episodeDetail.setPlaying(true);
                        episodeDetail.setUnlocked();
                        RecyclerView.Adapter<?> e03 = e0();
                        if (e03 != null) {
                            e03.notifyItemChanged(i11);
                        }
                    }
                    i11 = i12;
                }
                Unit unit = Unit.f60915a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private final boolean R0() {
        int i10;
        int i11;
        Bundle arguments = getArguments();
        int i12 = 0;
        if (arguments != null) {
            i10 = arguments.getInt("shorts_id");
        } else {
            i10 = 0;
        }
        Bundle arguments2 = getArguments();
        if (arguments2 != null) {
            i11 = arguments2.getInt("page_number");
        } else {
            i11 = 0;
        }
        Bundle arguments3 = getArguments();
        if (arguments3 != null) {
            i12 = arguments3.getInt("page_size");
        }
        this.C = i10;
        this.D = i11;
        this.E = i12;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final EpisodeViewModel S0(final ImmersionEpisodeListFragment immersionEpisodeListFragment) {
        EpisodeViewModel episodeViewModel = (EpisodeViewModel) immersionEpisodeListFragment.N0().get(EpisodeViewModel.class);
        episodeViewModel.o().observe(immersionEpisodeListFragment, new e(new Function1() { // from class: com.startshorts.androidplayer.ui.fragment.immersion.x
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit T0;
                T0 = ImmersionEpisodeListFragment.T0(ImmersionEpisodeListFragment.this, (ApiErrorState) obj);
                return T0;
            }
        }));
        episodeViewModel.B().observe(immersionEpisodeListFragment, new e(new Function1() { // from class: com.startshorts.androidplayer.ui.fragment.immersion.y
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit U0;
                U0 = ImmersionEpisodeListFragment.U0(ImmersionEpisodeListFragment.this, (com.startshorts.androidplayer.viewmodel.immersion.b) obj);
                return U0;
            }
        }));
        return episodeViewModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit T0(ImmersionEpisodeListFragment immersionEpisodeListFragment, ApiErrorState apiErrorState) {
        boolean z10;
        if (apiErrorState.getState() == 1) {
            z10 = true;
        } else {
            z10 = false;
        }
        immersionEpisodeListFragment.x0(true, z10, apiErrorState.getMsg());
        if (apiErrorState.getState() == 1) {
            immersionEpisodeListFragment.M();
        } else {
            immersionEpisodeListFragment.O();
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit U0(ImmersionEpisodeListFragment immersionEpisodeListFragment, com.startshorts.androidplayer.viewmodel.immersion.b bVar) {
        List<EpisodeDetail> list;
        boolean z10;
        Boolean hasTrailer;
        ImmersionEpisodeListDialog immersionEpisodeListDialog = null;
        List<EpisodeDetail> list2 = null;
        if (bVar instanceof b.C0661b) {
            b.C0661b c0661b = (b.C0661b) bVar;
            ShortsListNewBean a10 = c0661b.a();
            if (a10 != null) {
                list = a10.getDramaListResponseList();
            } else {
                list = null;
            }
            immersionEpisodeListFragment.W0(list);
            ShortsListNewBean a11 = c0661b.a();
            if (a11 != null) {
                list2 = a11.getDramaListResponseList();
            }
            immersionEpisodeListFragment.y0(true, list2);
            ShortsListNewBean a12 = c0661b.a();
            if (a12 != null && (hasTrailer = a12.getHasTrailer()) != null) {
                z10 = hasTrailer.booleanValue();
            } else {
                z10 = false;
            }
            immersionEpisodeListFragment.F = z10;
        } else if (bVar instanceof b.a) {
            b.a aVar = (b.a) bVar;
            if (aVar.b()) {
                au.c.d().l(new ShowDisableSkipUnlockToastEvent());
            } else {
                Fragment parentFragment = immersionEpisodeListFragment.getParentFragment();
                if (parentFragment instanceof ImmersionEpisodeListDialog) {
                    immersionEpisodeListDialog = (ImmersionEpisodeListDialog) parentFragment;
                }
                if (immersionEpisodeListDialog != null) {
                    immersionEpisodeListDialog.dismiss();
                }
                au.c.d().l(new ScrollToEpisodeEvent(aVar.a(), "short_menu"));
            }
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ViewModelProvider V0(ImmersionEpisodeListFragment immersionEpisodeListFragment) {
        return new ViewModelProvider(immersionEpisodeListFragment);
    }

    private final void W0(List<EpisodeDetail> list) {
        boolean z10;
        boolean z11;
        List<EpisodeDetail> list2 = list;
        if (list2 != null && !list2.isEmpty()) {
            int P0 = P0();
            if (P0 == -1) {
                int O0 = O0();
                if (O0 != -1) {
                    for (EpisodeDetail episodeDetail : list) {
                        if (episodeDetail.getId() == O0) {
                            z11 = true;
                        } else {
                            z11 = false;
                        }
                        episodeDetail.setPlaying(z11);
                    }
                    return;
                }
                return;
            }
            for (EpisodeDetail episodeDetail2 : list) {
                if (episodeDetail2.getEpisodeNum() == P0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                episodeDetail2.setPlaying(z10);
            }
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateFragment
    public void R() {
        M0().D(new a.C0660a(this.C, this.D, this.E));
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.ListFragment, com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment
    public void i0() {
        FragmentExtKt.b(this, new b(), new c());
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.ListFragment, com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public int l() {
        return R$layout.fragment_episode_list;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public boolean o() {
        return true;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        if (!R0()) {
            return;
        }
        R();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.ListFragment, com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment, com.startshorts.androidplayer.ui.fragment.base.PageStateFragment, com.startshorts.androidplayer.ui.fragment.base.PermissionFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    @NotNull
    public String q() {
        return "ImmersionEpisodeListFragment";
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveEpisodePlayingEvent(@NotNull EpisodePlayingEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        r("receiveEpisodePlayingEvent -> " + event);
        if (this.C == event.getShortsId()) {
            Q0(event.getEpisodeId());
        }
    }

    /* compiled from: FragmentExt.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$4\n+ 2 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$2\n*L\n1#1,21:1\n17#2:22\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class c implements Function0<Unit> {
        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            a();
            return Unit.f60915a;
        }

        public final void a() {
        }
    }
}
