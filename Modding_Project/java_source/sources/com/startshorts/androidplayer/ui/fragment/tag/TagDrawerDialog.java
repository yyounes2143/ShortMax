package com.startshorts.androidplayer.ui.fragment.tag;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.GridLayoutManager;
import com.google.android.material.R;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.bottomsheet.BottomSheetDialog;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.adapter.base.FixLoadMoreAdapter;
import com.startshorts.androidplayer.adapter.base.SimpleViewHolder;
import com.startshorts.androidplayer.adapter.tag.TagDrawerAdapter;
import com.startshorts.androidplayer.bean.api.ApiErrorState;
import com.startshorts.androidplayer.bean.discover.DiscoverShorts;
import com.startshorts.androidplayer.bean.immersion.ImmersionParams;
import com.startshorts.androidplayer.bean.immersion.ImmersionShortsInfo;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.shorts.ShortsLabel;
import com.startshorts.androidplayer.bean.tag.TagFilterShortsListResult;
import com.startshorts.androidplayer.databinding.DialogFragmentTagDrawerListBinding;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.ui.activity.immersion.ImmersionActivity;
import com.startshorts.androidplayer.ui.fragment.base.BottomSheetPageStateFragment;
import com.startshorts.androidplayer.ui.fragment.tag.TagDrawerDialog;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.base.LoadMoreRecyclerView;
import com.startshorts.androidplayer.ui.view.discover.GridSpacingItemDecoration;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.viewmodel.tag.TagViewModel;
import com.startshorts.androidplayer.viewmodel.tag.a;
import com.startshorts.androidplayer.viewmodel.tag.b;
import java.util.List;
import jk.b0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import ms.f;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TagDrawerDialog.kt */
@Metadata
@SourceDebugExtension({"SMAP\nTagDrawerDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TagDrawerDialog.kt\ncom/startshorts/androidplayer/ui/fragment/tag/TagDrawerDialog\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,289:1\n1#2:290\n*E\n"})
/* loaded from: classes7.dex */
public final class TagDrawerDialog extends BottomSheetPageStateFragment<DialogFragmentTagDrawerListBinding> {
    @NotNull

    /* renamed from: w  reason: collision with root package name */
    public static final a f46856w = new a(null);
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private BaseEpisode f46859q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private ShortsLabel f46860r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private FixLoadMoreAdapter<DiscoverShorts> f46861s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f46862t;

    /* renamed from: o  reason: collision with root package name */
    private int f46857o = 1;
    @NotNull

    /* renamed from: p  reason: collision with root package name */
    private String f46858p = "";
    @NotNull

    /* renamed from: u  reason: collision with root package name */
    private final i f46863u = kotlin.c.b(new Function0() { // from class: yi.c
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            TagViewModel c02;
            c02 = TagDrawerDialog.c0(TagDrawerDialog.this);
            return c02;
        }
    });
    @NotNull

    /* renamed from: v  reason: collision with root package name */
    private final String f46864v = "TagDrawerDialog";

    /* compiled from: TagDrawerDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: TagDrawerDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends yd.d {
        b() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            TagDrawerDialog.this.dismiss();
        }
    }

    /* compiled from: TagDrawerDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends BottomSheetBehavior.BottomSheetCallback {
        c() {
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.BottomSheetCallback
        public void onSlide(View bottomSheet, float f10) {
            Intrinsics.checkNotNullParameter(bottomSheet, "bottomSheet");
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.BottomSheetCallback
        public void onStateChanged(View bottomSheet, int i10) {
            Intrinsics.checkNotNullParameter(bottomSheet, "bottomSheet");
            if (i10 != 3) {
                if (i10 == 4) {
                    b0.e(TagDrawerDialog.U(TagDrawerDialog.this).f39082a);
                    b0.l(TagDrawerDialog.U(TagDrawerDialog.this).f39085d);
                    return;
                }
                return;
            }
            b0.l(TagDrawerDialog.U(TagDrawerDialog.this).f39082a);
            b0.e(TagDrawerDialog.U(TagDrawerDialog.this).f39085d);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TagDrawerDialog.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d implements Observer, FunctionAdapter {

        /* renamed from: a  reason: collision with root package name */
        private final /* synthetic */ Function1 f46867a;

        d(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f46867a = function;
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
            return this.f46867a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f46867a.invoke(obj);
        }
    }

    public static final /* synthetic */ DialogFragmentTagDrawerListBinding U(TagDrawerDialog tagDrawerDialog) {
        return (DialogFragmentTagDrawerListBinding) tagDrawerDialog.n();
    }

    private final TagViewModel V() {
        return (TagViewModel) this.f46863u.getValue();
    }

    private final void X() {
        this.f46861s = new TagDrawerAdapter();
        GridLayoutManager gridLayoutManager = new GridLayoutManager(requireContext(), 3);
        gridLayoutManager.setSpanSizeLookup(new GridLayoutManager.SpanSizeLookup() { // from class: com.startshorts.androidplayer.ui.fragment.tag.TagDrawerDialog$initAdapter$1
            @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
            public int getSpanSize(int i10) {
                FixLoadMoreAdapter fixLoadMoreAdapter;
                fixLoadMoreAdapter = TagDrawerDialog.this.f46861s;
                Intrinsics.checkNotNull(fixLoadMoreAdapter, "null cannot be cast to non-null type com.startshorts.androidplayer.adapter.tag.TagDrawerAdapter");
                int itemViewType = ((TagDrawerAdapter) fixLoadMoreAdapter).getItemViewType(i10);
                if (itemViewType != 1 && itemViewType != 999999) {
                    return 1;
                }
                return 3;
            }
        });
        ((DialogFragmentTagDrawerListBinding) n()).f39084c.setLayoutManager(gridLayoutManager);
        ViewGroup.LayoutParams layoutParams = ((DialogFragmentTagDrawerListBinding) n()).f39084c.getLayoutParams();
        Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        marginLayoutParams.setMarginStart(fc.a.a(requireContext(), 12.0f));
        marginLayoutParams.setMarginEnd(fc.a.a(requireContext(), 12.0f));
        ((DialogFragmentTagDrawerListBinding) n()).f39084c.setLayoutParams(marginLayoutParams);
        ((DialogFragmentTagDrawerListBinding) n()).f39084c.addItemDecoration(new GridSpacingItemDecoration(3, fc.a.a(requireContext(), 8.0f), true));
        FixLoadMoreAdapter<DiscoverShorts> fixLoadMoreAdapter = this.f46861s;
        if (fixLoadMoreAdapter != null) {
            fixLoadMoreAdapter.f(new SimpleViewHolder.c() { // from class: yi.a
                @Override // com.startshorts.androidplayer.adapter.base.SimpleViewHolder.c
                public final void a(View view, int i10, Object obj) {
                    TagDrawerDialog.Y(TagDrawerDialog.this, view, i10, (DiscoverShorts) obj);
                }
            });
        }
        ((DialogFragmentTagDrawerListBinding) n()).f39084c.setLoadMoreListener(new LoadMoreRecyclerView.b() { // from class: yi.b
            @Override // com.startshorts.androidplayer.ui.view.base.LoadMoreRecyclerView.b
            public final void a() {
                TagDrawerDialog.Z(TagDrawerDialog.this);
            }
        });
        ((DialogFragmentTagDrawerListBinding) n()).f39084c.setAdapter(this.f46861s);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Y(TagDrawerDialog tagDrawerDialog, View view, int i10, DiscoverShorts discoverShorts) {
        int i11;
        if (discoverShorts == null) {
            return;
        }
        ImmersionActivity.a aVar = ImmersionActivity.V0;
        Context requireContext = tagDrawerDialog.requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        ImmersionParams immersionParams = new ImmersionParams();
        immersionParams.setFrom("tag_drawer_page");
        if (discoverShorts.getEpisodeNum() != 0) {
            i11 = 1;
        } else {
            i11 = 3;
        }
        immersionParams.setType(i11);
        if (discoverShorts.getEpisodeNum() != 0) {
            immersionParams.setEpisodeNum(discoverShorts.getEpisodeNum());
        }
        ImmersionShortsInfo immersionShortsInfo = new ImmersionShortsInfo();
        immersionShortsInfo.setShortsId(discoverShorts.getId());
        immersionShortsInfo.setShortPlayCode(discoverShorts.getShortPlayCode());
        immersionShortsInfo.setShortsName(discoverShorts.getShortPlayName());
        immersionShortsInfo.setCover(discoverShorts.getPicUrl());
        immersionShortsInfo.setUpack(discoverShorts.getUpack());
        immersionParams.setShortsInfo(immersionShortsInfo);
        Unit unit = Unit.f60915a;
        aVar.a(requireContext, immersionParams);
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString("from", tagDrawerDialog.f46858p);
        bundle.putString("reel_id", discoverShorts.getShortPlayCode());
        bundle.putInt("tab", 1);
        bundle.putString("type_id", "tag_drawer_page");
        EventManager.s0(eventManager, "tag_page_click", bundle, 0L, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Z(TagDrawerDialog tagDrawerDialog) {
        tagDrawerDialog.b0();
    }

    private final void a0() {
        String str;
        BaseTextView baseTextView = ((DialogFragmentTagDrawerListBinding) n()).f39086e;
        ShortsLabel shortsLabel = this.f46860r;
        if (shortsLabel != null) {
            str = shortsLabel.getLabelName();
        } else {
            str = null;
        }
        baseTextView.setText(str);
        ((DialogFragmentTagDrawerListBinding) n()).f39082a.setOnClickListener(new b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final TagViewModel c0(final TagDrawerDialog tagDrawerDialog) {
        TagViewModel tagViewModel = (TagViewModel) new ViewModelProvider(tagDrawerDialog).get(TagViewModel.class);
        tagViewModel.o().observe(tagDrawerDialog.requireActivity(), new d(new Function1() { // from class: yi.d
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit d02;
                d02 = TagDrawerDialog.d0(TagDrawerDialog.this, (ApiErrorState) obj);
                return d02;
            }
        }));
        tagViewModel.C().observe(tagDrawerDialog, new d(new Function1() { // from class: yi.e
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit e02;
                e02 = TagDrawerDialog.e0(TagDrawerDialog.this, (com.startshorts.androidplayer.viewmodel.tag.b) obj);
                return e02;
            }
        }));
        return tagViewModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit d0(TagDrawerDialog tagDrawerDialog, ApiErrorState apiErrorState) {
        tagDrawerDialog.D();
        if (apiErrorState.getState() == 1) {
            tagDrawerDialog.M();
        } else {
            tagDrawerDialog.N(apiErrorState.getMsg());
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit e0(TagDrawerDialog tagDrawerDialog, com.startshorts.androidplayer.viewmodel.tag.b bVar) {
        String str = null;
        List<DiscoverShorts> list = null;
        List<DiscoverShorts> list2 = null;
        if (bVar instanceof b.c) {
            b.c cVar = (b.c) bVar;
            if (cVar.a()) {
                tagDrawerDialog.f46857o = 1;
                tagDrawerDialog.D();
                FixLoadMoreAdapter<DiscoverShorts> fixLoadMoreAdapter = tagDrawerDialog.f46861s;
                if (fixLoadMoreAdapter != null) {
                    fixLoadMoreAdapter.c();
                }
                FixLoadMoreAdapter<DiscoverShorts> fixLoadMoreAdapter2 = tagDrawerDialog.f46861s;
                if (fixLoadMoreAdapter2 != null) {
                    TagFilterShortsListResult b10 = cVar.b();
                    if (b10 != null) {
                        list = b10.getList();
                    }
                    fixLoadMoreAdapter2.b(list);
                }
                FixLoadMoreAdapter<DiscoverShorts> fixLoadMoreAdapter3 = tagDrawerDialog.f46861s;
                if (fixLoadMoreAdapter3 != null && fixLoadMoreAdapter3.g() == 0) {
                    tagDrawerDialog.K();
                    FixLoadMoreAdapter<DiscoverShorts> fixLoadMoreAdapter4 = tagDrawerDialog.f46861s;
                    if (fixLoadMoreAdapter4 != null) {
                        fixLoadMoreAdapter4.n(true);
                    }
                } else {
                    tagDrawerDialog.C();
                    FixLoadMoreAdapter<DiscoverShorts> fixLoadMoreAdapter5 = tagDrawerDialog.f46861s;
                    if (fixLoadMoreAdapter5 != null) {
                        fixLoadMoreAdapter5.n(cVar.c());
                    }
                    FixLoadMoreAdapter<DiscoverShorts> fixLoadMoreAdapter6 = tagDrawerDialog.f46861s;
                    if (fixLoadMoreAdapter6 != null) {
                        fixLoadMoreAdapter6.k(cVar.c());
                    }
                }
                if (cVar.c()) {
                    FixLoadMoreAdapter<DiscoverShorts> fixLoadMoreAdapter7 = tagDrawerDialog.f46861s;
                    if (fixLoadMoreAdapter7 != null) {
                        DiscoverShorts discoverShorts = new DiscoverShorts();
                        discoverShorts.setItemType(1);
                        fixLoadMoreAdapter7.a(discoverShorts);
                    }
                    tagDrawerDialog.f46862t = true;
                }
            } else {
                tagDrawerDialog.D();
                FixLoadMoreAdapter<DiscoverShorts> fixLoadMoreAdapter8 = tagDrawerDialog.f46861s;
                if (fixLoadMoreAdapter8 != null) {
                    TagFilterShortsListResult b11 = cVar.b();
                    if (b11 != null) {
                        list2 = b11.getList();
                    }
                    fixLoadMoreAdapter8.b(list2);
                }
                FixLoadMoreAdapter<DiscoverShorts> fixLoadMoreAdapter9 = tagDrawerDialog.f46861s;
                if (fixLoadMoreAdapter9 != null && fixLoadMoreAdapter9.g() == 0) {
                    tagDrawerDialog.K();
                    FixLoadMoreAdapter<DiscoverShorts> fixLoadMoreAdapter10 = tagDrawerDialog.f46861s;
                    if (fixLoadMoreAdapter10 != null) {
                        fixLoadMoreAdapter10.n(true);
                    }
                } else {
                    tagDrawerDialog.C();
                    FixLoadMoreAdapter<DiscoverShorts> fixLoadMoreAdapter11 = tagDrawerDialog.f46861s;
                    if (fixLoadMoreAdapter11 != null) {
                        fixLoadMoreAdapter11.n(cVar.c());
                    }
                    FixLoadMoreAdapter<DiscoverShorts> fixLoadMoreAdapter12 = tagDrawerDialog.f46861s;
                    if (fixLoadMoreAdapter12 != null) {
                        fixLoadMoreAdapter12.k(cVar.c());
                    }
                }
                if (cVar.c()) {
                    FixLoadMoreAdapter<DiscoverShorts> fixLoadMoreAdapter13 = tagDrawerDialog.f46861s;
                    if (fixLoadMoreAdapter13 != null) {
                        DiscoverShorts discoverShorts2 = new DiscoverShorts();
                        discoverShorts2.setItemType(1);
                        fixLoadMoreAdapter13.a(discoverShorts2);
                    }
                    tagDrawerDialog.f46862t = true;
                }
            }
        } else if (bVar instanceof b.a) {
            b.a aVar = (b.a) bVar;
            if (!aVar.b()) {
                tagDrawerDialog.D();
                ApiErrorState a10 = aVar.a();
                if (a10 != null && a10.getState() == 1) {
                    tagDrawerDialog.M();
                } else {
                    ApiErrorState a11 = aVar.a();
                    if (a11 != null) {
                        str = a11.getMsg();
                    }
                    tagDrawerDialog.N(str);
                }
            }
        }
        return Unit.f60915a;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BottomSheetPageStateFragment
    public void J() {
        f0();
    }

    public final void W(@NotNull ShortsLabel shortsLabel, @NotNull BaseEpisode episode, @NotNull String from) {
        Intrinsics.checkNotNullParameter(shortsLabel, "shortsLabel");
        Intrinsics.checkNotNullParameter(episode, "episode");
        Intrinsics.checkNotNullParameter(from, "from");
        this.f46860r = shortsLabel;
        this.f46859q = episode;
        this.f46858p = from;
    }

    public final void b0() {
        Long l10;
        Integer id2;
        if (this.f46862t) {
            return;
        }
        this.f46857o++;
        TagViewModel V = V();
        ShortsLabel shortsLabel = this.f46860r;
        if (shortsLabel != null && (id2 = shortsLabel.getId()) != null) {
            l10 = Long.valueOf(id2.intValue());
        } else {
            l10 = null;
        }
        V.G(new a.C0694a(l10, 1, this.f46857o, 15));
    }

    public final void f0() {
        Long l10;
        Integer id2;
        TagViewModel V = V();
        ShortsLabel shortsLabel = this.f46860r;
        if (shortsLabel != null && (id2 = shortsLabel.getId()) != null) {
            l10 = Long.valueOf(id2.intValue());
        } else {
            l10 = null;
        }
        V.G(new a.C0694a(l10, 1, 1, 15));
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment
    public float l() {
        return 0.0f;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment
    public int m() {
        return R$layout.dialog_fragment_tag_drawer_list;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment
    public boolean o() {
        return false;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        BottomSheetDialog bottomSheetDialog;
        super.onStart();
        Dialog dialog = getDialog();
        View view = null;
        if (dialog instanceof BottomSheetDialog) {
            bottomSheetDialog = (BottomSheetDialog) dialog;
        } else {
            bottomSheetDialog = null;
        }
        if (bottomSheetDialog != null) {
            view = bottomSheetDialog.findViewById(R.id.design_bottom_sheet);
        }
        if (view != null) {
            view.getLayoutParams().height = -1;
            BottomSheetBehavior from = BottomSheetBehavior.from(view);
            Intrinsics.checkNotNullExpressionValue(from, "from(...)");
            from.setFitToContents(false);
            from.setPeekHeight((DeviceUtil.f48146a.F() * 3) / 5);
            from.setExpandedOffset(0);
            from.setState(4);
            from.addBottomSheetCallback(new c());
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BottomSheetPageStateFragment, com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Integer id2;
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        a0();
        X();
        f0();
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle2 = new Bundle();
        bundle2.putString("from", this.f46858p);
        ShortsLabel shortsLabel = this.f46860r;
        if (shortsLabel != null && (id2 = shortsLabel.getId()) != null) {
            bundle2.putInt("tag_id", id2.intValue());
        }
        bundle2.putString("type_id", "tag_drawer_page");
        BaseEpisode baseEpisode = this.f46859q;
        if (baseEpisode != null) {
            bundle2.putInt("reel_id", baseEpisode.getId());
        }
        BaseEpisode baseEpisode2 = this.f46859q;
        if (baseEpisode2 != null) {
            bundle2.putInt("episode", baseEpisode2.getEpisodeNum());
        }
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "tag_page_show", bundle2, 0L, 4, null);
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BottomSheetPageStateFragment, com.startshorts.androidplayer.ui.fragment.base.BaseBottomSheetDialogFragment
    @NotNull
    public String p() {
        return this.f46864v;
    }
}
