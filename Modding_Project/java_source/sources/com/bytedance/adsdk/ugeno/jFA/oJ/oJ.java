package com.bytedance.adsdk.ugeno.jFA.oJ;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import com.bytedance.adsdk.ugeno.Pfn;
import com.bytedance.adsdk.ugeno.ZYk.tB;
import com.bytedance.adsdk.ugeno.cFZ.ex;
import com.bytedance.adsdk.ugeno.cFZ.oJ;
import com.bytedance.adsdk.ugeno.cFZ.so;
import com.bytedance.adsdk.ugeno.jFA.ba.ZYk;
import com.bytedance.adsdk.ugeno.oJ;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
/* loaded from: classes3.dex */
public class oJ extends ZYk {
    private String BWx;
    private String JJ;
    private oJ.C0143oJ MVA;
    private int Qzd;
    private boolean Zzm;
    private String hwh;

    /* renamed from: ib  reason: collision with root package name */
    private String f11692ib;

    /* renamed from: oo  reason: collision with root package name */
    private boolean f11693oo;
    private int sQ;

    public oJ(Context context) {
        super(context);
        this.JJ = "row";
    }

    private void ex() {
        if (TextUtils.isEmpty(this.BWx)) {
            return;
        }
        ((com.bytedance.adsdk.ugeno.jFA.ba.oJ) this.Pfn).setCompoundDrawables(null, null, null, null);
        if (this.BWx.startsWith("local://")) {
            try {
                String replace = this.BWx.replace("local://", "");
                Context context = this.ZYk;
                ZYk(so.oJ(context, ex.ZYk(context, replace)));
                return;
            } catch (Throwable unused) {
                return;
            }
        }
        Pfn.oJ().ZYk().oJ(this.jFA, this.BWx, new oJ.InterfaceC0148oJ() { // from class: com.bytedance.adsdk.ugeno.jFA.oJ.oJ.1
            @Override // com.bytedance.adsdk.ugeno.oJ.InterfaceC0148oJ
            public void oJ(final Bitmap bitmap) {
                if (bitmap == null) {
                    return;
                }
                so.oJ(new Runnable() { // from class: com.bytedance.adsdk.ugeno.jFA.oJ.oJ.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        oJ.this.ZYk(new BitmapDrawable(((tB) oJ.this).ZYk.getResources(), bitmap));
                    }
                });
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.adsdk.ugeno.ZYk.tB
    public void Jm() {
        super.Jm();
        if (this.Zzm) {
            ((com.bytedance.adsdk.ugeno.jFA.ba.oJ) this.Pfn).setTextColor(((ZYk) this).YF);
        }
        if (this.f11693oo) {
            if (this.oG) {
                oJ(this.PdF);
            } else {
                ex(this.ofl);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.adsdk.ugeno.ZYk.tB
    public void Rl() {
        super.Rl();
        if (this.Zzm) {
            ((com.bytedance.adsdk.ugeno.jFA.ba.oJ) this.Pfn).setTextColor(this.sQ);
        }
        if (this.f11693oo) {
            if (this.oG) {
                oJ(this.MVA);
            } else {
                ex(this.Qzd);
            }
        }
    }

    @Override // com.bytedance.adsdk.ugeno.jFA.ba.ZYk, com.bytedance.adsdk.ugeno.ZYk.tB
    public void ZYk() {
        super.ZYk();
        ex();
        ((com.bytedance.adsdk.ugeno.jFA.ba.oJ) this.Pfn).setGravity(17);
    }

    @Override // com.bytedance.adsdk.ugeno.jFA.ba.ZYk, com.bytedance.adsdk.ugeno.ZYk.tB
    public void oJ(String str, String str2) {
        super.oJ(str, str2);
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -962590849:
                if (str.equals(HiAnalyticsConstant.HaKey.BI_KEY_DIRECTION)) {
                    c10 = 0;
                    break;
                }
                break;
            case -808924190:
                if (str.equals("highlightTextColor")) {
                    c10 = 1;
                    break;
                }
                break;
            case -104120541:
                if (str.equals("highlightedTextColor")) {
                    c10 = 2;
                    break;
                }
                break;
            case 100313435:
                if (str.equals("image")) {
                    c10 = 3;
                    break;
                }
                break;
            case 496106759:
                if (str.equals("highlightImage")) {
                    c10 = 4;
                    break;
                }
                break;
            case 1126933377:
                if (str.equals("highlightBackgroundColor")) {
                    c10 = 5;
                    break;
                }
                break;
            case 1132404089:
                if (str.equals("highlightBackgroundImage")) {
                    c10 = 6;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                this.JJ = str2;
                return;
            case 1:
            case 2:
                this.sQ = com.bytedance.adsdk.ugeno.cFZ.oJ.oJ(str2);
                this.Zzm = true;
                return;
            case 3:
                this.BWx = str2;
                return;
            case 4:
                this.hwh = str2;
                return;
            case 5:
                if (com.bytedance.adsdk.ugeno.cFZ.oJ.tB(str2)) {
                    this.oG = true;
                    this.MVA = com.bytedance.adsdk.ugeno.cFZ.oJ.ZYk(str2);
                } else {
                    this.Qzd = com.bytedance.adsdk.ugeno.cFZ.oJ.oJ(str2);
                    this.oG = false;
                }
                this.f11693oo = true;
                return;
            case 6:
                this.f11692ib = str2;
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public void ZYk(Drawable drawable) {
        char c10;
        if (drawable == null) {
            return;
        }
        String str = this.JJ;
        switch (str.hashCode()) {
            case -1781065991:
                if (str.equals("column_reverse")) {
                    c10 = 2;
                    break;
                }
                c10 = 65535;
                break;
            case -1354837162:
                if (str.equals("column")) {
                    c10 = 1;
                    break;
                }
                c10 = 65535;
                break;
            case -207799939:
                if (str.equals("row_reverse")) {
                    c10 = 0;
                    break;
                }
                c10 = 65535;
                break;
            case 113114:
                if (str.equals("row")) {
                    c10 = 3;
                    break;
                }
                c10 = 65535;
                break;
            default:
                c10 = 65535;
                break;
        }
        if (c10 == 0) {
            ((com.bytedance.adsdk.ugeno.jFA.ba.oJ) this.Pfn).setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, drawable, (Drawable) null);
        } else if (c10 == 1) {
            ((com.bytedance.adsdk.ugeno.jFA.ba.oJ) this.Pfn).setCompoundDrawablesWithIntrinsicBounds((Drawable) null, drawable, (Drawable) null, (Drawable) null);
        } else if (c10 != 2) {
            ((com.bytedance.adsdk.ugeno.jFA.ba.oJ) this.Pfn).setCompoundDrawablesWithIntrinsicBounds(drawable, (Drawable) null, (Drawable) null, (Drawable) null);
        } else {
            ((com.bytedance.adsdk.ugeno.jFA.ba.oJ) this.Pfn).setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, (Drawable) null, drawable);
        }
    }
}
