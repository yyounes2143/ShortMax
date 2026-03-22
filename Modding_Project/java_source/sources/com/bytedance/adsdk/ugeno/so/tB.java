package com.bytedance.adsdk.ugeno.so;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.Scroller;
import java.lang.annotation.ElementType;
import java.lang.annotation.Inherited;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
/* loaded from: classes3.dex */
public class tB extends ViewGroup {
    private ClassLoader BTZ;
    private Pfn Dex;
    private int HL;
    private VelocityTracker HyG;
    private boolean IUZ;
    private int Id;
    private int Jc;
    private int Jm;
    private int LS;
    private boolean Ln;
    private int LpP;
    private int MoK;
    private List<ex> NO;
    private Scroller PiB;
    private float QSm;
    private int Qu;
    private int RZ;
    private int Rl;
    private int Ry;
    private ArrayList<View> TA;
    private float UN;
    private final Runnable VSB;
    private boolean WcQ;
    private float XAo;
    private boolean Xe;
    private EdgeEffect Yg;
    private ba awB;
    private EdgeEffect bgF;
    private final ArrayList<ZYk> cFZ;
    private int cY;
    private int cdg;
    private Parcelable dLZ;
    private int eZI;
    int ex;
    private ex jB;
    private final Rect jFA;
    private int jXJ;

    /* renamed from: jr  reason: collision with root package name */
    private boolean f11713jr;
    private int kkU;
    private boolean lY;

    /* renamed from: mu  reason: collision with root package name */
    private float f11714mu;
    private boolean mwH;
    private boolean nQI;
    private int nke;
    private int oIC;
    private int oJ;
    private boolean oTd;
    private float ofl;

    /* renamed from: oq  reason: collision with root package name */
    private float f11715oq;
    private List<Object> sH;

    /* renamed from: si  reason: collision with root package name */
    private Drawable f11716si;

    /* renamed from: so  reason: collision with root package name */
    private final ZYk f11717so;
    com.bytedance.adsdk.ugeno.so.ZYk tB;

    /* renamed from: tb  reason: collision with root package name */
    private boolean f11718tb;

    /* renamed from: wd  reason: collision with root package name */
    private int f11719wd;
    private ex yz;
    static final int[] ZYk = {16842931};
    private static final Comparator<ZYk> Pfn = new Comparator<ZYk>() { // from class: com.bytedance.adsdk.ugeno.so.tB.1
        @Override // java.util.Comparator
        /* renamed from: oJ */
        public int compare(ZYk zYk, ZYk zYk2) {
            return zYk.ZYk - zYk2.ZYk;
        }
    };

    /* renamed from: ba  reason: collision with root package name */
    private static final Interpolator f11712ba = new Interpolator() { // from class: com.bytedance.adsdk.ugeno.so.tB.2
        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f10) {
            float f11 = f10 - 1.0f;
            return (f11 * f11 * f11 * f11 * f11) + 1.0f;
        }
    };
    private static final so UK = new so();

    /* loaded from: classes3.dex */
    public interface Pfn {
        void oJ(View view, float f10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class ZYk {
        float Pfn;
        int ZYk;
        float ex;
        Object oJ;
        boolean tB;

        ZYk() {
        }
    }

    /* loaded from: classes3.dex */
    private class ba extends DataSetObserver {
        ba() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            tB.this.ZYk();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            tB.this.ZYk();
        }
    }

    /* loaded from: classes3.dex */
    public static class cFZ extends com.bytedance.adsdk.ugeno.so.oJ {
        public static final Parcelable.Creator<cFZ> CREATOR = new Parcelable.ClassLoaderCreator<cFZ>() { // from class: com.bytedance.adsdk.ugeno.so.tB.cFZ.1
            @Override // android.os.Parcelable.ClassLoaderCreator
            /* renamed from: oJ */
            public cFZ createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new cFZ(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: oJ */
            public cFZ createFromParcel(Parcel parcel) {
                return new cFZ(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: oJ */
            public cFZ[] newArray(int i10) {
                return new cFZ[i10];
            }
        };
        int ZYk;
        ClassLoader ex;
        Parcelable tB;

        public cFZ(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "FragmentPager.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " position=" + this.ZYk + "}";
        }

        @Override // com.bytedance.adsdk.ugeno.so.oJ, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeInt(this.ZYk);
            parcel.writeParcelable(this.tB, i10);
        }

        cFZ(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            classLoader = classLoader == null ? getClass().getClassLoader() : classLoader;
            this.ZYk = parcel.readInt();
            this.tB = parcel.readParcelable(classLoader);
            this.ex = classLoader;
        }
    }

    /* loaded from: classes3.dex */
    public interface ex {
        void BTZ(int i10);

        void dLZ(int i10);

        void oJ(int i10, float f10, int i11);
    }

    @Target({ElementType.TYPE})
    @Inherited
    @Retention(RetentionPolicy.RUNTIME)
    /* loaded from: classes3.dex */
    public @interface oJ {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class so implements Comparator<View> {
        so() {
        }

        @Override // java.util.Comparator
        /* renamed from: oJ */
        public int compare(View view, View view2) {
            C0150tB c0150tB = (C0150tB) view.getLayoutParams();
            C0150tB c0150tB2 = (C0150tB) view2.getLayoutParams();
            boolean z10 = c0150tB.oJ;
            if (z10 != c0150tB2.oJ) {
                if (z10) {
                    return 1;
                }
                return -1;
            }
            return c0150tB.Pfn - c0150tB2.Pfn;
        }
    }

    public tB(Context context) {
        super(context);
        this.cFZ = new ArrayList<>();
        this.f11717so = new ZYk();
        this.jFA = new Rect();
        this.kkU = -1;
        this.dLZ = null;
        this.BTZ = null;
        this.QSm = -3.4028235E38f;
        this.f11715oq = Float.MAX_VALUE;
        this.HL = 1;
        this.f11719wd = -1;
        this.lY = true;
        this.mwH = false;
        this.VSB = new Runnable() { // from class: com.bytedance.adsdk.ugeno.so.tB.3
            @Override // java.lang.Runnable
            public void run() {
                tB.this.setScrollState(0);
                tB.this.tB();
            }
        };
        this.jXJ = 0;
        oJ();
    }

    private void Pfn(int i10) {
        ex exVar = this.jB;
        if (exVar != null) {
            exVar.dLZ(i10);
        }
        List<ex> list = this.NO;
        if (list != null) {
            int size = list.size();
            for (int i11 = 0; i11 < size; i11++) {
                ex exVar2 = this.NO.get(i11);
                if (exVar2 != null) {
                    exVar2.dLZ(i10);
                }
            }
        }
        ex exVar3 = this.yz;
        if (exVar3 != null) {
            exVar3.dLZ(i10);
        }
    }

    private void ba() {
        int i10 = 0;
        while (i10 < getChildCount()) {
            if (!((C0150tB) getChildAt(i10).getLayoutParams()).oJ) {
                removeViewAt(i10);
                i10--;
            }
            i10++;
        }
    }

    private void cFZ() {
        if (this.MoK != 0) {
            ArrayList<View> arrayList = this.TA;
            if (arrayList == null) {
                this.TA = new ArrayList<>();
            } else {
                arrayList.clear();
            }
            int childCount = getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                this.TA.add(getChildAt(i10));
            }
            Collections.sort(this.TA, UK);
        }
    }

    private boolean ex(int i10) {
        if (this.cFZ.size() == 0) {
            if (this.lY) {
                return false;
            }
            this.oTd = false;
            oJ(0, 0.0f, 0);
            if (this.oTd) {
                return false;
            }
            throw new IllegalStateException("onPageScrolled did not call superclass implementation");
        }
        ZYk jFA = jFA();
        int clientWidth = getClientWidth();
        int i11 = this.eZI;
        int i12 = clientWidth + i11;
        float f10 = clientWidth;
        int i13 = jFA.ZYk;
        float f11 = ((i10 / f10) - jFA.Pfn) / (jFA.ex + (i11 / f10));
        this.oTd = false;
        oJ(i13, f11, (int) (i12 * f11));
        if (this.oTd) {
            return true;
        }
        throw new IllegalStateException("onPageScrolled did not call superclass implementation");
    }

    private int getClientWidth() {
        return (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
    }

    private ZYk jFA() {
        float f10;
        float f11;
        int i10;
        int clientWidth = getClientWidth();
        float f12 = 0.0f;
        if (clientWidth > 0) {
            f10 = getScrollX() / clientWidth;
        } else {
            f10 = 0.0f;
        }
        if (clientWidth > 0) {
            f11 = this.eZI / clientWidth;
        } else {
            f11 = 0.0f;
        }
        int i11 = 0;
        boolean z10 = true;
        ZYk zYk = null;
        int i12 = -1;
        float f13 = 0.0f;
        while (i11 < this.cFZ.size()) {
            ZYk zYk2 = this.cFZ.get(i11);
            if (!z10 && zYk2.ZYk != (i10 = i12 + 1)) {
                zYk2 = this.f11717so;
                zYk2.Pfn = f12 + f13 + f11;
                zYk2.ZYk = i10;
                zYk2.ex = this.tB.oJ(i10);
                i11--;
            }
            ZYk zYk3 = zYk2;
            f12 = zYk3.Pfn;
            float f14 = zYk3.ex + f12 + f11;
            if (!z10 && f10 < f12) {
                return zYk;
            }
            if (f10 >= f14 && i11 != this.cFZ.size() - 1) {
                int i13 = zYk3.ZYk;
                float f15 = zYk3.ex;
                i11++;
                z10 = false;
                i12 = i13;
                f13 = f15;
                zYk = zYk3;
            } else {
                return zYk3;
            }
        }
        return zYk;
    }

    private void kkU() {
        this.IUZ = false;
        this.Ln = false;
        VelocityTracker velocityTracker = this.HyG;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.HyG = null;
        }
    }

    private void setScrollingCacheEnabled(boolean z10) {
        if (this.Xe != z10) {
            this.Xe = z10;
        }
    }

    private boolean so() {
        this.f11719wd = -1;
        kkU();
        this.bgF.onRelease();
        this.Yg.onRelease();
        if (!this.bgF.isFinished() && !this.Yg.isFinished()) {
            return false;
        }
        return true;
    }

    public void ZYk(ex exVar) {
        List<ex> list = this.NO;
        if (list != null) {
            list.remove(exVar);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i10, int i11) {
        ZYk oJ2;
        int size = arrayList.size();
        int descendantFocusability = getDescendantFocusability();
        if (descendantFocusability != 393216) {
            for (int i12 = 0; i12 < getChildCount(); i12++) {
                View childAt = getChildAt(i12);
                if (childAt.getVisibility() == 0 && (oJ2 = oJ(childAt)) != null && oJ2.ZYk == this.ex) {
                    childAt.addFocusables(arrayList, i10, i11);
                }
            }
        }
        if ((descendantFocusability == 262144 && size != arrayList.size()) || !isFocusable()) {
            return;
        }
        if ((i11 & 1) == 1 && isInTouchMode() && !isFocusableInTouchMode()) {
            return;
        }
        arrayList.add(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addTouchables(ArrayList<View> arrayList) {
        ZYk oJ2;
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            View childAt = getChildAt(i10);
            if (childAt.getVisibility() == 0 && (oJ2 = oJ(childAt)) != null && oJ2.ZYk == this.ex) {
                childAt.addTouchables(arrayList);
            }
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        if (!checkLayoutParams(layoutParams)) {
            layoutParams = generateLayoutParams(layoutParams);
        }
        C0150tB c0150tB = (C0150tB) layoutParams;
        boolean tB = c0150tB.oJ | tB(view);
        c0150tB.oJ = tB;
        if (this.f11713jr) {
            if (!tB) {
                c0150tB.ex = true;
                addViewInLayout(view, i10, layoutParams);
                return;
            }
            throw new IllegalStateException("Cannot add pager decor view during layout");
        }
        super.addView(view, i10, layoutParams);
    }

    @Override // android.view.View
    public boolean canScrollHorizontally(int i10) {
        if (this.tB == null) {
            return false;
        }
        int clientWidth = getClientWidth();
        int scrollX = getScrollX();
        if (i10 < 0) {
            if (scrollX <= ((int) (clientWidth * this.QSm))) {
                return false;
            }
            return true;
        } else if (i10 <= 0 || scrollX >= ((int) (clientWidth * this.f11715oq))) {
            return false;
        } else {
            return true;
        }
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if ((layoutParams instanceof C0150tB) && super.checkLayoutParams(layoutParams)) {
            return true;
        }
        return false;
    }

    @Override // android.view.View
    public void computeScroll() {
        this.WcQ = true;
        if (!this.PiB.isFinished() && this.PiB.computeScrollOffset()) {
            int scrollX = getScrollX();
            int scrollY = getScrollY();
            int currX = this.PiB.getCurrX();
            int currY = this.PiB.getCurrY();
            if (scrollX != currX || scrollY != currY) {
                scrollTo(currX, currY);
                if (!ex(currX)) {
                    this.PiB.abortAnimation();
                    scrollTo(0, currY);
                }
            }
            postInvalidateOnAnimation();
            return;
        }
        oJ(true);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (!super.dispatchKeyEvent(keyEvent) && !oJ(keyEvent)) {
            return false;
        }
        return true;
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        ZYk oJ2;
        if (accessibilityEvent.getEventType() == 4096) {
            return super.dispatchPopulateAccessibilityEvent(accessibilityEvent);
        }
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (childAt.getVisibility() == 0 && (oJ2 = oJ(childAt)) != null && oJ2.ZYk == this.ex && childAt.dispatchPopulateAccessibilityEvent(accessibilityEvent)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        com.bytedance.adsdk.ugeno.so.ZYk zYk;
        super.draw(canvas);
        int overScrollMode = getOverScrollMode();
        boolean z10 = false;
        if (overScrollMode != 0 && (overScrollMode != 1 || (zYk = this.tB) == null || zYk.oJ() <= 1)) {
            this.bgF.finish();
            this.Yg.finish();
        } else {
            if (!this.bgF.isFinished()) {
                int save = canvas.save();
                int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
                int width = getWidth();
                canvas.rotate(270.0f);
                canvas.translate((-height) + getPaddingTop(), this.QSm * width);
                this.bgF.setSize(height, width);
                z10 = this.bgF.draw(canvas);
                canvas.restoreToCount(save);
            }
            if (!this.Yg.isFinished()) {
                int save2 = canvas.save();
                int width2 = getWidth();
                int height2 = (getHeight() - getPaddingTop()) - getPaddingBottom();
                canvas.rotate(90.0f);
                canvas.translate(-getPaddingTop(), (-(this.f11715oq + 1.0f)) * width2);
                this.Yg.setSize(height2, width2);
                z10 |= this.Yg.draw(canvas);
                canvas.restoreToCount(save2);
            }
        }
        if (z10) {
            postInvalidateOnAnimation();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f11716si;
        if (drawable != null && drawable.isStateful()) {
            drawable.setState(getDrawableState());
        }
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new C0150tB();
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return generateDefaultLayoutParams();
    }

    public com.bytedance.adsdk.ugeno.so.ZYk getAdapter() {
        return this.tB;
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i10, int i11) {
        if (this.MoK == 2) {
            i11 = (i10 - 1) - i11;
        }
        return ((C0150tB) this.TA.get(i11).getLayoutParams()).f11720ba;
    }

    public int getCurrentItem() {
        return this.ex;
    }

    public int getOffscreenPageLimit() {
        return this.HL;
    }

    public int getPageMargin() {
        return this.eZI;
    }

    void oJ() {
        setWillNotDraw(false);
        setDescendantFocusability(262144);
        setFocusable(true);
        Context context = getContext();
        this.PiB = new Scroller(context, f11712ba);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        float f10 = context.getResources().getDisplayMetrics().density;
        this.Jc = viewConfiguration.getScaledPagingTouchSlop();
        this.cdg = (int) (400.0f * f10);
        this.Rl = viewConfiguration.getScaledMaximumFlingVelocity();
        this.bgF = new EdgeEffect(context);
        this.Yg = new EdgeEffect(context);
        this.Jm = (int) (25.0f * f10);
        this.Qu = (int) (2.0f * f10);
        this.LpP = (int) (f10 * 16.0f);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.lY = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        removeCallbacks(this.VSB);
        Scroller scroller = this.PiB;
        if (scroller != null && !scroller.isFinished()) {
            this.PiB.abortAnimation();
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int width;
        int i10;
        float f10;
        float f11;
        super.onDraw(canvas);
        if (this.eZI > 0 && this.f11716si != null && this.cFZ.size() > 0 && this.tB != null) {
            int scrollX = getScrollX();
            float width2 = getWidth();
            float f12 = this.eZI / width2;
            int i11 = 0;
            ZYk zYk = this.cFZ.get(0);
            float f13 = zYk.Pfn;
            int size = this.cFZ.size();
            int i12 = zYk.ZYk;
            int i13 = this.cFZ.get(size - 1).ZYk;
            while (i12 < i13) {
                while (true) {
                    i10 = zYk.ZYk;
                    if (i12 <= i10 || i11 >= size) {
                        break;
                    }
                    i11++;
                    zYk = this.cFZ.get(i11);
                }
                if (i12 == i10) {
                    float f14 = zYk.Pfn;
                    float f15 = zYk.ex;
                    f10 = (f14 + f15) * width2;
                    f13 = f14 + f15 + f12;
                } else {
                    float oJ2 = this.tB.oJ(i12);
                    f10 = (f13 + oJ2) * width2;
                    f13 += oJ2 + f12;
                }
                if (this.eZI + f10 > scrollX) {
                    f11 = f12;
                    this.f11716si.setBounds(Math.round(f10), this.Ry, Math.round(this.eZI + f10), this.RZ);
                    this.f11716si.draw(canvas);
                } else {
                    f11 = f12;
                }
                if (f10 <= scrollX + width) {
                    i12++;
                    f12 = f11;
                } else {
                    return;
                }
            }
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int findPointerIndex;
        float f10;
        int action = motionEvent.getAction() & 255;
        if (action != 3 && action != 1) {
            if (action != 0) {
                if (this.IUZ) {
                    return true;
                }
                if (this.Ln) {
                    return false;
                }
            }
            if (action != 0) {
                if (action != 2) {
                    if (action == 6) {
                        oJ(motionEvent);
                    }
                } else {
                    int i10 = this.f11719wd;
                    if (i10 != -1 && (findPointerIndex = motionEvent.findPointerIndex(i10)) != -1) {
                        float x10 = motionEvent.getX(findPointerIndex);
                        float f11 = x10 - this.UN;
                        float abs = Math.abs(f11);
                        float y10 = motionEvent.getY(findPointerIndex);
                        float abs2 = Math.abs(y10 - this.ofl);
                        int i11 = (f11 > 0.0f ? 1 : (f11 == 0.0f ? 0 : -1));
                        if (i11 != 0 && !oJ(this.UN, f11) && oJ(this, false, (int) f11, (int) x10, (int) y10)) {
                            this.UN = x10;
                            this.f11714mu = y10;
                            this.Ln = true;
                            return false;
                        }
                        int i12 = this.Jc;
                        if (abs > i12 && abs * 0.5f > abs2) {
                            this.IUZ = true;
                            tB(true);
                            setScrollState(1);
                            if (i11 > 0) {
                                f10 = this.XAo + this.Jc;
                            } else {
                                f10 = this.XAo - this.Jc;
                            }
                            this.UN = f10;
                            this.f11714mu = y10;
                            setScrollingCacheEnabled(true);
                        } else if (abs2 > i12) {
                            this.Ln = true;
                        }
                        if (this.IUZ && ZYk(x10)) {
                            postInvalidateOnAnimation();
                        }
                    }
                }
            } else {
                float x11 = motionEvent.getX();
                this.XAo = x11;
                this.UN = x11;
                float y11 = motionEvent.getY();
                this.ofl = y11;
                this.f11714mu = y11;
                this.f11719wd = motionEvent.getPointerId(0);
                this.Ln = false;
                this.WcQ = true;
                this.PiB.computeScrollOffset();
                if (this.jXJ == 2 && Math.abs(this.PiB.getFinalX() - this.PiB.getCurrX()) > this.Qu) {
                    this.PiB.abortAnimation();
                    this.f11718tb = false;
                    tB();
                    this.IUZ = true;
                    tB(true);
                    setScrollState(1);
                } else {
                    oJ(false);
                    this.IUZ = false;
                }
            }
            if (this.HyG == null) {
                this.HyG = VelocityTracker.obtain();
            }
            this.HyG.addMovement(motionEvent);
            return this.IUZ;
        }
        so();
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0094  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onLayout(boolean r19, int r20, int r21, int r22, int r23) {
        /*
            Method dump skipped, instructions count: 286
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.adsdk.ugeno.so.tB.onLayout(boolean, int, int, int, int):void");
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        C0150tB c0150tB;
        C0150tB c0150tB2;
        boolean z10;
        int i12;
        setMeasuredDimension(View.getDefaultSize(0, i10), View.getDefaultSize(0, i11));
        int measuredWidth = getMeasuredWidth();
        this.nke = Math.min(measuredWidth / 10, this.LpP);
        int paddingLeft = (measuredWidth - getPaddingLeft()) - getPaddingRight();
        int measuredHeight = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
        int childCount = getChildCount();
        int i13 = 0;
        while (true) {
            boolean z11 = true;
            int i14 = 1073741824;
            if (i13 >= childCount) {
                break;
            }
            View childAt = getChildAt(i13);
            if (childAt.getVisibility() != 8 && (c0150tB2 = (C0150tB) childAt.getLayoutParams()) != null && c0150tB2.oJ) {
                int i15 = c0150tB2.ZYk;
                int i16 = i15 & 7;
                int i17 = i15 & 112;
                if (i17 != 48 && i17 != 80) {
                    z10 = false;
                } else {
                    z10 = true;
                }
                if (i16 != 3 && i16 != 5) {
                    z11 = false;
                }
                int i18 = Integer.MIN_VALUE;
                if (z10) {
                    i12 = Integer.MIN_VALUE;
                    i18 = 1073741824;
                } else if (z11) {
                    i12 = 1073741824;
                } else {
                    i12 = Integer.MIN_VALUE;
                }
                int i19 = ((ViewGroup.LayoutParams) c0150tB2).width;
                if (i19 != -2) {
                    if (i19 == -1) {
                        i19 = paddingLeft;
                    }
                    i18 = 1073741824;
                } else {
                    i19 = paddingLeft;
                }
                int i20 = ((ViewGroup.LayoutParams) c0150tB2).height;
                if (i20 != -2) {
                    if (i20 == -1) {
                        i20 = measuredHeight;
                    }
                } else {
                    i20 = measuredHeight;
                    i14 = i12;
                }
                childAt.measure(View.MeasureSpec.makeMeasureSpec(i19, i18), View.MeasureSpec.makeMeasureSpec(i20, i14));
                if (z10) {
                    measuredHeight -= childAt.getMeasuredHeight();
                } else if (z11) {
                    paddingLeft -= childAt.getMeasuredWidth();
                }
            }
            i13++;
        }
        this.Id = View.MeasureSpec.makeMeasureSpec(paddingLeft, 1073741824);
        this.cY = View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824);
        this.f11713jr = true;
        tB();
        this.f11713jr = false;
        int childCount2 = getChildCount();
        for (int i21 = 0; i21 < childCount2; i21++) {
            View childAt2 = getChildAt(i21);
            if (childAt2.getVisibility() != 8 && ((c0150tB = (C0150tB) childAt2.getLayoutParams()) == null || !c0150tB.oJ)) {
                childAt2.measure(View.MeasureSpec.makeMeasureSpec((int) (paddingLeft * c0150tB.tB), 1073741824), this.cY);
            }
        }
    }

    @Override // android.view.ViewGroup
    protected boolean onRequestFocusInDescendants(int i10, Rect rect) {
        int i11;
        int i12;
        int i13;
        ZYk oJ2;
        int childCount = getChildCount();
        if ((i10 & 2) != 0) {
            i12 = childCount;
            i11 = 0;
            i13 = 1;
        } else {
            i11 = childCount - 1;
            i12 = -1;
            i13 = -1;
        }
        while (i11 != i12) {
            View childAt = getChildAt(i11);
            if (childAt.getVisibility() == 0 && (oJ2 = oJ(childAt)) != null && oJ2.ZYk == this.ex && childAt.requestFocus(i10, rect)) {
                return true;
            }
            i11 += i13;
        }
        return false;
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof cFZ)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        cFZ cfz = (cFZ) parcelable;
        super.onRestoreInstanceState(cfz.oJ());
        if (this.tB != null) {
            oJ(cfz.ZYk, false, true);
            return;
        }
        this.kkU = cfz.ZYk;
        this.dLZ = cfz.tB;
        this.BTZ = cfz.ex;
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        cFZ cfz = new cFZ(super.onSaveInstanceState());
        cfz.ZYk = this.ex;
        com.bytedance.adsdk.ugeno.so.ZYk zYk = this.tB;
        if (zYk != null) {
            cfz.tB = zYk.ZYk();
        }
        return cfz;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        if (i10 != i12) {
            int i14 = this.eZI;
            oJ(i10, i12, i14, i14);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        com.bytedance.adsdk.ugeno.so.ZYk zYk;
        int findPointerIndex;
        float f10;
        if (this.nQI) {
            return true;
        }
        boolean z10 = false;
        if ((motionEvent.getAction() == 0 && motionEvent.getEdgeFlags() != 0) || (zYk = this.tB) == null || zYk.oJ() == 0) {
            return false;
        }
        if (this.HyG == null) {
            this.HyG = VelocityTracker.obtain();
        }
        this.HyG.addMovement(motionEvent);
        int action = motionEvent.getAction() & 255;
        if (action != 0) {
            if (action != 1) {
                if (action != 2) {
                    if (action != 3) {
                        if (action != 5) {
                            if (action == 6) {
                                oJ(motionEvent);
                                int findPointerIndex2 = motionEvent.findPointerIndex(this.f11719wd);
                                if (findPointerIndex2 != -1) {
                                    this.UN = motionEvent.getX(findPointerIndex2);
                                }
                            }
                        } else {
                            int actionIndex = motionEvent.getActionIndex();
                            if (actionIndex != -1) {
                                this.UN = motionEvent.getX(actionIndex);
                                this.f11719wd = motionEvent.getPointerId(actionIndex);
                            }
                        }
                    } else if (this.IUZ) {
                        oJ(this.ex, true, 0, false);
                        z10 = so();
                    }
                } else {
                    if (!this.IUZ) {
                        int findPointerIndex3 = motionEvent.findPointerIndex(this.f11719wd);
                        if (findPointerIndex3 == -1) {
                            z10 = so();
                        } else {
                            float x10 = motionEvent.getX(findPointerIndex3);
                            float abs = Math.abs(x10 - this.UN);
                            float y10 = motionEvent.getY(findPointerIndex3);
                            float abs2 = Math.abs(y10 - this.f11714mu);
                            if (abs > this.Jc && abs > abs2) {
                                this.IUZ = true;
                                tB(true);
                                float f11 = this.XAo;
                                if (x10 - f11 > 0.0f) {
                                    f10 = f11 + this.Jc;
                                } else {
                                    f10 = f11 - this.Jc;
                                }
                                this.UN = f10;
                                this.f11714mu = y10;
                                setScrollState(1);
                                setScrollingCacheEnabled(true);
                                ViewParent parent = getParent();
                                if (parent != null) {
                                    parent.requestDisallowInterceptTouchEvent(true);
                                }
                            }
                        }
                    }
                    if (this.IUZ && (findPointerIndex = motionEvent.findPointerIndex(this.f11719wd)) != -1) {
                        z10 = ZYk(motionEvent.getX(findPointerIndex));
                    }
                }
            } else if (this.IUZ) {
                VelocityTracker velocityTracker = this.HyG;
                velocityTracker.computeCurrentVelocity(1000, this.Rl);
                int xVelocity = (int) velocityTracker.getXVelocity(this.f11719wd);
                this.f11718tb = true;
                int clientWidth = getClientWidth();
                int scrollX = getScrollX();
                ZYk jFA = jFA();
                float f12 = clientWidth;
                int i10 = jFA.ZYk;
                float f13 = ((scrollX / f12) - jFA.Pfn) / (jFA.ex + (this.eZI / f12));
                int findPointerIndex4 = motionEvent.findPointerIndex(this.f11719wd);
                if (findPointerIndex4 != -1) {
                    oJ(oJ(i10, f13, xVelocity, (int) (motionEvent.getX(findPointerIndex4) - this.XAo)), true, true, xVelocity);
                    z10 = so();
                }
            }
        } else {
            this.PiB.abortAnimation();
            this.f11718tb = false;
            tB();
            float x11 = motionEvent.getX();
            this.XAo = x11;
            this.UN = x11;
            float y11 = motionEvent.getY();
            this.ofl = y11;
            this.f11714mu = y11;
            this.f11719wd = motionEvent.getPointerId(0);
        }
        if (z10) {
            postInvalidateOnAnimation();
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        if (this.f11713jr) {
            removeViewInLayout(view);
        } else {
            super.removeView(view);
        }
    }

    public void setAdapter(com.bytedance.adsdk.ugeno.so.ZYk zYk) {
        com.bytedance.adsdk.ugeno.so.ZYk zYk2 = this.tB;
        if (zYk2 != null) {
            zYk2.oJ((DataSetObserver) null);
            for (int i10 = 0; i10 < this.cFZ.size(); i10++) {
                ZYk zYk3 = this.cFZ.get(i10);
                this.tB.oJ((ViewGroup) this, zYk3.ZYk, zYk3.oJ);
            }
            this.cFZ.clear();
            ba();
            this.ex = 0;
            scrollTo(0, 0);
        }
        this.tB = zYk;
        this.oJ = 0;
        if (zYk != null) {
            if (this.awB == null) {
                this.awB = new ba();
            }
            this.tB.oJ((DataSetObserver) this.awB);
            this.f11718tb = false;
            boolean z10 = this.lY;
            this.lY = true;
            this.oJ = this.tB.oJ();
            int i11 = this.kkU;
            if (i11 >= 0) {
                oJ(i11, false, true);
                this.kkU = -1;
                this.dLZ = null;
                this.BTZ = null;
            } else if (!z10) {
                tB();
            } else {
                requestLayout();
            }
        }
        List<Object> list = this.sH;
        if (list != null && !list.isEmpty()) {
            int size = this.sH.size();
            for (int i12 = 0; i12 < size; i12++) {
                this.sH.get(i12);
            }
        }
    }

    public void setCurrentItem(int i10) {
        this.f11718tb = false;
        oJ(i10, !this.lY, false);
    }

    public void setOffscreenPageLimit(int i10) {
        if (i10 <= 0) {
            Log.w("ViewPager", "Requested offscreen page limit " + i10 + " too small; defaulting to 1");
            i10 = 1;
        }
        if (i10 != this.HL) {
            this.HL = i10;
            tB();
        }
    }

    @Deprecated
    public void setOnPageChangeListener(ex exVar) {
        this.jB = exVar;
    }

    public void setPageMargin(int i10) {
        int i11 = this.eZI;
        this.eZI = i10;
        int width = getWidth();
        oJ(width, width, i10, i11);
        requestLayout();
    }

    public void setPageMarginDrawable(Drawable drawable) {
        this.f11716si = drawable;
        if (drawable != null) {
            refreshDrawableState();
        }
        setWillNotDraw(drawable == null);
        invalidate();
    }

    void setScrollState(int i10) {
        boolean z10;
        if (this.jXJ == i10) {
            return;
        }
        this.jXJ = i10;
        if (this.Dex != null) {
            if (i10 != 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            ZYk(z10);
        }
        ba(i10);
    }

    public void setScroller(Scroller scroller) {
        this.PiB = scroller;
    }

    void tB() {
        oJ(this.ex);
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        if (!super.verifyDrawable(drawable) && drawable != this.f11716si) {
            return false;
        }
        return true;
    }

    /* renamed from: com.bytedance.adsdk.ugeno.so.tB$tB  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static class C0150tB extends ViewGroup.LayoutParams {
        int Pfn;
        public int ZYk;

        /* renamed from: ba  reason: collision with root package name */
        int f11720ba;
        boolean ex;
        public boolean oJ;
        float tB;

        public C0150tB() {
            super(-1, -1);
            this.tB = 0.0f;
        }

        public C0150tB(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.tB = 0.0f;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, tB.ZYk);
            this.ZYk = obtainStyledAttributes.getInteger(0, 48);
            obtainStyledAttributes.recycle();
        }
    }

    private static boolean tB(View view) {
        return view.getClass().getAnnotation(oJ.class) != null;
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new C0150tB(getContext(), attributeSet);
    }

    void ZYk() {
        int oJ2 = this.tB.oJ();
        this.oJ = oJ2;
        boolean z10 = this.cFZ.size() < (this.HL * 2) + 1 && this.cFZ.size() < oJ2;
        int i10 = this.ex;
        int i11 = 0;
        while (i11 < this.cFZ.size()) {
            ZYk zYk = this.cFZ.get(i11);
            int oJ3 = this.tB.oJ(zYk.oJ);
            if (oJ3 != -1) {
                if (oJ3 == -2) {
                    this.cFZ.remove(i11);
                    i11--;
                    this.tB.oJ((ViewGroup) this, zYk.ZYk, zYk.oJ);
                    int i12 = this.ex;
                    if (i12 == zYk.ZYk) {
                        i10 = Math.max(0, Math.min(i12, oJ2 - 1));
                    }
                } else {
                    int i13 = zYk.ZYk;
                    if (i13 != oJ3) {
                        if (i13 == this.ex) {
                            i10 = oJ3;
                        }
                        zYk.ZYk = oJ3;
                    }
                }
                z10 = true;
            }
            i11++;
        }
        Collections.sort(this.cFZ, Pfn);
        if (z10) {
            int childCount = getChildCount();
            for (int i14 = 0; i14 < childCount; i14++) {
                C0150tB c0150tB = (C0150tB) getChildAt(i14).getLayoutParams();
                if (!c0150tB.oJ) {
                    c0150tB.tB = 0.0f;
                }
            }
            oJ(i10, false, true);
            requestLayout();
        }
    }

    private void tB(boolean z10) {
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(z10);
        }
    }

    public void setPageMarginDrawable(int i10) {
        setPageMarginDrawable(getContext().getResources().getDrawable(i10));
    }

    private void ba(int i10) {
        ex exVar = this.jB;
        if (exVar != null) {
            exVar.BTZ(i10);
        }
        List<ex> list = this.NO;
        if (list != null) {
            int size = list.size();
            for (int i11 = 0; i11 < size; i11++) {
                ex exVar2 = this.NO.get(i11);
                if (exVar2 != null) {
                    exVar2.BTZ(i10);
                }
            }
        }
        ex exVar3 = this.yz;
        if (exVar3 != null) {
            exVar3.BTZ(i10);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x00b4, code lost:
        if (r5 != 2) goto L23;
     */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00c4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean tB(int r5) {
        /*
            r4 = this;
            android.view.View r0 = r4.findFocus()
            r1 = 0
            if (r0 != r4) goto L9
        L7:
            r0 = r1
            goto L60
        L9:
            if (r0 == 0) goto L60
            android.view.ViewParent r2 = r0.getParent()
        Lf:
            boolean r3 = r2 instanceof android.view.ViewGroup
            if (r3 == 0) goto L1b
            if (r2 != r4) goto L16
            goto L60
        L16:
            android.view.ViewParent r2 = r2.getParent()
            goto Lf
        L1b:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.Class r3 = r0.getClass()
            java.lang.String r3 = r3.getSimpleName()
            r2.append(r3)
            android.view.ViewParent r0 = r0.getParent()
        L2f:
            boolean r3 = r0 instanceof android.view.ViewGroup
            if (r3 == 0) goto L48
            java.lang.String r3 = " => "
            r2.append(r3)
            java.lang.Class r3 = r0.getClass()
            java.lang.String r3 = r3.getSimpleName()
            r2.append(r3)
            android.view.ViewParent r0 = r0.getParent()
            goto L2f
        L48:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r3 = "arrowScroll tried to find focus based on non-child current focused view "
            r0.<init>(r3)
            java.lang.String r2 = r2.toString()
            r0.append(r2)
            java.lang.String r0 = r0.toString()
            java.lang.String r2 = "ViewPager"
            android.util.Log.e(r2, r0)
            goto L7
        L60:
            android.view.FocusFinder r1 = android.view.FocusFinder.getInstance()
            android.view.View r1 = r1.findNextFocus(r4, r0, r5)
            r2 = 66
            r3 = 17
            if (r1 == 0) goto Lab
            if (r1 == r0) goto Lab
            if (r5 != r3) goto L90
            android.graphics.Rect r2 = r4.jFA
            android.graphics.Rect r2 = r4.oJ(r2, r1)
            int r2 = r2.left
            android.graphics.Rect r3 = r4.jFA
            android.graphics.Rect r3 = r4.oJ(r3, r0)
            int r3 = r3.left
            if (r0 == 0) goto L8b
            if (r2 < r3) goto L8b
            boolean r0 = r4.ex()
            goto Lc2
        L8b:
            boolean r0 = r1.requestFocus()
            goto Lc2
        L90:
            if (r5 != r2) goto Lb7
            android.graphics.Rect r2 = r4.jFA
            android.graphics.Rect r2 = r4.oJ(r2, r1)
            int r2 = r2.left
            android.graphics.Rect r3 = r4.jFA
            android.graphics.Rect r3 = r4.oJ(r3, r0)
            int r3 = r3.left
            if (r0 == 0) goto La6
            if (r2 <= r3) goto Lb9
        La6:
            boolean r0 = r1.requestFocus()
            goto Lc2
        Lab:
            if (r5 == r3) goto Lbe
            r0 = 1
            if (r5 != r0) goto Lb1
            goto Lbe
        Lb1:
            if (r5 == r2) goto Lb9
            r0 = 2
            if (r5 != r0) goto Lb7
            goto Lb9
        Lb7:
            r0 = 0
            goto Lc2
        Lb9:
            boolean r0 = r4.Pfn()
            goto Lc2
        Lbe:
            boolean r0 = r4.ex()
        Lc2:
            if (r0 == 0) goto Lcb
            int r5 = android.view.SoundEffectConstants.getContantForFocusDirection(r5)
            r4.playSoundEffect(r5)
        Lcb:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.adsdk.ugeno.so.tB.tB(int):boolean");
    }

    boolean Pfn() {
        com.bytedance.adsdk.ugeno.so.ZYk zYk = this.tB;
        if (zYk == null || this.ex >= zYk.oJ() - 1) {
            return false;
        }
        oJ(this.ex + 1, true);
        return true;
    }

    boolean ex() {
        int i10 = this.ex;
        if (i10 > 0) {
            oJ(i10 - 1, true);
            return true;
        }
        return false;
    }

    public void oJ(int i10, boolean z10) {
        this.f11718tb = false;
        oJ(i10, z10, false);
    }

    void oJ(int i10, boolean z10, boolean z11) {
        oJ(i10, z10, z11, 0);
    }

    void oJ(int i10, boolean z10, boolean z11, int i11) {
        com.bytedance.adsdk.ugeno.so.ZYk zYk = this.tB;
        if (zYk != null && zYk.oJ() > 0) {
            if (!z11 && this.ex == i10 && this.cFZ.size() != 0) {
                setScrollingCacheEnabled(false);
                return;
            }
            if (i10 < 0) {
                i10 = 0;
            } else if (i10 >= this.tB.oJ()) {
                i10 = this.tB.oJ() - 1;
            }
            int i12 = this.HL;
            int i13 = this.ex;
            if (i10 > i13 + i12 || i10 < i13 - i12) {
                for (int i14 = 0; i14 < this.cFZ.size(); i14++) {
                    this.cFZ.get(i14).tB = true;
                }
            }
            boolean z12 = this.ex != i10;
            if (this.lY) {
                this.ex = i10;
                if (z12) {
                    Pfn(i10);
                }
                requestLayout();
                return;
            }
            oJ(i10);
            oJ(i10, z10, i11, z12);
            return;
        }
        setScrollingCacheEnabled(false);
    }

    ZYk ZYk(View view) {
        while (true) {
            ViewParent parent = view.getParent();
            if (parent != this) {
                if (parent == null || !(parent instanceof View)) {
                    return null;
                }
                view = (View) parent;
            } else {
                return oJ(view);
            }
        }
    }

    ZYk ZYk(int i10) {
        for (int i11 = 0; i11 < this.cFZ.size(); i11++) {
            ZYk zYk = this.cFZ.get(i11);
            if (zYk.ZYk == i10) {
                return zYk;
            }
        }
        return null;
    }

    private void ZYk(int i10, float f10, int i11) {
        ex exVar = this.jB;
        if (exVar != null) {
            exVar.oJ(i10, f10, i11);
        }
        List<ex> list = this.NO;
        if (list != null) {
            int size = list.size();
            for (int i12 = 0; i12 < size; i12++) {
                ex exVar2 = this.NO.get(i12);
                if (exVar2 != null) {
                    exVar2.oJ(i10, f10, i11);
                }
            }
        }
        ex exVar3 = this.yz;
        if (exVar3 != null) {
            exVar3.oJ(i10, f10, i11);
        }
    }

    private void oJ(int i10, boolean z10, int i11, boolean z11) {
        ZYk ZYk2 = ZYk(i10);
        int clientWidth = ZYk2 != null ? (int) (getClientWidth() * Math.max(this.QSm, Math.min(ZYk2.Pfn, this.f11715oq))) : 0;
        if (z10) {
            oJ(clientWidth, 0, i11);
            if (z11) {
                Pfn(i10);
                return;
            }
            return;
        }
        if (z11) {
            Pfn(i10);
        }
        oJ(false);
        scrollTo(clientWidth, 0);
        ex(clientWidth);
    }

    private void ZYk(boolean z10) {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            getChildAt(i10).setLayerType(z10 ? this.oIC : 0, null);
        }
    }

    private boolean ZYk(float f10) {
        boolean z10;
        boolean z11;
        float f11 = this.UN - f10;
        this.UN = f10;
        float scrollX = getScrollX() + f11;
        float clientWidth = getClientWidth();
        float f12 = this.QSm * clientWidth;
        float f13 = this.f11715oq * clientWidth;
        boolean z12 = false;
        ZYk zYk = this.cFZ.get(0);
        ArrayList<ZYk> arrayList = this.cFZ;
        ZYk zYk2 = arrayList.get(arrayList.size() - 1);
        if (zYk.ZYk != 0) {
            f12 = zYk.Pfn * clientWidth;
            z10 = false;
        } else {
            z10 = true;
        }
        if (zYk2.ZYk != this.tB.oJ() - 1) {
            f13 = zYk2.Pfn * clientWidth;
            z11 = false;
        } else {
            z11 = true;
        }
        if (scrollX < f12) {
            if (z10) {
                this.bgF.onPull(Math.abs(f12 - scrollX) / clientWidth);
                z12 = true;
            }
            scrollX = f12;
        } else if (scrollX > f13) {
            if (z11) {
                this.Yg.onPull(Math.abs(scrollX - f13) / clientWidth);
                z12 = true;
            }
            scrollX = f13;
        }
        int i10 = (int) scrollX;
        this.UN += scrollX - i10;
        scrollTo(i10, getScrollY());
        ex(i10);
        return z12;
    }

    public void oJ(ex exVar) {
        if (this.NO == null) {
            this.NO = new ArrayList();
        }
        this.NO.add(exVar);
    }

    public void oJ(boolean z10, Pfn pfn) {
        oJ(z10, pfn, 2);
    }

    public void oJ(boolean z10, Pfn pfn, int i10) {
        boolean z11 = pfn != null;
        boolean z12 = z11 != (this.Dex != null);
        this.Dex = pfn;
        setChildrenDrawingOrderEnabled(z11);
        if (z11) {
            this.MoK = z10 ? 2 : 1;
            this.oIC = i10;
        } else {
            this.MoK = 0;
        }
        if (z12) {
            tB();
        }
    }

    float oJ(float f10) {
        return (float) Math.sin((f10 - 0.5f) * 0.47123894f);
    }

    void oJ(int i10, int i11, int i12) {
        int scrollX;
        int abs;
        if (getChildCount() == 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        Scroller scroller = this.PiB;
        if (scroller != null && !scroller.isFinished()) {
            scrollX = this.WcQ ? this.PiB.getCurrX() : this.PiB.getStartX();
            this.PiB.abortAnimation();
            setScrollingCacheEnabled(false);
        } else {
            scrollX = getScrollX();
        }
        int i13 = scrollX;
        int scrollY = getScrollY();
        int i14 = i10 - i13;
        int i15 = i11 - scrollY;
        if (i14 == 0 && i15 == 0) {
            oJ(false);
            tB();
            setScrollState(0);
            return;
        }
        setScrollingCacheEnabled(true);
        setScrollState(2);
        int clientWidth = getClientWidth();
        int i16 = clientWidth / 2;
        float f10 = clientWidth;
        float f11 = i16;
        float oJ2 = f11 + (oJ(Math.min(1.0f, (Math.abs(i14) * 1.0f) / f10)) * f11);
        int abs2 = Math.abs(i12);
        if (abs2 > 0) {
            abs = Math.round(Math.abs(oJ2 / abs2) * 1000.0f) * 4;
        } else {
            abs = (int) (((Math.abs(i14) / ((f10 * this.tB.oJ(this.ex)) + this.eZI)) + 1.0f) * 100.0f);
        }
        int min = Math.min(abs, 600);
        this.WcQ = false;
        this.PiB.startScroll(i13, scrollY, i14, i15, min);
        postInvalidateOnAnimation();
    }

    ZYk oJ(int i10, int i11) {
        ZYk zYk = new ZYk();
        zYk.ZYk = i10;
        zYk.oJ = this.tB.oJ((ViewGroup) this, i10);
        zYk.ex = this.tB.oJ(i10);
        if (i11 >= 0 && i11 < this.cFZ.size()) {
            this.cFZ.add(i11, zYk);
        } else {
            this.cFZ.add(zYk);
        }
        return zYk;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x005b, code lost:
        if (r9 == r10) goto L27;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void oJ(int r18) {
        /*
            Method dump skipped, instructions count: 590
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.adsdk.ugeno.so.tB.oJ(int):void");
    }

    private void oJ(ZYk zYk, int i10, ZYk zYk2) {
        int i11;
        int i12;
        ZYk zYk3;
        ZYk zYk4;
        int oJ2 = this.tB.oJ();
        int clientWidth = getClientWidth();
        float f10 = clientWidth > 0 ? this.eZI / clientWidth : 0.0f;
        if (zYk2 != null) {
            int i13 = zYk2.ZYk;
            int i14 = zYk.ZYk;
            if (i13 < i14) {
                float f11 = zYk2.Pfn + zYk2.ex + f10;
                int i15 = i13 + 1;
                int i16 = 0;
                while (i15 <= zYk.ZYk && i16 < this.cFZ.size()) {
                    ZYk zYk5 = this.cFZ.get(i16);
                    while (true) {
                        zYk4 = zYk5;
                        if (i15 <= zYk4.ZYk || i16 >= this.cFZ.size() - 1) {
                            break;
                        }
                        i16++;
                        zYk5 = this.cFZ.get(i16);
                    }
                    while (i15 < zYk4.ZYk) {
                        f11 += this.tB.oJ(i15) + f10;
                        i15++;
                    }
                    zYk4.Pfn = f11;
                    f11 += zYk4.ex + f10;
                    i15++;
                }
            } else if (i13 > i14) {
                int size = this.cFZ.size() - 1;
                float f12 = zYk2.Pfn;
                while (true) {
                    i13--;
                    if (i13 < zYk.ZYk || size < 0) {
                        break;
                    }
                    ZYk zYk6 = this.cFZ.get(size);
                    while (true) {
                        zYk3 = zYk6;
                        if (i13 >= zYk3.ZYk || size <= 0) {
                            break;
                        }
                        size--;
                        zYk6 = this.cFZ.get(size);
                    }
                    while (i13 > zYk3.ZYk) {
                        f12 -= this.tB.oJ(i13) + f10;
                        i13--;
                    }
                    f12 -= zYk3.ex + f10;
                    zYk3.Pfn = f12;
                }
            }
        }
        int size2 = this.cFZ.size();
        float f13 = zYk.Pfn;
        int i17 = zYk.ZYk;
        int i18 = i17 - 1;
        this.QSm = i17 == 0 ? f13 : -3.4028235E38f;
        int i19 = oJ2 - 1;
        this.f11715oq = i17 == i19 ? (zYk.ex + f13) - 1.0f : Float.MAX_VALUE;
        int i20 = i10 - 1;
        while (i20 >= 0) {
            ZYk zYk7 = this.cFZ.get(i20);
            while (true) {
                i12 = zYk7.ZYk;
                if (i18 <= i12) {
                    break;
                }
                f13 -= this.tB.oJ(i18) + f10;
                i18--;
            }
            f13 -= zYk7.ex + f10;
            zYk7.Pfn = f13;
            if (i12 == 0) {
                this.QSm = f13;
            }
            i20--;
            i18--;
        }
        float f14 = zYk.Pfn + zYk.ex + f10;
        int i21 = zYk.ZYk + 1;
        int i22 = i10 + 1;
        while (i22 < size2) {
            ZYk zYk8 = this.cFZ.get(i22);
            while (true) {
                i11 = zYk8.ZYk;
                if (i21 >= i11) {
                    break;
                }
                f14 += this.tB.oJ(i21) + f10;
                i21++;
            }
            if (i11 == i19) {
                this.f11715oq = (zYk8.ex + f14) - 1.0f;
            }
            zYk8.Pfn = f14;
            f14 += zYk8.ex + f10;
            i22++;
            i21++;
        }
        this.mwH = false;
    }

    ZYk oJ(View view) {
        for (int i10 = 0; i10 < this.cFZ.size(); i10++) {
            ZYk zYk = this.cFZ.get(i10);
            if (this.tB.oJ(view, zYk.oJ)) {
                return zYk;
            }
        }
        return null;
    }

    private void oJ(int i10, int i11, int i12, int i13) {
        if (i11 > 0 && !this.cFZ.isEmpty()) {
            if (!this.PiB.isFinished()) {
                this.PiB.setFinalX(getCurrentItem() * getClientWidth());
                return;
            } else {
                scrollTo((int) ((getScrollX() / (((i11 - getPaddingLeft()) - getPaddingRight()) + i13)) * (((i10 - getPaddingLeft()) - getPaddingRight()) + i12)), getScrollY());
                return;
            }
        }
        ZYk ZYk2 = ZYk(this.ex);
        int min = (int) ((ZYk2 != null ? Math.min(ZYk2.Pfn, this.f11715oq) : 0.0f) * ((i10 - getPaddingLeft()) - getPaddingRight()));
        if (min != getScrollX()) {
            oJ(false);
            scrollTo(min, getScrollY());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0064  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void oJ(int r13, float r14, int r15) {
        /*
            r12 = this;
            int r0 = r12.LS
            r1 = 0
            r2 = 1
            if (r0 <= 0) goto L6b
            int r0 = r12.getScrollX()
            int r3 = r12.getPaddingLeft()
            int r4 = r12.getPaddingRight()
            int r5 = r12.getWidth()
            int r6 = r12.getChildCount()
            r7 = r1
        L1b:
            if (r7 >= r6) goto L6b
            android.view.View r8 = r12.getChildAt(r7)
            android.view.ViewGroup$LayoutParams r9 = r8.getLayoutParams()
            com.bytedance.adsdk.ugeno.so.tB$tB r9 = (com.bytedance.adsdk.ugeno.so.tB.C0150tB) r9
            boolean r10 = r9.oJ
            if (r10 == 0) goto L68
            int r9 = r9.ZYk
            r9 = r9 & 7
            if (r9 == r2) goto L4f
            r10 = 3
            if (r9 == r10) goto L49
            r10 = 5
            if (r9 == r10) goto L39
            r9 = r3
            goto L5c
        L39:
            int r9 = r5 - r4
            int r10 = r8.getMeasuredWidth()
            int r9 = r9 - r10
            int r10 = r8.getMeasuredWidth()
            int r4 = r4 + r10
        L45:
            r11 = r9
            r9 = r3
            r3 = r11
            goto L5c
        L49:
            int r9 = r8.getWidth()
            int r9 = r9 + r3
            goto L5c
        L4f:
            int r9 = r8.getMeasuredWidth()
            int r9 = r5 - r9
            int r9 = r9 / 2
            int r9 = java.lang.Math.max(r9, r3)
            goto L45
        L5c:
            int r3 = r3 + r0
            int r10 = r8.getLeft()
            int r3 = r3 - r10
            if (r3 == 0) goto L67
            r8.offsetLeftAndRight(r3)
        L67:
            r3 = r9
        L68:
            int r7 = r7 + 1
            goto L1b
        L6b:
            r12.ZYk(r13, r14, r15)
            com.bytedance.adsdk.ugeno.so.tB$Pfn r13 = r12.Dex
            if (r13 == 0) goto L9e
            int r13 = r12.getScrollX()
            int r14 = r12.getChildCount()
        L7a:
            if (r1 >= r14) goto L9e
            android.view.View r15 = r12.getChildAt(r1)
            android.view.ViewGroup$LayoutParams r0 = r15.getLayoutParams()
            com.bytedance.adsdk.ugeno.so.tB$tB r0 = (com.bytedance.adsdk.ugeno.so.tB.C0150tB) r0
            boolean r0 = r0.oJ
            if (r0 != 0) goto L9b
            int r0 = r15.getLeft()
            int r0 = r0 - r13
            float r0 = (float) r0
            int r3 = r12.getClientWidth()
            float r3 = (float) r3
            float r0 = r0 / r3
            com.bytedance.adsdk.ugeno.so.tB$Pfn r3 = r12.Dex
            r3.oJ(r15, r0)
        L9b:
            int r1 = r1 + 1
            goto L7a
        L9e:
            r12.oTd = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.adsdk.ugeno.so.tB.oJ(int, float, int):void");
    }

    private void oJ(boolean z10) {
        boolean z11 = this.jXJ == 2;
        if (z11) {
            setScrollingCacheEnabled(false);
            if (!this.PiB.isFinished()) {
                this.PiB.abortAnimation();
                int scrollX = getScrollX();
                int scrollY = getScrollY();
                int currX = this.PiB.getCurrX();
                int currY = this.PiB.getCurrY();
                if (scrollX != currX || scrollY != currY) {
                    scrollTo(currX, currY);
                    if (currX != scrollX) {
                        ex(currX);
                    }
                }
            }
        }
        this.f11718tb = false;
        for (int i10 = 0; i10 < this.cFZ.size(); i10++) {
            ZYk zYk = this.cFZ.get(i10);
            if (zYk.tB) {
                zYk.tB = false;
                z11 = true;
            }
        }
        if (z11) {
            if (z10) {
                postOnAnimation(this.VSB);
            } else {
                this.VSB.run();
            }
        }
    }

    private boolean oJ(float f10, float f11) {
        if (f10 >= this.nke || f11 <= 0.0f) {
            return f10 > ((float) (getWidth() - this.nke)) && f11 < 0.0f;
        }
        return true;
    }

    private int oJ(int i10, float f10, int i11, int i12) {
        if (Math.abs(i12) <= this.Jm || Math.abs(i11) <= this.cdg) {
            i10 += (int) (f10 + (i10 >= this.ex ? 0.4f : 0.6f));
        } else if (i11 <= 0) {
            i10++;
        }
        if (this.cFZ.size() > 0) {
            ArrayList<ZYk> arrayList = this.cFZ;
            return Math.max(this.cFZ.get(0).ZYk, Math.min(i10, arrayList.get(arrayList.size() - 1).ZYk));
        }
        return i10;
    }

    private void oJ(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.f11719wd) {
            int i10 = actionIndex == 0 ? 1 : 0;
            this.UN = motionEvent.getX(i10);
            this.f11719wd = motionEvent.getPointerId(i10);
            VelocityTracker velocityTracker = this.HyG;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    protected boolean oJ(View view, boolean z10, int i10, int i11, int i12) {
        int i13;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int scrollX = view.getScrollX();
            int scrollY = view.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                int i14 = i11 + scrollX;
                if (i14 >= childAt.getLeft() && i14 < childAt.getRight() && (i13 = i12 + scrollY) >= childAt.getTop() && i13 < childAt.getBottom() && oJ(childAt, true, i10, i14 - childAt.getLeft(), i13 - childAt.getTop())) {
                    return true;
                }
            }
        }
        return z10 && view.canScrollHorizontally(-i10);
    }

    public boolean oJ(KeyEvent keyEvent) {
        if (keyEvent.getAction() == 0) {
            int keyCode = keyEvent.getKeyCode();
            if (keyCode == 21) {
                if (keyEvent.hasModifiers(2)) {
                    return ex();
                }
                return tB(17);
            } else if (keyCode == 22) {
                if (keyEvent.hasModifiers(2)) {
                    return Pfn();
                }
                return tB(66);
            } else if (keyCode == 61) {
                if (keyEvent.hasNoModifiers()) {
                    return tB(2);
                }
                if (keyEvent.hasModifiers(1)) {
                    return tB(1);
                }
            }
        }
        return false;
    }

    private Rect oJ(Rect rect, View view) {
        if (rect == null) {
            rect = new Rect();
        }
        if (view == null) {
            rect.set(0, 0, 0, 0);
            return rect;
        }
        rect.left = view.getLeft();
        rect.right = view.getRight();
        rect.top = view.getTop();
        rect.bottom = view.getBottom();
        ViewParent parent = view.getParent();
        while ((parent instanceof ViewGroup) && parent != this) {
            ViewGroup viewGroup = (ViewGroup) parent;
            rect.left += viewGroup.getLeft();
            rect.right += viewGroup.getRight();
            rect.top += viewGroup.getTop();
            rect.bottom += viewGroup.getBottom();
            parent = viewGroup.getParent();
        }
        return rect;
    }
}
