package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.text.TextUtils;
import android.util.Pair;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import com.bytedance.sdk.component.adexpress.dynamic.animation.view.IAnimation;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public abstract class Pfn extends FrameLayout implements IAnimation, XAo, mu {
    private static final View.OnTouchListener Id = new View.OnTouchListener() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.Pfn.2
        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return true;
        }
    };
    private static final View.OnClickListener cY = new View.OnClickListener() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.Pfn.3
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
        }
    };
    protected com.bytedance.sdk.component.adexpress.dynamic.ex.cFZ BTZ;
    protected float Pfn;
    protected com.bytedance.sdk.component.adexpress.dynamic.ex.so PiB;
    private float QSm;
    private float RZ;
    com.bytedance.sdk.component.adexpress.dynamic.animation.view.tB Ry;
    protected DynamicRootView WcQ;
    private float ZYk;
    protected View awB;

    /* renamed from: ba  reason: collision with root package name */
    protected float f12677ba;
    protected int cFZ;
    protected Context dLZ;
    protected boolean eZI;
    protected float ex;
    protected int jFA;
    protected int kkU;
    private float oJ;

    /* renamed from: oq  reason: collision with root package name */
    private com.bytedance.sdk.component.utils.jr f12678oq;

    /* renamed from: si  reason: collision with root package name */
    protected com.bytedance.sdk.component.adexpress.dynamic.animation.oJ.ZYk f12679si;

    /* renamed from: so  reason: collision with root package name */
    protected int f12680so;
    protected float tB;

    public Pfn(Context context, DynamicRootView dynamicRootView, com.bytedance.sdk.component.adexpress.dynamic.ex.so soVar) {
        super(context);
        boolean z10;
        this.dLZ = context;
        this.WcQ = dynamicRootView;
        this.PiB = soVar;
        this.tB = soVar.ba();
        this.ex = soVar.cFZ();
        this.Pfn = soVar.so();
        this.f12677ba = soVar.jFA();
        this.jFA = (int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(this.dLZ, this.tB);
        this.kkU = (int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(this.dLZ, this.ex);
        this.cFZ = (int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(this.dLZ, this.Pfn);
        this.f12680so = (int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(this.dLZ, this.f12677ba);
        com.bytedance.sdk.component.adexpress.dynamic.ex.cFZ cfz = new com.bytedance.sdk.component.adexpress.dynamic.ex.cFZ(soVar.kkU());
        this.BTZ = cfz;
        if (cfz.Ry() > 0) {
            this.cFZ += this.BTZ.Ry() * 2;
            this.f12680so += this.BTZ.Ry() * 2;
            this.jFA -= this.BTZ.Ry();
            this.kkU -= this.BTZ.Ry();
            List<com.bytedance.sdk.component.adexpress.dynamic.ex.so> dLZ = soVar.dLZ();
            if (dLZ != null) {
                for (com.bytedance.sdk.component.adexpress.dynamic.ex.so soVar2 : dLZ) {
                    soVar2.tB(soVar2.ba() + com.bytedance.sdk.component.adexpress.ex.cFZ.ZYk(this.dLZ, this.BTZ.Ry()));
                    soVar2.ex(soVar2.cFZ() + com.bytedance.sdk.component.adexpress.ex.cFZ.ZYk(this.dLZ, this.BTZ.Ry()));
                    soVar2.oJ(com.bytedance.sdk.component.adexpress.ex.cFZ.ZYk(this.dLZ, this.BTZ.Ry()));
                    soVar2.ZYk(com.bytedance.sdk.component.adexpress.ex.cFZ.ZYk(this.dLZ, this.BTZ.Ry()));
                }
            }
        }
        if (this.BTZ.WcQ() > 0.0d) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.eZI = z10;
        this.Ry = new com.bytedance.sdk.component.adexpress.dynamic.animation.view.tB();
    }

    public boolean Pfn() {
        com.bytedance.sdk.component.adexpress.dynamic.ex.cFZ cfz = this.BTZ;
        if (cfz != null && cfz.HL() != 0) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void ZYk(@NonNull View view) {
        com.bytedance.sdk.component.adexpress.dynamic.ex.ba Pfn;
        com.bytedance.sdk.component.adexpress.dynamic.ex.so soVar = this.PiB;
        if (soVar == null || (Pfn = soVar.kkU().Pfn()) == null) {
            return;
        }
        view.setTag(2097610716, Boolean.valueOf(Pfn.XSu()));
    }

    public void ba() {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(this.cFZ, this.f12680so);
        layoutParams.topMargin = this.kkU;
        int i10 = this.jFA;
        layoutParams.leftMargin = i10;
        layoutParams.setMarginStart(i10);
        layoutParams.setMarginEnd(layoutParams.rightMargin);
        setLayoutParams(layoutParams);
    }

    public void cFZ() {
        if (so()) {
            return;
        }
        View view = this.awB;
        if (view == null) {
            view = this;
        }
        this.f12679si = new com.bytedance.sdk.component.adexpress.dynamic.animation.oJ.ZYk(view, this.PiB.kkU().Pfn().hwh());
        post(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.Pfn.1
            @Override // java.lang.Runnable
            public void run() {
                com.bytedance.sdk.component.adexpress.dynamic.animation.oJ.ZYk zYk = Pfn.this.f12679si;
                if (zYk != null) {
                    zYk.oJ();
                }
            }
        });
    }

    protected boolean ex() {
        View.OnTouchListener onTouchListener;
        View.OnClickListener onClickListener;
        View view = this.awB;
        if (view == null) {
            view = this;
        }
        if (Pfn()) {
            onTouchListener = (View.OnTouchListener) getDynamicClickListener();
            onClickListener = (View.OnClickListener) getDynamicClickListener();
        } else {
            onTouchListener = Id;
            onClickListener = cY;
        }
        if (onTouchListener != null && onClickListener != null) {
            view.setOnTouchListener(onTouchListener);
            view.setOnClickListener(onClickListener);
            int oJ = com.bytedance.sdk.component.adexpress.dynamic.ZYk.oJ.oJ(this.BTZ);
            if (oJ != 2 && oJ != 3) {
                view.setOnClickListener(onClickListener);
            } else {
                view.setOnClickListener(cY);
            }
        }
        oJ(view);
        ZYk(view);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Drawable getBackgroundDrawable() {
        return oJ(false, "");
    }

    public boolean getBeginInvisibleAndShow() {
        return this.eZI;
    }

    public int getClickArea() {
        return this.BTZ.HL();
    }

    protected GradientDrawable getDrawable() {
        return new GradientDrawable();
    }

    public com.bytedance.sdk.component.adexpress.dynamic.ba.oJ getDynamicClickListener() {
        return this.WcQ.getDynamicClickListener();
    }

    public int getDynamicHeight() {
        return this.f12680so;
    }

    public com.bytedance.sdk.component.adexpress.dynamic.ex.ba getDynamicLayoutBrickValue() {
        com.bytedance.sdk.component.adexpress.dynamic.ex.Pfn kkU;
        com.bytedance.sdk.component.adexpress.dynamic.ex.so soVar = this.PiB;
        if (soVar == null || (kkU = soVar.kkU()) == null) {
            return null;
        }
        return kkU.Pfn();
    }

    public int getDynamicWidth() {
        return this.cFZ;
    }

    public String getImageObjectFit() {
        return this.BTZ.LS();
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.view.IAnimation
    public float getMarqueeValue() {
        return this.RZ;
    }

    protected Drawable getMutilBackgroundDrawable() {
        try {
            return new LayerDrawable(oJ(ZYk(this.BTZ.XAo().replaceAll("/\\*.*\\*/", ""))));
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.view.IAnimation
    public float getRippleValue() {
        return this.oJ;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.view.IAnimation
    public float getShineValue() {
        return this.ZYk;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.view.IAnimation
    public float getStretchValue() {
        return this.QSm;
    }

    public void oJ(int i10) {
        com.bytedance.sdk.component.adexpress.dynamic.ex.cFZ cfz = this.BTZ;
        if (cfz != null && cfz.oJ(i10)) {
            jFA();
            int childCount = getChildCount();
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt = getChildAt(i11);
                if (childAt != null && (getChildAt(i11) instanceof Pfn)) {
                    ((Pfn) childAt).oJ(i10);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        cFZ();
        oJ();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        ZYk();
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.Ry.oJ(canvas, this, this);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        com.bytedance.sdk.component.adexpress.dynamic.animation.view.tB tBVar = this.Ry;
        View view = this.awB;
        if (view == null) {
            view = this;
        }
        tBVar.oJ(view, i10, i11);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.view.IAnimation
    public void setMarqueeValue(float f10) {
        this.RZ = f10;
        postInvalidate();
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.view.IAnimation
    public void setRippleValue(float f10) {
        this.oJ = f10;
        postInvalidate();
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.view.IAnimation
    public void setShineValue(float f10) {
        this.ZYk = f10;
        postInvalidate();
    }

    public void setShouldInvisible(boolean z10) {
        this.eZI = z10;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.view.IAnimation
    public void setStretchValue(float f10) {
        this.QSm = f10;
        this.Ry.oJ(this, f10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean so() {
        com.bytedance.sdk.component.adexpress.dynamic.ex.so soVar = this.PiB;
        if (soVar != null && soVar.kkU() != null && this.PiB.kkU().Pfn() != null && this.PiB.kkU().Pfn().hwh() != null) {
            return false;
        }
        return true;
    }

    public boolean tB() {
        jFA();
        ba();
        ex();
        return true;
    }

    private List<String> ZYk(String str) {
        ArrayList arrayList = new ArrayList();
        int i10 = 0;
        boolean z10 = false;
        int i11 = 0;
        for (int i12 = 0; i12 < str.length(); i12++) {
            if (str.charAt(i12) == '(') {
                i10++;
                z10 = true;
            } else if (str.charAt(i12) == ')' && i10 - 1 == 0 && z10) {
                int i13 = i12 + 1;
                arrayList.add(str.substring(i11, i13));
                i11 = i13;
                z10 = false;
            }
        }
        return arrayList;
    }

    protected void oJ(View view) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("width", this.PiB.so());
            jSONObject.put("height", this.PiB.jFA());
            if (com.bytedance.sdk.component.adexpress.ex.ZYk()) {
                view.setTag(com.bytedance.sdk.component.adexpress.dynamic.oJ.QSm, this.BTZ.ofl());
                view.setTag(com.bytedance.sdk.component.adexpress.dynamic.oJ.f12710oq, this.PiB.kkU().ZYk());
                view.setTag(com.bytedance.sdk.component.adexpress.dynamic.oJ.Id, this.PiB.tB());
                view.setTag(com.bytedance.sdk.component.adexpress.dynamic.oJ.cY, jSONObject.toString());
                return;
            }
            view.setTag(2097610717, this.BTZ.ofl());
            view.setTag(2097610715, this.PiB.kkU().ZYk());
            view.setTag(2097610714, this.PiB.tB());
            view.setTag(2097610713, jSONObject.toString());
            int oJ = com.bytedance.sdk.component.adexpress.dynamic.ZYk.oJ.oJ(this.BTZ);
            if (oJ == 1) {
                view.setTag(2097610707, new Pair(this.BTZ.Xe(), Long.valueOf(this.BTZ.tb())));
                view.setTag(2097610708, Integer.valueOf(oJ));
            }
        } catch (JSONException unused) {
        }
    }

    public void ZYk() {
        com.bytedance.sdk.component.adexpress.dynamic.animation.oJ.ZYk zYk = this.f12679si;
        if (zYk != null) {
            zYk.ZYk();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Drawable oJ(boolean z10, String str) {
        String[] split;
        int[] iArr;
        int IUZ;
        if (!TextUtils.isEmpty(this.BTZ.XAo())) {
            try {
                String XAo = this.BTZ.XAo();
                String substring = XAo.substring(XAo.indexOf("(") + 1, XAo.length() - 1);
                if (substring.contains("rgba") && substring.contains("%")) {
                    split = new String[]{substring.substring(0, substring.indexOf(",")).trim(), substring.substring(substring.indexOf(",") + 1, substring.indexOf("%") + 1).trim(), substring.substring(substring.indexOf("%") + 2).trim()};
                    iArr = new int[]{com.bytedance.sdk.component.adexpress.dynamic.ex.cFZ.oJ(split[1]), com.bytedance.sdk.component.adexpress.dynamic.ex.cFZ.oJ(split[2])};
                } else {
                    split = substring.split(", ");
                    iArr = new int[]{com.bytedance.sdk.component.adexpress.dynamic.ex.cFZ.oJ(split[1].substring(0, 7)), com.bytedance.sdk.component.adexpress.dynamic.ex.cFZ.oJ(split[2].substring(0, 7))};
                }
                try {
                    double parseDouble = Double.parseDouble(substring.substring(substring.indexOf("linear-gradient(") + 1, substring.indexOf("deg")));
                    if (parseDouble > 225.0d && parseDouble < 315.0d) {
                        int i10 = iArr[1];
                        iArr[1] = iArr[0];
                        iArr[0] = i10;
                    }
                } catch (Exception unused) {
                }
                GradientDrawable oJ = oJ(oJ(split[0]), iArr);
                oJ.setShape(0);
                oJ.setCornerRadius(com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(this.dLZ, this.BTZ.awB()));
                return oJ;
            } catch (Exception unused2) {
                Drawable mutilBackgroundDrawable = getMutilBackgroundDrawable();
                if (mutilBackgroundDrawable != null) {
                    return mutilBackgroundDrawable;
                }
            }
        }
        GradientDrawable drawable = getDrawable();
        drawable.setShape(0);
        float oJ2 = com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(this.dLZ, this.BTZ.awB());
        drawable.setCornerRadius(oJ2);
        if (oJ2 < 1.0f) {
            float oJ3 = com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(this.dLZ, this.BTZ.LpP());
            float oJ4 = com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(this.dLZ, this.BTZ.nke());
            float oJ5 = com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(this.dLZ, this.BTZ.Jc());
            float oJ6 = com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(this.dLZ, this.BTZ.UN());
            float[] fArr = new float[8];
            if (oJ3 > 0.0f) {
                fArr[0] = oJ3;
                fArr[1] = oJ3;
            }
            if (oJ4 > 0.0f) {
                fArr[2] = oJ4;
                fArr[3] = oJ4;
            }
            if (oJ5 > 0.0f) {
                fArr[4] = oJ5;
                fArr[5] = oJ5;
            }
            if (oJ6 > 0.0f) {
                fArr[6] = oJ6;
                fArr[7] = oJ6;
            }
            drawable.setCornerRadii(fArr);
        }
        if (z10) {
            IUZ = Color.parseColor(str);
        } else {
            IUZ = this.BTZ.IUZ();
        }
        drawable.setColor(IUZ);
        if (this.BTZ.si() > 0.0f) {
            drawable.setStroke((int) com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(this.dLZ, this.BTZ.si()), this.BTZ.eZI());
        } else if (this.BTZ.Ry() > 0) {
            drawable.setStroke(this.BTZ.Ry(), this.BTZ.eZI());
            drawable.setAlpha(50);
            if (TextUtils.equals(this.PiB.kkU().ZYk(), "video-vd")) {
                setLayerType(1, null);
                return new RZ((int) oJ2, this.BTZ.Ry());
            }
        }
        return drawable;
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z10) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ZYk oJ(Bitmap bitmap) {
        return new oJ(bitmap, null);
    }

    private Drawable[] oJ(List<String> list) {
        Drawable[] drawableArr = new Drawable[list.size()];
        for (int i10 = 0; i10 < list.size(); i10++) {
            String str = list.get(i10);
            if (str.contains("linear-gradient")) {
                String[] split = str.substring(str.indexOf("(") + 1, str.length() - 1).split(", ");
                int length = split.length - 1;
                int[] iArr = new int[length];
                int i11 = 0;
                while (i11 < length) {
                    int i12 = i11 + 1;
                    iArr[i11] = com.bytedance.sdk.component.adexpress.dynamic.ex.cFZ.oJ(split[i12].substring(0, 7));
                    i11 = i12;
                }
                GradientDrawable oJ = oJ(oJ(split[0]), iArr);
                oJ.setShape(0);
                oJ.setCornerRadius(com.bytedance.sdk.component.adexpress.ex.cFZ.oJ(this.dLZ, this.BTZ.awB()));
                drawableArr[(list.size() - 1) - i10] = oJ;
            }
        }
        return drawableArr;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public GradientDrawable oJ(GradientDrawable.Orientation orientation, @ColorInt int[] iArr) {
        if (iArr != null && iArr.length != 0) {
            if (iArr.length == 1) {
                GradientDrawable gradientDrawable = new GradientDrawable();
                gradientDrawable.setColor(iArr[0]);
                return gradientDrawable;
            }
            return new GradientDrawable(orientation, iArr);
        }
        return new GradientDrawable();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public GradientDrawable.Orientation oJ(String str) {
        try {
            int parseFloat = (int) Float.parseFloat(str.substring(0, str.length() - 3));
            if (parseFloat <= 90) {
                return GradientDrawable.Orientation.LEFT_RIGHT;
            }
            if (parseFloat <= 180) {
                return GradientDrawable.Orientation.TOP_BOTTOM;
            }
            if (parseFloat <= 270) {
                return GradientDrawable.Orientation.RIGHT_LEFT;
            }
            return GradientDrawable.Orientation.BOTTOM_TOP;
        } catch (Exception unused) {
            return GradientDrawable.Orientation.LEFT_RIGHT;
        }
    }

    private void oJ() {
        if (isShown()) {
            int oJ = com.bytedance.sdk.component.adexpress.dynamic.ZYk.oJ.oJ(this.BTZ);
            if (oJ == 2) {
                if (this.f12678oq == null) {
                    this.f12678oq = new com.bytedance.sdk.component.utils.jr(getContext().getApplicationContext(), 1);
                }
                new Object() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.Pfn.4
                };
                com.bytedance.sdk.component.adexpress.ZYk.PiB renderRequest = this.WcQ.getRenderRequest();
                if (renderRequest != null) {
                    renderRequest.awB();
                    renderRequest.oq();
                    renderRequest.RZ();
                }
            } else if (oJ == 3) {
                if (this.f12678oq == null) {
                    this.f12678oq = new com.bytedance.sdk.component.utils.jr(getContext().getApplicationContext(), 2);
                }
                new Object() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.Pfn.5
                };
                com.bytedance.sdk.component.adexpress.ZYk.PiB renderRequest2 = this.WcQ.getRenderRequest();
                if (renderRequest2 != null) {
                    renderRequest2.si();
                    renderRequest2.Id();
                    renderRequest2.Ry();
                    renderRequest2.QSm();
                }
            }
        }
    }
}
