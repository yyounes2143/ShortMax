package com.startshorts.androidplayer.ui.fragment.discover;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.LongSparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.util.LongSparseArrayKt;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.flexbox.FlexboxLayout;
import com.google.android.material.appbar.AppBarLayout;
import com.ss.ttm.player.MediaPlayer;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.adapter.base.FixLoadMoreAdapter;
import com.startshorts.androidplayer.adapter.base.SimpleViewHolder;
import com.startshorts.androidplayer.adapter.discover.DiscoverModuleAdapter;
import com.startshorts.androidplayer.adapter.library.LibraryHomeAdapter;
import com.startshorts.androidplayer.adapter.library.LibraryHomeGridAdapter;
import com.startshorts.androidplayer.bean.act.ActResource;
import com.startshorts.androidplayer.bean.api.ApiErrorState;
import com.startshorts.androidplayer.bean.discover.DiscoverModule;
import com.startshorts.androidplayer.bean.discover.DiscoverRanking;
import com.startshorts.androidplayer.bean.discover.DiscoverResource;
import com.startshorts.androidplayer.bean.discover.DiscoverTab;
import com.startshorts.androidplayer.bean.discover.ModuleInfo;
import com.startshorts.androidplayer.bean.discover.VideoPreviewInfo;
import com.startshorts.androidplayer.bean.eventbus.RefreshContinuePlayLayoutEvent;
import com.startshorts.androidplayer.bean.eventbus.RefreshEpisodeNumEvent;
import com.startshorts.androidplayer.bean.immersion.ImmersionParams;
import com.startshorts.androidplayer.bean.immersion.ImmersionShortsInfo;
import com.startshorts.androidplayer.bean.library.LibraryCategory;
import com.startshorts.androidplayer.bean.library.LibraryClass;
import com.startshorts.androidplayer.bean.shorts.BaseShorts;
import com.startshorts.androidplayer.bean.shorts.ShortsLabel;
import com.startshorts.androidplayer.databinding.FragmentDiscoverLibraryBinding;
import com.startshorts.androidplayer.databinding.ItemLibraryClassifyBinding;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.ui.activity.immersion.ImmersionActivity;
import com.startshorts.androidplayer.ui.fragment.base.PageStateFragment;
import com.startshorts.androidplayer.ui.fragment.discover.DiscoverLibraryFragment;
import com.startshorts.androidplayer.ui.fragment.discover.DiscoverTabFragment;
import com.startshorts.androidplayer.ui.fragment.library.LibraryLabelFragment;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.base.LoadMoreRecyclerView;
import com.startshorts.androidplayer.ui.view.base.MaxHeightFlexBoxLayout;
import com.startshorts.androidplayer.ui.view.discover.GridSpacingItemDecoration;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.utils.ext.FragmentExtKt;
import com.startshorts.androidplayer.viewmodel.library.LibraryViewModel;
import com.startshorts.androidplayer.viewmodel.library.a;
import com.startshorts.androidplayer.viewmodel.library.b;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DiscoverLibraryFragment.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDiscoverLibraryFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverLibraryFragment.kt\ncom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ViewGroup.kt\nandroidx/core/view/ViewGroupKt\n+ 4 LongSparseArray.kt\nandroidx/core/util/LongSparseArrayKt\n+ 5 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,792:1\n1863#2,2:793\n360#2,7:795\n1863#2,2:804\n1863#2,2:806\n360#2,7:808\n1863#2,2:817\n1863#2:821\n1864#2:824\n184#3,2:802\n184#3,2:815\n184#3,2:819\n53#3,4:825\n53#3,2:829\n56#3:833\n42#4:822\n42#4:823\n42#4:831\n42#4:832\n77#4,4:834\n42#4:838\n77#4,4:839\n24#4:843\n42#4:844\n82#5:845\n15#5,9:847\n83#5:856\n1#6:846\n*S KotlinDebug\n*F\n+ 1 DiscoverLibraryFragment.kt\ncom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment\n*L\n452#1:793,2\n470#1:795,7\n487#1:804,2\n523#1:806,2\n541#1:808,7\n558#1:817,2\n609#1:821\n609#1:824\n485#1:802,2\n556#1:815,2\n607#1:819,2\n668#1:825,4\n688#1:829,2\n688#1:833\n612#1:822\n613#1:823\n691#1:831\n692#1:832\n699#1:834,4\n715#1:838\n719#1:839,4\n751#1:843\n751#1:844\n756#1:845\n763#1:847,9\n756#1:856\n756#1:846\n*E\n"})
/* loaded from: classes7.dex */
public final class DiscoverLibraryFragment extends PageStateFragment<FragmentDiscoverLibraryBinding> {
    @NotNull
    public static final a A = new a(null);
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private FixLoadMoreAdapter<BaseShorts> f45896o;

    /* renamed from: s  reason: collision with root package name */
    private boolean f45900s;
    @Nullable

    /* renamed from: t  reason: collision with root package name */
    private DiscoverTab f45901t;

    /* renamed from: u  reason: collision with root package name */
    private boolean f45902u;
    @Nullable

    /* renamed from: x  reason: collision with root package name */
    private DiscoverTabFragment.b f45905x;

    /* renamed from: p  reason: collision with root package name */
    private long f45897p = 3;

    /* renamed from: q  reason: collision with root package name */
    private long f45898q = 3;
    @NotNull

    /* renamed from: r  reason: collision with root package name */
    private final LongSparseArray<LibraryCategory> f45899r = new LongSparseArray<>();
    @NotNull

    /* renamed from: v  reason: collision with root package name */
    private final ms.i f45903v = kotlin.c.b(new Function0() { // from class: com.startshorts.androidplayer.ui.fragment.discover.c0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            LibraryViewModel N0;
            N0 = DiscoverLibraryFragment.N0(DiscoverLibraryFragment.this);
            return N0;
        }
    });
    @NotNull

    /* renamed from: w  reason: collision with root package name */
    private final ms.i f45904w = kotlin.c.b(new Function0() { // from class: com.startshorts.androidplayer.ui.fragment.discover.d0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            boolean F0;
            F0 = DiscoverLibraryFragment.F0(DiscoverLibraryFragment.this);
            return Boolean.valueOf(F0);
        }
    });
    @NotNull

    /* renamed from: y  reason: collision with root package name */
    private String f45906y = "";

    /* renamed from: z  reason: collision with root package name */
    private final int f45907z = R$layout.fragment_discover_library;

    /* compiled from: DiscoverLibraryFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: DiscoverLibraryFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends yd.d {
        c() {
            super(0L, 1, null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit c(DiscoverLibraryFragment discoverLibraryFragment, long j10, long j11, LongSparseArray classMap) {
            Intrinsics.checkNotNullParameter(classMap, "classMap");
            discoverLibraryFragment.f45898q = j11;
            discoverLibraryFragment.f45899r.clear();
            LongSparseArrayKt.putAll(discoverLibraryFragment.f45899r, classMap);
            discoverLibraryFragment.H0();
            discoverLibraryFragment.I0();
            discoverLibraryFragment.J0();
            discoverLibraryFragment.G0(0, 1);
            discoverLibraryFragment.E0("filter_pop");
            return Unit.f60915a;
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            LibraryClass libClass = DiscoverLibraryFragment.this.t0().F().getLibClass();
            if (libClass == null) {
                return;
            }
            LibraryLabelFragment libraryLabelFragment = new LibraryLabelFragment();
            FragmentManager childFragmentManager = DiscoverLibraryFragment.this.getChildFragmentManager();
            Intrinsics.checkNotNullExpressionValue(childFragmentManager, "getChildFragmentManager(...)");
            long j10 = DiscoverLibraryFragment.this.f45897p;
            long j11 = DiscoverLibraryFragment.this.f45898q;
            LongSparseArray<LibraryCategory> longSparseArray = DiscoverLibraryFragment.this.f45899r;
            final DiscoverLibraryFragment discoverLibraryFragment = DiscoverLibraryFragment.this;
            libraryLabelFragment.P(childFragmentManager, libClass, j10, j11, longSparseArray, new at.n() { // from class: com.startshorts.androidplayer.ui.fragment.discover.h0
                @Override // at.n
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    Unit c10;
                    c10 = DiscoverLibraryFragment.c.c(DiscoverLibraryFragment.this, ((Long) obj).longValue(), ((Long) obj2).longValue(), (LongSparseArray) obj3);
                    return c10;
                }
            });
            EventManager.s0(EventManager.f42463a, "discover_library_pop_click", null, 0L, 6, null);
        }
    }

    /* compiled from: DiscoverLibraryFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d extends yd.d {

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ LibraryCategory f45911f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(LibraryCategory libraryCategory) {
            super(0L, 1, null);
            this.f45911f = libraryCategory;
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            if (DiscoverLibraryFragment.this.f45898q != this.f45911f.getId()) {
                DiscoverLibraryFragment.this.f45898q = this.f45911f.getId();
                DiscoverLibraryFragment.this.I0();
                DiscoverLibraryFragment.this.G0(0, 1);
                DiscoverLibraryFragment.this.E0("library_top");
            }
        }
    }

    /* compiled from: DiscoverLibraryFragment.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nDiscoverLibraryFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverLibraryFragment.kt\ncom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment$loadLabelClass$1$1\n+ 2 LongSparseArray.kt\nandroidx/core/util/LongSparseArrayKt\n*L\n1#1,792:1\n42#2:793\n42#2:794\n*S KotlinDebug\n*F\n+ 1 DiscoverLibraryFragment.kt\ncom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment$loadLabelClass$1$1\n*L\n626#1:793\n633#1:794\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class e extends yd.d {

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ LibraryCategory f45912e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ DiscoverLibraryFragment f45913f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ Ref.ObjectRef<LibraryCategory> f45914g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(LibraryCategory libraryCategory, DiscoverLibraryFragment discoverLibraryFragment, Ref.ObjectRef<LibraryCategory> objectRef) {
            super(0L, 1, null);
            this.f45912e = libraryCategory;
            this.f45913f = discoverLibraryFragment;
            this.f45914g = objectRef;
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            if (this.f45912e.getId() == 0) {
                if (this.f45913f.f45899r.indexOfKey(0L) < 0) {
                    this.f45913f.f45899r.clear();
                    this.f45913f.f45899r.put(0L, this.f45914g.element);
                    this.f45913f.G0(0, 1);
                    this.f45913f.E0("library_top");
                }
            } else {
                if (this.f45913f.f45899r.indexOfKey(this.f45912e.getId()) >= 0) {
                    this.f45913f.f45899r.remove(this.f45912e.getId());
                    if (this.f45913f.f45899r.size() == 0) {
                        this.f45913f.f45899r.put(0L, this.f45914g.element);
                    }
                } else if (this.f45913f.f45899r.size() >= 3) {
                    this.f45913f.w(R$string.library_activity_label_limit);
                    return;
                } else {
                    this.f45913f.f45899r.put(this.f45912e.getId(), this.f45912e);
                    this.f45913f.f45899r.remove(0L);
                }
                this.f45913f.G0(0, 1);
                this.f45913f.E0("library_top");
            }
            this.f45913f.J0();
        }
    }

    /* compiled from: FragmentExt.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 DiscoverLibraryFragment.kt\ncom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment\n*L\n1#1,20:1\n764#2,5:21\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class f implements Function0<Unit> {
        public f() {
        }

        public final void a() {
            DiscoverLibraryFragment.this.H0();
            DiscoverLibraryFragment.this.I0();
            DiscoverLibraryFragment.this.J0();
            DiscoverLibraryFragment.this.G0(0, 1);
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            a();
            return Unit.f60915a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DiscoverLibraryFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class h implements Observer, FunctionAdapter {

        /* renamed from: a  reason: collision with root package name */
        private final /* synthetic */ Function1 f45916a;

        h(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f45916a = function;
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
            return this.f45916a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f45916a.invoke(obj);
        }
    }

    private final void A0(LibraryClass libraryClass) {
        if (libraryClass == null) {
            return;
        }
        ArrayList<LibraryCategory> contentList = libraryClass.getContentList();
        if (contentList == null) {
            contentList = new ArrayList<>();
        }
        ArrayList<LibraryCategory> classList = libraryClass.getClassList();
        if (classList == null) {
            classList = new ArrayList<>();
        }
        if (contentList.isEmpty() && classList.isEmpty()) {
            ((FragmentDiscoverLibraryBinding) A()).f39434k.setVisibility(8);
            return;
        }
        B0(contentList);
        C0(classList);
        ((FragmentDiscoverLibraryBinding) A()).f39434k.setVisibility(0);
        H0();
        I0();
        M0();
    }

    private final void B0(ArrayList<LibraryCategory> arrayList) {
        boolean z10;
        for (LibraryCategory libraryCategory : arrayList) {
            long id2 = libraryCategory.getId();
            if (id2 == 2) {
                libraryCategory.setName(getString(R$string.library_activity_label_male));
            } else if (id2 == 1) {
                libraryCategory.setName(getString(R$string.library_activity_label_female));
            } else if (id2 == 3) {
                libraryCategory.setName(getString(R$string.library_activity_label_all));
            }
        }
        if (!arrayList.isEmpty()) {
            Iterator<LibraryCategory> it = arrayList.iterator();
            int i10 = 0;
            while (true) {
                if (it.hasNext()) {
                    if (it.next().getId() == 3) {
                        break;
                    }
                    i10++;
                } else {
                    i10 = -1;
                    break;
                }
            }
            if (i10 == -1) {
                LibraryCategory.Companion companion = LibraryCategory.Companion;
                Context requireContext = requireContext();
                Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
                arrayList.add(0, companion.createChannelAll(requireContext));
            } else if (i10 != 0) {
                arrayList.add(0, arrayList.remove(i10));
            }
        }
        LayoutInflater from = LayoutInflater.from(requireContext());
        int a10 = jk.g.a(6.0f);
        FlexboxLayout.LayoutParams layoutParams = new FlexboxLayout.LayoutParams(-2, jk.g.a(28.0f));
        layoutParams.setMargins(a10, a10, a10, a10);
        ((FragmentDiscoverLibraryBinding) A()).f39425b.removeAllViews();
        for (LibraryCategory libraryCategory2 : arrayList) {
            ItemLibraryClassifyBinding b10 = ItemLibraryClassifyBinding.b(from);
            Intrinsics.checkNotNullExpressionValue(b10, "inflate(...)");
            b10.f40473a.setText(libraryCategory2.getName());
            BaseTextView baseTextView = b10.f40473a;
            int i11 = 1;
            if (this.f45898q == libraryCategory2.getId()) {
                z10 = true;
            } else {
                z10 = false;
            }
            baseTextView.setSelected(z10);
            BaseTextView baseTextView2 = b10.f40473a;
            if (this.f45898q != libraryCategory2.getId()) {
                i11 = 0;
            }
            baseTextView2.setTypeface(null, i11);
            b10.f40473a.setTag(libraryCategory2);
            if (Intrinsics.areEqual(libraryCategory2.getName(), getString(R$string.library_activity_label_all))) {
                b10.f40473a.setContentDescription(libraryCategory2.getName() + getString(R$string.library_fragment_interest));
            } else {
                b10.f40473a.setContentDescription(libraryCategory2.getName());
            }
            b10.f40473a.setOnClickListener(new d(libraryCategory2));
            ((FragmentDiscoverLibraryBinding) A()).f39425b.addView(b10.getRoot(), layoutParams);
        }
        if (arrayList.isEmpty()) {
            ((FragmentDiscoverLibraryBinding) A()).f39425b.setVisibility(8);
        } else {
            ((FragmentDiscoverLibraryBinding) A()).f39425b.setVisibility(0);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [T, com.startshorts.androidplayer.bean.library.LibraryCategory] */
    /* JADX WARN: Type inference failed for: r1v9, types: [T, java.lang.Object] */
    private final void C0(ArrayList<LibraryCategory> arrayList) {
        boolean z10;
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        LibraryCategory.Companion companion = LibraryCategory.Companion;
        Context requireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        objectRef.element = companion.createClassAll(requireContext);
        if (!arrayList.isEmpty()) {
            if (arrayList.get(0).getId() != 0) {
                arrayList.add(0, objectRef.element);
            } else {
                objectRef.element = arrayList.get(0);
            }
            this.f45899r.put(0L, objectRef.element);
        }
        LayoutInflater from = LayoutInflater.from(requireContext());
        int a10 = jk.g.a(6.0f);
        FlexboxLayout.LayoutParams layoutParams = new FlexboxLayout.LayoutParams(-2, jk.g.a(28.0f));
        layoutParams.setMargins(a10, a10, a10, a10);
        ((FragmentDiscoverLibraryBinding) A()).f39426c.removeAllViews();
        for (LibraryCategory libraryCategory : arrayList) {
            ItemLibraryClassifyBinding b10 = ItemLibraryClassifyBinding.b(from);
            Intrinsics.checkNotNullExpressionValue(b10, "inflate(...)");
            b10.f40473a.setText(libraryCategory.getName());
            BaseTextView baseTextView = b10.f40473a;
            int i10 = 1;
            if (this.f45899r.indexOfKey(libraryCategory.getId()) >= 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            baseTextView.setSelected(z10);
            BaseTextView baseTextView2 = b10.f40473a;
            if (this.f45899r.indexOfKey(libraryCategory.getId()) < 0) {
                i10 = 0;
            }
            baseTextView2.setTypeface(null, i10);
            b10.f40473a.setTag(libraryCategory);
            if (Intrinsics.areEqual(libraryCategory.getName(), getString(R$string.library_activity_label_all))) {
                b10.f40473a.setContentDescription(libraryCategory.getName() + getString(R$string.library_fragment_type));
            } else {
                b10.f40473a.setContentDescription(libraryCategory.getName());
            }
            b10.f40473a.setOnClickListener(new e(libraryCategory, this, objectRef));
            ((FragmentDiscoverLibraryBinding) A()).f39426c.addView(b10.getRoot(), layoutParams);
        }
        if (arrayList.isEmpty()) {
            ((FragmentDiscoverLibraryBinding) A()).f39426c.setVisibility(8);
            ((FragmentDiscoverLibraryBinding) A()).f39429f.setVisibility(8);
            return;
        }
        ((FragmentDiscoverLibraryBinding) A()).f39426c.setVisibility(0);
        ((FragmentDiscoverLibraryBinding) A()).f39426c.C(fc.a.a(requireContext(), 80.0f));
        ((FragmentDiscoverLibraryBinding) A()).f39429f.setVisibility(0);
    }

    private final void D0() {
        DiscoverTab discoverTab;
        int i10;
        Integer dramaStyle;
        String string;
        Bundle arguments = getArguments();
        if (arguments != null && (string = arguments.getString("tab")) != null) {
            discoverTab = (DiscoverTab) jk.l.b(string, DiscoverTab.class);
        } else {
            discoverTab = null;
        }
        this.f45901t = discoverTab;
        if (discoverTab != null && (dramaStyle = discoverTab.getDramaStyle()) != null) {
            i10 = dramaStyle.intValue();
        } else {
            i10 = 2;
        }
        boolean z10 = true;
        if (i10 != 1) {
            z10 = false;
        }
        this.f45900s = z10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void E0(String str) {
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString("scene", str);
        bundle.putString("library_interest", String.valueOf(this.f45898q));
        if (this.f45899r.indexOfKey(0L) >= 0) {
            bundle.putString("library_type", "");
        } else {
            StringBuilder sb2 = new StringBuilder();
            LongSparseArray<LibraryCategory> longSparseArray = this.f45899r;
            int size = longSparseArray.size();
            for (int i10 = 0; i10 < size; i10++) {
                long keyAt = longSparseArray.keyAt(i10);
                longSparseArray.valueAt(i10);
                sb2.append(keyAt);
                sb2.append(",");
            }
            if (sb2.length() > 0) {
                Intrinsics.checkNotNullExpressionValue(sb2.deleteCharAt(sb2.length() - 1), "deleteCharAt(...)");
            }
            bundle.putString("library_type", sb2.toString());
        }
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "discover_library_subtag_filter", bundle, 0L, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean F0(DiscoverLibraryFragment discoverLibraryFragment) {
        Bundle arguments = discoverLibraryFragment.getArguments();
        if (arguments != null) {
            return arguments.getBoolean("is_show_tab_view");
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void G0(int i10, int i11) {
        if (!t0().H().a(i10, true)) {
            return;
        }
        if (i10 == 0) {
            T();
            FixLoadMoreAdapter<BaseShorts> fixLoadMoreAdapter = this.f45896o;
            if (fixLoadMoreAdapter != null) {
                fixLoadMoreAdapter.c();
            }
        }
        t0().J(new a.b(i10, this.f45897p, this.f45898q, this.f45899r, i11, false, 32, null));
        M0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void I0() {
        boolean z10;
        FlexboxLayout channelFlexboxLayout = ((FragmentDiscoverLibraryBinding) A()).f39425b;
        Intrinsics.checkNotNullExpressionValue(channelFlexboxLayout, "channelFlexboxLayout");
        int childCount = channelFlexboxLayout.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = channelFlexboxLayout.getChildAt(i10);
            Intrinsics.checkNotNull(childAt, "null cannot be cast to non-null type android.widget.TextView");
            TextView textView = (TextView) childAt;
            Object tag = textView.getTag();
            Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type com.startshorts.androidplayer.bean.library.LibraryCategory");
            LibraryCategory libraryCategory = (LibraryCategory) tag;
            int i11 = 1;
            if (this.f45898q == libraryCategory.getId()) {
                z10 = true;
            } else {
                z10 = false;
            }
            textView.setSelected(z10);
            if (this.f45898q != libraryCategory.getId()) {
                i11 = 0;
            }
            textView.setTypeface(null, i11);
            if (this.f45898q == libraryCategory.getId()) {
                String name = libraryCategory.getName();
                if (name == null) {
                    name = "";
                }
                this.f45906y = name;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void J0() {
        boolean z10;
        MaxHeightFlexBoxLayout classFlexboxLayout = ((FragmentDiscoverLibraryBinding) A()).f39426c;
        Intrinsics.checkNotNullExpressionValue(classFlexboxLayout, "classFlexboxLayout");
        int childCount = classFlexboxLayout.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = classFlexboxLayout.getChildAt(i10);
            Intrinsics.checkNotNull(childAt, "null cannot be cast to non-null type android.widget.TextView");
            TextView textView = (TextView) childAt;
            Object tag = textView.getTag();
            Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type com.startshorts.androidplayer.bean.library.LibraryCategory");
            LibraryCategory libraryCategory = (LibraryCategory) tag;
            int i11 = 1;
            if (this.f45899r.indexOfKey(libraryCategory.getId()) >= 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            textView.setSelected(z10);
            if (this.f45899r.indexOfKey(libraryCategory.getId()) < 0) {
                i11 = 0;
            }
            textView.setTypeface(null, i11);
        }
    }

    private final void K0() {
        if (this.f45898q == 3 && this.f45899r.size() == 1 && this.f45899r.indexOfKey(0L) >= 0) {
            return;
        }
        ((FragmentDiscoverLibraryBinding) A()).getRoot().post(new Runnable() { // from class: com.startshorts.androidplayer.ui.fragment.discover.e0
            @Override // java.lang.Runnable
            public final void run() {
                DiscoverLibraryFragment.L0(DiscoverLibraryFragment.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void L0(DiscoverLibraryFragment discoverLibraryFragment) {
        Context context = discoverLibraryFragment.getContext();
        if (context != null) {
            discoverLibraryFragment.f45898q = 3L;
            LibraryCategory createClassAll = LibraryCategory.Companion.createClassAll(context);
            discoverLibraryFragment.f45899r.clear();
            discoverLibraryFragment.f45899r.put(createClassAll.getId(), createClassAll);
            FragmentExtKt.b(discoverLibraryFragment, new f(), new g());
        }
    }

    private final void M0() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.f45906y + " · ");
        LongSparseArray<LibraryCategory> longSparseArray = this.f45899r;
        int size = longSparseArray.size();
        for (int i10 = 0; i10 < size; i10++) {
            longSparseArray.keyAt(i10);
            stringBuffer.append(longSparseArray.valueAt(i10).getName() + " · ");
        }
        String stringBuffer2 = stringBuffer.toString();
        Intrinsics.checkNotNullExpressionValue(stringBuffer2, "toString(...)");
        String substring = stringBuffer2.substring(0, stringBuffer.length() - 2);
        Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
        ((FragmentDiscoverLibraryBinding) A()).f39436m.setText(substring);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final LibraryViewModel N0(final DiscoverLibraryFragment discoverLibraryFragment) {
        final LibraryViewModel libraryViewModel = (LibraryViewModel) new ViewModelProvider(discoverLibraryFragment).get(LibraryViewModel.class);
        libraryViewModel.o().observe(discoverLibraryFragment.requireActivity(), new h(new Function1() { // from class: com.startshorts.androidplayer.ui.fragment.discover.f0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit O0;
                O0 = DiscoverLibraryFragment.O0(DiscoverLibraryFragment.this, (ApiErrorState) obj);
                return O0;
            }
        }));
        libraryViewModel.G().observe(discoverLibraryFragment.requireActivity(), new h(new Function1() { // from class: com.startshorts.androidplayer.ui.fragment.discover.g0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit P0;
                P0 = DiscoverLibraryFragment.P0(DiscoverLibraryFragment.this, libraryViewModel, (com.startshorts.androidplayer.viewmodel.library.b) obj);
                return P0;
            }
        }));
        return libraryViewModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit O0(DiscoverLibraryFragment discoverLibraryFragment, ApiErrorState apiErrorState) {
        discoverLibraryFragment.K();
        if (apiErrorState.getState() == 1) {
            discoverLibraryFragment.U();
        } else {
            discoverLibraryFragment.V(apiErrorState.getMsg());
        }
        ((FragmentDiscoverLibraryBinding) discoverLibraryFragment.A()).f39434k.setVisibility(8);
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit P0(DiscoverLibraryFragment discoverLibraryFragment, LibraryViewModel libraryViewModel, com.startshorts.androidplayer.viewmodel.library.b bVar) {
        FixLoadMoreAdapter<BaseShorts> fixLoadMoreAdapter;
        FixLoadMoreAdapter<BaseShorts> fixLoadMoreAdapter2;
        FixLoadMoreAdapter<BaseShorts> fixLoadMoreAdapter3;
        if (bVar instanceof b.a) {
            discoverLibraryFragment.K();
            b.a aVar = (b.a) bVar;
            discoverLibraryFragment.A0(aVar.a().getLibClass());
            FixLoadMoreAdapter<BaseShorts> fixLoadMoreAdapter4 = discoverLibraryFragment.f45896o;
            if (fixLoadMoreAdapter4 != null) {
                fixLoadMoreAdapter4.c();
            }
            FixLoadMoreAdapter<BaseShorts> fixLoadMoreAdapter5 = discoverLibraryFragment.f45896o;
            if (fixLoadMoreAdapter5 != null) {
                fixLoadMoreAdapter5.b(aVar.a().getList());
            }
            FixLoadMoreAdapter<BaseShorts> fixLoadMoreAdapter6 = discoverLibraryFragment.f45896o;
            if (fixLoadMoreAdapter6 != null && fixLoadMoreAdapter6.g() == 0) {
                discoverLibraryFragment.S();
                FixLoadMoreAdapter<BaseShorts> fixLoadMoreAdapter7 = discoverLibraryFragment.f45896o;
                if (fixLoadMoreAdapter7 != null) {
                    fixLoadMoreAdapter7.n(true);
                }
            } else {
                discoverLibraryFragment.J();
                FixLoadMoreAdapter<BaseShorts> fixLoadMoreAdapter8 = discoverLibraryFragment.f45896o;
                if (fixLoadMoreAdapter8 != null) {
                    fixLoadMoreAdapter8.n(aVar.a().isComplete());
                }
                FixLoadMoreAdapter<BaseShorts> fixLoadMoreAdapter9 = discoverLibraryFragment.f45896o;
                if (fixLoadMoreAdapter9 != null) {
                    fixLoadMoreAdapter9.k(aVar.a().isComplete());
                }
            }
            if (aVar.a().isComplete() && (fixLoadMoreAdapter3 = discoverLibraryFragment.f45896o) != null) {
                BaseShorts baseShorts = new BaseShorts();
                baseShorts.setItemType(1);
                fixLoadMoreAdapter3.a(baseShorts);
            }
        } else if (bVar instanceof b.c) {
            b.c cVar = (b.c) bVar;
            if (!Intrinsics.areEqual(libraryViewModel.E(discoverLibraryFragment.f45897p, discoverLibraryFragment.f45898q, discoverLibraryFragment.f45899r), cVar.a())) {
                return Unit.f60915a;
            }
            discoverLibraryFragment.K();
            if ((cVar.c() == 0 || cVar.c() == 1) && (fixLoadMoreAdapter = discoverLibraryFragment.f45896o) != null) {
                fixLoadMoreAdapter.c();
            }
            FixLoadMoreAdapter<BaseShorts> fixLoadMoreAdapter10 = discoverLibraryFragment.f45896o;
            if (fixLoadMoreAdapter10 != null) {
                fixLoadMoreAdapter10.b(cVar.b());
            }
            FixLoadMoreAdapter<BaseShorts> fixLoadMoreAdapter11 = discoverLibraryFragment.f45896o;
            if (fixLoadMoreAdapter11 != null && fixLoadMoreAdapter11.g() == 0) {
                discoverLibraryFragment.S();
                FixLoadMoreAdapter<BaseShorts> fixLoadMoreAdapter12 = discoverLibraryFragment.f45896o;
                if (fixLoadMoreAdapter12 != null) {
                    fixLoadMoreAdapter12.n(true);
                }
            } else {
                discoverLibraryFragment.J();
                FixLoadMoreAdapter<BaseShorts> fixLoadMoreAdapter13 = discoverLibraryFragment.f45896o;
                if (fixLoadMoreAdapter13 != null) {
                    fixLoadMoreAdapter13.n(cVar.d());
                }
                FixLoadMoreAdapter<BaseShorts> fixLoadMoreAdapter14 = discoverLibraryFragment.f45896o;
                if (fixLoadMoreAdapter14 != null) {
                    fixLoadMoreAdapter14.k(cVar.d());
                }
            }
            if (cVar.d() && (fixLoadMoreAdapter2 = discoverLibraryFragment.f45896o) != null) {
                BaseShorts baseShorts2 = new BaseShorts();
                baseShorts2.setItemType(1);
                fixLoadMoreAdapter2.a(baseShorts2);
            }
        } else if (bVar instanceof b.C0667b) {
            b.C0667b c0667b = (b.C0667b) bVar;
            if (!Intrinsics.areEqual(libraryViewModel.E(discoverLibraryFragment.f45897p, discoverLibraryFragment.f45898q, discoverLibraryFragment.f45899r), c0667b.b())) {
                return Unit.f60915a;
            }
            if (c0667b.c() == 0) {
                discoverLibraryFragment.K();
                if (c0667b.a().getState() == 1) {
                    discoverLibraryFragment.U();
                } else {
                    discoverLibraryFragment.V(c0667b.a().getMsg());
                }
            }
        } else {
            throw new NoWhenBranchMatchedException();
        }
        return Unit.f60915a;
    }

    private final boolean s0() {
        return ((Boolean) this.f45904w.getValue()).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final LibraryViewModel t0() {
        return (LibraryViewModel) this.f45903v.getValue();
    }

    private final void u0() {
        R();
        EventManager.s0(EventManager.f42463a, "discover_library_show", null, 0L, 6, null);
    }

    private final void v0() {
        int J;
        int t10;
        if (s0()) {
            DeviceUtil deviceUtil = DeviceUtil.f48146a;
            J = deviceUtil.J() + deviceUtil.u();
            t10 = deviceUtil.t();
        } else {
            DeviceUtil deviceUtil2 = DeviceUtil.f48146a;
            J = deviceUtil2.J();
            t10 = deviceUtil2.t();
        }
        int i10 = J + t10;
        ConstraintLayout toolbarLayout = ((FragmentDiscoverLibraryBinding) A()).f39435l;
        Intrinsics.checkNotNullExpressionValue(toolbarLayout, "toolbarLayout");
        jk.b0.i(toolbarLayout, 0, i10, 0, 0, 13, null);
    }

    private final void w0() {
        c cVar = new c();
        ((FragmentDiscoverLibraryBinding) A()).f39429f.setOnClickListener(cVar);
        ((FragmentDiscoverLibraryBinding) A()).f39430g.setOnClickListener(cVar);
        if (this.f45900s) {
            this.f45896o = new LibraryHomeAdapter();
            ((FragmentDiscoverLibraryBinding) A()).f39433j.setLayoutManager(new LinearLayoutManager(requireContext()));
        } else {
            LibraryHomeGridAdapter libraryHomeGridAdapter = new LibraryHomeGridAdapter();
            this.f45896o = libraryHomeGridAdapter;
            Intrinsics.checkNotNull(libraryHomeGridAdapter, "null cannot be cast to non-null type com.startshorts.androidplayer.adapter.library.LibraryHomeGridAdapter");
            libraryHomeGridAdapter.s(new b());
            GridLayoutManager gridLayoutManager = new GridLayoutManager(requireContext(), 3);
            gridLayoutManager.setSpanSizeLookup(new GridLayoutManager.SpanSizeLookup() { // from class: com.startshorts.androidplayer.ui.fragment.discover.DiscoverLibraryFragment$initView$2
                @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
                public int getSpanSize(int i10) {
                    FixLoadMoreAdapter fixLoadMoreAdapter;
                    fixLoadMoreAdapter = DiscoverLibraryFragment.this.f45896o;
                    Intrinsics.checkNotNull(fixLoadMoreAdapter, "null cannot be cast to non-null type com.startshorts.androidplayer.adapter.library.LibraryHomeGridAdapter");
                    int itemViewType = ((LibraryHomeGridAdapter) fixLoadMoreAdapter).getItemViewType(i10);
                    if (itemViewType != 1 && itemViewType != 999999) {
                        return 1;
                    }
                    return 3;
                }
            });
            ((FragmentDiscoverLibraryBinding) A()).f39433j.setLayoutManager(gridLayoutManager);
            ViewGroup.LayoutParams layoutParams = ((FragmentDiscoverLibraryBinding) A()).f39433j.getLayoutParams();
            Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams");
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) layoutParams;
            layoutParams2.setMarginStart(fc.a.a(requireContext(), 12.0f));
            layoutParams2.setMarginEnd(fc.a.a(requireContext(), 12.0f));
            ((FragmentDiscoverLibraryBinding) A()).f39433j.setLayoutParams(layoutParams2);
            ((FragmentDiscoverLibraryBinding) A()).f39433j.addItemDecoration(new GridSpacingItemDecoration(3, fc.a.a(requireContext(), 8.0f), true));
        }
        FixLoadMoreAdapter<BaseShorts> fixLoadMoreAdapter = this.f45896o;
        if (fixLoadMoreAdapter != null) {
            fixLoadMoreAdapter.f(new SimpleViewHolder.c() { // from class: com.startshorts.androidplayer.ui.fragment.discover.z
                @Override // com.startshorts.androidplayer.adapter.base.SimpleViewHolder.c
                public final void a(View view, int i10, Object obj) {
                    DiscoverLibraryFragment.x0(DiscoverLibraryFragment.this, view, i10, (BaseShorts) obj);
                }
            });
        }
        ((FragmentDiscoverLibraryBinding) A()).f39433j.setLoadMoreListener(new LoadMoreRecyclerView.b() { // from class: com.startshorts.androidplayer.ui.fragment.discover.a0
            @Override // com.startshorts.androidplayer.ui.view.base.LoadMoreRecyclerView.b
            public final void a() {
                DiscoverLibraryFragment.y0(DiscoverLibraryFragment.this);
            }
        });
        ((FragmentDiscoverLibraryBinding) A()).f39433j.setAdapter(this.f45896o);
        final int a10 = fc.a.a(requireContext(), 28.0f);
        ((FragmentDiscoverLibraryBinding) A()).f39424a.addOnOffsetChangedListener(new AppBarLayout.OnOffsetChangedListener() { // from class: com.startshorts.androidplayer.ui.fragment.discover.b0
            @Override // com.google.android.material.appbar.AppBarLayout.OnOffsetChangedListener, com.google.android.material.appbar.AppBarLayout.BaseOnOffsetChangedListener
            public final void onOffsetChanged(AppBarLayout appBarLayout, int i10) {
                DiscoverLibraryFragment.z0(DiscoverLibraryFragment.this, a10, appBarLayout, i10);
            }
        });
        ((FragmentDiscoverLibraryBinding) A()).f39433j.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: com.startshorts.androidplayer.ui.fragment.discover.DiscoverLibraryFragment$initView$6
            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i10) {
                boolean z10;
                Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
                if (i10 == 1 || i10 == 2) {
                    z10 = DiscoverLibraryFragment.this.f45902u;
                    if (!z10) {
                        DiscoverLibraryFragment.this.f45902u = true;
                        kk.f.f60747a.r();
                        DiscoverTabFragment.b bVar = DiscoverLibraryFragment.this.f45905x;
                        if (bVar != null) {
                            bVar.e();
                            return;
                        }
                        return;
                    }
                }
                if (i10 == 0) {
                    DiscoverLibraryFragment.this.f45902u = false;
                    kk.f.f60747a.y();
                    DiscoverTabFragment.b bVar2 = DiscoverLibraryFragment.this.f45905x;
                    if (bVar2 != null) {
                        bVar2.d();
                    }
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i10, int i11) {
                Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x0(DiscoverLibraryFragment discoverLibraryFragment, View view, int i10, BaseShorts baseShorts) {
        int i11;
        if (baseShorts == null) {
            return;
        }
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        if (!TextUtils.isEmpty(baseShorts.getUpack())) {
            bundle.putString("upack", baseShorts.getUpack());
        }
        bundle.putString("reel_id", baseShorts.getShortPlayCode());
        Unit unit = Unit.f60915a;
        EventManager.s0(eventManager, "reel_library_click", bundle, 0L, 4, null);
        ImmersionActivity.a aVar = ImmersionActivity.V0;
        Context requireContext = discoverLibraryFragment.requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        ImmersionParams immersionParams = new ImmersionParams();
        immersionParams.setFrom("discover_library");
        if (baseShorts.getEpisodeNum() != 0) {
            i11 = 1;
        } else {
            i11 = 3;
        }
        immersionParams.setType(i11);
        if (baseShorts.getEpisodeNum() != 0) {
            immersionParams.setEpisodeNum(baseShorts.getEpisodeNum());
        }
        ImmersionShortsInfo immersionShortsInfo = new ImmersionShortsInfo();
        immersionShortsInfo.setShortsId(baseShorts.getId());
        immersionShortsInfo.setShortPlayCode(baseShorts.getShortPlayCode());
        immersionShortsInfo.setShortsName(baseShorts.getShortPlayName());
        immersionShortsInfo.setCover(baseShorts.getPicUrl());
        immersionShortsInfo.setUpack(baseShorts.getUpack());
        immersionParams.setShortsInfo(immersionShortsInfo);
        immersionParams.setModuleInfo(ModuleInfo.Companion.create$default(ModuleInfo.Companion, null, null, null, 0, null, discoverLibraryFragment.f45901t, baseShorts.getShortPlayCode(), null, null, MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_MAX_RETRANSMISSION_TIME_MS, null));
        aVar.a(requireContext, immersionParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y0(DiscoverLibraryFragment discoverLibraryFragment) {
        discoverLibraryFragment.G0(2, discoverLibraryFragment.t0().H().b() + 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z0(DiscoverLibraryFragment discoverLibraryFragment, int i10, AppBarLayout appBarLayout, int i11) {
        float f10;
        float abs = Math.abs(i11) / appBarLayout.getTotalScrollRange();
        if (abs < 0.6f) {
            f10 = 0.0f;
        } else if (abs >= 1.0f) {
            f10 = 1.0f;
        } else {
            f10 = (abs - 0.6f) / 0.39999998f;
        }
        ViewGroup.LayoutParams layoutParams = ((FragmentDiscoverLibraryBinding) discoverLibraryFragment.A()).f39432i.getLayoutParams();
        int i12 = (int) (i10 * f10);
        if (layoutParams.height != i12) {
            layoutParams.height = i12;
            ((FragmentDiscoverLibraryBinding) discoverLibraryFragment.A()).f39432i.setLayoutParams(layoutParams);
        }
        ((FragmentDiscoverLibraryBinding) discoverLibraryFragment.A()).f39432i.setAlpha(f10);
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateFragment
    public int G() {
        return R$layout.viewstub_page_state_empty_lib;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateFragment
    @NotNull
    public String H() {
        String string = getString(R$string.library_activity_empty_text);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        return string;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateFragment
    public void R() {
        if (t0().F().loadComplete()) {
            G0(0, 1);
            return;
        }
        T();
        t0().J(new a.C0666a(0, 1, null));
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public int l() {
        return this.f45907z;
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public boolean o() {
        return true;
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(@NotNull Context context) {
        DiscoverTabFragment discoverTabFragment;
        Intrinsics.checkNotNullParameter(context, "context");
        super.onAttach(context);
        if (getParentFragment() instanceof DiscoverTabFragment) {
            Fragment parentFragment = getParentFragment();
            DiscoverTabFragment.b bVar = null;
            if (parentFragment instanceof DiscoverTabFragment) {
                discoverTabFragment = (DiscoverTabFragment) parentFragment;
            } else {
                discoverTabFragment = null;
            }
            if (discoverTabFragment != null) {
                bVar = discoverTabFragment.C0();
            }
            this.f45905x = bVar;
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.PageStateFragment, com.startshorts.androidplayer.ui.fragment.base.PermissionFragment, com.startshorts.androidplayer.ui.fragment.base.BaseFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        DiscoverTabFragment.b bVar = this.f45905x;
        if (bVar != null) {
            bVar.b(0.0f, true);
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public boolean p() {
        return true;
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveRefreshContinuePlayLayoutEvent(@NotNull RefreshContinuePlayLayoutEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        K0();
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void refreshEpisodeNumEvent(@NotNull RefreshEpisodeNumEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        FixLoadMoreAdapter<BaseShorts> fixLoadMoreAdapter = this.f45896o;
        if (fixLoadMoreAdapter instanceof LibraryHomeAdapter) {
            Intrinsics.checkNotNull(fixLoadMoreAdapter, "null cannot be cast to non-null type com.startshorts.androidplayer.adapter.library.LibraryHomeAdapter");
            ((LibraryHomeAdapter) fixLoadMoreAdapter).r(event.getShortsId(), event.getEpisodeNum());
        }
    }

    @Override // com.startshorts.androidplayer.ui.fragment.base.BaseFragment
    public void t() {
        super.t();
        try {
            v0();
            D0();
            w0();
            u0();
        } catch (Exception e10) {
            Logger logger = Logger.f41511a;
            logger.e("DiscoverLibraryFragment", "show DiscoverLibraryFragment failed -> " + e10.getMessage());
            e10.printStackTrace();
        }
    }

    /* compiled from: DiscoverLibraryFragment.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b implements DiscoverModuleAdapter.n {
        b() {
        }

        @Override // com.startshorts.androidplayer.adapter.discover.DiscoverModuleAdapter.n
        public void a(String from, Integer num) {
            Intrinsics.checkNotNullParameter(from, "from");
            DiscoverTabFragment.b bVar = DiscoverLibraryFragment.this.f45905x;
            if (bVar != null) {
                bVar.a(from, num);
            }
        }

        @Override // com.startshorts.androidplayer.adapter.discover.DiscoverModuleAdapter.n
        public void b(VideoPreviewInfo info) {
            Intrinsics.checkNotNullParameter(info, "info");
        }

        @Override // com.startshorts.androidplayer.adapter.discover.DiscoverModuleAdapter.n
        public void c(int i10, BaseShorts baseShorts, String moduleType, DiscoverModule module, DiscoverRanking discoverRanking) {
            Intrinsics.checkNotNullParameter(moduleType, "moduleType");
            Intrinsics.checkNotNullParameter(module, "module");
        }

        @Override // com.startshorts.androidplayer.adapter.discover.DiscoverModuleAdapter.n
        public void d(int i10, DiscoverResource discoverResource, ActResource actResource) {
            Intrinsics.checkNotNullParameter(discoverResource, "discoverResource");
        }

        @Override // com.startshorts.androidplayer.adapter.discover.DiscoverModuleAdapter.n
        public void f(int i10, ShortsLabel label, String moduleType, DiscoverModule module, String from) {
            Intrinsics.checkNotNullParameter(label, "label");
            Intrinsics.checkNotNullParameter(moduleType, "moduleType");
            Intrinsics.checkNotNullParameter(module, "module");
            Intrinsics.checkNotNullParameter(from, "from");
        }

        @Override // com.startshorts.androidplayer.adapter.discover.DiscoverModuleAdapter.n
        public void e() {
        }

        @Override // com.startshorts.androidplayer.adapter.discover.DiscoverModuleAdapter.n
        public void g(int i10, DiscoverResource discoverResource) {
        }
    }

    /* compiled from: FragmentExt.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$4\n+ 2 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$2\n*L\n1#1,21:1\n17#2:22\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class g implements Function0<Unit> {
        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            a();
            return Unit.f60915a;
        }

        public final void a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void H0() {
    }
}
