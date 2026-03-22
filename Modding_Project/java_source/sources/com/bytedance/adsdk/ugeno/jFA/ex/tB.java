package com.bytedance.adsdk.ugeno.jFA.ex;

import ai.turbolink.sdk.campaign.b;
import ai.turbolink.sdk.campaign.c;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.widget.ImageView;
import com.bytedance.adsdk.ugeno.Pfn;
import com.bytedance.adsdk.ugeno.cFZ.ex;
import com.bytedance.adsdk.ugeno.cFZ.so;
import com.bytedance.adsdk.ugeno.core.ba;
import com.bytedance.adsdk.ugeno.core.dLZ;
import com.bytedance.adsdk.ugeno.oJ;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
/* loaded from: classes3.dex */
public class tB extends com.bytedance.adsdk.ugeno.ZYk.tB<oJ> {
    protected boolean BWx;
    protected String JJ;
    private float Qzd;
    protected ImageView.ScaleType YF;
    private int hwh;

    /* renamed from: ib  reason: collision with root package name */
    private float f11691ib;
    protected String oJ;

    public tB(Context context) {
        super(context);
        this.YF = ImageView.ScaleType.FIT_XY;
        this.hwh = -1;
        this.f11691ib = -1.0f;
        this.Qzd = -1.0f;
    }

    private ImageView.ScaleType dLZ(String str) {
        ImageView.ScaleType scaleType = ImageView.ScaleType.FIT_XY;
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1364013995:
                if (str.equals(TtmlNode.CENTER)) {
                    c10 = 0;
                    break;
                }
                break;
            case -1274298614:
                if (str.equals("fitEnd")) {
                    c10 = 1;
                    break;
                }
                break;
            case -522179887:
                if (str.equals("fitStart")) {
                    c10 = 2;
                    break;
                }
                break;
            case -340708175:
                if (str.equals("centerInside")) {
                    c10 = 3;
                    break;
                }
                break;
            case 101393:
                if (str.equals("fit")) {
                    c10 = 4;
                    break;
                }
                break;
            case 3062416:
                if (str.equals("crop")) {
                    c10 = 5;
                    break;
                }
                break;
            case 3143043:
                if (str.equals("fill")) {
                    c10 = 6;
                    break;
                }
                break;
            case 97441490:
                if (str.equals("fitXY")) {
                    c10 = 7;
                    break;
                }
                break;
            case 520762310:
                if (str.equals("fitCenter")) {
                    c10 = '\b';
                    break;
                }
                break;
            case 1161480325:
                if (str.equals("centerCrop")) {
                    c10 = '\t';
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return ImageView.ScaleType.CENTER;
            case 1:
                return ImageView.ScaleType.FIT_END;
            case 2:
                return ImageView.ScaleType.FIT_START;
            case 3:
                return ImageView.ScaleType.CENTER_INSIDE;
            case 4:
            case '\b':
                return ImageView.ScaleType.FIT_CENTER;
            case 5:
            case '\t':
                return ImageView.ScaleType.CENTER_CROP;
            case 6:
            case 7:
            default:
                return scaleType;
        }
    }

    private void jFA() {
        if (TextUtils.isEmpty(this.oJ)) {
            return;
        }
        ((oJ) this.Pfn).setImageDrawable(null);
        if (this.oJ.startsWith("local://")) {
            try {
                String replace = this.oJ.replace("local://", "");
                if (TextUtils.equals(tB(), "raw")) {
                    ((oJ) this.Pfn).setImageResource(ex.oJ(this.ZYk, replace));
                } else {
                    ((oJ) this.Pfn).setImageResource(ex.ZYk(this.ZYk, replace));
                }
            } catch (Throwable unused) {
            }
        } else if (this.oJ.startsWith("@")) {
            try {
                ((oJ) this.Pfn).setImageResource(Integer.parseInt(this.oJ.substring(1)));
            } catch (Exception unused2) {
            }
        } else {
            kkU();
        }
    }

    private void kkU() {
        if (this.f11691ib > 0.0f) {
            Pfn.oJ().ZYk().oJ(this.jFA, this.oJ, new oJ.InterfaceC0148oJ() { // from class: com.bytedance.adsdk.ugeno.jFA.ex.tB.1
                @Override // com.bytedance.adsdk.ugeno.oJ.InterfaceC0148oJ
                public void oJ(Bitmap bitmap) {
                    int i10;
                    if (bitmap == null) {
                        if (((com.bytedance.adsdk.ugeno.ZYk.tB) tB.this).yQF != null) {
                            ba unused = ((com.bytedance.adsdk.ugeno.ZYk.tB) tB.this).yQF;
                            return;
                        }
                        return;
                    }
                    if (((com.bytedance.adsdk.ugeno.ZYk.tB) tB.this).yQF != null) {
                        ba unused2 = ((com.bytedance.adsdk.ugeno.ZYk.tB) tB.this).yQF;
                    }
                    final Bitmap oJ = so.oJ(((com.bytedance.adsdk.ugeno.ZYk.tB) tB.this).ZYk, bitmap, (int) tB.this.f11691ib);
                    if (oJ != null) {
                        so.oJ(new Runnable() { // from class: com.bytedance.adsdk.ugeno.jFA.ex.tB.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                ((oJ) ((com.bytedance.adsdk.ugeno.ZYk.tB) tB.this).Pfn).setImageBitmap(oJ);
                            }
                        });
                    }
                    tB tBVar = tB.this;
                    if (tBVar.BWx || tBVar.Qzd > 0.0f) {
                        Context context = ((com.bytedance.adsdk.ugeno.ZYk.tB) tB.this).ZYk;
                        if (tB.this.Qzd > 0.0f) {
                            i10 = (int) tB.this.Qzd;
                        } else {
                            i10 = 10;
                        }
                        Bitmap oJ2 = so.oJ(context, bitmap, i10);
                        if (oJ2 != null) {
                            final BitmapDrawable bitmapDrawable = new BitmapDrawable(((com.bytedance.adsdk.ugeno.ZYk.tB) tB.this).ZYk.getResources(), oJ2);
                            so.oJ(new Runnable() { // from class: com.bytedance.adsdk.ugeno.jFA.ex.tB.1.2
                                @Override // java.lang.Runnable
                                public void run() {
                                    ((oJ) ((com.bytedance.adsdk.ugeno.ZYk.tB) tB.this).Pfn).setBackground(bitmapDrawable);
                                }
                            });
                        }
                    }
                }
            });
            return;
        }
        com.bytedance.adsdk.ugeno.oJ ZYk = Pfn.oJ().ZYk();
        dLZ dlz = this.jFA;
        String str = this.oJ;
        T t10 = this.Pfn;
        ZYk.oJ(dlz, str, (ImageView) t10, ((oJ) t10).getWidth(), ((oJ) this.Pfn).getHeight(), new oJ.InterfaceC0148oJ() { // from class: com.bytedance.adsdk.ugeno.jFA.ex.tB.2
            @Override // com.bytedance.adsdk.ugeno.oJ.InterfaceC0148oJ
            public void oJ(Bitmap bitmap) {
                if (bitmap == null) {
                    if (((com.bytedance.adsdk.ugeno.ZYk.tB) tB.this).yQF != null) {
                        ba unused = ((com.bytedance.adsdk.ugeno.ZYk.tB) tB.this).yQF;
                    }
                } else if (((com.bytedance.adsdk.ugeno.ZYk.tB) tB.this).yQF != null) {
                    ba unused2 = ((com.bytedance.adsdk.ugeno.ZYk.tB) tB.this).yQF;
                }
            }
        });
        if (this.BWx || this.Qzd > 0.0f) {
            Pfn.oJ().ZYk().oJ(this.jFA, this.oJ, new oJ.InterfaceC0148oJ() { // from class: com.bytedance.adsdk.ugeno.jFA.ex.tB.3
                @Override // com.bytedance.adsdk.ugeno.oJ.InterfaceC0148oJ
                public void oJ(Bitmap bitmap) {
                    int i10;
                    if (bitmap != null) {
                        Context context = ((com.bytedance.adsdk.ugeno.ZYk.tB) tB.this).ZYk;
                        if (tB.this.Qzd > 0.0f) {
                            i10 = (int) tB.this.Qzd;
                        } else {
                            i10 = 10;
                        }
                        final Bitmap oJ = so.oJ(context, bitmap, i10);
                        so.oJ(new Runnable() { // from class: com.bytedance.adsdk.ugeno.jFA.ex.tB.3.1
                            @Override // java.lang.Runnable
                            public void run() {
                                if (oJ != null) {
                                    ((oJ) ((com.bytedance.adsdk.ugeno.ZYk.tB) tB.this).Pfn).setBackground(new BitmapDrawable(((com.bytedance.adsdk.ugeno.ZYk.tB) tB.this).ZYk.getResources(), oJ));
                                }
                            }
                        });
                    }
                }
            });
        }
    }

    public void BTZ(String str) {
        this.oJ = str;
    }

    @Override // com.bytedance.adsdk.ugeno.ZYk.tB
    public void ZYk() {
        super.ZYk();
        jFA();
        ((oJ) this.Pfn).setScaleType(this.YF);
        ((oJ) this.Pfn).setBorderColor(this.yz);
        ((oJ) this.Pfn).setCornerRadius(this.Qu);
        ((oJ) this.Pfn).setBorderWidth(this.jB);
        int i10 = this.hwh;
        if (i10 != -1) {
            ((oJ) this.Pfn).setColorFilter(i10);
        }
    }

    @Override // com.bytedance.adsdk.ugeno.ZYk.tB, com.bytedance.adsdk.ugeno.ex
    public void cFZ() {
        super.cFZ();
        ((oJ) this.Pfn).post(new Runnable() { // from class: com.bytedance.adsdk.ugeno.jFA.ex.tB.4
            @Override // java.lang.Runnable
            public void run() {
                Drawable drawable = ((oJ) ((com.bytedance.adsdk.ugeno.ZYk.tB) tB.this).Pfn).getDrawable();
                if (Build.VERSION.SDK_INT >= 28 && b.a(drawable)) {
                    c.a(drawable).start();
                }
            }
        });
    }

    @Override // com.bytedance.adsdk.ugeno.ZYk.tB
    /* renamed from: ex */
    public oJ oJ() {
        oJ oJVar = new oJ(this.ZYk);
        oJVar.oJ(this);
        return oJVar;
    }

    @Override // com.bytedance.adsdk.ugeno.ZYk.tB, com.bytedance.adsdk.ugeno.ex
    public void so() {
        super.so();
        Drawable drawable = ((oJ) this.Pfn).getDrawable();
        if (Build.VERSION.SDK_INT < 28 || !b.a(drawable)) {
            return;
        }
        c.a(drawable).stop();
    }

    protected String tB() {
        return this.JJ;
    }

    @Override // com.bytedance.adsdk.ugeno.ZYk.tB
    public void oJ(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        super.oJ(str, str2);
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1878130163:
                if (str.equals("scaleMode")) {
                    c10 = 0;
                    break;
                }
                break;
            case -1877911644:
                if (str.equals("scaleType")) {
                    c10 = 1;
                    break;
                }
                break;
            case -878696350:
                if (str.equals("imageBlur")) {
                    c10 = 2;
                    break;
                }
                break;
            case -372324943:
                if (str.equals("isBgGaussianBlur")) {
                    c10 = 3;
                    break;
                }
                break;
            case 114148:
                if (str.equals("src")) {
                    c10 = 4;
                    break;
                }
                break;
            case 1327599912:
                if (str.equals("tintColor")) {
                    c10 = 5;
                    break;
                }
                break;
            case 1675225991:
                if (str.equals("imageBgBlur")) {
                    c10 = 6;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
            case 1:
                this.YF = dLZ(str2);
                return;
            case 2:
                this.f11691ib = com.bytedance.adsdk.ugeno.cFZ.tB.oJ(str2, -1.0f);
                return;
            case 3:
                this.BWx = com.bytedance.adsdk.ugeno.cFZ.tB.oJ(str2, false);
                return;
            case 4:
                this.oJ = str2;
                return;
            case 5:
                this.hwh = com.bytedance.adsdk.ugeno.cFZ.oJ.oJ(str2);
                return;
            case 6:
                this.Qzd = com.bytedance.adsdk.ugeno.cFZ.tB.oJ(str2, -1.0f);
                return;
            default:
                return;
        }
    }
}
