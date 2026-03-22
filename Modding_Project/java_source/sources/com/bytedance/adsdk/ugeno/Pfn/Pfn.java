package com.bytedance.adsdk.ugeno.Pfn;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.ViewCompat;
import com.bytedance.adsdk.ugeno.Pfn.ex;
import com.bytedance.adsdk.ugeno.cFZ.cFZ;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class Pfn extends ViewGroup implements com.bytedance.adsdk.ugeno.Pfn.oJ {
    private int BTZ;
    private int Pfn;
    private int[] PiB;
    private ex.oJ Ry;
    private SparseIntArray WcQ;
    private int ZYk;
    private ex awB;

    /* renamed from: ba  reason: collision with root package name */
    private int f11607ba;
    private Drawable cFZ;
    private int dLZ;
    private List<tB> eZI;
    private int ex;
    private int jFA;
    private int kkU;
    private int oJ;

    /* renamed from: si  reason: collision with root package name */
    private com.bytedance.adsdk.ugeno.ex f11608si;

    /* renamed from: so  reason: collision with root package name */
    private Drawable f11609so;
    private int tB;

    /* loaded from: classes3.dex */
    public static class oJ extends ViewGroup.MarginLayoutParams implements ZYk {
        public static final Parcelable.Creator<oJ> CREATOR = new Parcelable.Creator<oJ>() { // from class: com.bytedance.adsdk.ugeno.Pfn.Pfn.oJ.1
            @Override // android.os.Parcelable.Creator
            /* renamed from: oJ */
            public oJ createFromParcel(Parcel parcel) {
                return new oJ(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: oJ */
            public oJ[] newArray(int i10) {
                return new oJ[i10];
            }
        };
        private float Pfn;
        private float ZYk;

        /* renamed from: ba  reason: collision with root package name */
        private int f11610ba;
        private int cFZ;
        private int ex;
        private int jFA;
        private boolean kkU;
        private int oJ;

        /* renamed from: so  reason: collision with root package name */
        private int f11611so;
        private float tB;

        public oJ(oJ oJVar) {
            super((ViewGroup.MarginLayoutParams) oJVar);
            this.oJ = 1;
            this.ZYk = 0.0f;
            this.tB = 0.0f;
            this.ex = -1;
            this.Pfn = -1.0f;
            this.f11610ba = -1;
            this.cFZ = -1;
            this.f11611so = ViewCompat.MEASURED_SIZE_MASK;
            this.jFA = ViewCompat.MEASURED_SIZE_MASK;
            this.oJ = oJVar.oJ;
            this.ZYk = oJVar.ZYk;
            this.tB = oJVar.tB;
            this.ex = oJVar.ex;
            this.Pfn = oJVar.Pfn;
            this.f11610ba = oJVar.f11610ba;
            this.cFZ = oJVar.cFZ;
            this.f11611so = oJVar.f11611so;
            this.jFA = oJVar.jFA;
            this.kkU = oJVar.kkU;
        }

        @Override // com.bytedance.adsdk.ugeno.Pfn.ZYk
        public float BTZ() {
            return this.Pfn;
        }

        @Override // com.bytedance.adsdk.ugeno.Pfn.ZYk
        public float Pfn() {
            return this.tB;
        }

        @Override // com.bytedance.adsdk.ugeno.Pfn.ZYk
        public int PiB() {
            return ((ViewGroup.MarginLayoutParams) this).leftMargin;
        }

        @Override // com.bytedance.adsdk.ugeno.Pfn.ZYk
        public int WcQ() {
            return ((ViewGroup.MarginLayoutParams) this).topMargin;
        }

        @Override // com.bytedance.adsdk.ugeno.Pfn.ZYk
        public int ZYk() {
            return ((ViewGroup.MarginLayoutParams) this).height;
        }

        @Override // com.bytedance.adsdk.ugeno.Pfn.ZYk
        public int awB() {
            return ((ViewGroup.MarginLayoutParams) this).rightMargin;
        }

        @Override // com.bytedance.adsdk.ugeno.Pfn.ZYk
        public int ba() {
            return this.ex;
        }

        @Override // com.bytedance.adsdk.ugeno.Pfn.ZYk
        public int cFZ() {
            return this.f11610ba;
        }

        @Override // com.bytedance.adsdk.ugeno.Pfn.ZYk
        public boolean dLZ() {
            return this.kkU;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // com.bytedance.adsdk.ugeno.Pfn.ZYk
        public int eZI() {
            return ((ViewGroup.MarginLayoutParams) this).bottomMargin;
        }

        @Override // com.bytedance.adsdk.ugeno.Pfn.ZYk
        public float ex() {
            return this.ZYk;
        }

        @Override // com.bytedance.adsdk.ugeno.Pfn.ZYk
        public int jFA() {
            return this.f11611so;
        }

        @Override // com.bytedance.adsdk.ugeno.Pfn.ZYk
        public int kkU() {
            return this.jFA;
        }

        @Override // com.bytedance.adsdk.ugeno.Pfn.ZYk
        public int oJ() {
            return ((ViewGroup.MarginLayoutParams) this).width;
        }

        @Override // com.bytedance.adsdk.ugeno.Pfn.ZYk
        public int so() {
            return this.cFZ;
        }

        @Override // com.bytedance.adsdk.ugeno.Pfn.ZYk
        public int tB() {
            return this.oJ;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            parcel.writeInt(this.oJ);
            parcel.writeFloat(this.ZYk);
            parcel.writeFloat(this.tB);
            parcel.writeInt(this.ex);
            parcel.writeFloat(this.Pfn);
            parcel.writeInt(this.f11610ba);
            parcel.writeInt(this.cFZ);
            parcel.writeInt(this.f11611so);
            parcel.writeInt(this.jFA);
            parcel.writeByte(this.kkU ? (byte) 1 : (byte) 0);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).bottomMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).leftMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).rightMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).topMargin);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).height);
            parcel.writeInt(((ViewGroup.MarginLayoutParams) this).width);
        }

        public void ZYk(float f10) {
            this.tB = f10;
        }

        public void ex(int i10) {
            this.ex = i10;
        }

        public void oJ(float f10) {
            this.ZYk = f10;
        }

        public void tB(int i10) {
            this.oJ = i10;
        }

        @Override // com.bytedance.adsdk.ugeno.Pfn.ZYk
        public void ZYk(int i10) {
            this.cFZ = i10;
        }

        @Override // com.bytedance.adsdk.ugeno.Pfn.ZYk
        public void oJ(int i10) {
            this.f11610ba = i10;
        }

        public void tB(float f10) {
            this.Pfn = f10;
        }

        public oJ(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.oJ = 1;
            this.ZYk = 0.0f;
            this.tB = 0.0f;
            this.ex = -1;
            this.Pfn = -1.0f;
            this.f11610ba = -1;
            this.cFZ = -1;
            this.f11611so = ViewCompat.MEASURED_SIZE_MASK;
            this.jFA = ViewCompat.MEASURED_SIZE_MASK;
        }

        public oJ(int i10, int i11) {
            super(new ViewGroup.LayoutParams(i10, i11));
            this.oJ = 1;
            this.ZYk = 0.0f;
            this.tB = 0.0f;
            this.ex = -1;
            this.Pfn = -1.0f;
            this.f11610ba = -1;
            this.cFZ = -1;
            this.f11611so = ViewCompat.MEASURED_SIZE_MASK;
            this.jFA = ViewCompat.MEASURED_SIZE_MASK;
        }

        public oJ(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.oJ = 1;
            this.ZYk = 0.0f;
            this.tB = 0.0f;
            this.ex = -1;
            this.Pfn = -1.0f;
            this.f11610ba = -1;
            this.cFZ = -1;
            this.f11611so = ViewCompat.MEASURED_SIZE_MASK;
            this.jFA = ViewCompat.MEASURED_SIZE_MASK;
        }

        protected oJ(Parcel parcel) {
            super(0, 0);
            this.oJ = 1;
            this.ZYk = 0.0f;
            this.tB = 0.0f;
            this.ex = -1;
            this.Pfn = -1.0f;
            this.f11610ba = -1;
            this.cFZ = -1;
            this.f11611so = ViewCompat.MEASURED_SIZE_MASK;
            this.jFA = ViewCompat.MEASURED_SIZE_MASK;
            this.oJ = parcel.readInt();
            this.ZYk = parcel.readFloat();
            this.tB = parcel.readFloat();
            this.ex = parcel.readInt();
            this.Pfn = parcel.readFloat();
            this.f11610ba = parcel.readInt();
            this.cFZ = parcel.readInt();
            this.f11611so = parcel.readInt();
            this.jFA = parcel.readInt();
            this.kkU = parcel.readByte() != 0;
            ((ViewGroup.MarginLayoutParams) this).bottomMargin = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).leftMargin = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).rightMargin = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).topMargin = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).height = parcel.readInt();
            ((ViewGroup.MarginLayoutParams) this).width = parcel.readInt();
        }
    }

    public Pfn(Context context) {
        super(context, null);
        this.f11607ba = -1;
        this.awB = new ex(this);
        this.eZI = new ArrayList();
        this.Ry = new ex.oJ();
    }

    private boolean Pfn(int i10, int i11) {
        for (int i12 = 1; i12 <= i11; i12++) {
            View tB = tB(i10 - i12);
            if (tB != null && tB.getVisibility() != 8) {
                return false;
            }
        }
        return true;
    }

    private boolean ba(int i10) {
        if (i10 >= 0 && i10 < this.eZI.size()) {
            for (int i11 = i10 + 1; i11 < this.eZI.size(); i11++) {
                if (this.eZI.get(i11).ZYk() > 0) {
                    return false;
                }
            }
            if (oJ()) {
                if ((this.jFA & 4) == 0) {
                    return false;
                }
                return true;
            } else if ((this.kkU & 4) != 0) {
                return true;
            }
        }
        return false;
    }

    private boolean ex(int i10, int i11) {
        return Pfn(i10, i11) ? oJ() ? (this.kkU & 1) != 0 : (this.jFA & 1) != 0 : oJ() ? (this.kkU & 2) != 0 : (this.jFA & 2) != 0;
    }

    @Override // com.bytedance.adsdk.ugeno.Pfn.oJ
    public View ZYk(int i10) {
        return tB(i10);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        if (this.WcQ == null) {
            this.WcQ = new SparseIntArray(getChildCount());
        }
        this.PiB = this.awB.oJ(view, i10, layoutParams, this.WcQ);
        super.addView(view, i10, layoutParams);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof oJ;
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof oJ) {
            return new oJ((oJ) layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new oJ((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new oJ(layoutParams);
    }

    @Override // com.bytedance.adsdk.ugeno.Pfn.oJ
    public int getAlignContent() {
        return this.Pfn;
    }

    @Override // com.bytedance.adsdk.ugeno.Pfn.oJ
    public int getAlignItems() {
        return this.ex;
    }

    public Drawable getDividerDrawableHorizontal() {
        return this.cFZ;
    }

    public Drawable getDividerDrawableVertical() {
        return this.f11609so;
    }

    @Override // com.bytedance.adsdk.ugeno.Pfn.oJ
    public int getFlexDirection() {
        return this.oJ;
    }

    @Override // com.bytedance.adsdk.ugeno.Pfn.oJ
    public int getFlexItemCount() {
        return getChildCount();
    }

    public List<tB> getFlexLines() {
        ArrayList arrayList = new ArrayList(this.eZI.size());
        for (tB tBVar : this.eZI) {
            if (tBVar.ZYk() != 0) {
                arrayList.add(tBVar);
            }
        }
        return arrayList;
    }

    @Override // com.bytedance.adsdk.ugeno.Pfn.oJ
    public List<tB> getFlexLinesInternal() {
        return this.eZI;
    }

    @Override // com.bytedance.adsdk.ugeno.Pfn.oJ
    public int getFlexWrap() {
        return this.ZYk;
    }

    public int getJustifyContent() {
        return this.tB;
    }

    @Override // com.bytedance.adsdk.ugeno.Pfn.oJ
    public int getLargestMainSize() {
        int i10 = Integer.MIN_VALUE;
        for (tB tBVar : this.eZI) {
            i10 = Math.max(i10, tBVar.Pfn);
        }
        return i10;
    }

    @Override // com.bytedance.adsdk.ugeno.Pfn.oJ
    public int getMaxLine() {
        return this.f11607ba;
    }

    public int getShowDividerHorizontal() {
        return this.jFA;
    }

    public int getShowDividerVertical() {
        return this.kkU;
    }

    @Override // com.bytedance.adsdk.ugeno.Pfn.oJ
    public int getSumOfCrossSize() {
        int i10;
        int i11;
        int size = this.eZI.size();
        int i12 = 0;
        for (int i13 = 0; i13 < size; i13++) {
            tB tBVar = this.eZI.get(i13);
            if (ex(i13)) {
                if (oJ()) {
                    i11 = this.dLZ;
                } else {
                    i11 = this.BTZ;
                }
                i12 += i11;
            }
            if (ba(i13)) {
                if (oJ()) {
                    i10 = this.dLZ;
                } else {
                    i10 = this.BTZ;
                }
                i12 += i10;
            }
            i12 += tBVar.cFZ;
        }
        return i12;
    }

    @Override // com.bytedance.adsdk.ugeno.Pfn.oJ
    public int oJ(View view) {
        return 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        com.bytedance.adsdk.ugeno.ex exVar = this.f11608si;
        if (exVar != null) {
            exVar.cFZ();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        com.bytedance.adsdk.ugeno.ex exVar = this.f11608si;
        if (exVar != null) {
            exVar.so();
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        boolean z10;
        boolean z11;
        if (this.f11609so == null && this.cFZ == null) {
            return;
        }
        if (this.jFA == 0 && this.kkU == 0) {
            return;
        }
        int oJ2 = cFZ.oJ(this);
        int i10 = this.oJ;
        boolean z12 = false;
        boolean z13 = true;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 == 3) {
                        if (oJ2 == 1) {
                            z12 = true;
                        }
                        if (this.ZYk == 2) {
                            z12 = !z12;
                        }
                        ZYk(canvas, z12, true);
                        return;
                    }
                    return;
                }
                if (oJ2 != 1) {
                    z13 = false;
                }
                if (this.ZYk == 2) {
                    z13 = !z13;
                }
                ZYk(canvas, z13, false);
                return;
            }
            if (oJ2 != 1) {
                z11 = true;
            } else {
                z11 = false;
            }
            if (this.ZYk == 2) {
                z12 = true;
            }
            oJ(canvas, z11, z12);
            return;
        }
        if (oJ2 == 1) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (this.ZYk == 2) {
            z12 = true;
        }
        oJ(canvas, z10, z12);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14;
        com.bytedance.adsdk.ugeno.ex exVar = this.f11608si;
        if (exVar != null) {
            exVar.ba();
        }
        int oJ2 = cFZ.oJ(this);
        int i14 = this.oJ;
        boolean z15 = false;
        if (i14 != 0) {
            if (i14 != 1) {
                if (i14 != 2) {
                    if (i14 == 3) {
                        if (oJ2 == 1) {
                            z15 = true;
                        }
                        if (this.ZYk == 2) {
                            z14 = !z15;
                        } else {
                            z14 = z15;
                        }
                        oJ(z14, true, i10, i11, i12, i13);
                    } else {
                        throw new IllegalStateException("Invalid flex direction is set: " + this.oJ);
                    }
                } else {
                    if (oJ2 == 1) {
                        z15 = true;
                    }
                    if (this.ZYk == 2) {
                        z13 = !z15;
                    } else {
                        z13 = z15;
                    }
                    oJ(z13, false, i10, i11, i12, i13);
                }
            } else {
                if (oJ2 != 1) {
                    z12 = true;
                } else {
                    z12 = false;
                }
                oJ(z12, i10, i11, i12, i13);
            }
        } else {
            if (oJ2 == 1) {
                z11 = true;
            } else {
                z11 = false;
            }
            oJ(z11, i10, i11, i12, i13);
        }
        com.bytedance.adsdk.ugeno.ex exVar2 = this.f11608si;
        if (exVar2 != null) {
            exVar2.oJ(i10, i11, i12, i13);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        com.bytedance.adsdk.ugeno.ex exVar = this.f11608si;
        if (exVar != null) {
            int[] oJ2 = exVar.oJ(i10, i11);
            oJ(oJ2[0], oJ2[1]);
        } else {
            oJ(i10, i11);
        }
        com.bytedance.adsdk.ugeno.ex exVar2 = this.f11608si;
        if (exVar2 != null) {
            exVar2.Pfn();
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        com.bytedance.adsdk.ugeno.ex exVar = this.f11608si;
        if (exVar != null) {
            exVar.ZYk(i10, i11, i12, i13);
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
    }

    public void setAlignContent(int i10) {
        if (this.Pfn != i10) {
            this.Pfn = i10;
            requestLayout();
        }
    }

    public void setAlignItems(int i10) {
        if (this.ex != i10) {
            this.ex = i10;
            requestLayout();
        }
    }

    public void setDividerDrawable(Drawable drawable) {
        setDividerDrawableHorizontal(drawable);
        setDividerDrawableVertical(drawable);
    }

    public void setDividerDrawableHorizontal(Drawable drawable) {
        if (drawable == this.cFZ) {
            return;
        }
        this.cFZ = drawable;
        if (drawable != null) {
            this.dLZ = drawable.getIntrinsicHeight();
        } else {
            this.dLZ = 0;
        }
        ZYk();
        requestLayout();
    }

    public void setDividerDrawableVertical(Drawable drawable) {
        if (drawable == this.f11609so) {
            return;
        }
        this.f11609so = drawable;
        if (drawable != null) {
            this.BTZ = drawable.getIntrinsicWidth();
        } else {
            this.BTZ = 0;
        }
        ZYk();
        requestLayout();
    }

    public void setFlexDirection(int i10) {
        if (this.oJ != i10) {
            this.oJ = i10;
            requestLayout();
        }
    }

    @Override // com.bytedance.adsdk.ugeno.Pfn.oJ
    public void setFlexLines(List<tB> list) {
        this.eZI = list;
    }

    public void setFlexWrap(int i10) {
        if (this.ZYk != i10) {
            this.ZYk = i10;
            requestLayout();
        }
    }

    public void setJustifyContent(int i10) {
        if (this.tB != i10) {
            this.tB = i10;
            requestLayout();
        }
    }

    public void setMaxLine(int i10) {
        if (this.f11607ba != i10) {
            this.f11607ba = i10;
            requestLayout();
        }
    }

    public void setShowDivider(int i10) {
        setShowDividerVertical(i10);
        setShowDividerHorizontal(i10);
    }

    public void setShowDividerHorizontal(int i10) {
        if (i10 != this.jFA) {
            this.jFA = i10;
            requestLayout();
        }
    }

    public void setShowDividerVertical(int i10) {
        if (i10 != this.kkU) {
            this.kkU = i10;
            requestLayout();
        }
    }

    public View tB(int i10) {
        if (i10 >= 0) {
            int[] iArr = this.PiB;
            if (i10 >= iArr.length) {
                return null;
            }
            return getChildAt(iArr[i10]);
        }
        return null;
    }

    private void ZYk(int i10, int i11) {
        this.eZI.clear();
        this.Ry.oJ();
        this.awB.oJ(this.Ry, i10, i11);
        this.eZI = this.Ry.oJ;
        this.awB.oJ(i10, i11);
        if (this.ex == 3) {
            for (tB tBVar : this.eZI) {
                int i12 = Integer.MIN_VALUE;
                for (int i13 = 0; i13 < tBVar.f11618so; i13++) {
                    View tB = tB(tBVar.awB + i13);
                    if (tB != null && tB.getVisibility() != 8) {
                        oJ oJVar = (oJ) tB.getLayoutParams();
                        if (this.ZYk != 2) {
                            i12 = Math.max(i12, tB.getMeasuredHeight() + Math.max(tBVar.BTZ - tB.getBaseline(), ((ViewGroup.MarginLayoutParams) oJVar).topMargin) + ((ViewGroup.MarginLayoutParams) oJVar).bottomMargin);
                        } else {
                            i12 = Math.max(i12, tB.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) oJVar).topMargin + Math.max((tBVar.BTZ - tB.getMeasuredHeight()) + tB.getBaseline(), ((ViewGroup.MarginLayoutParams) oJVar).bottomMargin));
                        }
                    }
                }
                tBVar.cFZ = i12;
            }
        }
        this.awB.ZYk(i10, i11, getPaddingTop() + getPaddingBottom());
        this.awB.oJ();
        oJ(this.oJ, i10, i11, this.Ry.ZYk);
    }

    private void oJ(int i10, int i11) {
        if (this.WcQ == null) {
            this.WcQ = new SparseIntArray(getChildCount());
        }
        if (this.awB.ZYk(this.WcQ)) {
            this.PiB = this.awB.oJ(this.WcQ);
        }
        int i12 = this.oJ;
        if (i12 == 0 || i12 == 1) {
            ZYk(i10, i11);
        } else if (i12 != 2 && i12 != 3) {
            throw new IllegalStateException("Invalid value for the flex direction is set: " + this.oJ);
        } else {
            tB(i10, i11);
        }
    }

    private boolean Pfn(int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            if (this.eZI.get(i11).ZYk() > 0) {
                return false;
            }
        }
        return true;
    }

    private void tB(int i10, int i11) {
        this.eZI.clear();
        this.Ry.oJ();
        this.awB.ZYk(this.Ry, i10, i11);
        this.eZI = this.Ry.oJ;
        this.awB.oJ(i10, i11);
        this.awB.ZYk(i10, i11, getPaddingLeft() + getPaddingRight());
        this.awB.oJ();
        oJ(this.oJ, i10, i11, this.Ry.ZYk);
    }

    private boolean ex(int i10) {
        if (i10 >= 0 && i10 < this.eZI.size()) {
            if (Pfn(i10)) {
                return oJ() ? (this.jFA & 1) != 0 : (this.kkU & 1) != 0;
            } else if (oJ()) {
                return (this.jFA & 2) != 0;
            } else if ((this.kkU & 2) != 0) {
                return true;
            }
        }
        return false;
    }

    @Override // com.bytedance.adsdk.ugeno.Pfn.oJ
    public View oJ(int i10) {
        return getChildAt(i10);
    }

    private void oJ(int i10, int i11, int i12, int i13) {
        int sumOfCrossSize;
        int largestMainSize;
        int resolveSizeAndState;
        int resolveSizeAndState2;
        int mode = View.MeasureSpec.getMode(i11);
        int size = View.MeasureSpec.getSize(i11);
        int mode2 = View.MeasureSpec.getMode(i12);
        int size2 = View.MeasureSpec.getSize(i12);
        if (i10 == 0 || i10 == 1) {
            sumOfCrossSize = getSumOfCrossSize() + getPaddingTop() + getPaddingBottom();
            largestMainSize = getLargestMainSize();
        } else if (i10 != 2 && i10 != 3) {
            throw new IllegalArgumentException("Invalid flex direction: ".concat(String.valueOf(i10)));
        } else {
            sumOfCrossSize = getLargestMainSize();
            largestMainSize = getSumOfCrossSize() + getPaddingLeft() + getPaddingRight();
        }
        if (mode == Integer.MIN_VALUE) {
            if (size < largestMainSize) {
                i13 = View.combineMeasuredStates(i13, 16777216);
            } else {
                size = largestMainSize;
            }
            resolveSizeAndState = View.resolveSizeAndState(size, i11, i13);
        } else if (mode == 0) {
            resolveSizeAndState = View.resolveSizeAndState(largestMainSize, i11, i13);
        } else if (mode == 1073741824) {
            if (size < largestMainSize) {
                i13 = View.combineMeasuredStates(i13, 16777216);
            }
            resolveSizeAndState = View.resolveSizeAndState(size, i11, i13);
        } else {
            throw new IllegalStateException("Unknown width mode is set: ".concat(String.valueOf(mode)));
        }
        if (mode2 == Integer.MIN_VALUE) {
            if (size2 < sumOfCrossSize) {
                i13 = View.combineMeasuredStates(i13, 256);
            } else {
                size2 = sumOfCrossSize;
            }
            resolveSizeAndState2 = View.resolveSizeAndState(size2, i12, i13);
        } else if (mode2 == 0) {
            resolveSizeAndState2 = View.resolveSizeAndState(sumOfCrossSize, i12, i13);
        } else if (mode2 == 1073741824) {
            if (size2 < sumOfCrossSize) {
                i13 = View.combineMeasuredStates(i13, 256);
            }
            resolveSizeAndState2 = View.resolveSizeAndState(size2, i12, i13);
        } else {
            throw new IllegalStateException("Unknown height mode is set: ".concat(String.valueOf(mode2)));
        }
        setMeasuredDimension(resolveSizeAndState, resolveSizeAndState2);
    }

    private void ZYk(Canvas canvas, boolean z10, boolean z11) {
        int i10;
        int i11;
        int bottom;
        int top;
        int paddingTop = getPaddingTop();
        int max = Math.max(0, (getHeight() - getPaddingBottom()) - paddingTop);
        int size = this.eZI.size();
        for (int i12 = 0; i12 < size; i12++) {
            tB tBVar = this.eZI.get(i12);
            for (int i13 = 0; i13 < tBVar.f11618so; i13++) {
                int i14 = tBVar.awB + i13;
                View tB = tB(i14);
                if (tB != null && tB.getVisibility() != 8) {
                    oJ oJVar = (oJ) tB.getLayoutParams();
                    if (ex(i14, i13)) {
                        if (z11) {
                            top = tB.getBottom() + ((ViewGroup.MarginLayoutParams) oJVar).bottomMargin;
                        } else {
                            top = (tB.getTop() - ((ViewGroup.MarginLayoutParams) oJVar).topMargin) - this.dLZ;
                        }
                        ZYk(canvas, tBVar.oJ, top, tBVar.cFZ);
                    }
                    if (i13 == tBVar.f11618so - 1 && (this.jFA & 4) > 0) {
                        if (z11) {
                            bottom = (tB.getTop() - ((ViewGroup.MarginLayoutParams) oJVar).topMargin) - this.dLZ;
                        } else {
                            bottom = tB.getBottom() + ((ViewGroup.MarginLayoutParams) oJVar).bottomMargin;
                        }
                        ZYk(canvas, tBVar.oJ, bottom, tBVar.cFZ);
                    }
                }
            }
            if (ex(i12)) {
                if (z10) {
                    i11 = tBVar.tB;
                } else {
                    i11 = tBVar.oJ - this.BTZ;
                }
                oJ(canvas, i11, paddingTop, max);
            }
            if (ba(i12) && (this.kkU & 4) > 0) {
                if (z10) {
                    i10 = tBVar.oJ - this.BTZ;
                } else {
                    i10 = tBVar.tB;
                }
                oJ(canvas, i10, paddingTop, max);
            }
        }
    }

    @Override // com.bytedance.adsdk.ugeno.Pfn.oJ
    public boolean oJ() {
        int i10 = this.oJ;
        return i10 == 0 || i10 == 1;
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0122  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0181  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01e4  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01f1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void oJ(boolean r29, int r30, int r31, int r32, int r33) {
        /*
            Method dump skipped, instructions count: 556
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.adsdk.ugeno.Pfn.Pfn.oJ(boolean, int, int, int, int):void");
    }

    private void ZYk(Canvas canvas, int i10, int i11, int i12) {
        Drawable drawable = this.cFZ;
        if (drawable == null) {
            return;
        }
        drawable.setBounds(i10, i11, i12 + i10, this.dLZ + i11);
        this.cFZ.draw(canvas);
    }

    @Override // com.bytedance.adsdk.ugeno.Pfn.oJ
    public int ZYk(int i10, int i11, int i12) {
        return ViewGroup.getChildMeasureSpec(i10, i11, i12);
    }

    private void ZYk() {
        if (this.cFZ == null && this.f11609so == null) {
            setWillNotDraw(true);
        } else {
            setWillNotDraw(false);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0122  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x017b  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01de  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01eb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void oJ(boolean r30, boolean r31, int r32, int r33, int r34, int r35) {
        /*
            Method dump skipped, instructions count: 538
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.adsdk.ugeno.Pfn.Pfn.oJ(boolean, boolean, int, int, int, int):void");
    }

    private void oJ(Canvas canvas, boolean z10, boolean z11) {
        int i10;
        int i11;
        int right;
        int left;
        int paddingLeft = getPaddingLeft();
        int max = Math.max(0, (getWidth() - getPaddingRight()) - paddingLeft);
        int size = this.eZI.size();
        for (int i12 = 0; i12 < size; i12++) {
            tB tBVar = this.eZI.get(i12);
            for (int i13 = 0; i13 < tBVar.f11618so; i13++) {
                int i14 = tBVar.awB + i13;
                View tB = tB(i14);
                if (tB != null && tB.getVisibility() != 8) {
                    oJ oJVar = (oJ) tB.getLayoutParams();
                    if (ex(i14, i13)) {
                        if (z10) {
                            left = tB.getRight() + ((ViewGroup.MarginLayoutParams) oJVar).rightMargin;
                        } else {
                            left = (tB.getLeft() - ((ViewGroup.MarginLayoutParams) oJVar).leftMargin) - this.BTZ;
                        }
                        oJ(canvas, left, tBVar.ZYk, tBVar.cFZ);
                    }
                    if (i13 == tBVar.f11618so - 1 && (this.kkU & 4) > 0) {
                        if (z10) {
                            right = (tB.getLeft() - ((ViewGroup.MarginLayoutParams) oJVar).leftMargin) - this.BTZ;
                        } else {
                            right = tB.getRight() + ((ViewGroup.MarginLayoutParams) oJVar).rightMargin;
                        }
                        oJ(canvas, right, tBVar.ZYk, tBVar.cFZ);
                    }
                }
            }
            if (ex(i12)) {
                if (z11) {
                    i11 = tBVar.ex;
                } else {
                    i11 = tBVar.ZYk - this.dLZ;
                }
                ZYk(canvas, paddingLeft, i11, max);
            }
            if (ba(i12) && (this.jFA & 4) > 0) {
                if (z11) {
                    i10 = tBVar.ZYk - this.dLZ;
                } else {
                    i10 = tBVar.ex;
                }
                ZYk(canvas, paddingLeft, i10, max);
            }
        }
    }

    private void oJ(Canvas canvas, int i10, int i11, int i12) {
        Drawable drawable = this.f11609so;
        if (drawable == null) {
            return;
        }
        drawable.setBounds(i10, i11, this.BTZ + i10, i12 + i11);
        this.f11609so.draw(canvas);
    }

    @Override // com.bytedance.adsdk.ugeno.Pfn.oJ
    public int oJ(View view, int i10, int i11) {
        int i12;
        int i13;
        if (oJ()) {
            i12 = ex(i10, i11) ? this.BTZ : 0;
            if ((this.kkU & 4) <= 0) {
                return i12;
            }
            i13 = this.BTZ;
        } else {
            i12 = ex(i10, i11) ? this.dLZ : 0;
            if ((this.jFA & 4) <= 0) {
                return i12;
            }
            i13 = this.dLZ;
        }
        return i12 + i13;
    }

    @Override // com.bytedance.adsdk.ugeno.Pfn.oJ
    public void oJ(tB tBVar) {
        if (oJ()) {
            if ((this.kkU & 4) > 0) {
                int i10 = tBVar.Pfn;
                int i11 = this.BTZ;
                tBVar.Pfn = i10 + i11;
                tBVar.f11616ba += i11;
            }
        } else if ((this.jFA & 4) > 0) {
            int i12 = tBVar.Pfn;
            int i13 = this.dLZ;
            tBVar.Pfn = i12 + i13;
            tBVar.f11616ba += i13;
        }
    }

    @Override // com.bytedance.adsdk.ugeno.Pfn.oJ
    public int oJ(int i10, int i11, int i12) {
        return ViewGroup.getChildMeasureSpec(i10, i11, i12);
    }

    @Override // com.bytedance.adsdk.ugeno.Pfn.oJ
    public void oJ(View view, int i10, int i11, tB tBVar) {
        if (ex(i10, i11)) {
            if (oJ()) {
                int i12 = tBVar.Pfn;
                int i13 = this.BTZ;
                tBVar.Pfn = i12 + i13;
                tBVar.f11616ba += i13;
                return;
            }
            int i14 = tBVar.Pfn;
            int i15 = this.dLZ;
            tBVar.Pfn = i14 + i15;
            tBVar.f11616ba += i15;
        }
    }

    public void oJ(com.bytedance.adsdk.ugeno.ZYk.tB tBVar) {
        this.f11608si = tBVar;
    }
}
