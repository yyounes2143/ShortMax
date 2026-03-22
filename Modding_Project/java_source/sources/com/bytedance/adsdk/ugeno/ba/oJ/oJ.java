package com.bytedance.adsdk.ugeno.ba.oJ;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.core.internal.view.SupportMenu;
import com.bytedance.adsdk.ugeno.ba.ex;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public abstract class oJ extends LinearLayout {
    private String BTZ;
    private int Pfn;
    protected int ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private int f11647ba;
    private int cFZ;
    private float dLZ;
    private List<View> ex;
    private int jFA;
    private float kkU;
    protected Context oJ;

    /* renamed from: so  reason: collision with root package name */
    private boolean f11648so;
    protected int tB;

    public oJ(Context context) {
        super(context);
        this.Pfn = SupportMenu.CATEGORY_MASK;
        this.f11647ba = -16776961;
        this.cFZ = 5;
        this.ZYk = 40;
        this.tB = 20;
        this.BTZ = "row";
        this.oJ = context;
        this.ex = new ArrayList();
        setOrientation(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ex() {
        FrameLayout frameLayout = (FrameLayout) getParent();
        if (frameLayout == null) {
            return;
        }
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) getLayoutParams();
        float f10 = this.dLZ;
        layoutParams.topMargin = (int) (((int) ((frameLayout.getHeight() * f10) / 100.0f)) - ((getHeight() * f10) / 100.0f));
        float f11 = this.kkU;
        layoutParams.leftMargin = (int) (((int) ((frameLayout.getWidth() * f11) / 100.0f)) - ((getWidth() * f11) / 100.0f));
        setLayoutParams(layoutParams);
    }

    public abstract Drawable ZYk(int i10);

    public void ZYk() {
        View view = new View(getContext());
        view.setClickable(false);
        if (this instanceof ZYk) {
            this.tB = this.ZYk;
        }
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(this.ZYk, this.tB);
        if (getOrientation() == 1) {
            int i10 = this.cFZ;
            layoutParams.topMargin = i10;
            layoutParams.bottomMargin = i10;
        } else {
            int i11 = this.cFZ;
            layoutParams.leftMargin = i11;
            layoutParams.rightMargin = i11;
        }
        addView(view, layoutParams);
        view.setBackground(ZYk(this.f11647ba));
        this.ex.add(view);
    }

    public int getSize() {
        return this.ex.size();
    }

    public void setIndicatorDirection(String str) {
        this.BTZ = str;
        if (TextUtils.equals(str, "column")) {
            setOrientation(1);
        } else {
            setOrientation(0);
        }
    }

    public void setIndicatorHeight(int i10) {
        this.tB = i10;
    }

    public void setIndicatorWidth(int i10) {
        this.ZYk = i10;
    }

    public void setIndicatorX(float f10) {
        this.kkU = f10;
    }

    public void setIndicatorY(float f10) {
        this.dLZ = f10;
    }

    public void setLoop(boolean z10) {
        this.f11648so = z10;
    }

    public void setSelectedColor(int i10) {
        this.Pfn = i10;
    }

    public void setUnSelectedColor(int i10) {
        this.f11647ba = i10;
    }

    public void tB() {
        this.ex.clear();
        removeAllViews();
    }

    public void oJ(int i10, int i11) {
        for (View view : this.ex) {
            view.setBackground(ZYk(this.f11647ba));
        }
        i10 = (i10 < 0 || i10 >= this.ex.size()) ? 0 : 0;
        if (this.ex.size() > 0) {
            this.ex.get(i10).setBackground(ZYk(this.Pfn));
            this.jFA = i11;
        }
    }

    public void oJ() {
        post(new Runnable() { // from class: com.bytedance.adsdk.ugeno.ba.oJ.oJ.1
            @Override // java.lang.Runnable
            public void run() {
                oJ.this.ex();
            }
        });
    }

    public void oJ(int i10) {
        if (this instanceof ZYk) {
            this.tB = this.ZYk;
        }
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(this.ZYk, this.tB);
        if (getOrientation() == 1) {
            int i11 = this.cFZ;
            layoutParams.topMargin = i11;
            layoutParams.bottomMargin = i11;
        } else {
            int i12 = this.cFZ;
            layoutParams.leftMargin = i12;
            layoutParams.rightMargin = i12;
        }
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(this.ZYk, this.tB);
        if (getOrientation() == 1) {
            int i13 = this.cFZ;
            layoutParams2.topMargin = i13;
            layoutParams2.bottomMargin = i13;
        } else {
            int i14 = this.cFZ;
            layoutParams2.leftMargin = i14;
            layoutParams2.rightMargin = i14;
        }
        int oJ = ex.oJ(this.f11648so, this.jFA, this.ex.size());
        int oJ2 = ex.oJ(this.f11648so, i10, this.ex.size());
        if (this.ex.size() == 0) {
            oJ2 = 0;
        }
        if (!this.ex.isEmpty() && ex.oJ(oJ, this.ex) && ex.oJ(oJ2, this.ex)) {
            this.ex.get(oJ).setBackground(ZYk(this.f11647ba));
            this.ex.get(oJ).setLayoutParams(layoutParams2);
            this.ex.get(oJ2).setBackground(ZYk(this.Pfn));
            this.ex.get(oJ2).setLayoutParams(layoutParams);
            this.jFA = i10;
        }
    }
}
