package com.google.android.flexbox;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.OrientationHelper;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.flexbox.c;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
public class FlexboxLayoutManager extends RecyclerView.LayoutManager implements com.google.android.flexbox.a, RecyclerView.SmoothScroller.ScrollVectorProvider {
    private static final Rect A = new Rect();

    /* renamed from: a  reason: collision with root package name */
    private int f19511a;

    /* renamed from: b  reason: collision with root package name */
    private int f19512b;

    /* renamed from: c  reason: collision with root package name */
    private int f19513c;

    /* renamed from: d  reason: collision with root package name */
    private int f19514d;

    /* renamed from: f  reason: collision with root package name */
    private boolean f19516f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f19517g;

    /* renamed from: j  reason: collision with root package name */
    private RecyclerView.Recycler f19520j;

    /* renamed from: k  reason: collision with root package name */
    private RecyclerView.State f19521k;

    /* renamed from: l  reason: collision with root package name */
    private c f19522l;

    /* renamed from: n  reason: collision with root package name */
    private OrientationHelper f19524n;

    /* renamed from: o  reason: collision with root package name */
    private OrientationHelper f19525o;

    /* renamed from: p  reason: collision with root package name */
    private SavedState f19526p;

    /* renamed from: u  reason: collision with root package name */
    private boolean f19531u;

    /* renamed from: w  reason: collision with root package name */
    private final Context f19533w;

    /* renamed from: x  reason: collision with root package name */
    private View f19534x;

    /* renamed from: e  reason: collision with root package name */
    private int f19515e = -1;

    /* renamed from: h  reason: collision with root package name */
    private List<com.google.android.flexbox.b> f19518h = new ArrayList();

    /* renamed from: i  reason: collision with root package name */
    private final com.google.android.flexbox.c f19519i = new com.google.android.flexbox.c(this);

    /* renamed from: m  reason: collision with root package name */
    private b f19523m = new b();

    /* renamed from: q  reason: collision with root package name */
    private int f19527q = -1;

    /* renamed from: r  reason: collision with root package name */
    private int f19528r = Integer.MIN_VALUE;

    /* renamed from: s  reason: collision with root package name */
    private int f19529s = Integer.MIN_VALUE;

    /* renamed from: t  reason: collision with root package name */
    private int f19530t = Integer.MIN_VALUE;

    /* renamed from: v  reason: collision with root package name */
    private SparseArray<View> f19532v = new SparseArray<>();

    /* renamed from: y  reason: collision with root package name */
    private int f19535y = -1;

    /* renamed from: z  reason: collision with root package name */
    private c.b f19536z = new c.b();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public class b {

        /* renamed from: a  reason: collision with root package name */
        private int f19548a;

        /* renamed from: b  reason: collision with root package name */
        private int f19549b;

        /* renamed from: c  reason: collision with root package name */
        private int f19550c;

        /* renamed from: d  reason: collision with root package name */
        private int f19551d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f19552e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f19553f;

        /* renamed from: g  reason: collision with root package name */
        private boolean f19554g;

        private b() {
            this.f19551d = 0;
        }

        static /* synthetic */ int l(b bVar, int i10) {
            int i11 = bVar.f19551d + i10;
            bVar.f19551d = i11;
            return i11;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void r() {
            int startAfterPadding;
            int width;
            if (!FlexboxLayoutManager.this.j() && FlexboxLayoutManager.this.f19516f) {
                if (this.f19552e) {
                    width = FlexboxLayoutManager.this.f19524n.getEndAfterPadding();
                } else {
                    width = FlexboxLayoutManager.this.getWidth() - FlexboxLayoutManager.this.f19524n.getStartAfterPadding();
                }
                this.f19550c = width;
                return;
            }
            if (this.f19552e) {
                startAfterPadding = FlexboxLayoutManager.this.f19524n.getEndAfterPadding();
            } else {
                startAfterPadding = FlexboxLayoutManager.this.f19524n.getStartAfterPadding();
            }
            this.f19550c = startAfterPadding;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void s(View view) {
            OrientationHelper orientationHelper = FlexboxLayoutManager.this.f19512b == 0 ? FlexboxLayoutManager.this.f19525o : FlexboxLayoutManager.this.f19524n;
            if (!FlexboxLayoutManager.this.j() && FlexboxLayoutManager.this.f19516f) {
                if (this.f19552e) {
                    this.f19550c = orientationHelper.getDecoratedStart(view) + orientationHelper.getTotalSpaceChange();
                } else {
                    this.f19550c = orientationHelper.getDecoratedEnd(view);
                }
            } else if (this.f19552e) {
                this.f19550c = orientationHelper.getDecoratedEnd(view) + orientationHelper.getTotalSpaceChange();
            } else {
                this.f19550c = orientationHelper.getDecoratedStart(view);
            }
            this.f19548a = FlexboxLayoutManager.this.getPosition(view);
            int i10 = 0;
            this.f19554g = false;
            int[] iArr = FlexboxLayoutManager.this.f19519i.f19586c;
            int i11 = this.f19548a;
            if (i11 == -1) {
                i11 = 0;
            }
            int i12 = iArr[i11];
            if (i12 != -1) {
                i10 = i12;
            }
            this.f19549b = i10;
            if (FlexboxLayoutManager.this.f19518h.size() > this.f19549b) {
                this.f19548a = ((com.google.android.flexbox.b) FlexboxLayoutManager.this.f19518h.get(this.f19549b)).f19580o;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void t() {
            this.f19548a = -1;
            this.f19549b = -1;
            this.f19550c = Integer.MIN_VALUE;
            boolean z10 = false;
            this.f19553f = false;
            this.f19554g = false;
            if (FlexboxLayoutManager.this.j()) {
                if (FlexboxLayoutManager.this.f19512b == 0) {
                    if (FlexboxLayoutManager.this.f19511a == 1) {
                        z10 = true;
                    }
                    this.f19552e = z10;
                    return;
                }
                if (FlexboxLayoutManager.this.f19512b == 2) {
                    z10 = true;
                }
                this.f19552e = z10;
            } else if (FlexboxLayoutManager.this.f19512b == 0) {
                if (FlexboxLayoutManager.this.f19511a == 3) {
                    z10 = true;
                }
                this.f19552e = z10;
            } else {
                if (FlexboxLayoutManager.this.f19512b == 2) {
                    z10 = true;
                }
                this.f19552e = z10;
            }
        }

        @NonNull
        public String toString() {
            return "AnchorInfo{mPosition=" + this.f19548a + ", mFlexLinePosition=" + this.f19549b + ", mCoordinate=" + this.f19550c + ", mPerpendicularCoordinate=" + this.f19551d + ", mLayoutFromEnd=" + this.f19552e + ", mValid=" + this.f19553f + ", mAssignedFromSavedState=" + this.f19554g + '}';
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        private int f19556a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f19557b;

        /* renamed from: c  reason: collision with root package name */
        private int f19558c;

        /* renamed from: d  reason: collision with root package name */
        private int f19559d;

        /* renamed from: e  reason: collision with root package name */
        private int f19560e;

        /* renamed from: f  reason: collision with root package name */
        private int f19561f;

        /* renamed from: g  reason: collision with root package name */
        private int f19562g;

        /* renamed from: h  reason: collision with root package name */
        private int f19563h;

        /* renamed from: i  reason: collision with root package name */
        private int f19564i;

        /* renamed from: j  reason: collision with root package name */
        private boolean f19565j;

        private c() {
            this.f19563h = 1;
            this.f19564i = 1;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean D(RecyclerView.State state, List<com.google.android.flexbox.b> list) {
            int i10;
            int i11 = this.f19559d;
            if (i11 >= 0 && i11 < state.getItemCount() && (i10 = this.f19558c) >= 0 && i10 < list.size()) {
                return true;
            }
            return false;
        }

        static /* synthetic */ int c(c cVar, int i10) {
            int i11 = cVar.f19560e + i10;
            cVar.f19560e = i11;
            return i11;
        }

        static /* synthetic */ int d(c cVar, int i10) {
            int i11 = cVar.f19560e - i10;
            cVar.f19560e = i11;
            return i11;
        }

        static /* synthetic */ int i(c cVar, int i10) {
            int i11 = cVar.f19556a - i10;
            cVar.f19556a = i11;
            return i11;
        }

        static /* synthetic */ int l(c cVar) {
            int i10 = cVar.f19558c;
            cVar.f19558c = i10 + 1;
            return i10;
        }

        static /* synthetic */ int m(c cVar) {
            int i10 = cVar.f19558c;
            cVar.f19558c = i10 - 1;
            return i10;
        }

        static /* synthetic */ int n(c cVar, int i10) {
            int i11 = cVar.f19558c + i10;
            cVar.f19558c = i11;
            return i11;
        }

        static /* synthetic */ int q(c cVar, int i10) {
            int i11 = cVar.f19561f + i10;
            cVar.f19561f = i11;
            return i11;
        }

        static /* synthetic */ int u(c cVar, int i10) {
            int i11 = cVar.f19559d + i10;
            cVar.f19559d = i11;
            return i11;
        }

        static /* synthetic */ int v(c cVar, int i10) {
            int i11 = cVar.f19559d - i10;
            cVar.f19559d = i11;
            return i11;
        }

        @NonNull
        public String toString() {
            return "LayoutState{mAvailable=" + this.f19556a + ", mFlexLinePosition=" + this.f19558c + ", mPosition=" + this.f19559d + ", mOffset=" + this.f19560e + ", mScrollingOffset=" + this.f19561f + ", mLastScrollDelta=" + this.f19562g + ", mItemDirection=" + this.f19563h + ", mLayoutDirection=" + this.f19564i + '}';
        }
    }

    public FlexboxLayoutManager(Context context, AttributeSet attributeSet, int i10, int i11) {
        RecyclerView.LayoutManager.Properties properties = RecyclerView.LayoutManager.getProperties(context, attributeSet, i10, i11);
        int i12 = properties.orientation;
        if (i12 != 0) {
            if (i12 == 1) {
                if (properties.reverseLayout) {
                    U(3);
                } else {
                    U(2);
                }
            }
        } else if (properties.reverseLayout) {
            U(1);
        } else {
            U(0);
        }
        V(1);
        T(4);
        this.f19533w = context;
    }

    private View A(int i10, int i11, boolean z10) {
        int i12;
        if (i11 > i10) {
            i12 = 1;
        } else {
            i12 = -1;
        }
        while (i10 != i11) {
            View childAt = getChildAt(i10);
            if (K(childAt, z10)) {
                return childAt;
            }
            i10 += i12;
        }
        return null;
    }

    private View B(int i10, int i11, int i12) {
        int i13;
        int position;
        u();
        ensureLayoutState();
        int startAfterPadding = this.f19524n.getStartAfterPadding();
        int endAfterPadding = this.f19524n.getEndAfterPadding();
        if (i11 > i10) {
            i13 = 1;
        } else {
            i13 = -1;
        }
        View view = null;
        View view2 = null;
        while (i10 != i11) {
            View childAt = getChildAt(i10);
            if (childAt != null && (position = getPosition(childAt)) >= 0 && position < i12) {
                if (((RecyclerView.LayoutParams) childAt.getLayoutParams()).isItemRemoved()) {
                    if (view2 == null) {
                        view2 = childAt;
                    }
                } else if (this.f19524n.getDecoratedStart(childAt) >= startAfterPadding && this.f19524n.getDecoratedEnd(childAt) <= endAfterPadding) {
                    return childAt;
                } else {
                    if (view == null) {
                        view = childAt;
                    }
                }
            }
            i10 += i13;
        }
        if (view == null) {
            return view2;
        }
        return view;
    }

    private int C(View view) {
        return getDecoratedBottom(view) + ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) view.getLayoutParams())).bottomMargin;
    }

    private int D(View view) {
        return getDecoratedLeft(view) - ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) view.getLayoutParams())).leftMargin;
    }

    private int E(View view) {
        return getDecoratedRight(view) + ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) view.getLayoutParams())).rightMargin;
    }

    private int F(View view) {
        return getDecoratedTop(view) - ((ViewGroup.MarginLayoutParams) ((RecyclerView.LayoutParams) view.getLayoutParams())).topMargin;
    }

    private int I(int i10, RecyclerView.Recycler recycler, RecyclerView.State state) {
        boolean z10;
        if (getChildCount() == 0 || i10 == 0) {
            return 0;
        }
        u();
        int i11 = 1;
        this.f19522l.f19565j = true;
        if (!j() && this.f19516f) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10 ? i10 <= 0 : i10 >= 0) {
            i11 = -1;
        }
        int abs = Math.abs(i10);
        b0(i11, abs);
        int v10 = this.f19522l.f19561f + v(recycler, state, this.f19522l);
        if (v10 < 0) {
            return 0;
        }
        if (z10) {
            if (abs > v10) {
                i10 = (-i11) * v10;
            }
        } else if (abs > v10) {
            i10 = i11 * v10;
        }
        this.f19524n.offsetChildren(-i10);
        this.f19522l.f19562g = i10;
        return i10;
    }

    private int J(int i10) {
        int height;
        int height2;
        int i11;
        if (getChildCount() != 0 && i10 != 0) {
            u();
            boolean j10 = j();
            View view = this.f19534x;
            if (j10) {
                height = view.getWidth();
            } else {
                height = view.getHeight();
            }
            if (j10) {
                height2 = getWidth();
            } else {
                height2 = getHeight();
            }
            if (getLayoutDirection() == 1) {
                int abs = Math.abs(i10);
                if (i10 < 0) {
                    i11 = Math.min((height2 + this.f19523m.f19551d) - height, abs);
                } else if (this.f19523m.f19551d + i10 > 0) {
                    i11 = this.f19523m.f19551d;
                } else {
                    return i10;
                }
            } else if (i10 > 0) {
                return Math.min((height2 - this.f19523m.f19551d) - height, i10);
            } else {
                if (this.f19523m.f19551d + i10 < 0) {
                    i11 = this.f19523m.f19551d;
                } else {
                    return i10;
                }
            }
            return -i11;
        }
        return 0;
    }

    private boolean K(View view, boolean z10) {
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int width = getWidth() - getPaddingRight();
        int height = getHeight() - getPaddingBottom();
        int D = D(view);
        int F = F(view);
        int E = E(view);
        int C = C(view);
        if (paddingLeft <= D && width >= E) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (D < width && E < paddingLeft) {
            z12 = false;
        } else {
            z12 = true;
        }
        if (paddingTop <= F && height >= C) {
            z13 = true;
        } else {
            z13 = false;
        }
        if (F < height && C < paddingTop) {
            z14 = false;
        } else {
            z14 = true;
        }
        if (z10) {
            if (z11 && z13) {
                return true;
            }
            return false;
        } else if (z12 && z14) {
            return true;
        } else {
            return false;
        }
    }

    private int L(com.google.android.flexbox.b bVar, c cVar) {
        if (j()) {
            return M(bVar, cVar);
        }
        return N(bVar, cVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x00d0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int M(com.google.android.flexbox.b r22, com.google.android.flexbox.FlexboxLayoutManager.c r23) {
        /*
            Method dump skipped, instructions count: 426
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.flexbox.FlexboxLayoutManager.M(com.google.android.flexbox.b, com.google.android.flexbox.FlexboxLayoutManager$c):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x00d6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int N(com.google.android.flexbox.b r26, com.google.android.flexbox.FlexboxLayoutManager.c r27) {
        /*
            Method dump skipped, instructions count: 544
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.flexbox.FlexboxLayoutManager.N(com.google.android.flexbox.b, com.google.android.flexbox.FlexboxLayoutManager$c):int");
    }

    private void O(RecyclerView.Recycler recycler, c cVar) {
        if (!cVar.f19565j) {
            return;
        }
        if (cVar.f19564i == -1) {
            P(recycler, cVar);
        } else {
            Q(recycler, cVar);
        }
    }

    private void P(RecyclerView.Recycler recycler, c cVar) {
        int childCount;
        int i10;
        View childAt;
        int i11;
        if (cVar.f19561f < 0 || (childCount = getChildCount()) == 0 || (childAt = getChildAt(childCount - 1)) == null || (i11 = this.f19519i.f19586c[getPosition(childAt)]) == -1) {
            return;
        }
        com.google.android.flexbox.b bVar = this.f19518h.get(i11);
        int i12 = i10;
        while (true) {
            if (i12 < 0) {
                break;
            }
            View childAt2 = getChildAt(i12);
            if (childAt2 != null) {
                if (!r(childAt2, cVar.f19561f)) {
                    break;
                } else if (bVar.f19580o != getPosition(childAt2)) {
                    continue;
                } else if (i11 <= 0) {
                    childCount = i12;
                    break;
                } else {
                    i11 += cVar.f19564i;
                    bVar = this.f19518h.get(i11);
                    childCount = i12;
                }
            }
            i12--;
        }
        recycleChildren(recycler, childCount, i10);
    }

    private void Q(RecyclerView.Recycler recycler, c cVar) {
        int childCount;
        View childAt;
        if (cVar.f19561f < 0 || (childCount = getChildCount()) == 0 || (childAt = getChildAt(0)) == null) {
            return;
        }
        int i10 = this.f19519i.f19586c[getPosition(childAt)];
        int i11 = -1;
        if (i10 == -1) {
            return;
        }
        com.google.android.flexbox.b bVar = this.f19518h.get(i10);
        int i12 = 0;
        while (true) {
            if (i12 >= childCount) {
                break;
            }
            View childAt2 = getChildAt(i12);
            if (childAt2 != null) {
                if (!s(childAt2, cVar.f19561f)) {
                    break;
                } else if (bVar.f19581p != getPosition(childAt2)) {
                    continue;
                } else if (i10 >= this.f19518h.size() - 1) {
                    i11 = i12;
                    break;
                } else {
                    i10 += cVar.f19564i;
                    bVar = this.f19518h.get(i10);
                    i11 = i12;
                }
            }
            i12++;
        }
        recycleChildren(recycler, 0, i11);
    }

    private void R() {
        int widthMode;
        boolean z10;
        if (j()) {
            widthMode = getHeightMode();
        } else {
            widthMode = getWidthMode();
        }
        c cVar = this.f19522l;
        if (widthMode != 0 && widthMode != Integer.MIN_VALUE) {
            z10 = false;
        } else {
            z10 = true;
        }
        cVar.f19557b = z10;
    }

    private void S() {
        boolean z10;
        boolean z11;
        boolean z12;
        int layoutDirection = getLayoutDirection();
        int i10 = this.f19511a;
        boolean z13 = false;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        this.f19516f = false;
                        this.f19517g = false;
                        return;
                    }
                    if (layoutDirection == 1) {
                        z13 = true;
                    }
                    this.f19516f = z13;
                    if (this.f19512b == 2) {
                        this.f19516f = !z13;
                    }
                    this.f19517g = true;
                    return;
                }
                if (layoutDirection == 1) {
                    z12 = true;
                } else {
                    z12 = false;
                }
                this.f19516f = z12;
                if (this.f19512b == 2) {
                    this.f19516f = !z12;
                }
                this.f19517g = false;
                return;
            }
            if (layoutDirection != 1) {
                z11 = true;
            } else {
                z11 = false;
            }
            this.f19516f = z11;
            if (this.f19512b == 2) {
                z13 = true;
            }
            this.f19517g = z13;
            return;
        }
        if (layoutDirection == 1) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.f19516f = z10;
        if (this.f19512b == 2) {
            z13 = true;
        }
        this.f19517g = z13;
    }

    private boolean W(RecyclerView.State state, b bVar) {
        View w10;
        int startAfterPadding;
        if (getChildCount() == 0) {
            return false;
        }
        if (bVar.f19552e) {
            w10 = y(state.getItemCount());
        } else {
            w10 = w(state.getItemCount());
        }
        if (w10 != null) {
            bVar.s(w10);
            if (!state.isPreLayout() && supportsPredictiveItemAnimations()) {
                if (this.f19524n.getDecoratedStart(w10) >= this.f19524n.getEndAfterPadding() || this.f19524n.getDecoratedEnd(w10) < this.f19524n.getStartAfterPadding()) {
                    if (bVar.f19552e) {
                        startAfterPadding = this.f19524n.getEndAfterPadding();
                    } else {
                        startAfterPadding = this.f19524n.getStartAfterPadding();
                    }
                    bVar.f19550c = startAfterPadding;
                    return true;
                }
                return true;
            }
            return true;
        }
        return false;
    }

    private boolean X(RecyclerView.State state, b bVar, SavedState savedState) {
        int i10;
        View childAt;
        int decoratedStart;
        boolean z10 = false;
        if (!state.isPreLayout() && (i10 = this.f19527q) != -1) {
            if (i10 >= 0 && i10 < state.getItemCount()) {
                bVar.f19548a = this.f19527q;
                bVar.f19549b = this.f19519i.f19586c[bVar.f19548a];
                SavedState savedState2 = this.f19526p;
                if (savedState2 != null && savedState2.g(state.getItemCount())) {
                    bVar.f19550c = this.f19524n.getStartAfterPadding() + savedState.f19547b;
                    bVar.f19554g = true;
                    bVar.f19549b = -1;
                    return true;
                } else if (this.f19528r == Integer.MIN_VALUE) {
                    View findViewByPosition = findViewByPosition(this.f19527q);
                    if (findViewByPosition != null) {
                        if (this.f19524n.getDecoratedMeasurement(findViewByPosition) > this.f19524n.getTotalSpace()) {
                            bVar.r();
                            return true;
                        } else if (this.f19524n.getDecoratedStart(findViewByPosition) - this.f19524n.getStartAfterPadding() < 0) {
                            bVar.f19550c = this.f19524n.getStartAfterPadding();
                            bVar.f19552e = false;
                            return true;
                        } else if (this.f19524n.getEndAfterPadding() - this.f19524n.getDecoratedEnd(findViewByPosition) < 0) {
                            bVar.f19550c = this.f19524n.getEndAfterPadding();
                            bVar.f19552e = true;
                            return true;
                        } else {
                            if (bVar.f19552e) {
                                decoratedStart = this.f19524n.getDecoratedEnd(findViewByPosition) + this.f19524n.getTotalSpaceChange();
                            } else {
                                decoratedStart = this.f19524n.getDecoratedStart(findViewByPosition);
                            }
                            bVar.f19550c = decoratedStart;
                        }
                    } else {
                        if (getChildCount() > 0 && (childAt = getChildAt(0)) != null) {
                            if (this.f19527q < getPosition(childAt)) {
                                z10 = true;
                            }
                            bVar.f19552e = z10;
                        }
                        bVar.r();
                    }
                    return true;
                } else {
                    if (j() || !this.f19516f) {
                        bVar.f19550c = this.f19524n.getStartAfterPadding() + this.f19528r;
                    } else {
                        bVar.f19550c = this.f19528r - this.f19524n.getEndPadding();
                    }
                    return true;
                }
            }
            this.f19527q = -1;
            this.f19528r = Integer.MIN_VALUE;
        }
        return false;
    }

    private void Y(RecyclerView.State state, b bVar) {
        if (!X(state, bVar, this.f19526p) && !W(state, bVar)) {
            bVar.r();
            bVar.f19548a = 0;
            bVar.f19549b = 0;
        }
    }

    private void Z(int i10) {
        if (i10 >= findLastVisibleItemPosition()) {
            return;
        }
        int childCount = getChildCount();
        this.f19519i.t(childCount);
        this.f19519i.u(childCount);
        this.f19519i.s(childCount);
        if (i10 >= this.f19519i.f19586c.length) {
            return;
        }
        this.f19535y = i10;
        View childClosestToStart = getChildClosestToStart();
        if (childClosestToStart == null) {
            return;
        }
        this.f19527q = getPosition(childClosestToStart);
        if (!j() && this.f19516f) {
            this.f19528r = this.f19524n.getDecoratedEnd(childClosestToStart) + this.f19524n.getEndPadding();
        } else {
            this.f19528r = this.f19524n.getDecoratedStart(childClosestToStart) - this.f19524n.getStartAfterPadding();
        }
    }

    private void a0(int i10) {
        int i11;
        int i12;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getWidth(), getWidthMode());
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getHeight(), getHeightMode());
        int width = getWidth();
        int height = getHeight();
        boolean z10 = false;
        if (j()) {
            int i13 = this.f19529s;
            if (i13 != Integer.MIN_VALUE && i13 != width) {
                z10 = true;
            }
            i11 = this.f19522l.f19557b ? this.f19533w.getResources().getDisplayMetrics().heightPixels : this.f19522l.f19556a;
        } else {
            int i14 = this.f19530t;
            if (i14 != Integer.MIN_VALUE && i14 != height) {
                z10 = true;
            }
            if (!this.f19522l.f19557b) {
                i11 = this.f19522l.f19556a;
            } else {
                i11 = this.f19533w.getResources().getDisplayMetrics().widthPixels;
            }
        }
        int i15 = i11;
        this.f19529s = width;
        this.f19530t = height;
        int i16 = this.f19535y;
        if (i16 == -1 && (this.f19527q != -1 || z10)) {
            if (this.f19523m.f19552e) {
                return;
            }
            this.f19518h.clear();
            this.f19536z.a();
            if (j()) {
                this.f19519i.e(this.f19536z, makeMeasureSpec, makeMeasureSpec2, i15, this.f19523m.f19548a, this.f19518h);
            } else {
                this.f19519i.h(this.f19536z, makeMeasureSpec, makeMeasureSpec2, i15, this.f19523m.f19548a, this.f19518h);
            }
            this.f19518h = this.f19536z.f19589a;
            this.f19519i.p(makeMeasureSpec, makeMeasureSpec2);
            this.f19519i.X();
            b bVar = this.f19523m;
            bVar.f19549b = this.f19519i.f19586c[bVar.f19548a];
            this.f19522l.f19558c = this.f19523m.f19549b;
            return;
        }
        if (i16 == -1) {
            i12 = this.f19523m.f19548a;
        } else {
            i12 = Math.min(i16, this.f19523m.f19548a);
        }
        int i17 = i12;
        this.f19536z.a();
        if (j()) {
            if (this.f19518h.size() > 0) {
                this.f19519i.j(this.f19518h, i17);
                this.f19519i.b(this.f19536z, makeMeasureSpec, makeMeasureSpec2, i15, i17, this.f19523m.f19548a, this.f19518h);
            } else {
                this.f19519i.s(i10);
                this.f19519i.d(this.f19536z, makeMeasureSpec, makeMeasureSpec2, i15, 0, this.f19518h);
            }
        } else if (this.f19518h.size() > 0) {
            this.f19519i.j(this.f19518h, i17);
            this.f19519i.b(this.f19536z, makeMeasureSpec2, makeMeasureSpec, i15, i17, this.f19523m.f19548a, this.f19518h);
        } else {
            this.f19519i.s(i10);
            this.f19519i.g(this.f19536z, makeMeasureSpec, makeMeasureSpec2, i15, 0, this.f19518h);
        }
        this.f19518h = this.f19536z.f19589a;
        this.f19519i.q(makeMeasureSpec, makeMeasureSpec2, i17);
        this.f19519i.Y(i17);
    }

    private void b0(int i10, int i11) {
        boolean z10;
        int i12;
        this.f19522l.f19564i = i10;
        boolean j10 = j();
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getWidth(), getWidthMode());
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getHeight(), getHeightMode());
        if (!j10 && this.f19516f) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (i10 == 1) {
            View childAt = getChildAt(getChildCount() - 1);
            if (childAt == null) {
                return;
            }
            this.f19522l.f19560e = this.f19524n.getDecoratedEnd(childAt);
            int position = getPosition(childAt);
            View z11 = z(childAt, this.f19518h.get(this.f19519i.f19586c[position]));
            this.f19522l.f19563h = 1;
            c cVar = this.f19522l;
            cVar.f19559d = position + cVar.f19563h;
            if (this.f19519i.f19586c.length <= this.f19522l.f19559d) {
                this.f19522l.f19558c = -1;
            } else {
                c cVar2 = this.f19522l;
                cVar2.f19558c = this.f19519i.f19586c[cVar2.f19559d];
            }
            if (z10) {
                this.f19522l.f19560e = this.f19524n.getDecoratedStart(z11);
                this.f19522l.f19561f = (-this.f19524n.getDecoratedStart(z11)) + this.f19524n.getStartAfterPadding();
                c cVar3 = this.f19522l;
                cVar3.f19561f = Math.max(cVar3.f19561f, 0);
            } else {
                this.f19522l.f19560e = this.f19524n.getDecoratedEnd(z11);
                this.f19522l.f19561f = this.f19524n.getDecoratedEnd(z11) - this.f19524n.getEndAfterPadding();
            }
            if ((this.f19522l.f19558c == -1 || this.f19522l.f19558c > this.f19518h.size() - 1) && this.f19522l.f19559d <= getFlexItemCount()) {
                int i13 = i11 - this.f19522l.f19561f;
                this.f19536z.a();
                if (i13 > 0) {
                    if (j10) {
                        this.f19519i.d(this.f19536z, makeMeasureSpec, makeMeasureSpec2, i13, this.f19522l.f19559d, this.f19518h);
                    } else {
                        this.f19519i.g(this.f19536z, makeMeasureSpec, makeMeasureSpec2, i13, this.f19522l.f19559d, this.f19518h);
                    }
                    this.f19519i.q(makeMeasureSpec, makeMeasureSpec2, this.f19522l.f19559d);
                    this.f19519i.Y(this.f19522l.f19559d);
                }
            }
        } else {
            View childAt2 = getChildAt(0);
            if (childAt2 == null) {
                return;
            }
            this.f19522l.f19560e = this.f19524n.getDecoratedStart(childAt2);
            int position2 = getPosition(childAt2);
            View x10 = x(childAt2, this.f19518h.get(this.f19519i.f19586c[position2]));
            this.f19522l.f19563h = 1;
            int i14 = this.f19519i.f19586c[position2];
            if (i14 == -1) {
                i14 = 0;
            }
            if (i14 <= 0) {
                this.f19522l.f19559d = -1;
            } else {
                this.f19522l.f19559d = position2 - this.f19518h.get(i14 - 1).b();
            }
            c cVar4 = this.f19522l;
            if (i14 > 0) {
                i12 = i14 - 1;
            } else {
                i12 = 0;
            }
            cVar4.f19558c = i12;
            if (z10) {
                this.f19522l.f19560e = this.f19524n.getDecoratedEnd(x10);
                this.f19522l.f19561f = this.f19524n.getDecoratedEnd(x10) - this.f19524n.getEndAfterPadding();
                c cVar5 = this.f19522l;
                cVar5.f19561f = Math.max(cVar5.f19561f, 0);
            } else {
                this.f19522l.f19560e = this.f19524n.getDecoratedStart(x10);
                this.f19522l.f19561f = (-this.f19524n.getDecoratedStart(x10)) + this.f19524n.getStartAfterPadding();
            }
        }
        c cVar6 = this.f19522l;
        cVar6.f19556a = i11 - cVar6.f19561f;
    }

    private void c0(b bVar, boolean z10, boolean z11) {
        if (!z11) {
            this.f19522l.f19557b = false;
        } else {
            R();
        }
        if (!j() && this.f19516f) {
            this.f19522l.f19556a = bVar.f19550c - getPaddingRight();
        } else {
            this.f19522l.f19556a = this.f19524n.getEndAfterPadding() - bVar.f19550c;
        }
        this.f19522l.f19559d = bVar.f19548a;
        this.f19522l.f19563h = 1;
        this.f19522l.f19564i = 1;
        this.f19522l.f19560e = bVar.f19550c;
        this.f19522l.f19561f = Integer.MIN_VALUE;
        this.f19522l.f19558c = bVar.f19549b;
        if (z10 && this.f19518h.size() > 1 && bVar.f19549b >= 0 && bVar.f19549b < this.f19518h.size() - 1) {
            c.l(this.f19522l);
            c.u(this.f19522l, this.f19518h.get(bVar.f19549b).b());
        }
    }

    private int computeScrollExtent(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        int itemCount = state.getItemCount();
        u();
        View w10 = w(itemCount);
        View y10 = y(itemCount);
        if (state.getItemCount() == 0 || w10 == null || y10 == null) {
            return 0;
        }
        return Math.min(this.f19524n.getTotalSpace(), this.f19524n.getDecoratedEnd(y10) - this.f19524n.getDecoratedStart(w10));
    }

    private int computeScrollOffset(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        int itemCount = state.getItemCount();
        View w10 = w(itemCount);
        View y10 = y(itemCount);
        if (state.getItemCount() != 0 && w10 != null && y10 != null) {
            int position = getPosition(w10);
            int position2 = getPosition(y10);
            int abs = Math.abs(this.f19524n.getDecoratedEnd(y10) - this.f19524n.getDecoratedStart(w10));
            int[] iArr = this.f19519i.f19586c;
            int i10 = iArr[position];
            if (i10 != 0 && i10 != -1) {
                return Math.round((i10 * (abs / ((iArr[position2] - i10) + 1))) + (this.f19524n.getStartAfterPadding() - this.f19524n.getDecoratedStart(w10)));
            }
        }
        return 0;
    }

    private int computeScrollRange(RecyclerView.State state) {
        if (getChildCount() == 0) {
            return 0;
        }
        int itemCount = state.getItemCount();
        View w10 = w(itemCount);
        View y10 = y(itemCount);
        if (state.getItemCount() == 0 || w10 == null || y10 == null) {
            return 0;
        }
        int findFirstVisibleItemPosition = findFirstVisibleItemPosition();
        return (int) ((Math.abs(this.f19524n.getDecoratedEnd(y10) - this.f19524n.getDecoratedStart(w10)) / ((findLastVisibleItemPosition() - findFirstVisibleItemPosition) + 1)) * state.getItemCount());
    }

    private void d0(b bVar, boolean z10, boolean z11) {
        if (!z11) {
            this.f19522l.f19557b = false;
        } else {
            R();
        }
        if (!j() && this.f19516f) {
            this.f19522l.f19556a = (this.f19534x.getWidth() - bVar.f19550c) - this.f19524n.getStartAfterPadding();
        } else {
            this.f19522l.f19556a = bVar.f19550c - this.f19524n.getStartAfterPadding();
        }
        this.f19522l.f19559d = bVar.f19548a;
        this.f19522l.f19563h = 1;
        this.f19522l.f19564i = -1;
        this.f19522l.f19560e = bVar.f19550c;
        this.f19522l.f19561f = Integer.MIN_VALUE;
        this.f19522l.f19558c = bVar.f19549b;
        if (z10 && bVar.f19549b > 0 && this.f19518h.size() > bVar.f19549b) {
            c.m(this.f19522l);
            c.v(this.f19522l, this.f19518h.get(bVar.f19549b).b());
        }
    }

    private void ensureLayoutState() {
        if (this.f19522l == null) {
            this.f19522l = new c();
        }
    }

    private int fixLayoutEndGap(int i10, RecyclerView.Recycler recycler, RecyclerView.State state, boolean z10) {
        int i11;
        int endAfterPadding;
        if (!j() && this.f19516f) {
            int startAfterPadding = i10 - this.f19524n.getStartAfterPadding();
            if (startAfterPadding <= 0) {
                return 0;
            }
            i11 = I(startAfterPadding, recycler, state);
        } else {
            int endAfterPadding2 = this.f19524n.getEndAfterPadding() - i10;
            if (endAfterPadding2 <= 0) {
                return 0;
            }
            i11 = -I(-endAfterPadding2, recycler, state);
        }
        int i12 = i10 + i11;
        if (z10 && (endAfterPadding = this.f19524n.getEndAfterPadding() - i12) > 0) {
            this.f19524n.offsetChildren(endAfterPadding);
            return endAfterPadding + i11;
        }
        return i11;
    }

    private int fixLayoutStartGap(int i10, RecyclerView.Recycler recycler, RecyclerView.State state, boolean z10) {
        int i11;
        int startAfterPadding;
        if (!j() && this.f19516f) {
            int endAfterPadding = this.f19524n.getEndAfterPadding() - i10;
            if (endAfterPadding <= 0) {
                return 0;
            }
            i11 = I(-endAfterPadding, recycler, state);
        } else {
            int startAfterPadding2 = i10 - this.f19524n.getStartAfterPadding();
            if (startAfterPadding2 <= 0) {
                return 0;
            }
            i11 = -I(startAfterPadding2, recycler, state);
        }
        int i12 = i10 + i11;
        if (z10 && (startAfterPadding = i12 - this.f19524n.getStartAfterPadding()) > 0) {
            this.f19524n.offsetChildren(-startAfterPadding);
            return i11 - startAfterPadding;
        }
        return i11;
    }

    private View getChildClosestToStart() {
        return getChildAt(0);
    }

    private static boolean isMeasurementUpToDate(int i10, int i11, int i12) {
        int mode = View.MeasureSpec.getMode(i11);
        int size = View.MeasureSpec.getSize(i11);
        if (i12 > 0 && i10 != i12) {
            return false;
        }
        if (mode != Integer.MIN_VALUE) {
            if (mode == 0) {
                return true;
            }
            if (mode != 1073741824 || size != i10) {
                return false;
            }
            return true;
        } else if (size < i10) {
            return false;
        } else {
            return true;
        }
    }

    private boolean r(View view, int i10) {
        if (!j() && this.f19516f) {
            if (this.f19524n.getDecoratedEnd(view) > i10) {
                return false;
            }
            return true;
        } else if (this.f19524n.getDecoratedStart(view) < this.f19524n.getEnd() - i10) {
            return false;
        } else {
            return true;
        }
    }

    private void recycleChildren(RecyclerView.Recycler recycler, int i10, int i11) {
        while (i11 >= i10) {
            removeAndRecycleViewAt(i11, recycler);
            i11--;
        }
    }

    private boolean s(View view, int i10) {
        if (!j() && this.f19516f) {
            if (this.f19524n.getEnd() - this.f19524n.getDecoratedStart(view) > i10) {
                return false;
            }
            return true;
        } else if (this.f19524n.getDecoratedEnd(view) > i10) {
            return false;
        } else {
            return true;
        }
    }

    private boolean shouldMeasureChild(View view, int i10, int i11, RecyclerView.LayoutParams layoutParams) {
        if (!view.isLayoutRequested() && isMeasurementCacheEnabled() && isMeasurementUpToDate(view.getWidth(), i10, ((ViewGroup.MarginLayoutParams) layoutParams).width) && isMeasurementUpToDate(view.getHeight(), i11, ((ViewGroup.MarginLayoutParams) layoutParams).height)) {
            return false;
        }
        return true;
    }

    private void t() {
        this.f19518h.clear();
        this.f19523m.t();
        this.f19523m.f19551d = 0;
    }

    private void u() {
        if (this.f19524n != null) {
            return;
        }
        if (j()) {
            if (this.f19512b == 0) {
                this.f19524n = OrientationHelper.createHorizontalHelper(this);
                this.f19525o = OrientationHelper.createVerticalHelper(this);
                return;
            }
            this.f19524n = OrientationHelper.createVerticalHelper(this);
            this.f19525o = OrientationHelper.createHorizontalHelper(this);
        } else if (this.f19512b == 0) {
            this.f19524n = OrientationHelper.createVerticalHelper(this);
            this.f19525o = OrientationHelper.createHorizontalHelper(this);
        } else {
            this.f19524n = OrientationHelper.createHorizontalHelper(this);
            this.f19525o = OrientationHelper.createVerticalHelper(this);
        }
    }

    private int v(RecyclerView.Recycler recycler, RecyclerView.State state, c cVar) {
        if (cVar.f19561f != Integer.MIN_VALUE) {
            if (cVar.f19556a < 0) {
                c.q(cVar, cVar.f19556a);
            }
            O(recycler, cVar);
        }
        int i10 = cVar.f19556a;
        int i11 = cVar.f19556a;
        boolean j10 = j();
        int i12 = 0;
        while (true) {
            if ((i11 > 0 || this.f19522l.f19557b) && cVar.D(state, this.f19518h)) {
                com.google.android.flexbox.b bVar = this.f19518h.get(cVar.f19558c);
                cVar.f19559d = bVar.f19580o;
                i12 += L(bVar, cVar);
                if (!j10 && this.f19516f) {
                    c.d(cVar, bVar.a() * cVar.f19564i);
                } else {
                    c.c(cVar, bVar.a() * cVar.f19564i);
                }
                i11 -= bVar.a();
            }
        }
        c.i(cVar, i12);
        if (cVar.f19561f != Integer.MIN_VALUE) {
            c.q(cVar, i12);
            if (cVar.f19556a < 0) {
                c.q(cVar, cVar.f19556a);
            }
            O(recycler, cVar);
        }
        return i10 - cVar.f19556a;
    }

    private View w(int i10) {
        View B = B(0, getChildCount(), i10);
        if (B == null) {
            return null;
        }
        int i11 = this.f19519i.f19586c[getPosition(B)];
        if (i11 == -1) {
            return null;
        }
        return x(B, this.f19518h.get(i11));
    }

    private View x(View view, com.google.android.flexbox.b bVar) {
        boolean j10 = j();
        int i10 = bVar.f19573h;
        for (int i11 = 1; i11 < i10; i11++) {
            View childAt = getChildAt(i11);
            if (childAt != null && childAt.getVisibility() != 8) {
                if (this.f19516f && !j10) {
                    if (this.f19524n.getDecoratedEnd(view) >= this.f19524n.getDecoratedEnd(childAt)) {
                    }
                    view = childAt;
                } else {
                    if (this.f19524n.getDecoratedStart(view) <= this.f19524n.getDecoratedStart(childAt)) {
                    }
                    view = childAt;
                }
            }
        }
        return view;
    }

    private View y(int i10) {
        View B = B(getChildCount() - 1, -1, i10);
        if (B == null) {
            return null;
        }
        return z(B, this.f19518h.get(this.f19519i.f19586c[getPosition(B)]));
    }

    private View z(View view, com.google.android.flexbox.b bVar) {
        boolean j10 = j();
        int childCount = (getChildCount() - bVar.f19573h) - 1;
        for (int childCount2 = getChildCount() - 2; childCount2 > childCount; childCount2--) {
            View childAt = getChildAt(childCount2);
            if (childAt != null && childAt.getVisibility() != 8) {
                if (this.f19516f && !j10) {
                    if (this.f19524n.getDecoratedStart(view) <= this.f19524n.getDecoratedStart(childAt)) {
                    }
                    view = childAt;
                } else {
                    if (this.f19524n.getDecoratedEnd(view) >= this.f19524n.getDecoratedEnd(childAt)) {
                    }
                    view = childAt;
                }
            }
        }
        return view;
    }

    @NonNull
    public List<com.google.android.flexbox.b> G() {
        ArrayList arrayList = new ArrayList(this.f19518h.size());
        int size = this.f19518h.size();
        for (int i10 = 0; i10 < size; i10++) {
            com.google.android.flexbox.b bVar = this.f19518h.get(i10);
            if (bVar.b() != 0) {
                arrayList.add(bVar);
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int H(int i10) {
        return this.f19519i.f19586c[i10];
    }

    public void T(int i10) {
        int i11 = this.f19514d;
        if (i11 != i10) {
            if (i11 == 4 || i10 == 4) {
                removeAllViews();
                t();
            }
            this.f19514d = i10;
            requestLayout();
        }
    }

    public void U(int i10) {
        if (this.f19511a != i10) {
            removeAllViews();
            this.f19511a = i10;
            this.f19524n = null;
            this.f19525o = null;
            t();
            requestLayout();
        }
    }

    public void V(int i10) {
        if (i10 != 2) {
            int i11 = this.f19512b;
            if (i11 != i10) {
                if (i11 == 0 || i10 == 0) {
                    removeAllViews();
                    t();
                }
                this.f19512b = i10;
                this.f19524n = null;
                this.f19525o = null;
                requestLayout();
                return;
            }
            return;
        }
        throw new UnsupportedOperationException("wrap_reverse is not supported in FlexboxLayoutManager");
    }

    @Override // com.google.android.flexbox.a
    public void a(View view, int i10, int i11, com.google.android.flexbox.b bVar) {
        calculateItemDecorationsForChild(view, A);
        if (j()) {
            int leftDecorationWidth = getLeftDecorationWidth(view) + getRightDecorationWidth(view);
            bVar.f19570e += leftDecorationWidth;
            bVar.f19571f += leftDecorationWidth;
            return;
        }
        int topDecorationHeight = getTopDecorationHeight(view) + getBottomDecorationHeight(view);
        bVar.f19570e += topDecorationHeight;
        bVar.f19571f += topDecorationHeight;
    }

    @Override // com.google.android.flexbox.a
    public View b(int i10) {
        View view = this.f19532v.get(i10);
        if (view != null) {
            return view;
        }
        return this.f19520j.getViewForPosition(i10);
    }

    @Override // com.google.android.flexbox.a
    public int c(int i10, int i11, int i12) {
        return RecyclerView.LayoutManager.getChildMeasureSpec(getHeight(), getHeightMode(), i11, i12, canScrollVertically());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean canScrollHorizontally() {
        int i10;
        if (this.f19512b == 0) {
            return j();
        }
        if (j()) {
            int width = getWidth();
            View view = this.f19534x;
            if (view != null) {
                i10 = view.getWidth();
            } else {
                i10 = 0;
            }
            if (width <= i10) {
                return false;
            }
        }
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean canScrollVertically() {
        int i10;
        if (this.f19512b == 0) {
            return !j();
        }
        if (j()) {
            return true;
        }
        int height = getHeight();
        View view = this.f19534x;
        if (view != null) {
            i10 = view.getHeight();
        } else {
            i10 = 0;
        }
        if (height > i10) {
            return true;
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean checkLayoutParams(RecyclerView.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollExtent(@NonNull RecyclerView.State state) {
        return computeScrollExtent(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollOffset(@NonNull RecyclerView.State state) {
        return computeScrollOffset(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollRange(@NonNull RecyclerView.State state) {
        return computeScrollRange(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.SmoothScroller.ScrollVectorProvider
    public PointF computeScrollVectorForPosition(int i10) {
        View childAt;
        int i11;
        if (getChildCount() == 0 || (childAt = getChildAt(0)) == null) {
            return null;
        }
        if (i10 < getPosition(childAt)) {
            i11 = -1;
        } else {
            i11 = 1;
        }
        if (j()) {
            return new PointF(0.0f, i11);
        }
        return new PointF(i11, 0.0f);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollExtent(@NonNull RecyclerView.State state) {
        return computeScrollExtent(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollOffset(@NonNull RecyclerView.State state) {
        return computeScrollOffset(state);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollRange(@NonNull RecyclerView.State state) {
        return computeScrollRange(state);
    }

    @Override // com.google.android.flexbox.a
    public int d(View view) {
        int leftDecorationWidth;
        int rightDecorationWidth;
        if (j()) {
            leftDecorationWidth = getTopDecorationHeight(view);
            rightDecorationWidth = getBottomDecorationHeight(view);
        } else {
            leftDecorationWidth = getLeftDecorationWidth(view);
            rightDecorationWidth = getRightDecorationWidth(view);
        }
        return leftDecorationWidth + rightDecorationWidth;
    }

    @Override // com.google.android.flexbox.a
    public View e(int i10) {
        return b(i10);
    }

    @Override // com.google.android.flexbox.a
    public int f(View view, int i10, int i11) {
        int topDecorationHeight;
        int bottomDecorationHeight;
        if (j()) {
            topDecorationHeight = getLeftDecorationWidth(view);
            bottomDecorationHeight = getRightDecorationWidth(view);
        } else {
            topDecorationHeight = getTopDecorationHeight(view);
            bottomDecorationHeight = getBottomDecorationHeight(view);
        }
        return topDecorationHeight + bottomDecorationHeight;
    }

    public int findFirstVisibleItemPosition() {
        View A2 = A(0, getChildCount(), false);
        if (A2 == null) {
            return -1;
        }
        return getPosition(A2);
    }

    public int findLastVisibleItemPosition() {
        View A2 = A(getChildCount() - 1, -1, false);
        if (A2 == null) {
            return -1;
        }
        return getPosition(A2);
    }

    @Override // com.google.android.flexbox.a
    public int g(int i10, int i11, int i12) {
        return RecyclerView.LayoutManager.getChildMeasureSpec(getWidth(), getWidthMode(), i11, i12, canScrollHorizontally());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public RecyclerView.LayoutParams generateLayoutParams(Context context, AttributeSet attributeSet) {
        return new LayoutParams(context, attributeSet);
    }

    @Override // com.google.android.flexbox.a
    public int getAlignContent() {
        return 5;
    }

    @Override // com.google.android.flexbox.a
    public int getAlignItems() {
        return this.f19514d;
    }

    @Override // com.google.android.flexbox.a
    public int getFlexDirection() {
        return this.f19511a;
    }

    @Override // com.google.android.flexbox.a
    public int getFlexItemCount() {
        return this.f19521k.getItemCount();
    }

    @Override // com.google.android.flexbox.a
    public List<com.google.android.flexbox.b> getFlexLinesInternal() {
        return this.f19518h;
    }

    @Override // com.google.android.flexbox.a
    public int getFlexWrap() {
        return this.f19512b;
    }

    @Override // com.google.android.flexbox.a
    public int getLargestMainSize() {
        if (this.f19518h.size() == 0) {
            return 0;
        }
        int size = this.f19518h.size();
        int i10 = Integer.MIN_VALUE;
        for (int i11 = 0; i11 < size; i11++) {
            i10 = Math.max(i10, this.f19518h.get(i11).f19570e);
        }
        return i10;
    }

    @Override // com.google.android.flexbox.a
    public int getMaxLine() {
        return this.f19515e;
    }

    @Override // com.google.android.flexbox.a
    public int getSumOfCrossSize() {
        int size = this.f19518h.size();
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            i10 += this.f19518h.get(i11).f19572g;
        }
        return i10;
    }

    @Override // com.google.android.flexbox.a
    public void i(int i10, View view) {
        this.f19532v.put(i10, view);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean isAutoMeasureEnabled() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isLayoutRtl() {
        return this.f19516f;
    }

    @Override // com.google.android.flexbox.a
    public boolean j() {
        int i10 = this.f19511a;
        if (i10 == 0 || i10 == 1) {
            return true;
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onAdapterChanged(RecyclerView.Adapter adapter, RecyclerView.Adapter adapter2) {
        removeAllViews();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onAttachedToWindow(RecyclerView recyclerView) {
        super.onAttachedToWindow(recyclerView);
        this.f19534x = (View) recyclerView.getParent();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onDetachedFromWindow(RecyclerView recyclerView, RecyclerView.Recycler recycler) {
        super.onDetachedFromWindow(recyclerView, recycler);
        if (this.f19531u) {
            removeAndRecycleAllViews(recycler);
            recycler.clear();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsAdded(@NonNull RecyclerView recyclerView, int i10, int i11) {
        super.onItemsAdded(recyclerView, i10, i11);
        Z(i10);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsMoved(@NonNull RecyclerView recyclerView, int i10, int i11, int i12) {
        super.onItemsMoved(recyclerView, i10, i11, i12);
        Z(Math.min(i10, i11));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsRemoved(@NonNull RecyclerView recyclerView, int i10, int i11) {
        super.onItemsRemoved(recyclerView, i10, i11);
        Z(i10);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsUpdated(@NonNull RecyclerView recyclerView, int i10, int i11, Object obj) {
        super.onItemsUpdated(recyclerView, i10, i11, obj);
        Z(i10);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        int i10;
        int i11;
        this.f19520j = recycler;
        this.f19521k = state;
        int itemCount = state.getItemCount();
        if (itemCount == 0 && state.isPreLayout()) {
            return;
        }
        S();
        u();
        ensureLayoutState();
        this.f19519i.t(itemCount);
        this.f19519i.u(itemCount);
        this.f19519i.s(itemCount);
        this.f19522l.f19565j = false;
        SavedState savedState = this.f19526p;
        if (savedState != null && savedState.g(itemCount)) {
            this.f19527q = this.f19526p.f19546a;
        }
        if (!this.f19523m.f19553f || this.f19527q != -1 || this.f19526p != null) {
            this.f19523m.t();
            Y(state, this.f19523m);
            this.f19523m.f19553f = true;
        }
        detachAndScrapAttachedViews(recycler);
        if (this.f19523m.f19552e) {
            d0(this.f19523m, false, true);
        } else {
            c0(this.f19523m, false, true);
        }
        a0(itemCount);
        v(recycler, state, this.f19522l);
        if (this.f19523m.f19552e) {
            i11 = this.f19522l.f19560e;
            c0(this.f19523m, true, false);
            v(recycler, state, this.f19522l);
            i10 = this.f19522l.f19560e;
        } else {
            i10 = this.f19522l.f19560e;
            d0(this.f19523m, true, false);
            v(recycler, state, this.f19522l);
            i11 = this.f19522l.f19560e;
        }
        if (getChildCount() > 0) {
            if (this.f19523m.f19552e) {
                fixLayoutStartGap(i11 + fixLayoutEndGap(i10, recycler, state, true), recycler, state, false);
            } else {
                fixLayoutEndGap(i10 + fixLayoutStartGap(i11, recycler, state, true), recycler, state, false);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutCompleted(RecyclerView.State state) {
        super.onLayoutCompleted(state);
        this.f19526p = null;
        this.f19527q = -1;
        this.f19528r = Integer.MIN_VALUE;
        this.f19535y = -1;
        this.f19523m.t();
        this.f19532v.clear();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            this.f19526p = (SavedState) parcelable;
            requestLayout();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public Parcelable onSaveInstanceState() {
        if (this.f19526p != null) {
            return new SavedState(this.f19526p);
        }
        SavedState savedState = new SavedState();
        if (getChildCount() <= 0) {
            savedState.h();
        } else {
            View childClosestToStart = getChildClosestToStart();
            savedState.f19546a = getPosition(childClosestToStart);
            savedState.f19547b = this.f19524n.getDecoratedStart(childClosestToStart) - this.f19524n.getStartAfterPadding();
        }
        return savedState;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollHorizontallyBy(int i10, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (j() && this.f19512b != 0) {
            int J = J(i10);
            b.l(this.f19523m, J);
            this.f19525o.offsetChildren(-J);
            return J;
        }
        int I = I(i10, recycler, state);
        this.f19532v.clear();
        return I;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void scrollToPosition(int i10) {
        this.f19527q = i10;
        this.f19528r = Integer.MIN_VALUE;
        SavedState savedState = this.f19526p;
        if (savedState != null) {
            savedState.h();
        }
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollVerticallyBy(int i10, RecyclerView.Recycler recycler, RecyclerView.State state) {
        if (!j() && (this.f19512b != 0 || j())) {
            int J = J(i10);
            b.l(this.f19523m, J);
            this.f19525o.offsetChildren(-J);
            return J;
        }
        int I = I(i10, recycler, state);
        this.f19532v.clear();
        return I;
    }

    @Override // com.google.android.flexbox.a
    public void setFlexLines(List<com.google.android.flexbox.b> list) {
        this.f19518h = list;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i10) {
        LinearSmoothScroller linearSmoothScroller = new LinearSmoothScroller(recyclerView.getContext());
        linearSmoothScroller.setTargetPosition(i10);
        startSmoothScroll(linearSmoothScroller);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* renamed from: a  reason: collision with root package name */
        private int f19546a;

        /* renamed from: b  reason: collision with root package name */
        private int f19547b;

        /* loaded from: classes4.dex */
        class a implements Parcelable.Creator<SavedState> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b */
            public SavedState[] newArray(int i10) {
                return new SavedState[i10];
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean g(int i10) {
            int i11 = this.f19546a;
            if (i11 >= 0 && i11 < i10) {
                return true;
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void h() {
            this.f19546a = -1;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @NonNull
        public String toString() {
            return "SavedState{mAnchorPosition=" + this.f19546a + ", mAnchorOffset=" + this.f19547b + '}';
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            parcel.writeInt(this.f19546a);
            parcel.writeInt(this.f19547b);
        }

        SavedState() {
        }

        private SavedState(Parcel parcel) {
            this.f19546a = parcel.readInt();
            this.f19547b = parcel.readInt();
        }

        private SavedState(SavedState savedState) {
            this.f19546a = savedState.f19546a;
            this.f19547b = savedState.f19547b;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onItemsUpdated(@NonNull RecyclerView recyclerView, int i10, int i11) {
        super.onItemsUpdated(recyclerView, i10, i11);
        Z(i10);
    }

    /* loaded from: classes4.dex */
    public static class LayoutParams extends RecyclerView.LayoutParams implements FlexItem {
        public static final Parcelable.Creator<LayoutParams> CREATOR = new a();

        /* renamed from: a  reason: collision with root package name */
        private float f19537a;

        /* renamed from: b  reason: collision with root package name */
        private float f19538b;

        /* renamed from: c  reason: collision with root package name */
        private int f19539c;

        /* renamed from: d  reason: collision with root package name */
        private float f19540d;

        /* renamed from: e  reason: collision with root package name */
        private int f19541e;

        /* renamed from: f  reason: collision with root package name */
        private int f19542f;

        /* renamed from: g  reason: collision with root package name */
        private int f19543g;

        /* renamed from: h  reason: collision with root package name */
        private int f19544h;

        /* renamed from: i  reason: collision with root package name */
        private boolean f19545i;

        /* loaded from: classes4.dex */
        class a implements Parcelable.Creator<LayoutParams> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: a */
            public LayoutParams createFromParcel(Parcel parcel) {
                return new LayoutParams(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: b */
            public LayoutParams[] newArray(int i10) {
                return new LayoutParams[i10];
            }
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f19537a = 0.0f;
            this.f19538b = 1.0f;
            this.f19539c = -1;
            this.f19540d = -1.0f;
            this.f19543g = ViewCompat.MEASURED_SIZE_MASK;
            this.f19544h = ViewCompat.MEASURED_SIZE_MASK;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int F() {
            return this.f19539c;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int G0() {
            return ((ViewGroup.MarginLayoutParams) this).rightMargin;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int H0() {
            return this.f19542f;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int I0() {
            return this.f19544h;
        }

        @Override // com.google.android.flexbox.FlexItem
        public float P() {
            return this.f19538b;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void W(int i10) {
            this.f19542f = i10;
        }

        @Override // com.google.android.flexbox.FlexItem
        public float Y() {
            return this.f19537a;
        }

        @Override // com.google.android.flexbox.FlexItem
        public float Z() {
            return this.f19540d;
        }

        @Override // com.google.android.flexbox.FlexItem
        public boolean a0() {
            return this.f19545i;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getHeight() {
            return ((ViewGroup.MarginLayoutParams) this).height;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getOrder() {
            return 1;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getWidth() {
            return ((ViewGroup.MarginLayoutParams) this).width;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int l0() {
            return this.f19543g;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int s() {
            return this.f19541e;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int s0() {
            return ((ViewGroup.MarginLayoutParams) this).leftMargin;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setMinWidth(int i10) {
            this.f19541e = i10;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int t() {
            return ((ViewGroup.MarginLayoutParams) this).topMargin;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int v() {
            return ((ViewGroup.MarginLayoutParams) this).bottomMargin;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            parcel.writeFloat(this.f19537a);
            parcel.writeFloat(this.f19538b);
            parcel.writeInt(this.f19539c);
            parcel.writeFloat(this.f19540d);
            parcel.writeInt(this.f19541e);
            parcel.writeInt(this.f19542f);
            parcel.writeInt(this.f19543g);
            parcel.writeInt(this.f19544h);
            parcel.writeByte(this.f19545i ? (byte) 1 : (byte) 0);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).bottomMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).leftMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).rightMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).topMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).height);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).width);
        }

        public LayoutParams(int i10, int i11) {
            super(i10, i11);
            this.f19537a = 0.0f;
            this.f19538b = 1.0f;
            this.f19539c = -1;
            this.f19540d = -1.0f;
            this.f19543g = ViewCompat.MEASURED_SIZE_MASK;
            this.f19544h = ViewCompat.MEASURED_SIZE_MASK;
        }

        protected LayoutParams(Parcel parcel) {
            super(-2, -2);
            this.f19537a = 0.0f;
            this.f19538b = 1.0f;
            this.f19539c = -1;
            this.f19540d = -1.0f;
            this.f19543g = ViewCompat.MEASURED_SIZE_MASK;
            this.f19544h = ViewCompat.MEASURED_SIZE_MASK;
            this.f19537a = parcel.readFloat();
            this.f19538b = parcel.readFloat();
            this.f19539c = parcel.readInt();
            this.f19540d = parcel.readFloat();
            this.f19541e = parcel.readInt();
            this.f19542f = parcel.readInt();
            this.f19543g = parcel.readInt();
            this.f19544h = parcel.readInt();
            this.f19545i = parcel.readByte() != 0;
            ((ViewGroup.MarginLayoutParams) this).bottomMargin = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).leftMargin = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).rightMargin = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).topMargin = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).height = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).width = parcel.readInt();
        }
    }

    @Override // com.google.android.flexbox.a
    public void h(com.google.android.flexbox.b bVar) {
    }
}
