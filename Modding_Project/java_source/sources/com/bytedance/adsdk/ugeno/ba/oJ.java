package com.bytedance.adsdk.ugeno.ba;

import android.content.Context;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.FrameLayout;
import android.widget.Scroller;
import com.adjust.sdk.Constants;
import com.bytedance.adsdk.ugeno.so.tB;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes3.dex */
public abstract class oJ<T> extends FrameLayout implements tB.ex {
    private static final Interpolator HL = new Interpolator() { // from class: com.bytedance.adsdk.ugeno.ba.oJ.1
        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f10) {
            float f11 = f10 - 1.0f;
            return (f11 * f11 * f11 * f11 * f11) + 1.0f;
        }
    };
    private boolean BTZ;
    private final Runnable IUZ;
    private FrameLayout Id;
    private final Runnable Ln;
    private int Pfn;
    private boolean PiB;
    private int QSm;
    private int RZ;
    private int Ry;
    private boolean WcQ;
    private com.bytedance.adsdk.ugeno.ba.tB Xe;
    protected com.bytedance.adsdk.ugeno.so.tB ZYk;
    private boolean awB;

    /* renamed from: ba  reason: collision with root package name */
    private int f11641ba;
    private int cFZ;
    private com.bytedance.adsdk.ugeno.ba.oJ.oJ cY;
    private float dLZ;
    private boolean eZI;
    private int ex;
    private int jFA;

    /* renamed from: jr  reason: collision with root package name */
    private C0142oJ f11642jr;
    private String kkU;
    protected List<T> oJ;

    /* renamed from: oq  reason: collision with root package name */
    private int f11643oq;

    /* renamed from: si  reason: collision with root package name */
    private boolean f11644si;

    /* renamed from: so  reason: collision with root package name */
    private int f11645so;
    protected Context tB;

    /* renamed from: tb  reason: collision with root package name */
    private Scroller f11646tb;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class ZYk extends Scroller {
        public ZYk(Context context, Interpolator interpolator) {
            super(context, interpolator);
        }

        @Override // android.widget.Scroller
        public void startScroll(int i10, int i11, int i12, int i13, int i14) {
            super.startScroll(i10, i11, i12, i13, oJ.this.f11641ba);
        }

        @Override // android.widget.Scroller
        public void startScroll(int i10, int i11, int i12, int i13) {
            super.startScroll(i10, i11, i12, i13, oJ.this.f11641ba);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bytedance.adsdk.ugeno.ba.oJ$oJ  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public class C0142oJ extends com.bytedance.adsdk.ugeno.so.ZYk {
        C0142oJ() {
        }

        @Override // com.bytedance.adsdk.ugeno.so.ZYk
        public int oJ(Object obj) {
            return -2;
        }

        @Override // com.bytedance.adsdk.ugeno.so.ZYk
        public boolean oJ(View view, Object obj) {
            return view == obj;
        }

        @Override // com.bytedance.adsdk.ugeno.so.ZYk
        public int oJ() {
            if (oJ.this.WcQ) {
                return 1024;
            }
            return oJ.this.oJ.size();
        }

        @Override // com.bytedance.adsdk.ugeno.so.ZYk
        public Object oJ(ViewGroup viewGroup, int i10) {
            View oJ = oJ.this.oJ(i10, ex.oJ(oJ.this.WcQ, i10, oJ.this.oJ.size()));
            viewGroup.addView(oJ);
            return oJ;
        }

        @Override // com.bytedance.adsdk.ugeno.so.ZYk
        public void oJ(ViewGroup viewGroup, int i10, Object obj) {
            viewGroup.removeView((View) obj);
        }

        @Override // com.bytedance.adsdk.ugeno.so.ZYk
        public float oJ(int i10) {
            if (oJ.this.dLZ <= 0.0f) {
                return 1.0f;
            }
            return 1.0f / oJ.this.dLZ;
        }
    }

    /* loaded from: classes3.dex */
    public class tB extends com.bytedance.adsdk.ugeno.so.tB {
        public tB(Context context) {
            super(context);
        }

        private MotionEvent oJ(MotionEvent motionEvent) {
            float width = getWidth();
            float height = getHeight();
            motionEvent.setLocation((motionEvent.getY() / height) * width, (motionEvent.getX() / width) * height);
            return motionEvent;
        }

        @Override // com.bytedance.adsdk.ugeno.so.tB, android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            if (oJ.this.awB) {
                try {
                    if (oJ.this.f11643oq == 1) {
                        boolean onInterceptTouchEvent = super.onInterceptTouchEvent(oJ(motionEvent));
                        oJ(motionEvent);
                        return onInterceptTouchEvent;
                    }
                    return super.onInterceptTouchEvent(motionEvent);
                } catch (IllegalArgumentException unused) {
                    return false;
                }
            }
            return false;
        }

        @Override // com.bytedance.adsdk.ugeno.so.tB, android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            if (oJ.this.awB) {
                try {
                    if (oJ.this.f11643oq == 1) {
                        return super.onTouchEvent(oJ(motionEvent));
                    }
                    return super.onTouchEvent(motionEvent);
                } catch (IllegalArgumentException unused) {
                    return false;
                }
            }
            return false;
        }
    }

    public oJ(Context context) {
        super(context);
        this.oJ = new CopyOnWriteArrayList();
        this.ex = 2000;
        this.Pfn = 500;
        this.f11641ba = 500;
        this.cFZ = 0;
        this.f11645so = -1;
        this.jFA = -1;
        this.kkU = Constants.NORMAL;
        this.dLZ = 1.0f;
        this.BTZ = true;
        this.PiB = true;
        this.WcQ = true;
        this.awB = true;
        this.Ry = 0;
        this.RZ = 0;
        this.QSm = 0;
        this.f11643oq = 0;
        this.IUZ = new Runnable() { // from class: com.bytedance.adsdk.ugeno.ba.oJ.2
            @Override // java.lang.Runnable
            public void run() {
                int currentItem = oJ.this.ZYk.getCurrentItem() + 1;
                if (oJ.this.WcQ) {
                    if (currentItem >= 1024) {
                        oJ.this.ZYk.oJ(512, false);
                        return;
                    } else {
                        oJ.this.ZYk.oJ(currentItem, true);
                        return;
                    }
                }
                com.bytedance.adsdk.ugeno.so.ZYk adapter = oJ.this.ZYk.getAdapter();
                if (adapter != null) {
                    if (currentItem >= adapter.oJ()) {
                        oJ.this.ZYk.oJ(0, false);
                    } else {
                        oJ.this.ZYk.oJ(currentItem, true);
                    }
                }
            }
        };
        this.Ln = new Runnable() { // from class: com.bytedance.adsdk.ugeno.ba.oJ.3
            @Override // java.lang.Runnable
            public void run() {
                if (oJ.this.PiB) {
                    int currentItem = oJ.this.ZYk.getCurrentItem() + 1;
                    if (oJ.this.WcQ) {
                        if (currentItem >= 1024) {
                            oJ.this.ZYk.oJ(512, false);
                        } else {
                            oJ.this.ZYk.oJ(currentItem, true);
                        }
                        oJ oJVar = oJ.this;
                        oJVar.postDelayed(oJVar.Ln, oJ.this.ex);
                        return;
                    }
                    com.bytedance.adsdk.ugeno.so.ZYk adapter = oJ.this.ZYk.getAdapter();
                    if (adapter != null) {
                        if (currentItem >= adapter.oJ()) {
                            oJ.this.ZYk.oJ(0, false);
                            oJ oJVar2 = oJ.this;
                            oJVar2.postDelayed(oJVar2.Ln, oJ.this.ex);
                            return;
                        }
                        oJ.this.ZYk.oJ(currentItem, true);
                        oJ oJVar3 = oJ.this;
                        oJVar3.postDelayed(oJVar3.Ln, oJ.this.ex);
                    }
                }
            }
        };
        this.tB = context;
        this.Id = new FrameLayout(context);
        this.ZYk = oJ();
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        this.Id.addView(this.ZYk, layoutParams);
        addView(this.Id);
    }

    @Override // com.bytedance.adsdk.ugeno.so.tB.ex
    public void BTZ(int i10) {
        if (i10 == 1 && this.eZI) {
            ba();
        }
        com.bytedance.adsdk.ugeno.ba.tB tBVar = this.Xe;
        if (tBVar != null) {
            tBVar.oJ(this.WcQ, i10);
        }
    }

    public void PiB(int i10) {
        oJ(this.kkU, this.cFZ, this.f11645so, this.jFA, true);
        if (this.f11642jr == null) {
            this.f11642jr = new C0142oJ();
            this.ZYk.oJ((tB.ex) this);
            this.ZYk.setAdapter(this.f11642jr);
        }
        if (this.WcQ) {
            if (i10 >= 1024) {
                this.ZYk.oJ(512, false);
            } else {
                this.ZYk.oJ(i10, true);
            }
        } else if (i10 >= 0 && i10 < this.oJ.size()) {
            this.ZYk.oJ(i10, true);
        }
    }

    @Override // com.bytedance.adsdk.ugeno.so.tB.ex
    public void dLZ(int i10) {
        boolean z10;
        boolean z11;
        if (this.Xe != null) {
            int oJ = ex.oJ(this.WcQ, i10, this.oJ.size());
            com.bytedance.adsdk.ugeno.ba.tB tBVar = this.Xe;
            boolean z12 = this.WcQ;
            if (oJ == 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (oJ == this.oJ.size() - 1) {
                z11 = true;
            } else {
                z11 = false;
            }
            tBVar.oJ(z12, oJ, i10, z10, z11);
        }
        if (this.BTZ) {
            this.cY.oJ(i10);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.PiB) {
            int action = motionEvent.getAction();
            if (action != 1 && action != 3 && action != 4) {
                if (action == 0) {
                    ba();
                }
            } else if (!this.eZI) {
                Pfn();
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public com.bytedance.adsdk.ugeno.so.ZYk getAdapter() {
        return this.ZYk.getAdapter();
    }

    public int getCurrentItem() {
        return this.ZYk.getCurrentItem();
    }

    public com.bytedance.adsdk.ugeno.so.tB getViewPager() {
        return this.ZYk;
    }

    public oJ jFA(int i10) {
        this.jFA = i10;
        oJ(this.kkU, this.cFZ, this.f11645so, i10, true);
        return this;
    }

    public abstract View kkU(int i10);

    public void setOnPageChangeListener(com.bytedance.adsdk.ugeno.ba.tB tBVar) {
        this.Xe = tBVar;
    }

    public void setTwoItems(boolean z10) {
        this.f11644si = z10;
    }

    public oJ Pfn(int i10) {
        this.cY.setSelectedColor(i10);
        return this;
    }

    public oJ ZYk(float f10) {
        this.cY.setIndicatorHeight((int) f10);
        return this;
    }

    public oJ ba(int i10) {
        this.cY.setUnSelectedColor(i10);
        return this;
    }

    public oJ cFZ(int i10) {
        this.cFZ = i10;
        oJ(this.kkU, i10, this.f11645so, this.jFA, true);
        return this;
    }

    public oJ ex(float f10) {
        this.cY.setIndicatorY(f10);
        return this;
    }

    public com.bytedance.adsdk.ugeno.so.tB oJ() {
        return new tB(getContext());
    }

    public oJ<T> so(int i10) {
        this.f11645so = i10;
        oJ(this.kkU, this.cFZ, i10, this.jFA, true);
        return this;
    }

    public oJ tB(float f10) {
        this.cY.setIndicatorX(f10);
        return this;
    }

    public oJ Pfn(float f10) {
        this.dLZ = f10;
        return this;
    }

    public oJ ZYk() {
        this.cY.oJ();
        return this;
    }

    public void ba() {
        removeCallbacks(this.Ln);
    }

    public oJ ex(int i10) {
        this.ex = i10;
        Pfn();
        return this;
    }

    public oJ oJ(String str) {
        if (TextUtils.equals(str, "rectangle")) {
            this.cY = new com.bytedance.adsdk.ugeno.ba.oJ.tB(this.tB);
        } else {
            this.cY = new com.bytedance.adsdk.ugeno.ba.oJ.ZYk(this.tB);
        }
        addView(this.cY, new FrameLayout.LayoutParams(-2, -2));
        return this;
    }

    public oJ tB(int i10) {
        this.f11641ba = i10;
        if (this.f11646tb == null) {
            this.f11646tb = new ZYk(this.tB, HL);
        }
        this.ZYk.setScroller(this.f11646tb);
        return this;
    }

    private boolean cFZ() {
        return this.oJ.size() <= 2 && this.WcQ;
    }

    public oJ Pfn(boolean z10) {
        this.eZI = z10;
        return this;
    }

    public oJ ZYk(String str) {
        this.cY.setIndicatorDirection(str);
        return this;
    }

    public void Pfn() {
        removeCallbacks(this.Ln);
        postDelayed(this.Ln, this.ex);
    }

    public oJ ZYk(int i10) {
        this.Pfn = i10;
        return this;
    }

    public oJ ex(boolean z10) {
        this.cY.setLoop(z10);
        if (this.WcQ != z10) {
            int oJ = ex.oJ(z10, this.ZYk.getCurrentItem(), this.oJ.size());
            this.WcQ = z10;
            C0142oJ c0142oJ = this.f11642jr;
            if (c0142oJ != null) {
                c0142oJ.tB();
                this.ZYk.setCurrentItem(oJ);
            }
        }
        return this;
    }

    public oJ ZYk(boolean z10) {
        this.awB = z10;
        return this;
    }

    public oJ oJ(float f10) {
        this.cY.setIndicatorWidth((int) f10);
        return this;
    }

    public oJ tB(boolean z10) {
        this.BTZ = z10;
        return this;
    }

    public oJ oJ(int i10) {
        this.f11643oq = i10;
        return this;
    }

    public oJ tB(String str) {
        this.kkU = str;
        oJ(str, this.cFZ, this.f11645so, this.jFA, true);
        return this;
    }

    public oJ oJ(boolean z10) {
        this.PiB = z10;
        Pfn();
        return this;
    }

    public void tB() {
        int i10;
        oJ(this.kkU, this.cFZ, this.f11645so, this.jFA, true);
        if (this.f11642jr == null) {
            this.f11642jr = new C0142oJ();
            this.ZYk.oJ((tB.ex) this);
            this.ZYk.setAdapter(this.f11642jr);
        }
        int i11 = this.Ry;
        if (i11 < 0 || i11 >= this.oJ.size()) {
            this.Ry = 0;
        }
        if (this.WcQ) {
            i10 = this.Ry + 512;
        } else {
            i10 = this.Ry;
        }
        this.ZYk.oJ(i10, true);
        if (!this.WcQ) {
            dLZ(i10);
        }
        if (this.PiB) {
            Pfn();
        }
    }

    public void oJ(String str, int i10, int i11, int i12, boolean z10) {
        C0142oJ c0142oJ = this.f11642jr;
        if (c0142oJ != null) {
            c0142oJ.tB();
        }
        this.ZYk.setPageMargin(i10);
        if (i11 > 0 || i12 > 0) {
            if (this.f11643oq == 1) {
                this.ZYk.setPadding(0, i11 + i10, 0, i12 + i10);
            } else {
                this.ZYk.setPadding(i11 + i10, 0, i12 + i10, 0);
            }
            this.Id.setClipChildren(false);
            this.ZYk.setClipChildren(false);
            this.ZYk.setClipToPadding(false);
        }
        if (this.f11643oq == 1) {
            com.bytedance.adsdk.ugeno.ba.ZYk.ex exVar = new com.bytedance.adsdk.ugeno.ba.ZYk.ex();
            exVar.oJ(str);
            this.ZYk.oJ(true, (tB.Pfn) exVar);
            this.ZYk.setOverScrollMode(2);
        } else if (TextUtils.equals(str, "linear")) {
            this.ZYk.oJ(false, (tB.Pfn) new com.bytedance.adsdk.ugeno.ba.ZYk.tB());
        } else if (TextUtils.equals(str, "cube")) {
            this.ZYk.oJ(false, (tB.Pfn) new com.bytedance.adsdk.ugeno.ba.ZYk.oJ());
        } else if (TextUtils.equals(str, "fade")) {
            this.ZYk.oJ(false, (tB.Pfn) new com.bytedance.adsdk.ugeno.ba.ZYk.ZYk());
        } else {
            this.ZYk.oJ(false, (tB.Pfn) null);
        }
        this.ZYk.setOffscreenPageLimit((int) this.dLZ);
    }

    public void ex() {
        ba();
        if (this.f11642jr != null) {
            this.ZYk.ZYk((tB.ex) this);
            this.ZYk.setAdapter(null);
            this.f11642jr = null;
            this.ZYk.removeAllViews();
            this.oJ.clear();
            this.cY.tB();
        }
    }

    public View oJ(int i10, int i11) {
        if (this.oJ.size() == 0) {
            return new View(getContext());
        }
        View kkU = kkU(i11);
        FrameLayout frameLayout = new FrameLayout(getContext());
        if (kkU instanceof ViewGroup) {
            frameLayout.setClipChildren(true);
        }
        if (cFZ()) {
            kkU.setTag("two_items_tag");
        }
        if (kkU.getParent() instanceof ViewGroup) {
            ((ViewGroup) kkU.getParent()).removeView(kkU);
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        frameLayout.addView(kkU, layoutParams);
        frameLayout.addView(new View(getContext()), new FrameLayout.LayoutParams(-1, -1));
        if (cFZ()) {
            frameLayout.setTag(Integer.valueOf(i10));
        }
        return frameLayout;
    }

    public oJ<T> oJ(T t10) {
        if (t10 != null) {
            this.oJ.add(t10);
            if (this.BTZ) {
                this.cY.ZYk();
            }
        }
        C0142oJ c0142oJ = this.f11642jr;
        if (c0142oJ != null) {
            c0142oJ.tB();
            this.cY.oJ(this.Ry, this.ZYk.getCurrentItem());
        }
        return this;
    }

    @Override // com.bytedance.adsdk.ugeno.so.tB.ex
    public void oJ(int i10, float f10, int i11) {
        com.bytedance.adsdk.ugeno.ba.tB tBVar = this.Xe;
        if (tBVar != null) {
            boolean z10 = this.WcQ;
            tBVar.oJ(z10, ex.oJ(z10, i10, this.oJ.size()), f10, i11);
        }
        if (cFZ()) {
            oJ(i10, findViewWithTag(Integer.valueOf(i10)));
            if (f10 > 0.0f) {
                int i12 = i10 + 1;
                oJ(i12, findViewWithTag(Integer.valueOf(i12)));
            }
        }
    }

    private void oJ(int i10, View view) {
        View findViewWithTag;
        if ((view instanceof ViewGroup) && (findViewWithTag = view.findViewWithTag("two_items_tag")) == null) {
            T t10 = this.oJ.get(ex.oJ(true, i10, this.oJ.size()));
            if (t10 == null) {
                return;
            }
            if (t10 instanceof com.bytedance.adsdk.ugeno.ZYk.tB) {
                findViewWithTag = ((com.bytedance.adsdk.ugeno.ZYk.tB) t10).dLZ();
            } else if (t10 instanceof View) {
                findViewWithTag = (View) t10;
            }
            if (findViewWithTag == null) {
                return;
            }
            if (findViewWithTag.getParent() instanceof ViewGroup) {
                ((ViewGroup) findViewWithTag.getParent()).removeView(findViewWithTag);
            }
            ((ViewGroup) view).addView(findViewWithTag);
        }
    }
}
