package com.drake.brv;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.drake.brv.BindingAdapter;
import com.drake.brv.annotaion.DividerOrientation;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import l1.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DefaultDecoration.kt */
@Metadata
/* loaded from: classes3.dex */
public final class DefaultDecoration extends RecyclerView.ItemDecoration {

    /* renamed from: a  reason: collision with root package name */
    private boolean f13468a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f13469b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f13470c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private DividerOrientation f13471d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f13472e;

    /* renamed from: f  reason: collision with root package name */
    private int f13473f;

    /* renamed from: g  reason: collision with root package name */
    private int f13474g;

    /* renamed from: h  reason: collision with root package name */
    private int f13475h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f13476i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f13477j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private Drawable f13478k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private Function1<? super BindingAdapter.BindingViewHolder, Boolean> f13479l;

    /* compiled from: DefaultDecoration.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        @NotNull

        /* renamed from: e  reason: collision with root package name */
        public static final C0243a f13480e = new C0243a(null);

        /* renamed from: a  reason: collision with root package name */
        private boolean f13481a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f13482b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f13483c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f13484d;

        /* compiled from: DefaultDecoration.kt */
        @Metadata
        /* renamed from: com.drake.brv.DefaultDecoration$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public static final class C0243a {
            public /* synthetic */ C0243a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final a a(int i10, @NotNull RecyclerView.LayoutManager layoutManager, boolean z10) {
                boolean z11;
                boolean z12;
                boolean z13;
                boolean z14;
                boolean z15;
                boolean z16;
                boolean z17;
                boolean z18;
                boolean z19;
                boolean z20;
                boolean z21;
                boolean z22;
                boolean z23;
                boolean z24;
                Intrinsics.checkNotNullParameter(layoutManager, "layoutManager");
                int i11 = i10 + 1;
                int itemCount = layoutManager.getItemCount();
                boolean z25 = false;
                a aVar = new a(false, false, false, false, 15, null);
                if (layoutManager instanceof StaggeredGridLayoutManager) {
                    StaggeredGridLayoutManager staggeredGridLayoutManager = (StaggeredGridLayoutManager) layoutManager;
                    int spanCount = staggeredGridLayoutManager.getSpanCount();
                    View findViewByPosition = layoutManager.findViewByPosition(i10);
                    if (findViewByPosition != null) {
                        ViewGroup.LayoutParams layoutParams = findViewByPosition.getLayoutParams();
                        if (layoutParams != null) {
                            int spanIndex = ((StaggeredGridLayoutManager.LayoutParams) layoutParams).getSpanIndex() + 1;
                            if (staggeredGridLayoutManager.getOrientation() == 1) {
                                if (spanIndex == 1) {
                                    z22 = true;
                                } else {
                                    z22 = false;
                                }
                                aVar.f(z22);
                                if (spanIndex == spanCount) {
                                    z23 = true;
                                } else {
                                    z23 = false;
                                }
                                aVar.g(z23);
                                if (!z10 ? i11 <= spanCount : i11 > itemCount - spanCount) {
                                    z24 = true;
                                } else {
                                    z24 = false;
                                }
                                aVar.h(z24);
                                if (!z10 ? i11 > itemCount - spanCount : i11 <= spanCount) {
                                    z25 = true;
                                }
                                aVar.e(z25);
                            } else {
                                if (i11 <= spanCount) {
                                    z19 = true;
                                } else {
                                    z19 = false;
                                }
                                aVar.f(z19);
                                if (i11 > itemCount - spanCount) {
                                    z20 = true;
                                } else {
                                    z20 = false;
                                }
                                aVar.g(z20);
                                if (!z10 ? spanIndex == 1 : spanIndex == spanCount) {
                                    z21 = true;
                                } else {
                                    z21 = false;
                                }
                                aVar.h(z21);
                                if (!z10 ? spanIndex == spanCount : spanIndex == 1) {
                                    z25 = true;
                                }
                                aVar.e(z25);
                            }
                        } else {
                            throw new NullPointerException("null cannot be cast to non-null type androidx.recyclerview.widget.StaggeredGridLayoutManager.LayoutParams");
                        }
                    }
                } else if (layoutManager instanceof GridLayoutManager) {
                    GridLayoutManager gridLayoutManager = (GridLayoutManager) layoutManager;
                    GridLayoutManager.SpanSizeLookup spanSizeLookup = gridLayoutManager.getSpanSizeLookup();
                    int spanCount2 = gridLayoutManager.getSpanCount();
                    int spanGroupIndex = spanSizeLookup.getSpanGroupIndex(i10, spanCount2);
                    int spanGroupIndex2 = spanSizeLookup.getSpanGroupIndex(itemCount - 1, spanCount2);
                    int spanIndex2 = spanSizeLookup.getSpanIndex(i10, spanCount2) + 1;
                    int spanSize = spanSizeLookup.getSpanSize(i10);
                    if (gridLayoutManager.getOrientation() == 1) {
                        if (spanIndex2 == 1) {
                            z16 = true;
                        } else {
                            z16 = false;
                        }
                        aVar.f(z16);
                        if ((spanIndex2 + spanSize) - 1 == spanCount2) {
                            z17 = true;
                        } else {
                            z17 = false;
                        }
                        aVar.g(z17);
                        if (!z10 ? !(i11 > spanCount2 || spanGroupIndex != spanSizeLookup.getSpanGroupIndex(i10 - 1, spanCount2)) : spanGroupIndex == spanGroupIndex2) {
                            z18 = true;
                        } else {
                            z18 = false;
                        }
                        aVar.h(z18);
                        if (!z10 ? spanGroupIndex == spanGroupIndex2 : !(i11 > spanCount2 || spanGroupIndex != spanSizeLookup.getSpanGroupIndex(i10 - 1, spanCount2))) {
                            z25 = true;
                        }
                        aVar.e(z25);
                    } else {
                        if (spanGroupIndex == 0) {
                            z13 = true;
                        } else {
                            z13 = false;
                        }
                        aVar.f(z13);
                        if (spanGroupIndex == spanGroupIndex2) {
                            z14 = true;
                        } else {
                            z14 = false;
                        }
                        aVar.g(z14);
                        if (!z10 ? spanIndex2 == 1 : (spanIndex2 + spanSize) - 1 == spanCount2) {
                            z15 = true;
                        } else {
                            z15 = false;
                        }
                        aVar.h(z15);
                        if (!z10 ? (spanIndex2 + spanSize) - 1 == spanCount2 : spanIndex2 == 1) {
                            z25 = true;
                        }
                        aVar.e(z25);
                    }
                } else if (layoutManager instanceof LinearLayoutManager) {
                    if (((LinearLayoutManager) layoutManager).getOrientation() == 1) {
                        aVar.f(true);
                        aVar.g(true);
                        if (!z10 ? i11 == 1 : i11 == itemCount) {
                            z12 = true;
                        } else {
                            z12 = false;
                        }
                        aVar.h(z12);
                        if (!z10 ? i11 == itemCount : i11 == 1) {
                            z25 = true;
                        }
                        aVar.e(z25);
                    } else {
                        if (i11 == 1) {
                            z11 = true;
                        } else {
                            z11 = false;
                        }
                        aVar.f(z11);
                        if (i11 == itemCount) {
                            z25 = true;
                        }
                        aVar.g(z25);
                        aVar.h(true);
                        aVar.e(true);
                    }
                }
                return aVar;
            }

            private C0243a() {
            }
        }

        public a() {
            this(false, false, false, false, 15, null);
        }

        public final boolean a() {
            return this.f13484d;
        }

        public final boolean b() {
            return this.f13481a;
        }

        public final boolean c() {
            return this.f13483c;
        }

        public final boolean d() {
            return this.f13482b;
        }

        public final void e(boolean z10) {
            this.f13484d = z10;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (this.f13481a == aVar.f13481a && this.f13482b == aVar.f13482b && this.f13483c == aVar.f13483c && this.f13484d == aVar.f13484d) {
                return true;
            }
            return false;
        }

        public final void f(boolean z10) {
            this.f13481a = z10;
        }

        public final void g(boolean z10) {
            this.f13483c = z10;
        }

        public final void h(boolean z10) {
            this.f13482b = z10;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v1, types: [int] */
        /* JADX WARN: Type inference failed for: r0v8 */
        /* JADX WARN: Type inference failed for: r0v9 */
        /* JADX WARN: Type inference failed for: r2v0, types: [boolean] */
        /* JADX WARN: Type inference failed for: r2v2, types: [boolean] */
        public int hashCode() {
            boolean z10 = this.f13481a;
            int i10 = 1;
            ?? r02 = z10;
            if (z10) {
                r02 = 1;
            }
            int i11 = r02 * 31;
            ?? r22 = this.f13482b;
            int i12 = r22;
            if (r22 != 0) {
                i12 = 1;
            }
            int i13 = (i11 + i12) * 31;
            ?? r23 = this.f13483c;
            int i14 = r23;
            if (r23 != 0) {
                i14 = 1;
            }
            int i15 = (i13 + i14) * 31;
            boolean z11 = this.f13484d;
            if (!z11) {
                i10 = z11 ? 1 : 0;
            }
            return i15 + i10;
        }

        @NotNull
        public String toString() {
            return "Edge(left=" + this.f13481a + ", top=" + this.f13482b + ", right=" + this.f13483c + ", bottom=" + this.f13484d + ')';
        }

        public a(boolean z10, boolean z11, boolean z12, boolean z13) {
            this.f13481a = z10;
            this.f13482b = z11;
            this.f13483c = z12;
            this.f13484d = z13;
        }

        public /* synthetic */ a(boolean z10, boolean z11, boolean z12, boolean z13, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this((i10 & 1) != 0 ? false : z10, (i10 & 2) != 0 ? false : z11, (i10 & 4) != 0 ? false : z12, (i10 & 8) != 0 ? false : z13);
        }
    }

    /* compiled from: DefaultDecoration.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public /* synthetic */ class b {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[DividerOrientation.values().length];
            iArr[DividerOrientation.HORIZONTAL.ordinal()] = 1;
            iArr[DividerOrientation.VERTICAL.ordinal()] = 2;
            iArr[DividerOrientation.GRID.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private final void a(RecyclerView.LayoutManager layoutManager) {
        LinearLayoutManager linearLayoutManager;
        DividerOrientation dividerOrientation;
        if (!(layoutManager instanceof GridLayoutManager) && (layoutManager instanceof LinearLayoutManager)) {
            if (layoutManager instanceof LinearLayoutManager) {
                linearLayoutManager = (LinearLayoutManager) layoutManager;
            } else {
                linearLayoutManager = null;
            }
            if (linearLayoutManager != null && linearLayoutManager.getOrientation() == 1) {
                dividerOrientation = DividerOrientation.HORIZONTAL;
            } else {
                dividerOrientation = DividerOrientation.VERTICAL;
            }
            this.f13471d = dividerOrientation;
        } else if (layoutManager instanceof StaggeredGridLayoutManager) {
            this.f13471d = DividerOrientation.GRID;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0054, code lost:
        if (r9 == false) goto L17;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void b(android.graphics.Canvas r18, androidx.recyclerview.widget.RecyclerView r19, boolean r20) {
        /*
            Method dump skipped, instructions count: 732
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.drake.brv.DefaultDecoration.b(android.graphics.Canvas, androidx.recyclerview.widget.RecyclerView, boolean):void");
    }

    private final void c(Canvas canvas, RecyclerView recyclerView, boolean z10) {
        int i10;
        int width;
        int i11;
        int i12;
        int intrinsicHeight;
        int i13;
        int i14;
        int intrinsicHeight2;
        int i15;
        boolean d10;
        int intrinsicHeight3;
        int intrinsicHeight4;
        boolean a10;
        Boolean invoke;
        canvas.save();
        if (recyclerView.getClipToPadding()) {
            i10 = recyclerView.getPaddingLeft() + this.f13474g;
            width = recyclerView.getWidth() - recyclerView.getPaddingRight();
            i11 = this.f13475h;
        } else {
            i10 = this.f13474g;
            width = recyclerView.getWidth();
            i11 = this.f13475h;
        }
        int i16 = width - i11;
        int childCount = recyclerView.getChildCount();
        int i17 = 0;
        while (i17 < childCount) {
            int i18 = i17 + 1;
            View childAt = recyclerView.getChildAt(i17);
            if (this.f13479l != null) {
                RecyclerView.ViewHolder childViewHolder = recyclerView.getChildViewHolder(childAt);
                if (childViewHolder != null) {
                    BindingAdapter.BindingViewHolder bindingViewHolder = (BindingAdapter.BindingViewHolder) childViewHolder;
                    Object m10 = bindingViewHolder.m();
                    if (m10 == null) {
                        m10 = null;
                    }
                    if (this.f13470c || m10 == null || !(m10 instanceof d) || !((d) m10).c()) {
                        Function1<? super BindingAdapter.BindingViewHolder, Boolean> function1 = this.f13479l;
                        boolean z11 = true;
                        if (function1 != null && (invoke = function1.invoke(bindingViewHolder)) != null) {
                            z11 = invoke.booleanValue();
                        }
                        if (!z11) {
                            continue;
                        }
                    }
                    i17 = i18;
                } else {
                    throw new NullPointerException("null cannot be cast to non-null type com.drake.brv.BindingAdapter.BindingViewHolder");
                }
            }
            int childAdapterPosition = recyclerView.getChildAdapterPosition(childAt);
            RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
            if (layoutManager == null) {
                return;
            }
            a a11 = a.f13480e.a(childAdapterPosition, layoutManager, z10);
            if (this.f13471d != DividerOrientation.GRID && !this.f13469b) {
                if (z10) {
                    a10 = a11.d();
                } else {
                    a10 = a11.a();
                }
                if (a10) {
                    i17 = i18;
                }
            }
            Drawable drawable = this.f13478k;
            if (drawable != null) {
                Rect rect = new Rect();
                recyclerView.getDecoratedBoundsWithMargins(childAt, rect);
                if (z10) {
                    i13 = rect.bottom;
                    if (drawable.getIntrinsicHeight() == -1) {
                        intrinsicHeight4 = this.f13473f;
                    } else {
                        intrinsicHeight4 = drawable.getIntrinsicHeight();
                    }
                    i12 = i13 - intrinsicHeight4;
                } else {
                    i12 = rect.top;
                    if (drawable.getIntrinsicHeight() == -1) {
                        intrinsicHeight = this.f13473f;
                    } else {
                        intrinsicHeight = drawable.getIntrinsicHeight();
                    }
                    i13 = intrinsicHeight + i12;
                }
                if (z10) {
                    i15 = rect.top;
                    if (drawable.getIntrinsicHeight() == -1) {
                        intrinsicHeight3 = this.f13473f;
                    } else {
                        intrinsicHeight3 = drawable.getIntrinsicHeight();
                    }
                    i14 = intrinsicHeight3 + i15;
                } else {
                    i14 = rect.bottom;
                    if (drawable.getIntrinsicHeight() == -1) {
                        intrinsicHeight2 = this.f13473f;
                    } else {
                        intrinsicHeight2 = drawable.getIntrinsicHeight();
                    }
                    i15 = i14 - intrinsicHeight2;
                }
                if (drawable.getIntrinsicWidth() != -1 && !h()) {
                    int i19 = (i10 + i16) / 2;
                    int intrinsicWidth = i19 - (drawable.getIntrinsicWidth() / 2);
                    i16 = i19 + (drawable.getIntrinsicWidth() / 2);
                    i10 = intrinsicWidth;
                }
                if (g()) {
                    if (z10) {
                        d10 = a11.a();
                    } else {
                        d10 = a11.d();
                    }
                    if (d10) {
                        drawable.setBounds(i10, i12, i16, i13);
                        drawable.draw(canvas);
                    }
                }
                drawable.setBounds(i10, i15, i16, i14);
                drawable.draw(canvas);
            }
            i17 = i18;
        }
        canvas.restore();
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0074, code lost:
        if (r10 == false) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void d(android.graphics.Canvas r18, androidx.recyclerview.widget.RecyclerView r19, boolean r20) {
        /*
            Method dump skipped, instructions count: 291
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.drake.brv.DefaultDecoration.d(android.graphics.Canvas, androidx.recyclerview.widget.RecyclerView, boolean):void");
    }

    private final boolean i(RecyclerView.LayoutManager layoutManager) {
        if (layoutManager instanceof LinearLayoutManager) {
            return ((LinearLayoutManager) layoutManager).getReverseLayout();
        }
        if (layoutManager instanceof StaggeredGridLayoutManager) {
            return ((StaggeredGridLayoutManager) layoutManager).getReverseLayout();
        }
        return false;
    }

    public final boolean e() {
        return this.f13469b;
    }

    public final boolean f() {
        return this.f13470c;
    }

    public final boolean g() {
        return this.f13468a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:201:0x0288, code lost:
        if (r16.f13468a == false) goto L131;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x00ff, code lost:
        r2 = r7;
     */
    /* JADX WARN: Removed duplicated region for block: B:169:0x023c  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x0259  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x027d  */
    /* JADX WARN: Removed duplicated region for block: B:209:0x0299  */
    /* JADX WARN: Removed duplicated region for block: B:226:0x02c3  */
    /* JADX WARN: Removed duplicated region for block: B:227:0x02c8  */
    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void getItemOffsets(@org.jetbrains.annotations.NotNull android.graphics.Rect r17, @org.jetbrains.annotations.NotNull android.view.View r18, @org.jetbrains.annotations.NotNull androidx.recyclerview.widget.RecyclerView r19, @org.jetbrains.annotations.NotNull androidx.recyclerview.widget.RecyclerView.State r20) {
        /*
            Method dump skipped, instructions count: 742
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.drake.brv.DefaultDecoration.getItemOffsets(android.graphics.Rect, android.view.View, androidx.recyclerview.widget.RecyclerView, androidx.recyclerview.widget.RecyclerView$State):void");
    }

    public final boolean h() {
        return this.f13472e;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public void onDraw(@NotNull Canvas canvas, @NotNull RecyclerView parent, @NotNull RecyclerView.State state) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(state, "state");
        RecyclerView.LayoutManager layoutManager = parent.getLayoutManager();
        if (layoutManager != null && this.f13478k != null) {
            a(layoutManager);
            boolean i10 = i(layoutManager);
            int i11 = b.$EnumSwitchMapping$0[this.f13471d.ordinal()];
            if (i11 != 1) {
                if (i11 != 2) {
                    if (i11 == 3) {
                        b(canvas, parent, i10);
                        return;
                    }
                    return;
                }
                d(canvas, parent, i10);
                return;
            }
            c(canvas, parent, i10);
        }
    }
}
