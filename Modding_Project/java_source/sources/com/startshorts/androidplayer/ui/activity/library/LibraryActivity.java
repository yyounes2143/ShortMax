package com.startshorts.androidplayer.ui.activity.library;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.LongSparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.util.LongSparseArrayKt;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import at.n;
import au.l;
import cc.k;
import com.google.android.flexbox.FlexboxLayout;
import com.lcodecore.tkrefreshlayout.TwinklingRefreshLayout;
import com.startshorts.androidplayer.R$layout;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.adapter.base.FixLoadMoreAdapter;
import com.startshorts.androidplayer.adapter.base.SimpleViewHolder;
import com.startshorts.androidplayer.adapter.library.LibraryAdapter;
import com.startshorts.androidplayer.adapter.library.LibraryGridAdapter;
import com.startshorts.androidplayer.bean.api.ApiErrorState;
import com.startshorts.androidplayer.bean.eventbus.RefreshEpisodeNumEvent;
import com.startshorts.androidplayer.bean.immersion.ImmersionParams;
import com.startshorts.androidplayer.bean.immersion.ImmersionShortsInfo;
import com.startshorts.androidplayer.bean.library.LibraryCategory;
import com.startshorts.androidplayer.bean.library.LibraryClass;
import com.startshorts.androidplayer.bean.shorts.BaseShorts;
import com.startshorts.androidplayer.databinding.ActivityLibraryBinding;
import com.startshorts.androidplayer.databinding.ItemLibraryClassifyBinding;
import com.startshorts.androidplayer.manager.event.EventManager;
import com.startshorts.androidplayer.ui.activity.base.PageStateActivity;
import com.startshorts.androidplayer.ui.activity.immersion.ImmersionActivity;
import com.startshorts.androidplayer.ui.activity.library.LibraryActivity;
import com.startshorts.androidplayer.ui.fragment.library.LibraryLabelFragment;
import com.startshorts.androidplayer.ui.view.base.BaseTextView;
import com.startshorts.androidplayer.ui.view.base.LoadMoreRecyclerView;
import com.startshorts.androidplayer.ui.view.base.MaxHeightFlexBoxLayout;
import com.startshorts.androidplayer.ui.view.discover.GridSpacingItemDecoration;
import com.startshorts.androidplayer.ui.view.library.LoadMoreFinishLayout;
import com.startshorts.androidplayer.utils.DeviceUtil;
import com.startshorts.androidplayer.viewmodel.library.LibraryViewModel;
import com.startshorts.androidplayer.viewmodel.library.a;
import com.startshorts.androidplayer.viewmodel.library.b;
import java.util.ArrayList;
import java.util.Iterator;
import jk.b0;
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
import ms.i;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LibraryActivity.kt */
@Metadata
@SourceDebugExtension({"SMAP\nLibraryActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LibraryActivity.kt\ncom/startshorts/androidplayer/ui/activity/library/LibraryActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ViewGroup.kt\nandroidx/core/view/ViewGroupKt\n+ 4 LongSparseArray.kt\nandroidx/core/util/LongSparseArrayKt\n*L\n1#1,499:1\n1863#2,2:500\n360#2,7:502\n1863#2,2:511\n1863#2:515\n1864#2:517\n184#3,2:509\n184#3,2:513\n53#3,4:518\n53#3,2:522\n56#3:525\n42#4:516\n42#4:524\n42#4:526\n77#4,4:527\n*S KotlinDebug\n*F\n+ 1 LibraryActivity.kt\ncom/startshorts/androidplayer/ui/activity/library/LibraryActivity\n*L\n311#1:500,2\n329#1:502,7\n346#1:511,2\n396#1:515\n396#1:517\n344#1:509,2\n394#1:513,2\n452#1:518,4\n460#1:522,2\n460#1:525\n399#1:516\n463#1:524\n476#1:526\n480#1:527,4\n*E\n"})
/* loaded from: classes7.dex */
public final class LibraryActivity extends PageStateActivity<ActivityLibraryBinding> {
    @NotNull

    /* renamed from: z  reason: collision with root package name */
    public static final a f45393z = new a(null);
    @Nullable

    /* renamed from: t  reason: collision with root package name */
    private FixLoadMoreAdapter<BaseShorts> f45396t;

    /* renamed from: y  reason: collision with root package name */
    private boolean f45401y;
    @NotNull

    /* renamed from: r  reason: collision with root package name */
    private final String f45394r = "LibraryActivity";

    /* renamed from: s  reason: collision with root package name */
    private final int f45395s = R$layout.activity_library;

    /* renamed from: u  reason: collision with root package name */
    private long f45397u = 3;

    /* renamed from: v  reason: collision with root package name */
    private long f45398v = 3;
    @NotNull

    /* renamed from: w  reason: collision with root package name */
    private final LongSparseArray<LibraryCategory> f45399w = new LongSparseArray<>();
    @NotNull

    /* renamed from: x  reason: collision with root package name */
    private final i f45400x = kotlin.c.b(new Function0() { // from class: zh.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            LibraryViewModel y02;
            y02 = LibraryActivity.y0(LibraryActivity.this);
            return y02;
        }
    });

    /* compiled from: LibraryActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(@NotNull Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            context.startActivity(new Intent(context, LibraryActivity.class));
        }

        private a() {
        }
    }

    /* compiled from: LibraryActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class b extends yd.d {
        b() {
            super(0L, 1, null);
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            LibraryActivity.this.finish();
        }
    }

    /* compiled from: LibraryActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class c extends yd.d {
        c() {
            super(0L, 1, null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit c(LibraryActivity libraryActivity, long j10, long j11, LongSparseArray classMap) {
            Intrinsics.checkNotNullParameter(classMap, "classMap");
            libraryActivity.f45398v = j11;
            libraryActivity.f45399w.clear();
            LongSparseArrayKt.putAll(libraryActivity.f45399w, classMap);
            libraryActivity.w0();
            libraryActivity.x0();
            libraryActivity.v0(0, 1);
            libraryActivity.u0("filter_pop");
            return Unit.f60915a;
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            LibraryClass libClass = LibraryActivity.this.m0().F().getLibClass();
            if (libClass == null) {
                return;
            }
            LibraryLabelFragment libraryLabelFragment = new LibraryLabelFragment();
            FragmentManager supportFragmentManager = LibraryActivity.this.getSupportFragmentManager();
            Intrinsics.checkNotNullExpressionValue(supportFragmentManager, "getSupportFragmentManager(...)");
            long j10 = LibraryActivity.this.f45397u;
            long j11 = LibraryActivity.this.f45398v;
            LongSparseArray<LibraryCategory> longSparseArray = LibraryActivity.this.f45399w;
            final LibraryActivity libraryActivity = LibraryActivity.this;
            libraryLabelFragment.P(supportFragmentManager, libClass, j10, j11, longSparseArray, new n() { // from class: zh.f
                @Override // at.n
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    Unit c10;
                    c10 = LibraryActivity.c.c(LibraryActivity.this, ((Long) obj).longValue(), ((Long) obj2).longValue(), (LongSparseArray) obj3);
                    return c10;
                }
            });
            EventManager.s0(EventManager.f42463a, "discover_library_pop_click", null, 0L, 6, null);
        }
    }

    /* compiled from: LibraryActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class d extends k {
        d() {
        }

        @Override // cc.k, cc.e
        public void d(TwinklingRefreshLayout twinklingRefreshLayout) {
            LibraryActivity.d0(LibraryActivity.this).f38309g.B();
        }
    }

    /* compiled from: LibraryActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class e extends yd.d {

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ LibraryCategory f45406f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(LibraryCategory libraryCategory) {
            super(0L, 1, null);
            this.f45406f = libraryCategory;
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            if (LibraryActivity.this.f45398v != this.f45406f.getId()) {
                LibraryActivity.this.f45398v = this.f45406f.getId();
                LibraryActivity.this.w0();
                LibraryActivity.this.v0(0, 1);
                LibraryActivity.this.u0("library_top");
            }
        }
    }

    /* compiled from: LibraryActivity.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nLibraryActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LibraryActivity.kt\ncom/startshorts/androidplayer/ui/activity/library/LibraryActivity$loadLabelClass$1$1\n+ 2 LongSparseArray.kt\nandroidx/core/util/LongSparseArrayKt\n*L\n1#1,499:1\n42#2:500\n42#2:501\n*S KotlinDebug\n*F\n+ 1 LibraryActivity.kt\ncom/startshorts/androidplayer/ui/activity/library/LibraryActivity$loadLabelClass$1$1\n*L\n412#1:500\n419#1:501\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class f extends yd.d {

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ LibraryCategory f45407e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ LibraryActivity f45408f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ Ref.ObjectRef<LibraryCategory> f45409g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(LibraryCategory libraryCategory, LibraryActivity libraryActivity, Ref.ObjectRef<LibraryCategory> objectRef) {
            super(0L, 1, null);
            this.f45407e = libraryCategory;
            this.f45408f = libraryActivity;
            this.f45409g = objectRef;
        }

        @Override // yd.d
        public void a(View v10) {
            Intrinsics.checkNotNullParameter(v10, "v");
            if (this.f45407e.getId() == 0) {
                if (this.f45408f.f45399w.indexOfKey(0L) < 0) {
                    this.f45408f.f45399w.clear();
                    this.f45408f.f45399w.put(0L, this.f45409g.element);
                    this.f45408f.v0(0, 1);
                    this.f45408f.u0("library_top");
                }
            } else {
                if (this.f45408f.f45399w.indexOfKey(this.f45407e.getId()) >= 0) {
                    this.f45408f.f45399w.remove(this.f45407e.getId());
                    if (this.f45408f.f45399w.size() == 0) {
                        this.f45408f.f45399w.put(0L, this.f45409g.element);
                    }
                } else if (this.f45408f.f45399w.size() >= 3) {
                    this.f45408f.x(R$string.library_activity_label_limit);
                    return;
                } else {
                    this.f45408f.f45399w.put(this.f45407e.getId(), this.f45407e);
                    this.f45408f.f45399w.remove(0L);
                }
                this.f45408f.v0(0, 1);
                this.f45408f.u0("library_top");
            }
            this.f45408f.x0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LibraryActivity.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class g implements Observer, FunctionAdapter {

        /* renamed from: a  reason: collision with root package name */
        private final /* synthetic */ Function1 f45410a;

        g(Function1 function) {
            Intrinsics.checkNotNullParameter(function, "function");
            this.f45410a = function;
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
            return this.f45410a;
        }

        public final int hashCode() {
            return getFunctionDelegate().hashCode();
        }

        @Override // androidx.lifecycle.Observer
        public final /* synthetic */ void onChanged(Object obj) {
            this.f45410a.invoke(obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit A0(LibraryActivity libraryActivity, LibraryViewModel libraryViewModel, com.startshorts.androidplayer.viewmodel.library.b bVar) {
        FixLoadMoreAdapter<BaseShorts> fixLoadMoreAdapter;
        if (bVar instanceof b.a) {
            libraryActivity.P();
            b.a aVar = (b.a) bVar;
            libraryActivity.r0(aVar.a().getLibClass());
            FixLoadMoreAdapter<BaseShorts> fixLoadMoreAdapter2 = libraryActivity.f45396t;
            if (fixLoadMoreAdapter2 != null) {
                fixLoadMoreAdapter2.c();
            }
            FixLoadMoreAdapter<BaseShorts> fixLoadMoreAdapter3 = libraryActivity.f45396t;
            if (fixLoadMoreAdapter3 != null) {
                fixLoadMoreAdapter3.b(aVar.a().getList());
            }
            FixLoadMoreAdapter<BaseShorts> fixLoadMoreAdapter4 = libraryActivity.f45396t;
            if (fixLoadMoreAdapter4 != null && fixLoadMoreAdapter4.g() == 0) {
                libraryActivity.T();
                FixLoadMoreAdapter<BaseShorts> fixLoadMoreAdapter5 = libraryActivity.f45396t;
                if (fixLoadMoreAdapter5 != null) {
                    fixLoadMoreAdapter5.n(true);
                }
            } else {
                libraryActivity.O();
                FixLoadMoreAdapter<BaseShorts> fixLoadMoreAdapter6 = libraryActivity.f45396t;
                if (fixLoadMoreAdapter6 != null) {
                    fixLoadMoreAdapter6.n(aVar.a().isComplete());
                }
                FixLoadMoreAdapter<BaseShorts> fixLoadMoreAdapter7 = libraryActivity.f45396t;
                if (fixLoadMoreAdapter7 != null) {
                    fixLoadMoreAdapter7.k(aVar.a().isComplete());
                }
            }
            ((ActivityLibraryBinding) libraryActivity.E()).f38309g.setVisibility(0);
            if (aVar.a().isComplete()) {
                ((ActivityLibraryBinding) libraryActivity.E()).f38309g.setEnableLoadmore(true);
            }
        } else if (bVar instanceof b.c) {
            b.c cVar = (b.c) bVar;
            if (!Intrinsics.areEqual(libraryViewModel.E(libraryActivity.f45397u, libraryActivity.f45398v, libraryActivity.f45399w), cVar.a())) {
                return Unit.f60915a;
            }
            libraryActivity.P();
            if ((cVar.c() == 0 || cVar.c() == 1) && (fixLoadMoreAdapter = libraryActivity.f45396t) != null) {
                fixLoadMoreAdapter.c();
            }
            FixLoadMoreAdapter<BaseShorts> fixLoadMoreAdapter8 = libraryActivity.f45396t;
            if (fixLoadMoreAdapter8 != null) {
                fixLoadMoreAdapter8.b(cVar.b());
            }
            FixLoadMoreAdapter<BaseShorts> fixLoadMoreAdapter9 = libraryActivity.f45396t;
            if (fixLoadMoreAdapter9 != null && fixLoadMoreAdapter9.g() == 0) {
                libraryActivity.T();
                FixLoadMoreAdapter<BaseShorts> fixLoadMoreAdapter10 = libraryActivity.f45396t;
                if (fixLoadMoreAdapter10 != null) {
                    fixLoadMoreAdapter10.n(true);
                }
            } else {
                libraryActivity.O();
                FixLoadMoreAdapter<BaseShorts> fixLoadMoreAdapter11 = libraryActivity.f45396t;
                if (fixLoadMoreAdapter11 != null) {
                    fixLoadMoreAdapter11.n(cVar.d());
                }
                FixLoadMoreAdapter<BaseShorts> fixLoadMoreAdapter12 = libraryActivity.f45396t;
                if (fixLoadMoreAdapter12 != null) {
                    fixLoadMoreAdapter12.k(cVar.d());
                }
            }
            ((ActivityLibraryBinding) libraryActivity.E()).f38309g.setVisibility(0);
            if (cVar.d()) {
                ((ActivityLibraryBinding) libraryActivity.E()).f38309g.setEnableLoadmore(true);
            }
        } else if (bVar instanceof b.C0667b) {
            b.C0667b c0667b = (b.C0667b) bVar;
            if (!Intrinsics.areEqual(libraryViewModel.E(libraryActivity.f45397u, libraryActivity.f45398v, libraryActivity.f45399w), c0667b.b())) {
                return Unit.f60915a;
            }
            if (c0667b.c() == 0) {
                libraryActivity.P();
                if (c0667b.a().getState() == 1) {
                    libraryActivity.V();
                } else {
                    libraryActivity.W(c0667b.a().getMsg());
                }
            }
        } else {
            throw new NoWhenBranchMatchedException();
        }
        return Unit.f60915a;
    }

    public static final /* synthetic */ ActivityLibraryBinding d0(LibraryActivity libraryActivity) {
        return (ActivityLibraryBinding) libraryActivity.E();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final LibraryViewModel m0() {
        return (LibraryViewModel) this.f45400x.getValue();
    }

    private final void n0() {
        S();
        EventManager.s0(EventManager.f42463a, "discover_library_show", null, 0L, 6, null);
    }

    private final void o0() {
        FixLoadMoreAdapter<BaseShorts> libraryAdapter;
        RecyclerView.LayoutManager linearLayoutManager;
        ((ActivityLibraryBinding) E()).f38306d.setOnClickListener(new b());
        ((ActivityLibraryBinding) E()).f38305c.setOnClickListener(new c());
        if (this.f45401y) {
            libraryAdapter = new LibraryGridAdapter();
        } else {
            libraryAdapter = new LibraryAdapter();
        }
        this.f45396t = libraryAdapter;
        libraryAdapter.f(new SimpleViewHolder.c() { // from class: zh.b
            @Override // com.startshorts.androidplayer.adapter.base.SimpleViewHolder.c
            public final void a(View view, int i10, Object obj) {
                LibraryActivity.p0(LibraryActivity.this, view, i10, (BaseShorts) obj);
            }
        });
        LoadMoreRecyclerView loadMoreRecyclerView = ((ActivityLibraryBinding) E()).f38308f;
        if (this.f45401y) {
            linearLayoutManager = new GridLayoutManager(this, 3);
        } else {
            linearLayoutManager = new LinearLayoutManager(this);
        }
        loadMoreRecyclerView.setLayoutManager(linearLayoutManager);
        if (this.f45401y) {
            ViewGroup.LayoutParams layoutParams = ((ActivityLibraryBinding) E()).f38308f.getLayoutParams();
            Intrinsics.checkNotNull(layoutParams, "null cannot be cast to non-null type android.widget.RelativeLayout.LayoutParams");
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) layoutParams;
            layoutParams2.setMarginStart(fc.a.a(this, 12.0f));
            layoutParams2.setMarginEnd(fc.a.a(this, 12.0f));
            ((ActivityLibraryBinding) E()).f38308f.setLayoutParams(layoutParams2);
            ((ActivityLibraryBinding) E()).f38308f.addItemDecoration(new GridSpacingItemDecoration(3, fc.a.a(this, 8.0f), true));
        }
        ((ActivityLibraryBinding) E()).f38308f.setLoadMoreListener(new LoadMoreRecyclerView.b() { // from class: zh.c
            @Override // com.startshorts.androidplayer.ui.view.base.LoadMoreRecyclerView.b
            public final void a() {
                LibraryActivity.q0(LibraryActivity.this);
            }
        });
        ((ActivityLibraryBinding) E()).f38308f.setAdapter(this.f45396t);
        ((ActivityLibraryBinding) E()).f38309g.setOnRefreshListener(new d());
        ((ActivityLibraryBinding) E()).f38309g.setBottomView(new LoadMoreFinishLayout(this));
        ((ActivityLibraryBinding) E()).f38309g.setEnableLoadmore(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p0(LibraryActivity libraryActivity, View view, int i10, BaseShorts baseShorts) {
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
        aVar.a(libraryActivity, immersionParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q0(LibraryActivity libraryActivity) {
        libraryActivity.v0(2, libraryActivity.m0().H().b() + 1);
    }

    private final void r0(LibraryClass libraryClass) {
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
            ((ActivityLibraryBinding) E()).f38310h.setVisibility(8);
            return;
        }
        s0(contentList);
        t0(classList);
        ((ActivityLibraryBinding) E()).f38310h.setVisibility(0);
    }

    private final void s0(ArrayList<LibraryCategory> arrayList) {
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
                arrayList.add(0, LibraryCategory.Companion.createChannelAll(this));
            } else if (i10 != 0) {
                arrayList.add(0, arrayList.remove(i10));
            }
        }
        LayoutInflater from = LayoutInflater.from(this);
        int a10 = jk.g.a(6.0f);
        FlexboxLayout.LayoutParams layoutParams = new FlexboxLayout.LayoutParams(-2, jk.g.a(28.0f));
        layoutParams.setMargins(a10, a10, a10, a10);
        ((ActivityLibraryBinding) E()).f38303a.removeAllViews();
        for (LibraryCategory libraryCategory2 : arrayList) {
            ItemLibraryClassifyBinding b10 = ItemLibraryClassifyBinding.b(from);
            Intrinsics.checkNotNullExpressionValue(b10, "inflate(...)");
            b10.f40473a.setText(libraryCategory2.getName());
            BaseTextView baseTextView = b10.f40473a;
            if (this.f45398v == libraryCategory2.getId()) {
                z10 = true;
            } else {
                z10 = false;
            }
            baseTextView.setSelected(z10);
            b10.f40473a.setTag(libraryCategory2);
            if (Intrinsics.areEqual(libraryCategory2.getName(), getString(R$string.library_activity_label_all))) {
                b10.f40473a.setContentDescription(libraryCategory2.getName() + getString(R$string.library_fragment_interest));
            } else {
                b10.f40473a.setContentDescription(libraryCategory2.getName());
            }
            b10.f40473a.setOnClickListener(new e(libraryCategory2));
            ((ActivityLibraryBinding) E()).f38303a.addView(b10.getRoot(), layoutParams);
        }
        if (arrayList.isEmpty()) {
            ((ActivityLibraryBinding) E()).f38303a.setVisibility(8);
        } else {
            ((ActivityLibraryBinding) E()).f38303a.setVisibility(0);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [T, com.startshorts.androidplayer.bean.library.LibraryCategory] */
    /* JADX WARN: Type inference failed for: r1v7, types: [T, java.lang.Object] */
    private final void t0(ArrayList<LibraryCategory> arrayList) {
        boolean z10;
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = LibraryCategory.Companion.createClassAll(this);
        if (!arrayList.isEmpty()) {
            if (arrayList.get(0).getId() != 0) {
                arrayList.add(0, objectRef.element);
            } else {
                objectRef.element = arrayList.get(0);
            }
            this.f45399w.put(0L, objectRef.element);
        }
        LayoutInflater from = LayoutInflater.from(this);
        int a10 = jk.g.a(6.0f);
        FlexboxLayout.LayoutParams layoutParams = new FlexboxLayout.LayoutParams(-2, jk.g.a(28.0f));
        layoutParams.setMargins(a10, a10, a10, a10);
        ((ActivityLibraryBinding) E()).f38304b.removeAllViews();
        for (LibraryCategory libraryCategory : arrayList) {
            ItemLibraryClassifyBinding b10 = ItemLibraryClassifyBinding.b(from);
            Intrinsics.checkNotNullExpressionValue(b10, "inflate(...)");
            b10.f40473a.setText(libraryCategory.getName());
            BaseTextView baseTextView = b10.f40473a;
            if (this.f45399w.indexOfKey(libraryCategory.getId()) >= 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            baseTextView.setSelected(z10);
            b10.f40473a.setTag(libraryCategory);
            if (Intrinsics.areEqual(libraryCategory.getName(), getString(R$string.library_activity_label_all))) {
                b10.f40473a.setContentDescription(libraryCategory.getName() + getString(R$string.library_fragment_type));
            } else {
                b10.f40473a.setContentDescription(libraryCategory.getName());
            }
            b10.f40473a.setOnClickListener(new f(libraryCategory, this, objectRef));
            ((ActivityLibraryBinding) E()).f38304b.addView(b10.getRoot(), layoutParams);
        }
        if (arrayList.isEmpty()) {
            ((ActivityLibraryBinding) E()).f38304b.setVisibility(8);
            ((ActivityLibraryBinding) E()).f38305c.setVisibility(8);
            return;
        }
        ((ActivityLibraryBinding) E()).f38304b.setVisibility(0);
        ((ActivityLibraryBinding) E()).f38305c.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void u0(String str) {
        EventManager eventManager = EventManager.f42463a;
        Bundle bundle = new Bundle();
        bundle.putString("scene", str);
        bundle.putString("library_interest", String.valueOf(this.f45398v));
        if (this.f45399w.indexOfKey(0L) >= 0) {
            bundle.putString("library_type", "");
        } else {
            StringBuilder sb2 = new StringBuilder();
            LongSparseArray<LibraryCategory> longSparseArray = this.f45399w;
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
    public final void v0(int i10, int i11) {
        if (!m0().H().a(i10, true)) {
            return;
        }
        if (i10 == 0) {
            U();
            FixLoadMoreAdapter<BaseShorts> fixLoadMoreAdapter = this.f45396t;
            if (fixLoadMoreAdapter != null) {
                fixLoadMoreAdapter.c();
            }
            FixLoadMoreAdapter<BaseShorts> fixLoadMoreAdapter2 = this.f45396t;
            if (fixLoadMoreAdapter2 != null) {
                fixLoadMoreAdapter2.n(true);
            }
            ((ActivityLibraryBinding) E()).f38309g.setEnableLoadmore(false);
        }
        m0().J(new a.b(i10, this.f45397u, this.f45398v, this.f45399w, i11, false, 32, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void w0() {
        boolean z10;
        FlexboxLayout channelFlexboxLayout = ((ActivityLibraryBinding) E()).f38303a;
        Intrinsics.checkNotNullExpressionValue(channelFlexboxLayout, "channelFlexboxLayout");
        int childCount = channelFlexboxLayout.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = channelFlexboxLayout.getChildAt(i10);
            Intrinsics.checkNotNull(childAt, "null cannot be cast to non-null type android.widget.TextView");
            TextView textView = (TextView) childAt;
            Object tag = textView.getTag();
            Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type com.startshorts.androidplayer.bean.library.LibraryCategory");
            if (this.f45398v == ((LibraryCategory) tag).getId()) {
                z10 = true;
            } else {
                z10 = false;
            }
            textView.setSelected(z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void x0() {
        boolean z10;
        MaxHeightFlexBoxLayout classFlexboxLayout = ((ActivityLibraryBinding) E()).f38304b;
        Intrinsics.checkNotNullExpressionValue(classFlexboxLayout, "classFlexboxLayout");
        int childCount = classFlexboxLayout.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = classFlexboxLayout.getChildAt(i10);
            Intrinsics.checkNotNull(childAt, "null cannot be cast to non-null type android.widget.TextView");
            TextView textView = (TextView) childAt;
            Object tag = textView.getTag();
            Intrinsics.checkNotNull(tag, "null cannot be cast to non-null type com.startshorts.androidplayer.bean.library.LibraryCategory");
            if (this.f45399w.indexOfKey(((LibraryCategory) tag).getId()) >= 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            textView.setSelected(z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final LibraryViewModel y0(final LibraryActivity libraryActivity) {
        final LibraryViewModel libraryViewModel = (LibraryViewModel) new ViewModelProvider(libraryActivity).get(LibraryViewModel.class);
        libraryViewModel.o().observe(libraryActivity, new g(new Function1() { // from class: zh.d
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit z02;
                z02 = LibraryActivity.z0(LibraryActivity.this, (ApiErrorState) obj);
                return z02;
            }
        }));
        libraryViewModel.G().observe(libraryActivity, new g(new Function1() { // from class: zh.e
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit A0;
                A0 = LibraryActivity.A0(LibraryActivity.this, libraryViewModel, (com.startshorts.androidplayer.viewmodel.library.b) obj);
                return A0;
            }
        }));
        return libraryViewModel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit z0(LibraryActivity libraryActivity, ApiErrorState apiErrorState) {
        libraryActivity.P();
        if (apiErrorState.getState() == 1) {
            libraryActivity.V();
        } else {
            libraryActivity.W(apiErrorState.getMsg());
        }
        ((ActivityLibraryBinding) libraryActivity.E()).f38310h.setVisibility(8);
        ((ActivityLibraryBinding) libraryActivity.E()).f38309g.setVisibility(8);
        return Unit.f60915a;
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.PageStateActivity
    public int K() {
        return R$layout.viewstub_page_state_empty_lib;
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.PageStateActivity
    @NotNull
    public String L() {
        String string = getString(R$string.library_activity_empty_text);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        return string;
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.PageStateActivity
    public void S() {
        if (m0().F().loadComplete()) {
            v0(0, 1);
            return;
        }
        U();
        m0().J(new a.C0666a(0, 1, null));
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.BaseActivity
    public int o() {
        return this.f45395s;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.startshorts.androidplayer.ui.activity.base.PageStateActivity, com.startshorts.androidplayer.ui.activity.base.BaseVDBActivity, com.startshorts.androidplayer.ui.activity.base.BaseActivity, com.hades.aar.activity.IDActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        ed.a.f51339a.b(this, true);
        View toolbarView = ((ActivityLibraryBinding) E()).f38312j;
        Intrinsics.checkNotNullExpressionValue(toolbarView, "toolbarView");
        b0.g(toolbarView, DeviceUtil.f48146a.J());
        o0();
        n0();
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.BaseActivity
    public boolean q() {
        return true;
    }

    @Override // com.startshorts.androidplayer.ui.activity.base.PageStateActivity, com.startshorts.androidplayer.ui.activity.base.PermissionActivity, com.startshorts.androidplayer.ui.activity.base.BaseActivity
    @NotNull
    public String r() {
        return this.f45394r;
    }

    @l(threadMode = ThreadMode.MAIN)
    public final void refreshEpisodeNumEvent(@NotNull RefreshEpisodeNumEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        FixLoadMoreAdapter<BaseShorts> fixLoadMoreAdapter = this.f45396t;
        if (fixLoadMoreAdapter instanceof LibraryAdapter) {
            Intrinsics.checkNotNull(fixLoadMoreAdapter, "null cannot be cast to non-null type com.startshorts.androidplayer.adapter.library.LibraryAdapter");
            ((LibraryAdapter) fixLoadMoreAdapter).r(event.getShortsId(), event.getEpisodeNum());
        }
    }
}
