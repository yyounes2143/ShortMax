package com.drake.brv.layoutmanager;

import android.content.Context;
import android.graphics.PointF;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.drake.brv.BindingAdapter;
import com.drake.brv.listener.SnapLinearSmoothScroller;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class HoverLinearLayoutManager extends LinearLayoutManager {

    /* renamed from: a  reason: collision with root package name */
    private BindingAdapter f13520a;

    /* renamed from: b  reason: collision with root package name */
    private float f13521b;

    /* renamed from: c  reason: collision with root package name */
    private float f13522c;

    /* renamed from: d  reason: collision with root package name */
    private List<Integer> f13523d;

    /* renamed from: e  reason: collision with root package name */
    private RecyclerView.AdapterDataObserver f13524e;

    /* renamed from: f  reason: collision with root package name */
    private View f13525f;

    /* renamed from: g  reason: collision with root package name */
    private int f13526g;

    /* renamed from: h  reason: collision with root package name */
    private int f13527h;

    /* renamed from: i  reason: collision with root package name */
    private int f13528i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f13529j;

    /* renamed from: k  reason: collision with root package name */
    private int f13530k;

    /* loaded from: classes3.dex */
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* renamed from: a  reason: collision with root package name */
        private Parcelable f13531a;

        /* renamed from: b  reason: collision with root package name */
        private int f13532b;

        /* renamed from: c  reason: collision with root package name */
        private int f13533c;

        /* loaded from: classes3.dex */
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

        public SavedState() {
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i10) {
            parcel.writeParcelable(this.f13531a, i10);
            parcel.writeInt(this.f13532b);
            parcel.writeInt(this.f13533c);
        }

        public SavedState(Parcel parcel) {
            this.f13531a = parcel.readParcelable(SavedState.class.getClassLoader());
            this.f13532b = parcel.readInt();
            this.f13533c = parcel.readInt();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements ViewTreeObserver.OnGlobalLayoutListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ViewTreeObserver f13534a;

        a(ViewTreeObserver viewTreeObserver) {
            this.f13534a = viewTreeObserver;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            this.f13534a.removeOnGlobalLayoutListener(this);
            if (HoverLinearLayoutManager.this.f13527h != -1) {
                HoverLinearLayoutManager hoverLinearLayoutManager = HoverLinearLayoutManager.this;
                hoverLinearLayoutManager.scrollToPositionWithOffset(hoverLinearLayoutManager.f13527h, HoverLinearLayoutManager.this.f13528i);
                HoverLinearLayoutManager.this.J(-1, Integer.MIN_VALUE);
            }
        }
    }

    /* loaded from: classes3.dex */
    private class b extends RecyclerView.AdapterDataObserver {
        private b() {
        }

        private void a(int i10) {
            Integer num = (Integer) HoverLinearLayoutManager.this.f13523d.remove(i10);
            int A = HoverLinearLayoutManager.this.A(num.intValue());
            if (A != -1) {
                HoverLinearLayoutManager.this.f13523d.add(A, num);
            } else {
                HoverLinearLayoutManager.this.f13523d.add(num);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onChanged() {
            HoverLinearLayoutManager.this.f13523d.clear();
            int itemCount = HoverLinearLayoutManager.this.f13520a.getItemCount();
            for (int i10 = 0; i10 < itemCount; i10++) {
                if (HoverLinearLayoutManager.this.f13520a.B(i10)) {
                    HoverLinearLayoutManager.this.f13523d.add(Integer.valueOf(i10));
                }
            }
            if (HoverLinearLayoutManager.this.f13525f != null && !HoverLinearLayoutManager.this.f13523d.contains(Integer.valueOf(HoverLinearLayoutManager.this.f13526g))) {
                HoverLinearLayoutManager.this.G(null);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeInserted(int i10, int i11) {
            int size = HoverLinearLayoutManager.this.f13523d.size();
            if (size > 0) {
                for (int A = HoverLinearLayoutManager.this.A(i10); A != -1 && A < size; A++) {
                    HoverLinearLayoutManager.this.f13523d.set(A, Integer.valueOf(((Integer) HoverLinearLayoutManager.this.f13523d.get(A)).intValue() + i11));
                }
            }
            for (int i12 = i10; i12 < i10 + i11; i12++) {
                if (HoverLinearLayoutManager.this.f13520a.B(i12)) {
                    int A2 = HoverLinearLayoutManager.this.A(i12);
                    if (A2 != -1) {
                        HoverLinearLayoutManager.this.f13523d.add(A2, Integer.valueOf(i12));
                    } else {
                        HoverLinearLayoutManager.this.f13523d.add(Integer.valueOf(i12));
                    }
                }
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeMoved(int i10, int i11, int i12) {
            int i13;
            int size = HoverLinearLayoutManager.this.f13523d.size();
            if (size > 0) {
                for (int A = HoverLinearLayoutManager.this.A(Math.min(i10, i11)); A != -1 && A < size; A++) {
                    int intValue = ((Integer) HoverLinearLayoutManager.this.f13523d.get(A)).intValue();
                    if (intValue >= i10 && intValue < i10 + i12) {
                        i13 = (i11 - i10) + intValue;
                    } else if (i10 < i11 && intValue >= i10 + i12 && intValue <= i11) {
                        i13 = intValue - i12;
                    } else if (i10 > i11 && intValue >= i11 && intValue <= i10) {
                        i13 = intValue + i12;
                    } else {
                        return;
                    }
                    if (i13 != intValue) {
                        HoverLinearLayoutManager.this.f13523d.set(A, Integer.valueOf(i13));
                        a(A);
                    } else {
                        return;
                    }
                }
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeRemoved(int i10, int i11) {
            int size = HoverLinearLayoutManager.this.f13523d.size();
            if (size > 0) {
                int i12 = i10 + i11;
                for (int i13 = i12 - 1; i13 >= i10; i13--) {
                    int y10 = HoverLinearLayoutManager.this.y(i13);
                    if (y10 != -1) {
                        HoverLinearLayoutManager.this.f13523d.remove(y10);
                        size--;
                    }
                }
                if (HoverLinearLayoutManager.this.f13525f != null && !HoverLinearLayoutManager.this.f13523d.contains(Integer.valueOf(HoverLinearLayoutManager.this.f13526g))) {
                    HoverLinearLayoutManager.this.G(null);
                }
                for (int A = HoverLinearLayoutManager.this.A(i12); A != -1 && A < size; A++) {
                    HoverLinearLayoutManager.this.f13523d.set(A, Integer.valueOf(((Integer) HoverLinearLayoutManager.this.f13523d.get(A)).intValue() - i11));
                }
            }
        }

        /* synthetic */ b(HoverLinearLayoutManager hoverLinearLayoutManager, a aVar) {
            this();
        }
    }

    public HoverLinearLayoutManager(Context context, int i10, boolean z10) {
        super(context, i10, z10);
        this.f13523d = new ArrayList(0);
        this.f13524e = new b(this, null);
        this.f13526g = -1;
        this.f13527h = -1;
        this.f13528i = 0;
        this.f13529j = true;
        this.f13530k = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int A(int i10) {
        int size = this.f13523d.size() - 1;
        int i11 = 0;
        while (i11 <= size) {
            int i12 = (i11 + size) / 2;
            if (i12 > 0) {
                int i13 = i12 - 1;
                if (this.f13523d.get(i13).intValue() >= i10) {
                    size = i13;
                }
            }
            if (this.f13523d.get(i12).intValue() < i10) {
                i11 = i12 + 1;
            } else {
                return i12;
            }
        }
        return -1;
    }

    private float B(View view, View view2) {
        if (getOrientation() != 1) {
            float f10 = this.f13521b;
            if (getReverseLayout()) {
                f10 += getWidth() - view.getWidth();
            }
            if (view2 != null) {
                int i10 = 0;
                if (getReverseLayout()) {
                    if (view2.getLayoutParams() instanceof ViewGroup.MarginLayoutParams) {
                        i10 = ((ViewGroup.MarginLayoutParams) view2.getLayoutParams()).rightMargin;
                    }
                    return Math.max(view2.getRight() + i10, f10);
                }
                if (view2.getLayoutParams() instanceof ViewGroup.MarginLayoutParams) {
                    i10 = ((ViewGroup.MarginLayoutParams) view2.getLayoutParams()).leftMargin;
                }
                return Math.min((view2.getLeft() - i10) - view.getWidth(), f10);
            }
            return f10;
        }
        return this.f13521b;
    }

    private float C(View view, View view2) {
        if (getOrientation() == 1) {
            float f10 = this.f13522c;
            if (getReverseLayout()) {
                f10 += getHeight() - view.getHeight();
            }
            if (view2 != null) {
                int i10 = 0;
                if (getReverseLayout()) {
                    if (view2.getLayoutParams() instanceof ViewGroup.MarginLayoutParams) {
                        i10 = ((ViewGroup.MarginLayoutParams) view2.getLayoutParams()).bottomMargin;
                    }
                    return Math.max(view2.getBottom() + i10, f10);
                }
                if (view2.getLayoutParams() instanceof ViewGroup.MarginLayoutParams) {
                    i10 = ((ViewGroup.MarginLayoutParams) view2.getLayoutParams()).topMargin;
                }
                return Math.min((view2.getTop() - i10) - view.getHeight(), f10);
            }
            return f10;
        }
        return this.f13522c;
    }

    private boolean D(View view) {
        if (getOrientation() == 1) {
            if (getReverseLayout()) {
                if (view.getBottom() - view.getTranslationY() <= getHeight() + this.f13522c) {
                    return false;
                }
                return true;
            } else if (view.getTop() + view.getTranslationY() >= this.f13522c) {
                return false;
            } else {
                return true;
            }
        } else if (getReverseLayout()) {
            if (view.getRight() - view.getTranslationX() <= getWidth() + this.f13521b) {
                return false;
            }
            return true;
        } else if (view.getLeft() + view.getTranslationX() >= this.f13521b) {
            return false;
        } else {
            return true;
        }
    }

    private boolean E(View view, RecyclerView.LayoutParams layoutParams) {
        if (layoutParams.isItemRemoved() || layoutParams.isViewInvalid()) {
            return false;
        }
        if (getOrientation() == 1) {
            if (getReverseLayout()) {
                if (view.getTop() + view.getTranslationY() > getHeight() + this.f13522c) {
                    return false;
                }
                return true;
            } else if (view.getBottom() - view.getTranslationY() < this.f13522c) {
                return false;
            } else {
                return true;
            }
        } else if (getReverseLayout()) {
            if (view.getLeft() + view.getTranslationX() > getWidth() + this.f13521b) {
                return false;
            }
            return true;
        } else if (view.getRight() - view.getTranslationX() < this.f13521b) {
            return false;
        } else {
            return true;
        }
    }

    private void F(View view) {
        measureChildWithMargins(view, 0, 0);
        if (getOrientation() == 1) {
            view.layout(getPaddingLeft(), 0, getWidth() - getPaddingRight(), view.getMeasuredHeight());
        } else {
            view.layout(0, getPaddingTop(), view.getMeasuredWidth(), getHeight() - getPaddingBottom());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void G(@Nullable RecyclerView.Recycler recycler) {
        View view = this.f13525f;
        this.f13525f = null;
        this.f13526g = -1;
        view.setTranslationX(0.0f);
        view.setTranslationY(0.0f);
        this.f13520a.w();
        stopIgnoringView(view);
        removeView(view);
        if (recycler != null) {
            recycler.recycleView(view);
        }
    }

    private void H(int i10, int i11, boolean z10) {
        J(-1, Integer.MIN_VALUE);
        if (!z10) {
            super.scrollToPositionWithOffset(i10, i11);
            return;
        }
        int z11 = z(i10);
        if (z11 != -1 && y(i10) == -1) {
            int i12 = i10 - 1;
            if (y(i12) != -1) {
                super.scrollToPositionWithOffset(i12, i11);
                return;
            } else if (this.f13525f != null && z11 == y(this.f13526g)) {
                if (i11 == Integer.MIN_VALUE) {
                    i11 = 0;
                }
                super.scrollToPositionWithOffset(i10, i11 + this.f13525f.getHeight());
                return;
            } else {
                J(i10, i11);
                super.scrollToPositionWithOffset(i10, i11);
                return;
            }
        }
        super.scrollToPositionWithOffset(i10, i11);
    }

    private void I(RecyclerView.Adapter adapter) {
        BindingAdapter bindingAdapter = this.f13520a;
        if (bindingAdapter != null) {
            bindingAdapter.unregisterAdapterDataObserver(this.f13524e);
        }
        if (adapter instanceof BindingAdapter) {
            BindingAdapter bindingAdapter2 = (BindingAdapter) adapter;
            this.f13520a = bindingAdapter2;
            bindingAdapter2.registerAdapterDataObserver(this.f13524e);
            this.f13524e.onChanged();
            return;
        }
        this.f13520a = null;
        this.f13523d.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void J(int i10, int i11) {
        this.f13527h = i10;
        this.f13528i = i11;
    }

    private void L(RecyclerView.Recycler recycler, boolean z10) {
        View view;
        View view2;
        int i10;
        int i11;
        int i12;
        View childAt;
        int size = this.f13523d.size();
        int childCount = getChildCount();
        if (size > 0 && childCount > 0) {
            int i13 = 0;
            while (true) {
                view = null;
                if (i13 < childCount) {
                    view2 = getChildAt(i13);
                    RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view2.getLayoutParams();
                    if (E(view2, layoutParams)) {
                        i10 = layoutParams.getViewAdapterPosition();
                        break;
                    }
                    i13++;
                } else {
                    view2 = null;
                    i10 = -1;
                    i13 = -1;
                    break;
                }
            }
            if (view2 != null && i10 != -1) {
                int z11 = z(i10);
                if (z11 != -1) {
                    i11 = this.f13523d.get(z11).intValue();
                } else {
                    i11 = -1;
                }
                int i14 = z11 + 1;
                if (size > i14) {
                    i12 = this.f13523d.get(i14).intValue();
                } else {
                    i12 = -1;
                }
                if (i11 != -1 && ((i11 != i10 || D(view2)) && i12 != i11 + 1)) {
                    View view3 = this.f13525f;
                    if (view3 != null && getItemViewType(view3) != this.f13520a.getItemViewType(i11)) {
                        G(recycler);
                    }
                    if (this.f13525f == null) {
                        w(recycler, i11);
                    }
                    if (z10 || getPosition(this.f13525f) != i11) {
                        v(recycler, i11);
                    }
                    if (i12 != -1 && (childAt = getChildAt(i13 + (i12 - i10))) != this.f13525f) {
                        view = childAt;
                    }
                    View view4 = this.f13525f;
                    view4.setTranslationX(B(view4, view));
                    View view5 = this.f13525f;
                    view5.setTranslationY(C(view5, view));
                    return;
                }
            }
        }
        if (this.f13525f != null) {
            G(recycler);
        }
    }

    private void u() {
        View view;
        int i10 = this.f13530k + 1;
        this.f13530k = i10;
        if (i10 == 1 && (view = this.f13525f) != null) {
            attachView(view);
        }
    }

    private void v(@NonNull RecyclerView.Recycler recycler, int i10) {
        recycler.bindViewToPosition(this.f13525f, i10);
        this.f13526g = i10;
        F(this.f13525f);
        if (this.f13527h != -1) {
            ViewTreeObserver viewTreeObserver = this.f13525f.getViewTreeObserver();
            viewTreeObserver.addOnGlobalLayoutListener(new a(viewTreeObserver));
        }
    }

    private void w(@NonNull RecyclerView.Recycler recycler, int i10) {
        View viewForPosition = recycler.getViewForPosition(i10);
        this.f13520a.w();
        addView(viewForPosition);
        F(viewForPosition);
        ignoreView(viewForPosition);
        this.f13525f = viewForPosition;
        this.f13526g = i10;
        this.f13530k = 1;
    }

    private void x() {
        View view;
        int i10 = this.f13530k - 1;
        this.f13530k = i10;
        if (i10 == 0 && (view = this.f13525f) != null) {
            detachView(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int y(int i10) {
        int size = this.f13523d.size() - 1;
        int i11 = 0;
        while (i11 <= size) {
            int i12 = (i11 + size) / 2;
            if (this.f13523d.get(i12).intValue() > i10) {
                size = i12 - 1;
            } else if (this.f13523d.get(i12).intValue() < i10) {
                i11 = i12 + 1;
            } else {
                return i12;
            }
        }
        return -1;
    }

    private int z(int i10) {
        int size = this.f13523d.size() - 1;
        int i11 = 0;
        while (i11 <= size) {
            int i12 = (i11 + size) / 2;
            if (this.f13523d.get(i12).intValue() > i10) {
                size = i12 - 1;
            } else {
                if (i12 < this.f13523d.size() - 1) {
                    int i13 = i12 + 1;
                    if (this.f13523d.get(i13).intValue() <= i10) {
                        i11 = i13;
                    }
                }
                return i12;
            }
        }
        return -1;
    }

    public HoverLinearLayoutManager K(boolean z10) {
        this.f13529j = z10;
        return this;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean canScrollHorizontally() {
        if (super.canScrollHorizontally() && this.f13529j) {
            return true;
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean canScrollVertically() {
        if (super.canScrollVertically() && this.f13529j) {
            return true;
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollExtent(RecyclerView.State state) {
        x();
        int computeHorizontalScrollExtent = super.computeHorizontalScrollExtent(state);
        u();
        return computeHorizontalScrollExtent;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollOffset(RecyclerView.State state) {
        x();
        int computeHorizontalScrollOffset = super.computeHorizontalScrollOffset(state);
        u();
        return computeHorizontalScrollOffset;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollRange(RecyclerView.State state) {
        x();
        int computeHorizontalScrollRange = super.computeHorizontalScrollRange(state);
        u();
        return computeHorizontalScrollRange;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.SmoothScroller.ScrollVectorProvider
    public PointF computeScrollVectorForPosition(int i10) {
        x();
        PointF computeScrollVectorForPosition = super.computeScrollVectorForPosition(i10);
        u();
        return computeScrollVectorForPosition;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollExtent(RecyclerView.State state) {
        x();
        int computeVerticalScrollExtent = super.computeVerticalScrollExtent(state);
        u();
        return computeVerticalScrollExtent;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollOffset(RecyclerView.State state) {
        x();
        int computeVerticalScrollOffset = super.computeVerticalScrollOffset(state);
        u();
        return computeVerticalScrollOffset;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollRange(RecyclerView.State state) {
        x();
        int computeVerticalScrollRange = super.computeVerticalScrollRange(state);
        u();
        return computeVerticalScrollRange;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public int findFirstCompletelyVisibleItemPosition() {
        x();
        int findFirstCompletelyVisibleItemPosition = super.findFirstCompletelyVisibleItemPosition();
        u();
        return findFirstCompletelyVisibleItemPosition;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public int findFirstVisibleItemPosition() {
        x();
        int findFirstVisibleItemPosition = super.findFirstVisibleItemPosition();
        u();
        return findFirstVisibleItemPosition;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public int findLastCompletelyVisibleItemPosition() {
        x();
        int findLastCompletelyVisibleItemPosition = super.findLastCompletelyVisibleItemPosition();
        u();
        return findLastCompletelyVisibleItemPosition;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public int findLastVisibleItemPosition() {
        x();
        int findLastVisibleItemPosition = super.findLastVisibleItemPosition();
        u();
        return findLastVisibleItemPosition;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onAdapterChanged(RecyclerView.Adapter adapter, RecyclerView.Adapter adapter2) {
        super.onAdapterChanged(adapter, adapter2);
        I(adapter2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onAttachedToWindow(RecyclerView recyclerView) {
        super.onAttachedToWindow(recyclerView);
        I(recyclerView.getAdapter());
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public View onFocusSearchFailed(View view, int i10, RecyclerView.Recycler recycler, RecyclerView.State state) {
        x();
        View onFocusSearchFailed = super.onFocusSearchFailed(view, i10, recycler, state);
        u();
        return onFocusSearchFailed;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        x();
        super.onLayoutChildren(recycler, state);
        u();
        if (!state.isPreLayout()) {
            L(recycler, true);
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            this.f13527h = savedState.f13532b;
            this.f13528i = savedState.f13533c;
            parcelable = savedState.f13531a;
        }
        super.onRestoreInstanceState(parcelable);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState();
        savedState.f13531a = super.onSaveInstanceState();
        savedState.f13532b = this.f13527h;
        savedState.f13533c = this.f13528i;
        return savedState;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollHorizontallyBy(int i10, RecyclerView.Recycler recycler, RecyclerView.State state) {
        x();
        int scrollHorizontallyBy = super.scrollHorizontallyBy(i10, recycler, state);
        u();
        if (scrollHorizontallyBy != 0) {
            L(recycler, false);
        }
        return scrollHorizontallyBy;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void scrollToPosition(int i10) {
        scrollToPositionWithOffset(i10, Integer.MIN_VALUE);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public void scrollToPositionWithOffset(int i10, int i11) {
        H(i10, i11, true);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollVerticallyBy(int i10, RecyclerView.Recycler recycler, RecyclerView.State state) {
        x();
        int scrollVerticallyBy = super.scrollVerticallyBy(i10, recycler, state);
        u();
        if (scrollVerticallyBy != 0) {
            L(recycler, false);
        }
        return scrollVerticallyBy;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i10) {
        SnapLinearSmoothScroller snapLinearSmoothScroller = new SnapLinearSmoothScroller(recyclerView.getContext());
        snapLinearSmoothScroller.setTargetPosition(i10);
        startSmoothScroll(snapLinearSmoothScroller);
    }

    public HoverLinearLayoutManager(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.f13523d = new ArrayList(0);
        this.f13524e = new b(this, null);
        this.f13526g = -1;
        this.f13527h = -1;
        this.f13528i = 0;
        this.f13529j = true;
        this.f13530k = 0;
    }
}
