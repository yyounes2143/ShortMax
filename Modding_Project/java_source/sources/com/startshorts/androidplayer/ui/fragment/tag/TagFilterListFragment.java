package com.startshorts.androidplayer.ui.fragment.tag;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.adapter.base.BaseAdapter;
import com.startshorts.androidplayer.adapter.tag.TagFilterListAdapter;
import com.startshorts.androidplayer.bean.api.ApiErrorState;
import com.startshorts.androidplayer.bean.discover.DiscoverShorts;
import com.startshorts.androidplayer.bean.immersion.ImmersionParams;
import com.startshorts.androidplayer.bean.immersion.ImmersionShortsInfo;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.shorts.ShortsLabel;
import com.startshorts.androidplayer.bean.tag.TagFilterShortsListResult;
import com.startshorts.androidplayer.databinding.FragmentTagFilterListBinding;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.ui.activity.immersion.ImmersionActivity;
import com.startshorts.androidplayer.ui.fragment.base.RefreshFragment;
import com.startshorts.androidplayer.ui.fragment.tag.TagFilterListFragment;
import com.startshorts.androidplayer.viewmodel.tag.TagViewModel;
import com.startshorts.androidplayer.viewmodel.tag.a;
import com.startshorts.androidplayer.viewmodel.tag.b;
import java.util.List;
import jk.l;
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
/* compiled from: TagFilterListFragment.kt */
@Metadata
@SourceDebugExtension({"SMAP\nTagFilterListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TagFilterListFragment.kt\ncom/startshorts/androidplayer/ui/fragment/tag/TagFilterListFragment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,198:1\n1#2:199\n*E\n"})
/* loaded from: classes7.dex */
public final class TagFilterListFragment extends RefreshFragment<DiscoverShorts, FragmentTagFilterListBinding> {
    @NotNull
    public static final a L = new a(null);
    @Nullable
    private String F;
    @Nullable
    private BaseEpisode H;
    @Nullable
    private DiscoverShorts I;
    @Nullable
    private ShortsLabel J;
    private int G = 1;
    @NotNull
    private final i K = kotlin.c.b(new Function0() { // from class: yi.h
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            TagViewModel j12;
            j12 = TagFilterListFragment.j1(TagFilterListFragment.this);
            return j12;
        }
    });

    /* compiled from: TagFilterListFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final TagFilterListFragment a(@Nullable BaseEpisode baseEpisode, @Nullable DiscoverShorts discoverShorts, @NotNull ShortsLabel shortsLabel, int i10, @NotNull String from) {
            String str;
            Intrinsics.checkNotNullParameter(shortsLabel, "shortsLabel");
            Intrinsics.checkNotNullParameter(from, "from");
            TagFilterListFragment tagFilterListFragment = new TagFilterListFragment();
            Bundle bundle = new Bundle();
            String str2 = null;
            if (baseEpisode != null) {
                str = l.d(baseEpisode);
            } else {
                str = null;
            }
            bundle.putString("episode_param", str);
            if (discoverShorts != null) {
                str2 = l.d(discoverShorts);
            }
            bundle.putString("shorts_param", str2);
            bundle.putString("shorts_label_param", l.d(shortsLabel));
            bundle.putInt("tab_type", i10);
            bundle.putString("from", from);
            tagFilterListFragment.setArguments(bundle);
            return tagFilterListFragment;
        }

        private a() {
        }
    }

    /* compiled from: TagFilterListFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b implements BaseAdapter.b<DiscoverShorts> {
        b() {
        }

        @Override // com.startshorts.androidplayer.adapter.base.BaseAdapter.b
        /* renamed from: b */
        public void a(View v10, DiscoverShorts discoverShorts, int i10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            Intrinsics.checkNotNullParameter(discoverShorts, "discoverShorts");
            TagFilterListFragment.this.l1(discoverShorts);
            EventManager eventManager = EventManager.f42463a;
            Bundle bundle = new Bundle();
            TagFilterListFragment tagFilterListFragment = TagFilterListFragment.this;
            bundle.putString("from", tagFilterListFragment.F);
            bundle.putInt("tab", tagFilterListFragment.G);
            bundle.putString("type_id", "tag_fullscreen_page");
            BaseEpisode baseEpisode = tagFilterListFragment.H;
            if (baseEpisode != null) {
                bundle.putInt("reel_id", baseEpisode.getId());
            }
            DiscoverShorts discoverShorts2 = tagFilterListFragment.I;
            if (discoverShorts2 != null) {
                bundle.putInt("reel_id", discoverShorts2.getId());
            }
            Unit unit = Unit.f60915a;
            EventManager.s0(eventManager, "tag_page_click", bundle, 0L, 4, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TagFilterListFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c implements Observer, FunctionAdapter {

        /* renamed from: a  reason: collision with root package name */
        private final /* synthetic */ Function1 f46888a;

        c(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f46888a = function;
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
            return this.f46888a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f46888a.invoke(obj);
        }
    }

    private final TagViewModel h1() {
        return (TagViewModel) this.K.getValue();
    }

    private final boolean i1() {
        String str;
        int i10;
        ShortsLabel shortsLabel;
        BaseEpisode baseEpisode;
        String string;
        String string2;
        String string3;
        Bundle arguments = getArguments();
        DiscoverShorts discoverShorts = null;
        if (arguments != null) {
            str = arguments.getString("from");
        } else {
            str = null;
        }
        this.F = str;
        Bundle arguments2 = getArguments();
        if (arguments2 != null) {
            i10 = arguments2.getInt("tab_type", 1);
        } else {
            i10 = 1;
        }
        this.G = i10;
        Bundle arguments3 = getArguments();
        if (arguments3 != null && (string3 = arguments3.getString("shorts_label_param")) != null) {
            shortsLabel = (ShortsLabel) l.b(string3, ShortsLabel.class);
        } else {
            shortsLabel = null;
        }
        Bundle arguments4 = getArguments();
        if (arguments4 != null && (string2 = arguments4.getString("episode_param")) != null) {
            baseEpisode = (BaseEpisode) l.b(string2, BaseEpisode.class);
        } else {
            baseEpisode = null;
        }
        this.H = baseEpisode;
        Bundle arguments5 = getArguments();
        if (arguments5 != null && (string = arguments5.getString("shorts_param")) != null) {
            discoverShorts = (DiscoverShorts) l.b(string, DiscoverShorts.class);
        }
        this.I = discoverShorts;
        if (shortsLabel == null) {
            g("shortsLabel is null");
            h();
            return false;
        }
        this.J = shortsLabel;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final TagViewModel j1(final TagFilterListFragment tagFilterListFragment) {
        TagViewModel tagViewModel = (TagViewModel) new ViewModelProvider(tagFilterListFragment).get(TagViewModel.class);
        tagViewModel.C().observe(tagFilterListFragment, new c(new Function1() { // from class: yi.i
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit k12;
                k12 = TagFilterListFragment.k1(TagFilterListFragment.this, (com.startshorts.androidplayer.viewmodel.tag.b) obj);
                return k12;
            }
        }));
        return tagViewModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit k1(TagFilterListFragment tagFilterListFragment, com.startshorts.androidplayer.viewmodel.tag.b bVar) {
        String str;
        List<DiscoverShorts> list = null;
        if (bVar instanceof b.c) {
            TagFilterShortsListResult b10 = ((b.c) bVar).b();
            if (b10 != null) {
                list = b10.getList();
            }
            RefreshFragment.S0(tagFilterListFragment, list, false, null, 6, null);
        } else if (bVar instanceof b.a) {
            b.a aVar = (b.a) bVar;
            ApiErrorState a10 = aVar.a();
            boolean z10 = false;
            if (a10 != null && a10.getState() == 1) {
                z10 = true;
            }
            ApiErrorState a11 = aVar.a();
            if (a11 != null) {
                str = a11.getMsg();
            } else {
                str = null;
            }
            tagFilterListFragment.R0(null, z10, str);
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void l1(DiscoverShorts discoverShorts) {
        int i10;
        ImmersionActivity.a aVar = ImmersionActivity.V0;
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        ImmersionParams immersionParams = new ImmersionParams();
        immersionParams.setFrom("tag_fullscreen_page");
        if (discoverShorts.getEpisodeNum() != 0) {
            i10 = 1;
        } else {
            i10 = 3;
        }
        immersionParams.setType(i10);
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
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateFragment
    public int G() {
        return R$layout.viewstub_page_state_empty;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateFragment
    public void Q() {
        h();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.RefreshFragment
    public void T0(int i10, int i11) {
        Long l10;
        Integer id2;
        super.T0(i10, i11);
        TagViewModel h12 = h1();
        ShortsLabel shortsLabel = this.J;
        if (shortsLabel != null && (id2 = shortsLabel.getId()) != null) {
            l10 = Long.valueOf(id2.intValue());
        } else {
            l10 = null;
        }
        h12.G(new a.C0694a(l10, this.G, i10, i11));
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.RefreshFragment
    public void U0(int i10, int i11) {
        Long l10;
        Integer id2;
        super.U0(i10, i11);
        TagViewModel h12 = h1();
        ShortsLabel shortsLabel = this.J;
        if (shortsLabel != null && (id2 = shortsLabel.getId()) != null) {
            l10 = Long.valueOf(id2.intValue());
        } else {
            l10 = null;
        }
        h12.G(new a.C0694a(l10, this.G, 1, i11));
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment
    public boolean a0() {
        return false;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.RefreshFragment, com.startshorts.androidplayer.ui.fragment.base.ListFragment, com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment
    public void i0() {
        TagFilterListAdapter tagFilterListAdapter = new TagFilterListAdapter();
        tagFilterListAdapter.B(new b());
        k0(tagFilterListAdapter);
        super.i0();
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.RefreshFragment, com.startshorts.androidplayer.ui.fragment.base.ListFragment, com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public int l() {
        return R$layout.fragment_tag_filter_list;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public boolean o() {
        return false;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.RefreshFragment, com.startshorts.androidplayer.ui.fragment.base.PageStateFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        if (!i1()) {
            return;
        }
        super.onViewCreated(view, bundle);
        W0(false);
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public boolean p() {
        return true;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.RefreshFragment, com.startshorts.androidplayer.ui.fragment.base.ListFragment, com.startshorts.androidplayer.ui.fragment.base.RecyclerViewFragment, com.startshorts.androidplayer.ui.fragment.base.PageStateFragment, com.startshorts.androidplayer.ui.fragment.base.PermissionFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    @NotNull
    public String q() {
        return "TagFilterListFragment";
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0066  */
    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void t() {
        /*
            r7 = this;
            super.t()
            com.startshorts.androidplayer.manager.event.EventManager r0 = com.startshorts.androidplayer.manager.event.EventManager.f42463a
            android.os.Bundle r2 = new android.os.Bundle
            r2.<init>()
            java.lang.String r1 = "from"
            java.lang.String r3 = r7.F
            r2.putString(r1, r3)
            com.startshorts.androidplayer.bean.shorts.ShortsLabel r1 = r7.J
            if (r1 == 0) goto L24
            java.lang.Integer r1 = r1.getId()
            if (r1 == 0) goto L24
            int r1 = r1.intValue()
            java.lang.String r3 = "tag_id"
            r2.putInt(r3, r1)
        L24:
            java.lang.String r1 = "type_id"
            java.lang.String r3 = "tag_fullscreen_page"
            r2.putString(r1, r3)
            com.startshorts.androidplayer.bean.discover.DiscoverShorts r1 = r7.I
            r3 = 0
            if (r1 == 0) goto L39
            int r1 = r1.getId()
        L34:
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            goto L43
        L39:
            com.startshorts.androidplayer.bean.shorts.BaseEpisode r1 = r7.H
            if (r1 == 0) goto L42
            int r1 = r1.getId()
            goto L34
        L42:
            r1 = r3
        L43:
            if (r1 == 0) goto L4e
            int r1 = r1.intValue()
            java.lang.String r4 = "reel_id"
            r2.putInt(r4, r1)
        L4e:
            com.startshorts.androidplayer.bean.discover.DiscoverShorts r1 = r7.I
            if (r1 == 0) goto L5b
            int r1 = r1.getEpisodeNum()
        L56:
            java.lang.Integer r3 = java.lang.Integer.valueOf(r1)
            goto L64
        L5b:
            com.startshorts.androidplayer.bean.shorts.BaseEpisode r1 = r7.H
            if (r1 == 0) goto L64
            int r1 = r1.getEpisodeNum()
            goto L56
        L64:
            if (r3 == 0) goto L6f
            int r1 = r3.intValue()
            java.lang.String r3 = "episode"
            r2.putInt(r3, r1)
        L6f:
            kotlin.Unit r1 = kotlin.Unit.f60915a
            r5 = 4
            r6 = 0
            java.lang.String r1 = "tag_page_show"
            r3 = 0
            com.startshorts.androidplayer.manager.event.EventManager.s0(r0, r1, r2, r3, r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.ui.fragment.tag.TagFilterListFragment.t():void");
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.ListFragment
    public int v0() {
        return 15;
    }
}
