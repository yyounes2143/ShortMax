package com.bytedance.sdk.openadsdk.core.kkU.ZYk.oJ;

import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.widget.ImageView;
import com.bytedance.adsdk.ZYk.ex;
import com.bytedance.adsdk.ZYk.kkU;
import com.bytedance.adsdk.ugeno.Pfn;
import com.bytedance.adsdk.ugeno.ZYk.tB;
import com.bytedance.adsdk.ugeno.cFZ.so;
import com.bytedance.adsdk.ugeno.oJ;
import com.google.android.gms.fido.fido2.api.common.DevicePublicKeyStringDef;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.HashMap;
/* loaded from: classes3.dex */
public class oJ extends tB<ZYk> {
    protected ImageView.ScaleType BWx;
    protected ImageView.ScaleType JJ;
    private int MVA;
    private boolean Qzd;
    protected HashMap<String, Bitmap> YF;
    private boolean Zzm;
    private String hwh;

    /* renamed from: ib  reason: collision with root package name */
    private boolean f13153ib;
    protected String oJ;

    /* renamed from: oo  reason: collision with root package name */
    private float f13154oo;

    /* renamed from: rg  reason: collision with root package name */
    private float f13155rg;
    private boolean sQ;

    /* renamed from: com.bytedance.sdk.openadsdk.core.kkU.ZYk.oJ.oJ$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements ex {
        AnonymousClass1() {
        }

        @Override // com.bytedance.adsdk.ZYk.ex
        public Bitmap oJ(final kkU kku) {
            final String str;
            if (kku == null) {
                return null;
            }
            String kkU = kku.kkU();
            String jFA = kku.jFA();
            if (!TextUtils.isEmpty(kkU) && TextUtils.isEmpty(jFA)) {
                str = com.bytedance.adsdk.ugeno.tB.ZYk.oJ(kkU, ((tB) oJ.this).ex);
            } else if (!TextUtils.isEmpty(jFA) && TextUtils.isEmpty(kkU)) {
                str = com.bytedance.adsdk.ugeno.tB.ZYk.oJ(jFA, ((tB) oJ.this).ex);
            } else if (!TextUtils.isEmpty(jFA) && !TextUtils.isEmpty(kkU)) {
                str = com.bytedance.adsdk.ugeno.tB.ZYk.oJ(kkU, ((tB) oJ.this).ex) + com.bytedance.adsdk.ugeno.tB.ZYk.oJ(jFA, ((tB) oJ.this).ex);
            } else {
                str = null;
            }
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            Bitmap bitmap = oJ.this.YF.get(str);
            if (bitmap != null) {
                return bitmap;
            }
            Pfn.oJ().ZYk().oJ(((tB) oJ.this).jFA, str, new oJ.InterfaceC0148oJ() { // from class: com.bytedance.sdk.openadsdk.core.kkU.ZYk.oJ.oJ.1.1
                @Override // com.bytedance.adsdk.ugeno.oJ.InterfaceC0148oJ
                public void oJ(Bitmap bitmap2) {
                    if (bitmap2 != null) {
                        final Bitmap createScaledBitmap = Bitmap.createScaledBitmap(bitmap2, kku.oJ(), kku.ZYk(), false);
                        oJ.this.YF.put(str, createScaledBitmap);
                        so.oJ(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.kkU.ZYk.oJ.oJ.1.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                ((ZYk) ((tB) oJ.this).Pfn).oJ(kku.so(), createScaledBitmap);
                            }
                        });
                    }
                }
            });
            return oJ.this.YF.get(str);
        }
    }

    public oJ(Context context) {
        super(context);
        this.hwh = "images";
        this.Zzm = true;
        this.f13155rg = 1.0f;
        this.BWx = ImageView.ScaleType.FIT_CENTER;
        this.JJ = ImageView.ScaleType.FIT_XY;
        this.YF = new HashMap<>();
    }

    private ImageView.ScaleType BTZ(String str) {
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
            case 97441490:
                if (str.equals("fitXY")) {
                    c10 = 4;
                    break;
                }
                break;
            case 520762310:
                if (str.equals("fitCenter")) {
                    c10 = 5;
                    break;
                }
                break;
            case 1161480325:
                if (str.equals("centerCrop")) {
                    c10 = 6;
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
            default:
                return scaleType;
            case 5:
                return ImageView.ScaleType.FIT_CENTER;
            case 6:
                return ImageView.ScaleType.CENTER_CROP;
        }
    }

    private ImageView.ScaleType PiB(String str) {
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
            case 101393:
                if (str.equals("fit")) {
                    c10 = 1;
                    break;
                }
                break;
            case 3062416:
                if (str.equals("crop")) {
                    c10 = 2;
                    break;
                }
                break;
            case 3143043:
                if (str.equals("fill")) {
                    c10 = 3;
                    break;
                }
                break;
            case 3387192:
                if (str.equals(DevicePublicKeyStringDef.NONE)) {
                    c10 = 4;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
            case 4:
                return ImageView.ScaleType.CENTER;
            case 1:
                return ImageView.ScaleType.FIT_CENTER;
            case 2:
                return ImageView.ScaleType.CENTER_CROP;
            case 3:
            default:
                return scaleType;
        }
    }

    private String dLZ(String str) {
        if (TextUtils.isEmpty(str) || !str.contains("local")) {
            return "";
        }
        if (str.contains("shake_phone")) {
            return "lottie_json/shake_phone.json";
        }
        if (!str.contains("swipe_right")) {
            return "";
        }
        return "lottie_json/swipe_right.json";
    }

    @Override // com.bytedance.adsdk.ugeno.ZYk.tB
    public void ZYk() {
        super.ZYk();
        ((ZYk) this.Pfn).setProgress(this.f13154oo);
        if (this.f13155rg <= 0.0f) {
            this.f13155rg = 1.0f;
        }
        ((ZYk) this.Pfn).setSpeed(this.f13155rg);
        if (this.oJ.startsWith("local")) {
            ((ZYk) this.Pfn).setAnimation(dLZ(this.oJ));
            ((ZYk) this.Pfn).setImageAssetsFolder(this.hwh);
        } else {
            ((ZYk) this.Pfn).setAnimationFromUrl(this.oJ);
        }
        ((ZYk) this.Pfn).setImageAssetDelegate(new AnonymousClass1());
        if (nke()) {
            ((ZYk) this.Pfn).setScaleType(this.JJ);
        } else {
            ((ZYk) this.Pfn).setScaleType(this.BWx);
        }
        if (nke()) {
            ((ZYk) this.Pfn).setRepeatCount(this.MVA);
        } else {
            ((ZYk) this.Pfn).oJ(this.Qzd);
        }
        if (nke()) {
            T t10 = this.Pfn;
            if (t10 == 0 || !this.Zzm) {
                return;
            }
            ((ZYk) t10).oJ();
            return;
        }
        T t11 = this.Pfn;
        if (t11 != 0) {
            ((ZYk) t11).oJ();
        }
    }

    public void ex() {
        T t10 = this.Pfn;
        if (t10 != 0) {
            ((ZYk) t10).oJ();
        }
    }

    @Override // com.bytedance.adsdk.ugeno.ZYk.tB
    /* renamed from: tB */
    public ZYk oJ() {
        ZYk zYk = new ZYk(this.ZYk);
        zYk.oJ(this);
        return zYk;
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
            case -1001078227:
                if (str.equals("progress")) {
                    c10 = 2;
                    break;
                }
                break;
            case -878289888:
                if (str.equals("imagePath")) {
                    c10 = 3;
                    break;
                }
                break;
            case -291235277:
                if (str.equals("autoReverse")) {
                    c10 = 4;
                    break;
                }
                break;
            case 114148:
                if (str.equals("src")) {
                    c10 = 5;
                    break;
                }
                break;
            case 3327652:
                if (str.equals("loop")) {
                    c10 = 6;
                    break;
                }
                break;
            case 109641799:
                if (str.equals("speed")) {
                    c10 = 7;
                    break;
                }
                break;
            case 1438608771:
                if (str.equals("autoPlay")) {
                    c10 = '\b';
                    break;
                }
                break;
            case 1439562083:
                if (str.equals("autoplay")) {
                    c10 = '\t';
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                this.JJ = PiB(str2);
                return;
            case 1:
                this.BWx = BTZ(str2);
                return;
            case 2:
                this.f13154oo = com.bytedance.adsdk.ugeno.cFZ.tB.oJ(str2, 0.0f);
                return;
            case 3:
                this.hwh = str2;
                return;
            case 4:
                this.f13153ib = com.bytedance.adsdk.ugeno.cFZ.tB.oJ(str2, false);
                return;
            case 5:
                this.oJ = com.bytedance.sdk.openadsdk.core.kkU.tB.oJ(str2);
                return;
            case 6:
                if (nke()) {
                    this.MVA = com.bytedance.adsdk.ugeno.cFZ.tB.oJ(str2, 0);
                    return;
                } else {
                    this.Qzd = com.bytedance.adsdk.ugeno.cFZ.tB.oJ(str2, false);
                    return;
                }
            case 7:
                this.f13155rg = com.bytedance.adsdk.ugeno.cFZ.tB.oJ(str2, 1.0f);
                return;
            case '\b':
                this.sQ = com.bytedance.adsdk.ugeno.cFZ.tB.oJ(str2, false);
                return;
            case '\t':
                this.Zzm = com.bytedance.adsdk.ugeno.cFZ.tB.oJ(str2, true);
                return;
            default:
                return;
        }
    }

    public void oJ(AnimatorListenerAdapter animatorListenerAdapter) {
        ((ZYk) this.Pfn).oJ(animatorListenerAdapter);
    }
}
