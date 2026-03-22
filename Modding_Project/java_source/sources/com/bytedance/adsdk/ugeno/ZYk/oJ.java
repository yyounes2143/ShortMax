package com.bytedance.adsdk.ugeno.ZYk;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.bytedance.adsdk.ugeno.cFZ.so;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class oJ<E extends ViewGroup> extends tB {
    protected List<tB<View>> oJ;

    public oJ(Context context) {
        this(context, null);
    }

    @Override // com.bytedance.adsdk.ugeno.ZYk.tB
    public void ZYk() {
        super.ZYk();
    }

    public List<tB<View>> jFA() {
        return this.oJ;
    }

    public C0141oJ kkU() {
        return new C0141oJ(this);
    }

    public void oJ(tB tBVar) {
        if (tBVar == null) {
            return;
        }
        this.oJ.add(tBVar);
        View dLZ = tBVar.dLZ();
        if (dLZ != null) {
            ((ViewGroup) this.Pfn).addView(dLZ);
        }
    }

    @Override // com.bytedance.adsdk.ugeno.ZYk.tB
    protected tB tB(String str) {
        tB<View> ba2;
        if (!TextUtils.isEmpty(str) && kkU(str) != null) {
            return this;
        }
        for (tB<View> tBVar : this.oJ) {
            if (tBVar != null && (ba2 = tBVar.ba(str)) != null) {
                return ba2;
            }
        }
        return null;
    }

    public oJ(Context context, oJ oJVar) {
        super(context, oJVar);
        this.oJ = new ArrayList();
    }

    @Override // com.bytedance.adsdk.ugeno.ZYk.tB
    public tB ZYk(String str) {
        tB<View> Pfn;
        if (TextUtils.isEmpty(str) || !TextUtils.equals(str, this.BTZ)) {
            for (tB<View> tBVar : this.oJ) {
                if (tBVar != null && (Pfn = tBVar.Pfn(str)) != null) {
                    return Pfn;
                }
            }
            return null;
        }
        return this;
    }

    public void oJ(tB tBVar, ViewGroup.LayoutParams layoutParams) {
        if (tBVar == null) {
            return;
        }
        this.oJ.add(tBVar);
        View dLZ = tBVar.dLZ();
        if (dLZ != null) {
            ((ViewGroup) this.Pfn).addView(dLZ, layoutParams);
        }
    }

    @Override // com.bytedance.adsdk.ugeno.ZYk.tB
    public tB oJ(String str) {
        tB<View> ex;
        if (TextUtils.isEmpty(str) || !TextUtils.equals(str, this.dLZ)) {
            for (tB<View> tBVar : this.oJ) {
                if (tBVar != null && (ex = tBVar.ex(str)) != null) {
                    return ex;
                }
            }
            return null;
        }
        return this;
    }

    /* renamed from: com.bytedance.adsdk.ugeno.ZYk.oJ$oJ  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static class C0141oJ {
        protected float BTZ;
        protected boolean Id;
        protected float Pfn;
        protected float PiB;
        protected boolean QSm;
        protected boolean RZ;
        protected boolean Ry;
        protected float WcQ;
        protected oJ Xe;
        protected boolean awB;

        /* renamed from: ba  reason: collision with root package name */
        protected float f11623ba;
        protected float cFZ;
        protected boolean cY;
        protected float dLZ;
        protected boolean eZI;
        protected float jFA;

        /* renamed from: jr  reason: collision with root package name */
        protected ViewGroup.LayoutParams f11624jr;
        protected float kkU;

        /* renamed from: oq  reason: collision with root package name */
        protected boolean f11625oq;

        /* renamed from: si  reason: collision with root package name */
        protected boolean f11626si;

        /* renamed from: so  reason: collision with root package name */
        protected float f11627so;
        protected float oJ = -2.0f;
        protected float ZYk = -2.0f;
        protected float tB = 0.0f;
        protected float ex = 0.0f;

        public C0141oJ(oJ oJVar) {
            this.Xe = oJVar;
        }

        public void oJ(Context context, String str, String str2) {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            str.hashCode();
            char c10 = 65535;
            switch (str.hashCode()) {
                case -1501175880:
                    if (str.equals("paddingLeft")) {
                        c10 = 0;
                        break;
                    }
                    break;
                case -1375815020:
                    if (str.equals("minWidth")) {
                        c10 = 1;
                        break;
                    }
                    break;
                case -1221029593:
                    if (str.equals("height")) {
                        c10 = 2;
                        break;
                    }
                    break;
                case -1081309778:
                    if (str.equals("margin")) {
                        c10 = 3;
                        break;
                    }
                    break;
                case -1044792121:
                    if (str.equals("marginTop")) {
                        c10 = 4;
                        break;
                    }
                    break;
                case -806339567:
                    if (str.equals("padding")) {
                        c10 = 5;
                        break;
                    }
                    break;
                case -289173127:
                    if (str.equals("marginBottom")) {
                        c10 = 6;
                        break;
                    }
                    break;
                case -133587431:
                    if (str.equals("minHeight")) {
                        c10 = 7;
                        break;
                    }
                    break;
                case 90130308:
                    if (str.equals("paddingTop")) {
                        c10 = '\b';
                        break;
                    }
                    break;
                case 113126854:
                    if (str.equals("width")) {
                        c10 = '\t';
                        break;
                    }
                    break;
                case 202355100:
                    if (str.equals("paddingBottom")) {
                        c10 = '\n';
                        break;
                    }
                    break;
                case 713848971:
                    if (str.equals("paddingRight")) {
                        c10 = 11;
                        break;
                    }
                    break;
                case 975087886:
                    if (str.equals("marginRight")) {
                        c10 = '\f';
                        break;
                    }
                    break;
                case 1970934485:
                    if (str.equals("marginLeft")) {
                        c10 = '\r';
                        break;
                    }
                    break;
            }
            switch (c10) {
                case 0:
                    this.dLZ = so.oJ(context, str2);
                    this.eZI = true;
                    return;
                case 1:
                    this.tB = so.oJ(context, str2);
                    return;
                case 2:
                    if (TextUtils.equals(str2, "match_parent")) {
                        this.ZYk = -1.0f;
                        return;
                    } else if (TextUtils.equals(str2, "wrap_content")) {
                        this.ZYk = -2.0f;
                        return;
                    } else {
                        this.ZYk = so.oJ(context, str2);
                        return;
                    }
                case 3:
                    this.Pfn = so.oJ(context, str2);
                    return;
                case 4:
                    this.f11627so = so.oJ(context, str2);
                    this.Id = true;
                    return;
                case 5:
                    this.kkU = so.oJ(context, str2);
                    this.awB = true;
                    return;
                case 6:
                    this.jFA = so.oJ(context, str2);
                    this.cY = true;
                    return;
                case 7:
                    this.ex = so.oJ(context, str2);
                    return;
                case '\b':
                    this.BTZ = so.oJ(context, str2);
                    this.Ry = true;
                    return;
                case '\t':
                    if (TextUtils.equals(str2, "match_parent")) {
                        this.oJ = -1.0f;
                        return;
                    } else if (TextUtils.equals(str2, "wrap_content")) {
                        this.oJ = -2.0f;
                        return;
                    } else {
                        this.oJ = so.oJ(context, str2);
                        return;
                    }
                case '\n':
                    this.WcQ = so.oJ(context, str2);
                    this.RZ = true;
                    return;
                case 11:
                    this.PiB = so.oJ(context, str2);
                    this.f11626si = true;
                    return;
                case '\f':
                    this.cFZ = so.oJ(context, str2);
                    this.f11625oq = true;
                    return;
                case '\r':
                    this.f11623ba = so.oJ(context, str2);
                    this.QSm = true;
                    return;
                default:
                    return;
            }
        }

        public String toString() {
            return "LayoutParams{mWidth=" + this.oJ + ", mHeight=" + this.ZYk + ", mMargin=" + this.Pfn + ", mMarginLeft=" + this.f11623ba + ", mMarginRight=" + this.cFZ + ", mMarginTop=" + this.f11627so + ", mMarginBottom=" + this.jFA + ", mParams=" + this.f11624jr + '}';
        }

        public ViewGroup.LayoutParams oJ() {
            ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams((int) this.oJ, (int) this.ZYk);
            marginLayoutParams.leftMargin = (int) (this.QSm ? this.f11623ba : this.Pfn);
            marginLayoutParams.rightMargin = (int) (this.f11625oq ? this.cFZ : this.Pfn);
            marginLayoutParams.topMargin = (int) (this.Id ? this.f11627so : this.Pfn);
            marginLayoutParams.bottomMargin = (int) (this.cY ? this.jFA : this.Pfn);
            return marginLayoutParams;
        }
    }
}
