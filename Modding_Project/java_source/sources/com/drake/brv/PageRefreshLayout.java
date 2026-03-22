package com.drake.brv;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.drake.brv.BindingAdapter;
import com.drake.brv.PageRefreshLayout;
import com.drake.statelayout.StateLayout;
import com.drake.statelayout.Status;
import com.scwang.smart.refresh.layout.SmartRefreshLayout;
import com.scwang.smart.refresh.layout.constant.RefreshState;
import j1.e;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import sc.f;
import vc.g;
/* compiled from: PageRefreshLayout.kt */
@Metadata
/* loaded from: classes3.dex */
public class PageRefreshLayout extends SmartRefreshLayout implements g {
    @NotNull

    /* renamed from: m1  reason: collision with root package name */
    public static final a f13485m1 = new a(null);

    /* renamed from: n1  reason: collision with root package name */
    private static int f13486n1 = 1;

    /* renamed from: o1  reason: collision with root package name */
    private static int f13487o1 = 3;

    /* renamed from: p1  reason: collision with root package name */
    private static boolean f13488p1 = true;

    /* renamed from: q1  reason: collision with root package name */
    private static boolean f13489q1 = true;
    private int R0;
    @Nullable
    private StateLayout S0;
    private int T0;
    @Nullable
    private RecyclerView U0;
    private int V0;
    private boolean W0;
    @NotNull
    private m1.b X0;
    @Nullable
    private View Y0;
    private boolean Z0;

    /* renamed from: a1  reason: collision with root package name */
    private boolean f13490a1;

    /* renamed from: b1  reason: collision with root package name */
    private boolean f13491b1;
    @Nullable

    /* renamed from: c1  reason: collision with root package name */
    private Function1<? super PageRefreshLayout, Unit> f13492c1;
    @Nullable

    /* renamed from: d1  reason: collision with root package name */
    private Function1<? super PageRefreshLayout, Unit> f13493d1;

    /* renamed from: e1  reason: collision with root package name */
    private int f13494e1;

    /* renamed from: f1  reason: collision with root package name */
    private boolean f13495f1;

    /* renamed from: g1  reason: collision with root package name */
    private boolean f13496g1;

    /* renamed from: h1  reason: collision with root package name */
    private int f13497h1;

    /* renamed from: i1  reason: collision with root package name */
    private int f13498i1;

    /* renamed from: j1  reason: collision with root package name */
    private int f13499j1;

    /* renamed from: k1  reason: collision with root package name */
    private boolean f13500k1;

    /* renamed from: l1  reason: collision with root package name */
    private boolean f13501l1;

    /* compiled from: PageRefreshLayout.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: PageRefreshLayout.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class b implements m1.b {
        b() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void c(PageRefreshLayout this$0) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            if (this$0.getState() == RefreshState.None) {
                this$0.x(RefreshState.Loading);
                this$0.c(this$0);
            }
        }

        @Override // m1.b
        public void a(@NotNull RecyclerView rv, @NotNull BindingAdapter adapter, @NotNull BindingAdapter.BindingViewHolder holder, int i10) {
            Intrinsics.checkNotNullParameter(rv, "rv");
            Intrinsics.checkNotNullParameter(adapter, "adapter");
            Intrinsics.checkNotNullParameter(holder, "holder");
            if (((SmartRefreshLayout) PageRefreshLayout.this).C && !((SmartRefreshLayout) PageRefreshLayout.this).T && rv.getScrollState() != 0 && PageRefreshLayout.this.getPreloadIndex() != -1 && adapter.getItemCount() - PageRefreshLayout.this.getPreloadIndex() <= i10) {
                final PageRefreshLayout pageRefreshLayout = PageRefreshLayout.this;
                pageRefreshLayout.post(new Runnable() { // from class: j1.d
                    @Override // java.lang.Runnable
                    public final void run() {
                        PageRefreshLayout.b.c(PageRefreshLayout.this);
                    }
                });
            }
        }
    }

    /* compiled from: PageRefreshLayout.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class c extends wc.a {
        c() {
        }

        @Override // wc.a, vc.i
        public boolean a(@Nullable View view) {
            return super.b(view);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PageRefreshLayout(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void R(View view, PageRefreshLayout this$0, View view2, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        RecyclerView.Adapter adapter = ((RecyclerView) view).getAdapter();
        if (adapter instanceof BindingAdapter) {
            ((BindingAdapter) adapter).v().add(this$0.X0);
        }
    }

    private final void S() {
        StateLayout stateLayout;
        if (p1.c.c() == -1 && this.f13498i1 == -1 && p1.c.b() == -1 && this.f13497h1 == -1 && p1.c.d() == -1 && this.f13499j1 == -1) {
            setStateEnabled(false);
            return;
        }
        if (this.S0 == null) {
            int i10 = this.T0;
            if (i10 == -1) {
                Context context = getContext();
                Intrinsics.checkNotNullExpressionValue(context, "context");
                stateLayout = new StateLayout(context, null, 0, 6, null);
                removeView(this.Y0);
                stateLayout.addView(this.Y0);
                View view = this.Y0;
                Intrinsics.checkNotNull(view);
                stateLayout.setContent(view);
                G(stateLayout);
            } else {
                stateLayout = (StateLayout) findViewById(i10);
            }
            this.S0 = stateLayout;
        }
        StateLayout stateLayout2 = this.S0;
        if (stateLayout2 != null) {
            stateLayout2.setEmptyLayout(getEmptyLayout());
            stateLayout2.setErrorLayout(getErrorLayout());
            stateLayout2.setLoadingLayout(getLoadingLayout());
            stateLayout2.k(new Function2<StateLayout, Object, Unit>() { // from class: com.drake.brv.PageRefreshLayout$initializeState$2$1
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(2);
                }

                public final void b(@NotNull StateLayout onRefresh, @Nullable Object obj) {
                    boolean z10;
                    Intrinsics.checkNotNullParameter(onRefresh, "$this$onRefresh");
                    z10 = PageRefreshLayout.this.f13491b1;
                    if (z10) {
                        super/*com.scwang.smart.refresh.layout.SmartRefreshLayout*/.C(false);
                    }
                    PageRefreshLayout.this.x(RefreshState.Refreshing);
                    PageRefreshLayout pageRefreshLayout = PageRefreshLayout.this;
                    pageRefreshLayout.b(pageRefreshLayout);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(StateLayout stateLayout3, Object obj) {
                    b(stateLayout3, obj);
                    return Unit.f60915a;
                }
            });
        }
    }

    private final void T() {
        float f10;
        View view;
        if (this.W0) {
            f10 = -1.0f;
        } else {
            f10 = 1.0f;
        }
        getLayout().setScaleY(f10);
        this.f36943w0.getView().setScaleY(f10);
        sc.c refreshFooter = getRefreshFooter();
        if (refreshFooter == null) {
            view = null;
        } else {
            view = refreshFooter.getView();
        }
        if (view != null) {
            view.setScaleY(f10);
        }
    }

    @Override // com.scwang.smart.refresh.layout.SmartRefreshLayout
    @NotNull
    public f A(boolean z10) {
        this.f13490a1 = z10;
        f A = super.A(z10);
        Intrinsics.checkNotNullExpressionValue(A, "super.setEnableLoadMore(enabled)");
        return A;
    }

    @Override // com.scwang.smart.refresh.layout.SmartRefreshLayout
    @NotNull
    public f C(boolean z10) {
        this.f13491b1 = z10;
        f C = super.C(z10);
        Intrinsics.checkNotNullExpressionValue(C, "super.setEnableRefresh(enabled)");
        return C;
    }

    @Override // com.scwang.smart.refresh.layout.SmartRefreshLayout
    @NotNull
    public f E(boolean z10) {
        if (this.f36941v0 != null && this.f36943w0 != null) {
            super.E(z10);
        }
        return this;
    }

    public final void Q() {
        this.U0 = (RecyclerView) findViewById(this.V0);
        F(this);
        this.f13490a1 = this.C;
        this.f13491b1 = this.B;
        if (this.Y0 == null) {
            int childCount = getChildCount();
            int i10 = 0;
            while (true) {
                if (i10 >= childCount) {
                    break;
                }
                int i11 = i10 + 1;
                View childAt = getChildAt(i10);
                if (!(childAt instanceof sc.a)) {
                    this.Y0 = childAt;
                    break;
                }
                i10 = i11;
            }
            if (this.f13496g1) {
                S();
            }
            final View view = this.U0;
            if (view == null) {
                view = this.Y0;
            }
            if (view instanceof RecyclerView) {
                ((RecyclerView) view).addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: j1.c
                    @Override // android.view.View.OnLayoutChangeListener
                    public final void onLayoutChange(View view2, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19) {
                        PageRefreshLayout.R(view, this, view2, i12, i13, i14, i15, i16, i17, i18, i19);
                    }
                });
            }
        }
    }

    @Override // vc.f
    public void b(@NotNull f refreshLayout) {
        Intrinsics.checkNotNullParameter(refreshLayout, "refreshLayout");
        E(false);
        if (this.f13490a1) {
            super.A(false);
        }
        this.R0 = f13486n1;
        Function1<? super PageRefreshLayout, Unit> function1 = this.f13492c1;
        if (function1 != null) {
            function1.invoke(this);
        }
    }

    @Override // vc.e
    public void c(@NotNull f refreshLayout) {
        Intrinsics.checkNotNullParameter(refreshLayout, "refreshLayout");
        Function1<? super PageRefreshLayout, Unit> function1 = this.f13493d1;
        if (function1 == null) {
            Function1<? super PageRefreshLayout, Unit> function12 = this.f13492c1;
            if (function12 != null) {
                function12.invoke(this);
            }
        } else if (function1 != null) {
            function1.invoke(this);
        }
    }

    public final int getEmptyLayout() {
        return this.f13497h1;
    }

    public final int getErrorLayout() {
        return this.f13498i1;
    }

    public final int getIndex() {
        return this.R0;
    }

    public final boolean getLoaded() {
        return this.f13495f1;
    }

    public final int getLoadingLayout() {
        return this.f13499j1;
    }

    @NotNull
    public final m1.b getOnBindViewHolderListener() {
        return this.X0;
    }

    public final int getPreloadIndex() {
        return this.f13494e1;
    }

    public final int getRecyclerViewId() {
        return this.V0;
    }

    public final boolean getRefreshEnableWhenEmpty() {
        return this.f13500k1;
    }

    public final boolean getRefreshEnableWhenError() {
        return this.f13501l1;
    }

    @Nullable
    public final RecyclerView getRv() {
        return this.U0;
    }

    @NotNull
    public final p1.b getStateChangedHandler() {
        StateLayout stateLayout = this.S0;
        Intrinsics.checkNotNull(stateLayout);
        return stateLayout.getStateChangedHandler();
    }

    public final boolean getStateEnabled() {
        return this.f13496g1;
    }

    @Nullable
    public final StateLayout getStateLayout() {
        return this.S0;
    }

    public final int getStateLayoutId() {
        return this.T0;
    }

    public final boolean getUpFetchEnabled() {
        return this.W0;
    }

    @Override // com.scwang.smart.refresh.layout.SmartRefreshLayout
    @NotNull
    public f m(int i10, boolean z10, boolean z11) {
        Status status;
        super.m(i10, z10, z11);
        if (this.f13490a1) {
            if (this.f13496g1) {
                StateLayout stateLayout = this.S0;
                if (stateLayout == null) {
                    status = null;
                } else {
                    status = stateLayout.getStatus();
                }
                if (status != Status.CONTENT) {
                    super.A(false);
                }
            }
            super.A(true);
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.scwang.smart.refresh.layout.SmartRefreshLayout, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        T();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.scwang.smart.refresh.layout.SmartRefreshLayout, android.view.View
    public void onFinishInflate() {
        Q();
        super.onFinishInflate();
        this.Z0 = true;
    }

    @Override // com.scwang.smart.refresh.layout.SmartRefreshLayout
    @NotNull
    public f p(int i10, boolean z10, @Nullable Boolean bool) {
        Status status;
        boolean z11;
        super.p(i10, z10, bool);
        if (!this.P) {
            if (!Intrinsics.areEqual(bool, Boolean.FALSE) && this.T) {
                z11 = false;
            } else {
                z11 = true;
            }
            B(z11);
        }
        if (this.f13490a1) {
            if (this.f13496g1) {
                StateLayout stateLayout = this.S0;
                if (stateLayout == null) {
                    status = null;
                } else {
                    status = stateLayout.getStatus();
                }
                if (status != Status.CONTENT) {
                    super.A(false);
                }
            }
            super.A(true);
        }
        return this;
    }

    public final void setEmptyLayout(int i10) {
        this.f13497h1 = i10;
        StateLayout stateLayout = this.S0;
        if (stateLayout != null) {
            stateLayout.setEmptyLayout(i10);
        }
    }

    public final void setErrorLayout(int i10) {
        this.f13498i1 = i10;
        StateLayout stateLayout = this.S0;
        if (stateLayout != null) {
            stateLayout.setErrorLayout(i10);
        }
    }

    public final void setIndex(int i10) {
        this.R0 = i10;
    }

    public final void setLoaded(boolean z10) {
        this.f13495f1 = z10;
    }

    public final void setLoadingLayout(int i10) {
        this.f13499j1 = i10;
        StateLayout stateLayout = this.S0;
        if (stateLayout != null) {
            stateLayout.setLoadingLayout(i10);
        }
    }

    public final void setOnBindViewHolderListener(@NotNull m1.b bVar) {
        Intrinsics.checkNotNullParameter(bVar, "<set-?>");
        this.X0 = bVar;
    }

    public final void setPreloadIndex(int i10) {
        this.f13494e1 = i10;
    }

    public final void setRecyclerViewId(int i10) {
        this.V0 = i10;
    }

    public final void setRefreshEnableWhenEmpty(boolean z10) {
        this.f13500k1 = z10;
    }

    public final void setRefreshEnableWhenError(boolean z10) {
        this.f13501l1 = z10;
    }

    public final void setRv(@Nullable RecyclerView recyclerView) {
        this.U0 = recyclerView;
    }

    public final void setStateChangedHandler(@NotNull p1.b value) {
        Intrinsics.checkNotNullParameter(value, "value");
        StateLayout stateLayout = this.S0;
        Intrinsics.checkNotNull(stateLayout);
        stateLayout.setStateChangedHandler(value);
    }

    public final void setStateEnabled(boolean z10) {
        StateLayout stateLayout;
        this.f13496g1 = z10;
        if (this.Z0) {
            if (z10 && this.S0 == null) {
                S();
            } else if (!z10 && (stateLayout = this.S0) != null) {
                StateLayout.p(stateLayout, null, 1, null);
            }
        }
    }

    public final void setStateLayout(@Nullable StateLayout stateLayout) {
        this.S0 = stateLayout;
    }

    public final void setStateLayoutId(int i10) {
        this.T0 = i10;
    }

    public final void setUpFetchEnabled(boolean z10) {
        if (z10 == this.W0) {
            return;
        }
        this.W0 = z10;
        if (z10) {
            C(false);
            a(false);
            z(true);
            D(true);
            I(new c());
        } else {
            a(false);
            I(new wc.a());
        }
        if (this.Z0) {
            T();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PageRefreshLayout(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        this.R0 = f13486n1;
        this.T0 = -1;
        this.V0 = -1;
        this.X0 = new b();
        this.f13494e1 = f13487o1;
        this.f13496g1 = true;
        this.f13497h1 = -1;
        this.f13498i1 = -1;
        this.f13499j1 = -1;
        this.f13500k1 = f13488p1;
        this.f13501l1 = f13489q1;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, e.f60111e0);
        Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "context.obtainStyledAttr…leable.PageRefreshLayout)");
        try {
            setUpFetchEnabled(obtainStyledAttributes.getBoolean(e.f60123k0, this.W0));
            setStateEnabled(obtainStyledAttributes.getBoolean(e.f60125l0, this.f13496g1));
            this.T0 = obtainStyledAttributes.getResourceId(e.f60121j0, this.T0);
            this.V0 = obtainStyledAttributes.getResourceId(e.f60119i0, this.V0);
            this.P = false;
            this.P = obtainStyledAttributes.getBoolean(e.f60141t0, false);
            setEmptyLayout(obtainStyledAttributes.getResourceId(e.f60113f0, this.f13497h1));
            setErrorLayout(obtainStyledAttributes.getResourceId(e.f60115g0, this.f13498i1));
            setLoadingLayout(obtainStyledAttributes.getResourceId(e.f60117h0, this.f13499j1));
        } finally {
            obtainStyledAttributes.recycle();
        }
    }
}
