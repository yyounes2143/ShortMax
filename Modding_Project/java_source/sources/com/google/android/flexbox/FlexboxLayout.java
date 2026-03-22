package com.google.android.flexbox;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import com.google.android.flexbox.c;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
public class FlexboxLayout extends ViewGroup implements a {

    /* renamed from: a  reason: collision with root package name */
    private int f19484a;

    /* renamed from: b  reason: collision with root package name */
    private int f19485b;

    /* renamed from: c  reason: collision with root package name */
    private int f19486c;

    /* renamed from: d  reason: collision with root package name */
    private int f19487d;

    /* renamed from: e  reason: collision with root package name */
    private int f19488e;

    /* renamed from: f  reason: collision with root package name */
    private int f19489f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private Drawable f19490g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private Drawable f19491h;

    /* renamed from: i  reason: collision with root package name */
    private int f19492i;

    /* renamed from: j  reason: collision with root package name */
    private int f19493j;

    /* renamed from: k  reason: collision with root package name */
    private int f19494k;

    /* renamed from: l  reason: collision with root package name */
    private int f19495l;

    /* renamed from: m  reason: collision with root package name */
    private int[] f19496m;

    /* renamed from: n  reason: collision with root package name */
    private SparseIntArray f19497n;

    /* renamed from: o  reason: collision with root package name */
    private c f19498o;

    /* renamed from: p  reason: collision with root package name */
    private List<b> f19499p;

    /* renamed from: q  reason: collision with root package name */
    private c.b f19500q;

    public FlexboxLayout(Context context) {
        this(context, null);
    }

    private void A() {
        if (this.f19490g == null && this.f19491h == null) {
            setWillNotDraw(true);
        } else {
            setWillNotDraw(false);
        }
    }

    private boolean k(int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            if (this.f19499p.get(i11).c() > 0) {
                return false;
            }
        }
        return true;
    }

    private boolean l(int i10, int i11) {
        for (int i12 = 1; i12 <= i11; i12++) {
            View r10 = r(i10 - i12);
            if (r10 != null && r10.getVisibility() != 8) {
                return false;
            }
        }
        return true;
    }

    private void m(Canvas canvas, boolean z10, boolean z11) {
        int i10;
        int i11;
        int right;
        int left;
        int paddingLeft = getPaddingLeft();
        int max = Math.max(0, (getWidth() - getPaddingRight()) - paddingLeft);
        int size = this.f19499p.size();
        for (int i12 = 0; i12 < size; i12++) {
            b bVar = this.f19499p.get(i12);
            for (int i13 = 0; i13 < bVar.f19573h; i13++) {
                int i14 = bVar.f19580o + i13;
                View r10 = r(i14);
                if (r10 != null && r10.getVisibility() != 8) {
                    LayoutParams layoutParams = (LayoutParams) r10.getLayoutParams();
                    if (s(i14, i13)) {
                        if (z10) {
                            left = r10.getRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                        } else {
                            left = (r10.getLeft() - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin) - this.f19495l;
                        }
                        p(canvas, left, bVar.f19567b, bVar.f19572g);
                    }
                    if (i13 == bVar.f19573h - 1 && (this.f19493j & 4) > 0) {
                        if (z10) {
                            right = (r10.getLeft() - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin) - this.f19495l;
                        } else {
                            right = r10.getRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                        }
                        p(canvas, right, bVar.f19567b, bVar.f19572g);
                    }
                }
            }
            if (t(i12)) {
                if (z11) {
                    i11 = bVar.f19569d;
                } else {
                    i11 = bVar.f19567b - this.f19494k;
                }
                o(canvas, paddingLeft, i11, max);
            }
            if (u(i12) && (this.f19492i & 4) > 0) {
                if (z11) {
                    i10 = bVar.f19567b - this.f19494k;
                } else {
                    i10 = bVar.f19569d;
                }
                o(canvas, paddingLeft, i10, max);
            }
        }
    }

    private void n(Canvas canvas, boolean z10, boolean z11) {
        int i10;
        int i11;
        int bottom;
        int top;
        int paddingTop = getPaddingTop();
        int max = Math.max(0, (getHeight() - getPaddingBottom()) - paddingTop);
        int size = this.f19499p.size();
        for (int i12 = 0; i12 < size; i12++) {
            b bVar = this.f19499p.get(i12);
            for (int i13 = 0; i13 < bVar.f19573h; i13++) {
                int i14 = bVar.f19580o + i13;
                View r10 = r(i14);
                if (r10 != null && r10.getVisibility() != 8) {
                    LayoutParams layoutParams = (LayoutParams) r10.getLayoutParams();
                    if (s(i14, i13)) {
                        if (z11) {
                            top = r10.getBottom() + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                        } else {
                            top = (r10.getTop() - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin) - this.f19494k;
                        }
                        o(canvas, bVar.f19566a, top, bVar.f19572g);
                    }
                    if (i13 == bVar.f19573h - 1 && (this.f19492i & 4) > 0) {
                        if (z11) {
                            bottom = (r10.getTop() - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin) - this.f19494k;
                        } else {
                            bottom = r10.getBottom() + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                        }
                        o(canvas, bVar.f19566a, bottom, bVar.f19572g);
                    }
                }
            }
            if (t(i12)) {
                if (z10) {
                    i11 = bVar.f19568c;
                } else {
                    i11 = bVar.f19566a - this.f19495l;
                }
                p(canvas, i11, paddingTop, max);
            }
            if (u(i12) && (this.f19493j & 4) > 0) {
                if (z10) {
                    i10 = bVar.f19566a - this.f19495l;
                } else {
                    i10 = bVar.f19568c;
                }
                p(canvas, i10, paddingTop, max);
            }
        }
    }

    private void o(Canvas canvas, int i10, int i11, int i12) {
        Drawable drawable = this.f19490g;
        if (drawable == null) {
            return;
        }
        drawable.setBounds(i10, i11, i12 + i10, this.f19494k + i11);
        this.f19490g.draw(canvas);
    }

    private void p(Canvas canvas, int i10, int i11, int i12) {
        Drawable drawable = this.f19491h;
        if (drawable == null) {
            return;
        }
        drawable.setBounds(i10, i11, this.f19495l + i10, i12 + i11);
        this.f19491h.draw(canvas);
    }

    private boolean s(int i10, int i11) {
        if (l(i10, i11)) {
            if (j()) {
                if ((this.f19493j & 1) == 0) {
                    return false;
                }
                return true;
            } else if ((this.f19492i & 1) == 0) {
                return false;
            } else {
                return true;
            }
        } else if (j()) {
            if ((this.f19493j & 2) == 0) {
                return false;
            }
            return true;
        } else if ((this.f19492i & 2) == 0) {
            return false;
        } else {
            return true;
        }
    }

    private boolean t(int i10) {
        if (i10 < 0 || i10 >= this.f19499p.size()) {
            return false;
        }
        if (k(i10)) {
            if (j()) {
                if ((this.f19492i & 1) == 0) {
                    return false;
                }
                return true;
            } else if ((this.f19493j & 1) == 0) {
                return false;
            } else {
                return true;
            }
        } else if (j()) {
            if ((this.f19492i & 2) == 0) {
                return false;
            }
            return true;
        } else if ((this.f19493j & 2) == 0) {
            return false;
        } else {
            return true;
        }
    }

    private boolean u(int i10) {
        if (i10 < 0 || i10 >= this.f19499p.size()) {
            return false;
        }
        for (int i11 = i10 + 1; i11 < this.f19499p.size(); i11++) {
            if (this.f19499p.get(i11).c() > 0) {
                return false;
            }
        }
        if (j()) {
            if ((this.f19492i & 4) == 0) {
                return false;
            }
            return true;
        } else if ((this.f19493j & 4) == 0) {
            return false;
        } else {
            return true;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0190  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01f3  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0200  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void v(boolean r29, int r30, int r31, int r32, int r33) {
        /*
            Method dump skipped, instructions count: 560
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.flexbox.FlexboxLayout.v(boolean, int, int, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0186  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01e9  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x01f6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void w(boolean r30, boolean r31, int r32, int r33, int r34, int r35) {
        /*
            Method dump skipped, instructions count: 542
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.flexbox.FlexboxLayout.w(boolean, boolean, int, int, int, int):void");
    }

    private void x(int i10, int i11) {
        this.f19499p.clear();
        this.f19500q.a();
        this.f19498o.c(this.f19500q, i10, i11);
        this.f19499p = this.f19500q.f19589a;
        this.f19498o.p(i10, i11);
        if (this.f19487d == 3) {
            for (b bVar : this.f19499p) {
                int i12 = Integer.MIN_VALUE;
                for (int i13 = 0; i13 < bVar.f19573h; i13++) {
                    View r10 = r(bVar.f19580o + i13);
                    if (r10 != null && r10.getVisibility() != 8) {
                        LayoutParams layoutParams = (LayoutParams) r10.getLayoutParams();
                        if (this.f19485b != 2) {
                            i12 = Math.max(i12, r10.getMeasuredHeight() + Math.max(bVar.f19577l - r10.getBaseline(), ((ViewGroup.MarginLayoutParams) layoutParams).topMargin) + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
                        } else {
                            i12 = Math.max(i12, r10.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + Math.max((bVar.f19577l - r10.getMeasuredHeight()) + r10.getBaseline(), ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin));
                        }
                    }
                }
                bVar.f19572g = i12;
            }
        }
        this.f19498o.o(i10, i11, getPaddingTop() + getPaddingBottom());
        this.f19498o.X();
        z(this.f19484a, i10, i11, this.f19500q.f19590b);
    }

    private void y(int i10, int i11) {
        this.f19499p.clear();
        this.f19500q.a();
        this.f19498o.f(this.f19500q, i10, i11);
        this.f19499p = this.f19500q.f19589a;
        this.f19498o.p(i10, i11);
        this.f19498o.o(i10, i11, getPaddingLeft() + getPaddingRight());
        this.f19498o.X();
        z(this.f19484a, i10, i11, this.f19500q.f19590b);
    }

    private void z(int i10, int i11, int i12, int i13) {
        int sumOfCrossSize;
        int largestMainSize;
        int resolveSizeAndState;
        int resolveSizeAndState2;
        int mode = View.MeasureSpec.getMode(i11);
        int size = View.MeasureSpec.getSize(i11);
        int mode2 = View.MeasureSpec.getMode(i12);
        int size2 = View.MeasureSpec.getSize(i12);
        if (i10 != 0 && i10 != 1) {
            if (i10 != 2 && i10 != 3) {
                throw new IllegalArgumentException("Invalid flex direction: " + i10);
            }
            sumOfCrossSize = getLargestMainSize();
            largestMainSize = getSumOfCrossSize() + getPaddingLeft() + getPaddingRight();
        } else {
            sumOfCrossSize = getSumOfCrossSize() + getPaddingTop() + getPaddingBottom();
            largestMainSize = getLargestMainSize();
        }
        if (mode != Integer.MIN_VALUE) {
            if (mode != 0) {
                if (mode == 1073741824) {
                    if (size < largestMainSize) {
                        i13 = View.combineMeasuredStates(i13, 16777216);
                    }
                    resolveSizeAndState = View.resolveSizeAndState(size, i11, i13);
                } else {
                    throw new IllegalStateException("Unknown width mode is set: " + mode);
                }
            } else {
                resolveSizeAndState = View.resolveSizeAndState(largestMainSize, i11, i13);
            }
        } else {
            if (size < largestMainSize) {
                i13 = View.combineMeasuredStates(i13, 16777216);
            } else {
                size = largestMainSize;
            }
            resolveSizeAndState = View.resolveSizeAndState(size, i11, i13);
        }
        if (mode2 != Integer.MIN_VALUE) {
            if (mode2 != 0) {
                if (mode2 == 1073741824) {
                    if (size2 < sumOfCrossSize) {
                        i13 = View.combineMeasuredStates(i13, 256);
                    }
                    resolveSizeAndState2 = View.resolveSizeAndState(size2, i12, i13);
                } else {
                    throw new IllegalStateException("Unknown height mode is set: " + mode2);
                }
            } else {
                resolveSizeAndState2 = View.resolveSizeAndState(sumOfCrossSize, i12, i13);
            }
        } else {
            if (size2 < sumOfCrossSize) {
                i13 = View.combineMeasuredStates(i13, 256);
            } else {
                size2 = sumOfCrossSize;
            }
            resolveSizeAndState2 = View.resolveSizeAndState(size2, i12, i13);
        }
        setMeasuredDimension(resolveSizeAndState, resolveSizeAndState2);
    }

    @Override // com.google.android.flexbox.a
    public void a(View view, int i10, int i11, b bVar) {
        if (s(i10, i11)) {
            if (j()) {
                int i12 = bVar.f19570e;
                int i13 = this.f19495l;
                bVar.f19570e = i12 + i13;
                bVar.f19571f += i13;
                return;
            }
            int i14 = bVar.f19570e;
            int i15 = this.f19494k;
            bVar.f19570e = i14 + i15;
            bVar.f19571f += i15;
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        if (this.f19497n == null) {
            this.f19497n = new SparseIntArray(getChildCount());
        }
        this.f19496m = this.f19498o.n(view, i10, layoutParams, this.f19497n);
        super.addView(view, i10, layoutParams);
    }

    @Override // com.google.android.flexbox.a
    public View b(int i10) {
        return getChildAt(i10);
    }

    @Override // com.google.android.flexbox.a
    public int c(int i10, int i11, int i12) {
        return ViewGroup.getChildMeasureSpec(i10, i11, i12);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // com.google.android.flexbox.a
    public int d(View view) {
        return 0;
    }

    @Override // com.google.android.flexbox.a
    public View e(int i10) {
        return r(i10);
    }

    @Override // com.google.android.flexbox.a
    public int f(View view, int i10, int i11) {
        int i12;
        int i13 = 0;
        if (j()) {
            if (s(i10, i11)) {
                i13 = this.f19495l;
            }
            if ((this.f19493j & 4) > 0) {
                i12 = this.f19495l;
            } else {
                return i13;
            }
        } else {
            if (s(i10, i11)) {
                i13 = this.f19494k;
            }
            if ((this.f19492i & 4) > 0) {
                i12 = this.f19494k;
            } else {
                return i13;
            }
        }
        return i13 + i12;
    }

    @Override // com.google.android.flexbox.a
    public int g(int i10, int i11, int i12) {
        return ViewGroup.getChildMeasureSpec(i10, i11, i12);
    }

    @Override // com.google.android.flexbox.a
    public int getAlignContent() {
        return this.f19488e;
    }

    @Override // com.google.android.flexbox.a
    public int getAlignItems() {
        return this.f19487d;
    }

    @Nullable
    public Drawable getDividerDrawableHorizontal() {
        return this.f19490g;
    }

    @Nullable
    public Drawable getDividerDrawableVertical() {
        return this.f19491h;
    }

    @Override // com.google.android.flexbox.a
    public int getFlexDirection() {
        return this.f19484a;
    }

    @Override // com.google.android.flexbox.a
    public int getFlexItemCount() {
        return getChildCount();
    }

    public List<b> getFlexLines() {
        ArrayList arrayList = new ArrayList(this.f19499p.size());
        for (b bVar : this.f19499p) {
            if (bVar.c() != 0) {
                arrayList.add(bVar);
            }
        }
        return arrayList;
    }

    @Override // com.google.android.flexbox.a
    public List<b> getFlexLinesInternal() {
        return this.f19499p;
    }

    @Override // com.google.android.flexbox.a
    public int getFlexWrap() {
        return this.f19485b;
    }

    public int getJustifyContent() {
        return this.f19486c;
    }

    @Override // com.google.android.flexbox.a
    public int getLargestMainSize() {
        int i10 = Integer.MIN_VALUE;
        for (b bVar : this.f19499p) {
            i10 = Math.max(i10, bVar.f19570e);
        }
        return i10;
    }

    @Override // com.google.android.flexbox.a
    public int getMaxLine() {
        return this.f19489f;
    }

    public int getShowDividerHorizontal() {
        return this.f19492i;
    }

    public int getShowDividerVertical() {
        return this.f19493j;
    }

    @Override // com.google.android.flexbox.a
    public int getSumOfCrossSize() {
        int i10;
        int i11;
        int size = this.f19499p.size();
        int i12 = 0;
        for (int i13 = 0; i13 < size; i13++) {
            b bVar = this.f19499p.get(i13);
            if (t(i13)) {
                if (j()) {
                    i11 = this.f19494k;
                } else {
                    i11 = this.f19495l;
                }
                i12 += i11;
            }
            if (u(i13)) {
                if (j()) {
                    i10 = this.f19494k;
                } else {
                    i10 = this.f19495l;
                }
                i12 += i10;
            }
            i12 += bVar.f19572g;
        }
        return i12;
    }

    @Override // com.google.android.flexbox.a
    public void h(b bVar) {
        if (j()) {
            if ((this.f19493j & 4) > 0) {
                int i10 = bVar.f19570e;
                int i11 = this.f19495l;
                bVar.f19570e = i10 + i11;
                bVar.f19571f += i11;
            }
        } else if ((this.f19492i & 4) > 0) {
            int i12 = bVar.f19570e;
            int i13 = this.f19494k;
            bVar.f19570e = i12 + i13;
            bVar.f19571f += i13;
        }
    }

    @Override // com.google.android.flexbox.a
    public boolean j() {
        int i10 = this.f19484a;
        if (i10 == 0 || i10 == 1) {
            return true;
        }
        return false;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        boolean z10;
        boolean z11;
        if (this.f19491h == null && this.f19490g == null) {
            return;
        }
        if (this.f19492i == 0 && this.f19493j == 0) {
            return;
        }
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        int i10 = this.f19484a;
        boolean z12 = false;
        boolean z13 = true;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 == 3) {
                        if (layoutDirection == 1) {
                            z12 = true;
                        }
                        if (this.f19485b == 2) {
                            z12 = !z12;
                        }
                        n(canvas, z12, true);
                        return;
                    }
                    return;
                }
                if (layoutDirection != 1) {
                    z13 = false;
                }
                if (this.f19485b == 2) {
                    z13 = !z13;
                }
                n(canvas, z13, false);
                return;
            }
            if (layoutDirection != 1) {
                z11 = true;
            } else {
                z11 = false;
            }
            if (this.f19485b == 2) {
                z12 = true;
            }
            m(canvas, z11, z12);
            return;
        }
        if (layoutDirection == 1) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (this.f19485b == 2) {
            z12 = true;
        }
        m(canvas, z10, z12);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14;
        int layoutDirection = ViewCompat.getLayoutDirection(this);
        int i14 = this.f19484a;
        boolean z15 = false;
        if (i14 != 0) {
            if (i14 != 1) {
                if (i14 != 2) {
                    if (i14 == 3) {
                        if (layoutDirection == 1) {
                            z15 = true;
                        }
                        if (this.f19485b == 2) {
                            z14 = !z15;
                        } else {
                            z14 = z15;
                        }
                        w(z14, true, i10, i11, i12, i13);
                        return;
                    }
                    throw new IllegalStateException("Invalid flex direction is set: " + this.f19484a);
                }
                if (layoutDirection == 1) {
                    z15 = true;
                }
                if (this.f19485b == 2) {
                    z13 = !z15;
                } else {
                    z13 = z15;
                }
                w(z13, false, i10, i11, i12, i13);
                return;
            }
            if (layoutDirection != 1) {
                z12 = true;
            } else {
                z12 = false;
            }
            v(z12, i10, i11, i12, i13);
            return;
        }
        if (layoutDirection == 1) {
            z11 = true;
        } else {
            z11 = false;
        }
        v(z11, i10, i11, i12, i13);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.View
    public void onMeasure(int i10, int i11) {
        if (this.f19497n == null) {
            this.f19497n = new SparseIntArray(getChildCount());
        }
        if (this.f19498o.O(this.f19497n)) {
            this.f19496m = this.f19498o.m(this.f19497n);
        }
        int i12 = this.f19484a;
        if (i12 != 0 && i12 != 1) {
            if (i12 != 2 && i12 != 3) {
                throw new IllegalStateException("Invalid value for the flex direction is set: " + this.f19484a);
            }
            y(i10, i11);
            return;
        }
        x(i10, i11);
    }

    @Override // android.view.ViewGroup
    /* renamed from: q */
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    public View r(int i10) {
        if (i10 >= 0) {
            int[] iArr = this.f19496m;
            if (i10 < iArr.length) {
                return getChildAt(iArr[i10]);
            }
            return null;
        }
        return null;
    }

    public void setAlignContent(int i10) {
        if (this.f19488e != i10) {
            this.f19488e = i10;
            requestLayout();
        }
    }

    public void setAlignItems(int i10) {
        if (this.f19487d != i10) {
            this.f19487d = i10;
            requestLayout();
        }
    }

    public void setDividerDrawable(Drawable drawable) {
        setDividerDrawableHorizontal(drawable);
        setDividerDrawableVertical(drawable);
    }

    public void setDividerDrawableHorizontal(@Nullable Drawable drawable) {
        if (drawable == this.f19490g) {
            return;
        }
        this.f19490g = drawable;
        if (drawable != null) {
            this.f19494k = drawable.getIntrinsicHeight();
        } else {
            this.f19494k = 0;
        }
        A();
        requestLayout();
    }

    public void setDividerDrawableVertical(@Nullable Drawable drawable) {
        if (drawable == this.f19491h) {
            return;
        }
        this.f19491h = drawable;
        if (drawable != null) {
            this.f19495l = drawable.getIntrinsicWidth();
        } else {
            this.f19495l = 0;
        }
        A();
        requestLayout();
    }

    public void setFlexDirection(int i10) {
        if (this.f19484a != i10) {
            this.f19484a = i10;
            requestLayout();
        }
    }

    @Override // com.google.android.flexbox.a
    public void setFlexLines(List<b> list) {
        this.f19499p = list;
    }

    public void setFlexWrap(int i10) {
        if (this.f19485b != i10) {
            this.f19485b = i10;
            requestLayout();
        }
    }

    public void setJustifyContent(int i10) {
        if (this.f19486c != i10) {
            this.f19486c = i10;
            requestLayout();
        }
    }

    public void setMaxLine(int i10) {
        if (this.f19489f != i10) {
            this.f19489f = i10;
            requestLayout();
        }
    }

    public void setShowDivider(int i10) {
        setShowDividerVertical(i10);
        setShowDividerHorizontal(i10);
    }

    public void setShowDividerHorizontal(int i10) {
        if (i10 != this.f19492i) {
            this.f19492i = i10;
            requestLayout();
        }
    }

    public void setShowDividerVertical(int i10) {
        if (i10 != this.f19493j) {
            this.f19493j = i10;
            requestLayout();
        }
    }

    public FlexboxLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof LayoutParams) {
            return new LayoutParams((LayoutParams) layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new LayoutParams(layoutParams);
    }

    public FlexboxLayout(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f19489f = -1;
        this.f19498o = new c(this);
        this.f19499p = new ArrayList();
        this.f19500q = new c.b();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, d.f19594b, i10, 0);
        this.f19484a = obtainStyledAttributes.getInt(d.f19600h, 0);
        this.f19485b = obtainStyledAttributes.getInt(d.f19601i, 0);
        this.f19486c = obtainStyledAttributes.getInt(d.f19602j, 0);
        this.f19487d = obtainStyledAttributes.getInt(d.f19596d, 0);
        this.f19488e = obtainStyledAttributes.getInt(d.f19595c, 0);
        this.f19489f = obtainStyledAttributes.getInt(d.f19603k, -1);
        Drawable drawable = obtainStyledAttributes.getDrawable(d.f19597e);
        if (drawable != null) {
            setDividerDrawableHorizontal(drawable);
            setDividerDrawableVertical(drawable);
        }
        Drawable drawable2 = obtainStyledAttributes.getDrawable(d.f19598f);
        if (drawable2 != null) {
            setDividerDrawableHorizontal(drawable2);
        }
        Drawable drawable3 = obtainStyledAttributes.getDrawable(d.f19599g);
        if (drawable3 != null) {
            setDividerDrawableVertical(drawable3);
        }
        int i11 = obtainStyledAttributes.getInt(d.f19604l, 0);
        if (i11 != 0) {
            this.f19493j = i11;
            this.f19492i = i11;
        }
        int i12 = obtainStyledAttributes.getInt(d.f19606n, 0);
        if (i12 != 0) {
            this.f19493j = i12;
        }
        int i13 = obtainStyledAttributes.getInt(d.f19605m, 0);
        if (i13 != 0) {
            this.f19492i = i13;
        }
        obtainStyledAttributes.recycle();
    }

    /* loaded from: classes4.dex */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams implements FlexItem {
        public static final Parcelable.Creator<LayoutParams> CREATOR = new a();

        /* renamed from: a  reason: collision with root package name */
        private int f19501a;

        /* renamed from: b  reason: collision with root package name */
        private float f19502b;

        /* renamed from: c  reason: collision with root package name */
        private float f19503c;

        /* renamed from: d  reason: collision with root package name */
        private int f19504d;

        /* renamed from: e  reason: collision with root package name */
        private float f19505e;

        /* renamed from: f  reason: collision with root package name */
        private int f19506f;

        /* renamed from: g  reason: collision with root package name */
        private int f19507g;

        /* renamed from: h  reason: collision with root package name */
        private int f19508h;

        /* renamed from: i  reason: collision with root package name */
        private int f19509i;

        /* renamed from: j  reason: collision with root package name */
        private boolean f19510j;

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
            this.f19501a = 1;
            this.f19502b = 0.0f;
            this.f19503c = 1.0f;
            this.f19504d = -1;
            this.f19505e = -1.0f;
            this.f19506f = -1;
            this.f19507g = -1;
            this.f19508h = ViewCompat.MEASURED_SIZE_MASK;
            this.f19509i = ViewCompat.MEASURED_SIZE_MASK;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, d.f19607o);
            this.f19501a = obtainStyledAttributes.getInt(d.f19616x, 1);
            this.f19502b = obtainStyledAttributes.getFloat(d.f19610r, 0.0f);
            this.f19503c = obtainStyledAttributes.getFloat(d.f19611s, 1.0f);
            this.f19504d = obtainStyledAttributes.getInt(d.f19608p, -1);
            this.f19505e = obtainStyledAttributes.getFraction(d.f19609q, 1, 1, -1.0f);
            this.f19506f = obtainStyledAttributes.getDimensionPixelSize(d.f19615w, -1);
            this.f19507g = obtainStyledAttributes.getDimensionPixelSize(d.f19614v, -1);
            this.f19508h = obtainStyledAttributes.getDimensionPixelSize(d.f19613u, ViewCompat.MEASURED_SIZE_MASK);
            this.f19509i = obtainStyledAttributes.getDimensionPixelSize(d.f19612t, ViewCompat.MEASURED_SIZE_MASK);
            this.f19510j = obtainStyledAttributes.getBoolean(d.f19617y, false);
            obtainStyledAttributes.recycle();
        }

        @Override // com.google.android.flexbox.FlexItem
        public int F() {
            return this.f19504d;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int G0() {
            return ((ViewGroup.MarginLayoutParams) this).rightMargin;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int H0() {
            return this.f19507g;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int I0() {
            return this.f19509i;
        }

        @Override // com.google.android.flexbox.FlexItem
        public float P() {
            return this.f19503c;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void W(int i10) {
            this.f19507g = i10;
        }

        @Override // com.google.android.flexbox.FlexItem
        public float Y() {
            return this.f19502b;
        }

        @Override // com.google.android.flexbox.FlexItem
        public float Z() {
            return this.f19505e;
        }

        public void a(float f10) {
            this.f19505e = f10;
        }

        @Override // com.google.android.flexbox.FlexItem
        public boolean a0() {
            return this.f19510j;
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
            return this.f19501a;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int getWidth() {
            return ((ViewGroup.MarginLayoutParams) this).width;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int l0() {
            return this.f19508h;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int s() {
            return this.f19506f;
        }

        @Override // com.google.android.flexbox.FlexItem
        public int s0() {
            return ((ViewGroup.MarginLayoutParams) this).leftMargin;
        }

        @Override // com.google.android.flexbox.FlexItem
        public void setMinWidth(int i10) {
            this.f19506f = i10;
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
            parcel.writeInt(this.f19501a);
            parcel.writeFloat(this.f19502b);
            parcel.writeFloat(this.f19503c);
            parcel.writeInt(this.f19504d);
            parcel.writeFloat(this.f19505e);
            parcel.writeInt(this.f19506f);
            parcel.writeInt(this.f19507g);
            parcel.writeInt(this.f19508h);
            parcel.writeInt(this.f19509i);
            parcel.writeByte(this.f19510j ? (byte) 1 : (byte) 0);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).bottomMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).leftMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).rightMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).topMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).height);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).width);
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
            this.f19501a = 1;
            this.f19502b = 0.0f;
            this.f19503c = 1.0f;
            this.f19504d = -1;
            this.f19505e = -1.0f;
            this.f19506f = -1;
            this.f19507g = -1;
            this.f19508h = ViewCompat.MEASURED_SIZE_MASK;
            this.f19509i = ViewCompat.MEASURED_SIZE_MASK;
            this.f19501a = layoutParams.f19501a;
            this.f19502b = layoutParams.f19502b;
            this.f19503c = layoutParams.f19503c;
            this.f19504d = layoutParams.f19504d;
            this.f19505e = layoutParams.f19505e;
            this.f19506f = layoutParams.f19506f;
            this.f19507g = layoutParams.f19507g;
            this.f19508h = layoutParams.f19508h;
            this.f19509i = layoutParams.f19509i;
            this.f19510j = layoutParams.f19510j;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f19501a = 1;
            this.f19502b = 0.0f;
            this.f19503c = 1.0f;
            this.f19504d = -1;
            this.f19505e = -1.0f;
            this.f19506f = -1;
            this.f19507g = -1;
            this.f19508h = ViewCompat.MEASURED_SIZE_MASK;
            this.f19509i = ViewCompat.MEASURED_SIZE_MASK;
        }

        public LayoutParams(int i10, int i11) {
            super(new ViewGroup.LayoutParams(i10, i11));
            this.f19501a = 1;
            this.f19502b = 0.0f;
            this.f19503c = 1.0f;
            this.f19504d = -1;
            this.f19505e = -1.0f;
            this.f19506f = -1;
            this.f19507g = -1;
            this.f19508h = ViewCompat.MEASURED_SIZE_MASK;
            this.f19509i = ViewCompat.MEASURED_SIZE_MASK;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f19501a = 1;
            this.f19502b = 0.0f;
            this.f19503c = 1.0f;
            this.f19504d = -1;
            this.f19505e = -1.0f;
            this.f19506f = -1;
            this.f19507g = -1;
            this.f19508h = ViewCompat.MEASURED_SIZE_MASK;
            this.f19509i = ViewCompat.MEASURED_SIZE_MASK;
        }

        protected LayoutParams(Parcel parcel) {
            super(0, 0);
            this.f19501a = 1;
            this.f19502b = 0.0f;
            this.f19503c = 1.0f;
            this.f19504d = -1;
            this.f19505e = -1.0f;
            this.f19506f = -1;
            this.f19507g = -1;
            this.f19508h = ViewCompat.MEASURED_SIZE_MASK;
            this.f19509i = ViewCompat.MEASURED_SIZE_MASK;
            this.f19501a = parcel.readInt();
            this.f19502b = parcel.readFloat();
            this.f19503c = parcel.readFloat();
            this.f19504d = parcel.readInt();
            this.f19505e = parcel.readFloat();
            this.f19506f = parcel.readInt();
            this.f19507g = parcel.readInt();
            this.f19508h = parcel.readInt();
            this.f19509i = parcel.readInt();
            this.f19510j = parcel.readByte() != 0;
            ((ViewGroup.MarginLayoutParams) this).bottomMargin = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).leftMargin = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).rightMargin = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).topMargin = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).height = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).width = parcel.readInt();
        }
    }

    @Override // com.google.android.flexbox.a
    public void i(int i10, View view) {
    }
}
