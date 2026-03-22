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
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.drake.brv.BindingAdapter;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class HoverGridLayoutManager extends GridLayoutManager {

    /* renamed from: a  reason: collision with root package name */
    private BindingAdapter f13504a;

    /* renamed from: b  reason: collision with root package name */
    private float f13505b;

    /* renamed from: c  reason: collision with root package name */
    private float f13506c;

    /* renamed from: d  reason: collision with root package name */
    private List<Integer> f13507d;

    /* renamed from: e  reason: collision with root package name */
    private RecyclerView.AdapterDataObserver f13508e;

    /* renamed from: f  reason: collision with root package name */
    private View f13509f;

    /* renamed from: g  reason: collision with root package name */
    private int f13510g;

    /* renamed from: h  reason: collision with root package name */
    private int f13511h;

    /* renamed from: i  reason: collision with root package name */
    private int f13512i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f13513j;

    /* loaded from: classes3.dex */
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* renamed from: a  reason: collision with root package name */
        private Parcelable f13514a;

        /* renamed from: b  reason: collision with root package name */
        private int f13515b;

        /* renamed from: c  reason: collision with root package name */
        private int f13516c;

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
            parcel.writeParcelable(this.f13514a, i10);
            parcel.writeInt(this.f13515b);
            parcel.writeInt(this.f13516c);
        }

        public SavedState(Parcel parcel) {
            this.f13514a = parcel.readParcelable(SavedState.class.getClassLoader());
            this.f13515b = parcel.readInt();
            this.f13516c = parcel.readInt();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements ViewTreeObserver.OnGlobalLayoutListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ViewTreeObserver f13517a;

        a(ViewTreeObserver viewTreeObserver) {
            this.f13517a = viewTreeObserver;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            this.f13517a.removeOnGlobalLayoutListener(this);
            if (HoverGridLayoutManager.this.f13511h != -1) {
                HoverGridLayoutManager hoverGridLayoutManager = HoverGridLayoutManager.this;
                hoverGridLayoutManager.scrollToPositionWithOffset(hoverGridLayoutManager.f13511h, HoverGridLayoutManager.this.f13512i);
                HoverGridLayoutManager.this.J(-1, Integer.MIN_VALUE);
            }
        }
    }

    /* loaded from: classes3.dex */
    private class b extends RecyclerView.AdapterDataObserver {
        private b() {
        }

        private void a(int i10) {
            Integer num = (Integer) HoverGridLayoutManager.this.f13507d.remove(i10);
            int A = HoverGridLayoutManager.this.A(num.intValue());
            if (A != -1) {
                HoverGridLayoutManager.this.f13507d.add(A, num);
            } else {
                HoverGridLayoutManager.this.f13507d.add(num);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onChanged() {
            HoverGridLayoutManager.this.f13507d.clear();
            int itemCount = HoverGridLayoutManager.this.f13504a.getItemCount();
            for (int i10 = 0; i10 < itemCount; i10++) {
                if (HoverGridLayoutManager.this.f13504a.B(i10)) {
                    HoverGridLayoutManager.this.f13507d.add(Integer.valueOf(i10));
                }
            }
            if (HoverGridLayoutManager.this.f13509f != null && !HoverGridLayoutManager.this.f13507d.contains(Integer.valueOf(HoverGridLayoutManager.this.f13510g))) {
                HoverGridLayoutManager.this.G(null);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeInserted(int i10, int i11) {
            int size = HoverGridLayoutManager.this.f13507d.size();
            if (size > 0) {
                for (int A = HoverGridLayoutManager.this.A(i10); A != -1 && A < size; A++) {
                    HoverGridLayoutManager.this.f13507d.set(A, Integer.valueOf(((Integer) HoverGridLayoutManager.this.f13507d.get(A)).intValue() + i11));
                }
            }
            for (int i12 = i10; i12 < i10 + i11; i12++) {
                if (HoverGridLayoutManager.this.f13504a.B(i12)) {
                    int A2 = HoverGridLayoutManager.this.A(i12);
                    if (A2 != -1) {
                        HoverGridLayoutManager.this.f13507d.add(A2, Integer.valueOf(i12));
                    } else {
                        HoverGridLayoutManager.this.f13507d.add(Integer.valueOf(i12));
                    }
                }
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeMoved(int i10, int i11, int i12) {
            int size = HoverGridLayoutManager.this.f13507d.size();
            if (size > 0) {
                if (i10 < i11) {
                    for (int A = HoverGridLayoutManager.this.A(i10); A != -1 && A < size; A++) {
                        int intValue = ((Integer) HoverGridLayoutManager.this.f13507d.get(A)).intValue();
                        if (intValue >= i10 && intValue < i10 + i12) {
                            HoverGridLayoutManager.this.f13507d.set(A, Integer.valueOf(intValue - (i11 - i10)));
                            a(A);
                        } else if (intValue >= i10 + i12 && intValue <= i11) {
                            HoverGridLayoutManager.this.f13507d.set(A, Integer.valueOf(intValue - i12));
                            a(A);
                        } else {
                            return;
                        }
                    }
                    return;
                }
                for (int A2 = HoverGridLayoutManager.this.A(i11); A2 != -1 && A2 < size; A2++) {
                    int intValue2 = ((Integer) HoverGridLayoutManager.this.f13507d.get(A2)).intValue();
                    if (intValue2 >= i10 && intValue2 < i10 + i12) {
                        HoverGridLayoutManager.this.f13507d.set(A2, Integer.valueOf(intValue2 + (i11 - i10)));
                        a(A2);
                    } else if (intValue2 >= i11 && intValue2 <= i10) {
                        HoverGridLayoutManager.this.f13507d.set(A2, Integer.valueOf(intValue2 + i12));
                        a(A2);
                    } else {
                        return;
                    }
                }
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public void onItemRangeRemoved(int i10, int i11) {
            int size = HoverGridLayoutManager.this.f13507d.size();
            if (size > 0) {
                int i12 = i10 + i11;
                for (int i13 = i12 - 1; i13 >= i10; i13--) {
                    int y10 = HoverGridLayoutManager.this.y(i13);
                    if (y10 != -1) {
                        HoverGridLayoutManager.this.f13507d.remove(y10);
                        size--;
                    }
                }
                if (HoverGridLayoutManager.this.f13509f != null && !HoverGridLayoutManager.this.f13507d.contains(Integer.valueOf(HoverGridLayoutManager.this.f13510g))) {
                    HoverGridLayoutManager.this.G(null);
                }
                for (int A = HoverGridLayoutManager.this.A(i12); A != -1 && A < size; A++) {
                    HoverGridLayoutManager.this.f13507d.set(A, Integer.valueOf(((Integer) HoverGridLayoutManager.this.f13507d.get(A)).intValue() - i11));
                }
            }
        }

        /* synthetic */ b(HoverGridLayoutManager hoverGridLayoutManager, a aVar) {
            this();
        }
    }

    public HoverGridLayoutManager(Context context, int i10, int i11, boolean z10) {
        super(context, i10, i11, z10);
        this.f13507d = new ArrayList(0);
        this.f13508e = new b(this, null);
        this.f13510g = -1;
        this.f13511h = -1;
        this.f13512i = 0;
        this.f13513j = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int A(int i10) {
        int size = this.f13507d.size() - 1;
        int i11 = 0;
        while (i11 <= size) {
            int i12 = (i11 + size) / 2;
            if (i12 > 0) {
                int i13 = i12 - 1;
                if (this.f13507d.get(i13).intValue() >= i10) {
                    size = i13;
                }
            }
            if (this.f13507d.get(i12).intValue() < i10) {
                i11 = i12 + 1;
            } else {
                return i12;
            }
        }
        return -1;
    }

    private float B(View view, View view2) {
        if (getOrientation() != 1) {
            float f10 = this.f13505b;
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
        return this.f13505b;
    }

    private float C(View view, View view2) {
        if (getOrientation() == 1) {
            float f10 = this.f13506c;
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
        return this.f13506c;
    }

    private boolean D(View view) {
        if (getOrientation() == 1) {
            if (getReverseLayout()) {
                if (view.getBottom() - view.getTranslationY() <= getHeight() + this.f13506c) {
                    return false;
                }
                return true;
            } else if (view.getTop() + view.getTranslationY() >= this.f13506c) {
                return false;
            } else {
                return true;
            }
        } else if (getReverseLayout()) {
            if (view.getRight() - view.getTranslationX() <= getWidth() + this.f13505b) {
                return false;
            }
            return true;
        } else if (view.getLeft() + view.getTranslationX() >= this.f13505b) {
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
                if (view.getTop() + view.getTranslationY() > getHeight() + this.f13506c) {
                    return false;
                }
                return true;
            } else if (view.getBottom() - view.getTranslationY() < this.f13506c) {
                return false;
            } else {
                return true;
            }
        } else if (getReverseLayout()) {
            if (view.getLeft() + view.getTranslationX() > getWidth() + this.f13505b) {
                return false;
            }
            return true;
        } else if (view.getRight() - view.getTranslationX() < this.f13505b) {
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
        View view = this.f13509f;
        this.f13509f = null;
        this.f13510g = -1;
        view.setTranslationX(0.0f);
        view.setTranslationY(0.0f);
        this.f13504a.w();
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
            } else if (this.f13509f != null && z11 == y(this.f13510g)) {
                if (i11 == Integer.MIN_VALUE) {
                    i11 = 0;
                }
                super.scrollToPositionWithOffset(i10, i11 + this.f13509f.getHeight());
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
        BindingAdapter bindingAdapter = this.f13504a;
        if (bindingAdapter != null) {
            bindingAdapter.unregisterAdapterDataObserver(this.f13508e);
        }
        if (adapter instanceof BindingAdapter) {
            BindingAdapter bindingAdapter2 = (BindingAdapter) adapter;
            this.f13504a = bindingAdapter2;
            bindingAdapter2.registerAdapterDataObserver(this.f13508e);
            this.f13508e.onChanged();
            return;
        }
        this.f13504a = null;
        this.f13507d.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void J(int i10, int i11) {
        this.f13511h = i10;
        this.f13512i = i11;
    }

    private void L(RecyclerView.Recycler recycler, boolean z10) {
        View view;
        View view2;
        int i10;
        int i11;
        int i12;
        View childAt;
        int size = this.f13507d.size();
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
                    i11 = this.f13507d.get(z11).intValue();
                } else {
                    i11 = -1;
                }
                int i14 = z11 + 1;
                if (size > i14) {
                    i12 = this.f13507d.get(i14).intValue();
                } else {
                    i12 = -1;
                }
                if (i11 != -1 && ((i11 != i10 || D(view2)) && i12 != i11 + 1)) {
                    View view3 = this.f13509f;
                    if (view3 != null && getItemViewType(view3) != this.f13504a.getItemViewType(i11)) {
                        G(recycler);
                    }
                    if (this.f13509f == null) {
                        w(recycler, i11);
                    }
                    if (z10 || getPosition(this.f13509f) != i11) {
                        v(recycler, i11);
                    }
                    if (i12 != -1 && (childAt = getChildAt(i13 + (i12 - i10))) != this.f13509f) {
                        view = childAt;
                    }
                    View view4 = this.f13509f;
                    view4.setTranslationX(B(view4, view));
                    View view5 = this.f13509f;
                    view5.setTranslationY(C(view5, view));
                    return;
                }
            }
        }
        if (this.f13509f != null) {
            G(recycler);
        }
    }

    private void u() {
        View view = this.f13509f;
        if (view != null) {
            attachView(view);
        }
    }

    private void v(@NonNull RecyclerView.Recycler recycler, int i10) {
        recycler.bindViewToPosition(this.f13509f, i10);
        this.f13510g = i10;
        F(this.f13509f);
        if (this.f13511h != -1) {
            ViewTreeObserver viewTreeObserver = this.f13509f.getViewTreeObserver();
            viewTreeObserver.addOnGlobalLayoutListener(new a(viewTreeObserver));
        }
    }

    private void w(@NonNull RecyclerView.Recycler recycler, int i10) {
        View viewForPosition = recycler.getViewForPosition(i10);
        this.f13504a.w();
        addView(viewForPosition);
        F(viewForPosition);
        ignoreView(viewForPosition);
        this.f13509f = viewForPosition;
        this.f13510g = i10;
    }

    private void x() {
        View view = this.f13509f;
        if (view != null) {
            detachView(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int y(int i10) {
        int size = this.f13507d.size() - 1;
        int i11 = 0;
        while (i11 <= size) {
            int i12 = (i11 + size) / 2;
            if (this.f13507d.get(i12).intValue() > i10) {
                size = i12 - 1;
            } else if (this.f13507d.get(i12).intValue() < i10) {
                i11 = i12 + 1;
            } else {
                return i12;
            }
        }
        return -1;
    }

    private int z(int i10) {
        int size = this.f13507d.size() - 1;
        int i11 = 0;
        while (i11 <= size) {
            int i12 = (i11 + size) / 2;
            if (this.f13507d.get(i12).intValue() > i10) {
                size = i12 - 1;
            } else {
                if (i12 < this.f13507d.size() - 1) {
                    int i13 = i12 + 1;
                    if (this.f13507d.get(i13).intValue() <= i10) {
                        i11 = i13;
                    }
                }
                return i12;
            }
        }
        return -1;
    }

    public HoverGridLayoutManager K(boolean z10) {
        this.f13513j = z10;
        return this;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean canScrollHorizontally() {
        if (super.canScrollHorizontally() && this.f13513j) {
            return true;
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public boolean canScrollVertically() {
        if (super.canScrollVertically() && this.f13513j) {
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

    @Override // androidx.recyclerview.widget.GridLayoutManager, androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeHorizontalScrollOffset(RecyclerView.State state) {
        x();
        int computeHorizontalScrollOffset = super.computeHorizontalScrollOffset(state);
        u();
        return computeHorizontalScrollOffset;
    }

    @Override // androidx.recyclerview.widget.GridLayoutManager, androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
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

    @Override // androidx.recyclerview.widget.GridLayoutManager, androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollOffset(RecyclerView.State state) {
        x();
        int computeVerticalScrollOffset = super.computeVerticalScrollOffset(state);
        u();
        return computeVerticalScrollOffset;
    }

    @Override // androidx.recyclerview.widget.GridLayoutManager, androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int computeVerticalScrollRange(RecyclerView.State state) {
        x();
        int computeVerticalScrollRange = super.computeVerticalScrollRange(state);
        u();
        return computeVerticalScrollRange;
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

    @Override // androidx.recyclerview.widget.GridLayoutManager, androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public View onFocusSearchFailed(View view, int i10, RecyclerView.Recycler recycler, RecyclerView.State state) {
        x();
        View onFocusSearchFailed = super.onFocusSearchFailed(view, i10, recycler, state);
        u();
        return onFocusSearchFailed;
    }

    @Override // androidx.recyclerview.widget.GridLayoutManager, androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
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
            this.f13511h = savedState.f13515b;
            this.f13512i = savedState.f13516c;
            parcelable = savedState.f13514a;
        }
        super.onRestoreInstanceState(parcelable);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState();
        savedState.f13514a = super.onSaveInstanceState();
        savedState.f13515b = this.f13511h;
        savedState.f13516c = this.f13512i;
        return savedState;
    }

    @Override // androidx.recyclerview.widget.GridLayoutManager, androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
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

    @Override // androidx.recyclerview.widget.GridLayoutManager, androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
    public int scrollVerticallyBy(int i10, RecyclerView.Recycler recycler, RecyclerView.State state) {
        x();
        int scrollVerticallyBy = super.scrollVerticallyBy(i10, recycler, state);
        u();
        if (scrollVerticallyBy != 0) {
            L(recycler, false);
        }
        return scrollVerticallyBy;
    }

    public HoverGridLayoutManager(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.f13507d = new ArrayList(0);
        this.f13508e = new b(this, null);
        this.f13510g = -1;
        this.f13511h = -1;
        this.f13512i = 0;
        this.f13513j = true;
    }
}
