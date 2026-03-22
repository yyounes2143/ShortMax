package com.drake.brv.layoutmanager;

import android.content.Context;
import android.graphics.PointF;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.drake.brv.BindingAdapter;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class HoverStaggeredGridLayoutManager extends StaggeredGridLayoutManager {

    /* renamed from: a  reason: collision with root package name */
    private BindingAdapter f13537a;

    /* renamed from: b  reason: collision with root package name */
    private float f13538b;

    /* renamed from: c  reason: collision with root package name */
    private float f13539c;

    /* renamed from: d  reason: collision with root package name */
    private List<Integer> f13540d;

    /* renamed from: e  reason: collision with root package name */
    private RecyclerView.AdapterDataObserver f13541e;

    /* renamed from: f  reason: collision with root package name */
    private View f13542f;

    /* renamed from: g  reason: collision with root package name */
    private int f13543g;

    /* renamed from: h  reason: collision with root package name */
    private int f13544h;

    /* renamed from: i  reason: collision with root package name */
    private int f13545i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f13546j;

    /* loaded from: classes3.dex */
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* renamed from: a  reason: collision with root package name */
        private Parcelable f13547a;

        /* renamed from: b  reason: collision with root package name */
        private int f13548b;

        /* renamed from: c  reason: collision with root package name */
        private int f13549c;

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
            parcel.writeParcelable(this.f13547a, i10);
            parcel.writeInt(this.f13548b);
            parcel.writeInt(this.f13549c);
        }

        public SavedState(Parcel parcel) {
            this.f13547a = parcel.readParcelable(SavedState.class.getClassLoader());
            this.f13548b = parcel.readInt();
            this.f13549c = parcel.readInt();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements ViewTreeObserver.OnGlobalLayoutListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ViewTreeObserver f13550a;

        a(ViewTreeObserver viewTreeObserver) {
            this.f13550a = viewTreeObserver;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            this.f13550a.removeOnGlobalLayoutListener(this);
            if (HoverStaggeredGridLayoutManager.this.f13544h != -1) {
                HoverStaggeredGridLayoutManager hoverStaggeredGridLayoutManager = HoverStaggeredGridLayoutManager.this;
                hoverStaggeredGridLayoutManager.scrollToPositionWithOffset(hoverStaggeredGridLayoutManager.f13544h, HoverStaggeredGridLayoutManager.this.f13545i);
                HoverStaggeredGridLayoutManager.this.J(-1, Integer.MIN_VALUE);
            }
        }
    }

    /* loaded from: classes3.dex */
    private class b extends RecyclerView.AdapterDataObserver {
        private b() {
        }

        private void a(int i10) {
            Integer num = (Integer) HoverStaggeredGridLayoutManager.this.f13540d.remove(i10);
            int A = HoverStaggeredGridLayoutManager.this.A(num.intValue());
            if (A != -1) {
                HoverStaggeredGridLayoutManager.this.f13540d.add(A, num);
            } else {
                HoverStaggeredGridLayoutManager.this.f13540d.add(num);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onChanged() {
            HoverStaggeredGridLayoutManager.this.f13540d.clear();
            int itemCount = HoverStaggeredGridLayoutManager.this.f13537a.getItemCount();
            for (int i10 = 0; i10 < itemCount; i10++) {
                if (HoverStaggeredGridLayoutManager.this.f13537a.B(i10)) {
                    HoverStaggeredGridLayoutManager.this.f13540d.add(Integer.valueOf(i10));
                }
            }
            if (HoverStaggeredGridLayoutManager.this.f13542f != null && !HoverStaggeredGridLayoutManager.this.f13540d.contains(Integer.valueOf(HoverStaggeredGridLayoutManager.this.f13543g))) {
                HoverStaggeredGridLayoutManager.this.G(null);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeInserted(int i10, int i11) {
            int size = HoverStaggeredGridLayoutManager.this.f13540d.size();
            if (size > 0) {
                for (int A = HoverStaggeredGridLayoutManager.this.A(i10); A != -1 && A < size; A++) {
                    HoverStaggeredGridLayoutManager.this.f13540d.set(A, Integer.valueOf(((Integer) HoverStaggeredGridLayoutManager.this.f13540d.get(A)).intValue() + i11));
                }
            }
            for (int i12 = i10; i12 < i10 + i11; i12++) {
                if (HoverStaggeredGridLayoutManager.this.f13537a.B(i12)) {
                    int A2 = HoverStaggeredGridLayoutManager.this.A(i12);
                    if (A2 != -1) {
                        HoverStaggeredGridLayoutManager.this.f13540d.add(A2, Integer.valueOf(i12));
                    } else {
                        HoverStaggeredGridLayoutManager.this.f13540d.add(Integer.valueOf(i12));
                    }
                }
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeMoved(int i10, int i11, int i12) {
            int size = HoverStaggeredGridLayoutManager.this.f13540d.size();
            if (size > 0) {
                if (i10 < i11) {
                    for (int A = HoverStaggeredGridLayoutManager.this.A(i10); A != -1 && A < size; A++) {
                        int intValue = ((Integer) HoverStaggeredGridLayoutManager.this.f13540d.get(A)).intValue();
                        if (intValue >= i10 && intValue < i10 + i12) {
                            HoverStaggeredGridLayoutManager.this.f13540d.set(A, Integer.valueOf(intValue - (i11 - i10)));
                            a(A);
                        } else if (intValue >= i10 + i12 && intValue <= i11) {
                            HoverStaggeredGridLayoutManager.this.f13540d.set(A, Integer.valueOf(intValue - i12));
                            a(A);
                        } else {
                            return;
                        }
                    }
                    return;
                }
                for (int A2 = HoverStaggeredGridLayoutManager.this.A(i11); A2 != -1 && A2 < size; A2++) {
                    int intValue2 = ((Integer) HoverStaggeredGridLayoutManager.this.f13540d.get(A2)).intValue();
                    if (intValue2 >= i10 && intValue2 < i10 + i12) {
                        HoverStaggeredGridLayoutManager.this.f13540d.set(A2, Integer.valueOf(intValue2 + (i11 - i10)));
                        a(A2);
                    } else if (intValue2 >= i11 && intValue2 <= i10) {
                        HoverStaggeredGridLayoutManager.this.f13540d.set(A2, Integer.valueOf(intValue2 + i12));
                        a(A2);
                    } else {
                        return;
                    }
                }
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeRemoved(int i10, int i11) {
            int size = HoverStaggeredGridLayoutManager.this.f13540d.size();
            if (size > 0) {
                int i12 = i10 + i11;
                for (int i13 = i12 - 1; i13 >= i10; i13--) {
                    int y10 = HoverStaggeredGridLayoutManager.this.y(i13);
                    if (y10 != -1) {
                        HoverStaggeredGridLayoutManager.this.f13540d.remove(y10);
                        size--;
                    }
                }
                if (HoverStaggeredGridLayoutManager.this.f13542f != null && !HoverStaggeredGridLayoutManager.this.f13540d.contains(Integer.valueOf(HoverStaggeredGridLayoutManager.this.f13543g))) {
                    HoverStaggeredGridLayoutManager.this.G(null);
                }
                for (int A = HoverStaggeredGridLayoutManager.this.A(i12); A != -1 && A < size; A++) {
                    HoverStaggeredGridLayoutManager.this.f13540d.set(A, Integer.valueOf(((Integer) HoverStaggeredGridLayoutManager.this.f13540d.get(A)).intValue() - i11));
                }
            }
        }

        /* synthetic */ b(HoverStaggeredGridLayoutManager hoverStaggeredGridLayoutManager, a aVar) {
            this();
        }
    }

    public HoverStaggeredGridLayoutManager(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.f13540d = new ArrayList(0);
        this.f13541e = new b(this, null);
        this.f13543g = -1;
        this.f13544h = -1;
        this.f13545i = 0;
        this.f13546j = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int A(int i10) {
        int size = this.f13540d.size() - 1;
        int i11 = 0;
        while (i11 <= size) {
            int i12 = (i11 + size) / 2;
            if (i12 > 0) {
                int i13 = i12 - 1;
                if (this.f13540d.get(i13).intValue() >= i10) {
                    size = i13;
                }
            }
            if (this.f13540d.get(i12).intValue() < i10) {
                i11 = i12 + 1;
            } else {
                return i12;
            }
        }
        return -1;
    }

    private float B(View view, View view2) {
        if (getOrientation() != 1) {
            float f10 = this.f13538b;
            if (getReverseLayout()) {
                f10 += getWidth() - view.getWidth();
            }
            if (view2 != null) {
                if (getReverseLayout()) {
                    return Math.max(view2.getRight(), f10);
                }
                return Math.min(view2.getLeft() - view.getWidth(), f10);
            }
            return f10;
        }
        return this.f13538b;
    }

    private float C(View view, View view2) {
        if (getOrientation() == 1) {
            float f10 = this.f13539c;
            if (getReverseLayout()) {
                f10 += getHeight() - view.getHeight();
            }
            if (view2 != null) {
                if (getReverseLayout()) {
                    return Math.max(view2.getBottom(), f10);
                }
                return Math.min(view2.getTop() - view.getHeight(), f10);
            }
            return f10;
        }
        return this.f13539c;
    }

    private boolean D(View view) {
        if (getOrientation() == 1) {
            if (getReverseLayout()) {
                if (view.getBottom() - view.getTranslationY() <= getHeight() + this.f13539c) {
                    return false;
                }
                return true;
            } else if (view.getTop() + view.getTranslationY() >= this.f13539c) {
                return false;
            } else {
                return true;
            }
        } else if (getReverseLayout()) {
            if (view.getRight() - view.getTranslationX() <= getWidth() + this.f13538b) {
                return false;
            }
            return true;
        } else if (view.getLeft() + view.getTranslationX() >= this.f13538b) {
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
                if (view.getTop() + view.getTranslationY() > getHeight() + this.f13539c) {
                    return false;
                }
                return true;
            } else if (view.getBottom() - view.getTranslationY() < this.f13539c) {
                return false;
            } else {
                return true;
            }
        } else if (getReverseLayout()) {
            if (view.getLeft() + view.getTranslationX() > getWidth() + this.f13538b) {
                return false;
            }
            return true;
        } else if (view.getRight() - view.getTranslationX() < this.f13538b) {
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
        View view = this.f13542f;
        this.f13542f = null;
        this.f13543g = -1;
        view.setTranslationX(0.0f);
        view.setTranslationY(0.0f);
        this.f13537a.w();
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
            } else if (this.f13542f != null && z11 == y(this.f13543g)) {
                if (i11 == Integer.MIN_VALUE) {
                    i11 = 0;
                }
                super.scrollToPositionWithOffset(i10, i11 + this.f13542f.getHeight());
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
        BindingAdapter bindingAdapter = this.f13537a;
        if (bindingAdapter != null) {
            bindingAdapter.unregisterAdapterDataObserver(this.f13541e);
        }
        if (adapter instanceof BindingAdapter) {
            BindingAdapter bindingAdapter2 = (BindingAdapter) adapter;
            this.f13537a = bindingAdapter2;
            bindingAdapter2.registerAdapterDataObserver(this.f13541e);
            this.f13541e.onChanged();
            return;
        }
        this.f13537a = null;
        this.f13540d.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void J(int i10, int i11) {
        this.f13544h = i10;
        this.f13545i = i11;
    }

    private void K(RecyclerView.Recycler recycler, boolean z10) {
        View view;
        View view2;
        int i10;
        int i11;
        int i12;
        View childAt;
        int size = this.f13540d.size();
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
                    i11 = this.f13540d.get(z11).intValue();
                } else {
                    i11 = -1;
                }
                int i14 = z11 + 1;
                if (size > i14) {
                    i12 = this.f13540d.get(i14).intValue();
                } else {
                    i12 = -1;
                }
                if (i11 != -1 && ((i11 != i10 || D(view2)) && i12 != i11 + 1)) {
                    View view3 = this.f13542f;
                    if (view3 != null && getItemViewType(view3) != this.f13537a.getItemViewType(i11)) {
                        G(recycler);
                    }
                    if (this.f13542f == null) {
                        w(recycler, i11);
                    }
                    if (z10 || getPosition(this.f13542f) != i11) {
                        v(recycler, i11);
                    }
                    if (i12 != -1 && (childAt = getChildAt(i13 + (i12 - i10))) != this.f13542f) {
                        view = childAt;
                    }
                    View view4 = this.f13542f;
                    view4.setTranslationX(B(view4, view));
                    View view5 = this.f13542f;
                    view5.setTranslationY(C(view5, view));
                    return;
                }
            }
        }
        if (this.f13542f != null) {
            G(recycler);
        }
    }

    private void u() {
        View view = this.f13542f;
        if (view != null) {
            attachView(view);
        }
    }

    private void v(@NonNull RecyclerView.Recycler recycler, int i10) {
        recycler.bindViewToPosition(this.f13542f, i10);
        this.f13543g = i10;
        F(this.f13542f);
        if (this.f13544h != -1) {
            ViewTreeObserver viewTreeObserver = this.f13542f.getViewTreeObserver();
            viewTreeObserver.addOnGlobalLayoutListener(new a(viewTreeObserver));
        }
    }

    private void w(@NonNull RecyclerView.Recycler recycler, int i10) {
        View viewForPosition = recycler.getViewForPosition(i10);
        this.f13537a.w();
        addView(viewForPosition);
        F(viewForPosition);
        ignoreView(viewForPosition);
        this.f13542f = viewForPosition;
        this.f13543g = i10;
    }

    private void x() {
        View view = this.f13542f;
        if (view != null) {
            detachView(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int y(int i10) {
        int size = this.f13540d.size() - 1;
        int i11 = 0;
        while (i11 <= size) {
            int i12 = (i11 + size) / 2;
            if (this.f13540d.get(i12).intValue() > i10) {
                size = i12 - 1;
            } else if (this.f13540d.get(i12).intValue() < i10) {
                i11 = i12 + 1;
            } else {
                return i12;
            }
        }
        return -1;
    }

    private int z(int i10) {
        int size = this.f13540d.size() - 1;
        int i11 = 0;
        while (i11 <= size) {
            int i12 = (i11 + size) / 2;
            if (this.f13540d.get(i12).intValue() > i10) {
                size = i12 - 1;
            } else {
                if (i12 < this.f13540d.size() - 1) {
                    int i13 = i12 + 1;
                    if (this.f13540d.get(i13).intValue() <= i10) {
                        i11 = i13;
                    }
                }
                return i12;
            }
        }
        return -1;
    }

    @Override // androidx.recyclerview.widget.StaggeredGridLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean canScrollHorizontally() {
        if (super.canScrollHorizontally() && this.f13546j) {
            return true;
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.StaggeredGridLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean canScrollVertically() {
        if (super.canScrollVertically() && this.f13546j) {
            return true;
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.StaggeredGridLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollExtent(RecyclerView.State state) {
        x();
        int computeHorizontalScrollExtent = super.computeHorizontalScrollExtent(state);
        u();
        return computeHorizontalScrollExtent;
    }

    @Override // androidx.recyclerview.widget.StaggeredGridLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollOffset(RecyclerView.State state) {
        x();
        int computeHorizontalScrollOffset = super.computeHorizontalScrollOffset(state);
        u();
        return computeHorizontalScrollOffset;
    }

    @Override // androidx.recyclerview.widget.StaggeredGridLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollRange(RecyclerView.State state) {
        x();
        int computeHorizontalScrollRange = super.computeHorizontalScrollRange(state);
        u();
        return computeHorizontalScrollRange;
    }

    @Override // androidx.recyclerview.widget.StaggeredGridLayoutManager, androidx.recyclerview.widget.RecyclerView.SmoothScroller.ScrollVectorProvider
    public PointF computeScrollVectorForPosition(int i10) {
        x();
        PointF computeScrollVectorForPosition = super.computeScrollVectorForPosition(i10);
        u();
        return computeScrollVectorForPosition;
    }

    @Override // androidx.recyclerview.widget.StaggeredGridLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollExtent(RecyclerView.State state) {
        x();
        int computeVerticalScrollExtent = super.computeVerticalScrollExtent(state);
        u();
        return computeVerticalScrollExtent;
    }

    @Override // androidx.recyclerview.widget.StaggeredGridLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollOffset(RecyclerView.State state) {
        x();
        int computeVerticalScrollOffset = super.computeVerticalScrollOffset(state);
        u();
        return computeVerticalScrollOffset;
    }

    @Override // androidx.recyclerview.widget.StaggeredGridLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollRange(RecyclerView.State state) {
        x();
        int computeVerticalScrollRange = super.computeVerticalScrollRange(state);
        u();
        return computeVerticalScrollRange;
    }

    @Override // androidx.recyclerview.widget.StaggeredGridLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onAdapterChanged(RecyclerView.Adapter adapter, RecyclerView.Adapter adapter2) {
        super.onAdapterChanged(adapter, adapter2);
        I(adapter2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onAttachedToWindow(RecyclerView recyclerView) {
        super.onAttachedToWindow(recyclerView);
        I(recyclerView.getAdapter());
    }

    @Override // androidx.recyclerview.widget.StaggeredGridLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public View onFocusSearchFailed(View view, int i10, RecyclerView.Recycler recycler, RecyclerView.State state) {
        x();
        View onFocusSearchFailed = super.onFocusSearchFailed(view, i10, recycler, state);
        u();
        return onFocusSearchFailed;
    }

    @Override // androidx.recyclerview.widget.StaggeredGridLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        x();
        super.onLayoutChildren(recycler, state);
        u();
        if (!state.isPreLayout()) {
            K(recycler, true);
        }
    }

    @Override // androidx.recyclerview.widget.StaggeredGridLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            this.f13544h = savedState.f13548b;
            this.f13545i = savedState.f13549c;
            parcelable = savedState.f13547a;
        }
        super.onRestoreInstanceState(parcelable);
    }

    @Override // androidx.recyclerview.widget.StaggeredGridLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState();
        savedState.f13547a = super.onSaveInstanceState();
        savedState.f13548b = this.f13544h;
        savedState.f13549c = this.f13545i;
        return savedState;
    }

    @Override // androidx.recyclerview.widget.StaggeredGridLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollHorizontallyBy(int i10, RecyclerView.Recycler recycler, RecyclerView.State state) {
        x();
        int scrollHorizontallyBy = super.scrollHorizontallyBy(i10, recycler, state);
        u();
        if (scrollHorizontallyBy != 0) {
            K(recycler, false);
        }
        return scrollHorizontallyBy;
    }

    @Override // androidx.recyclerview.widget.StaggeredGridLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public void scrollToPosition(int i10) {
        scrollToPositionWithOffset(i10, Integer.MIN_VALUE);
    }

    @Override // androidx.recyclerview.widget.StaggeredGridLayoutManager
    public void scrollToPositionWithOffset(int i10, int i11) {
        H(i10, i11, true);
    }

    @Override // androidx.recyclerview.widget.StaggeredGridLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollVerticallyBy(int i10, RecyclerView.Recycler recycler, RecyclerView.State state) {
        x();
        int scrollVerticallyBy = super.scrollVerticallyBy(i10, recycler, state);
        u();
        if (scrollVerticallyBy != 0) {
            K(recycler, false);
        }
        return scrollVerticallyBy;
    }
}
