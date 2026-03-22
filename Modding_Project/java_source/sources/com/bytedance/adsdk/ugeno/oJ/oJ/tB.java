package com.bytedance.adsdk.ugeno.oJ.oJ;

import android.animation.PropertyValuesHolder;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Shader;
import android.util.Log;
import android.view.View;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class tB extends oJ {
    private float Pfn;

    /* renamed from: ba  reason: collision with root package name */
    private View f11707ba;
    private Paint cFZ;
    private Matrix dLZ;
    private float ex;
    private PorterDuffXfermode jFA;
    private LinearGradient kkU;

    /* renamed from: so  reason: collision with root package name */
    private Paint f11708so;
    private String tB;

    public tB(com.bytedance.adsdk.ugeno.ZYk.tB tBVar, JSONObject jSONObject) {
        super(tBVar, jSONObject);
        this.f11707ba = this.ZYk.dLZ();
        Paint paint = new Paint();
        this.cFZ = paint;
        paint.setAntiAlias(true);
        this.f11707ba.setLayerType(2, null);
        this.jFA = new PorterDuffXfermode(PorterDuff.Mode.CLEAR);
        this.f11708so = new Paint();
        this.dLZ = new Matrix();
    }

    private void tB(Canvas canvas) {
        char c10;
        try {
            if (this.ZYk.lY() > 0.0f) {
                int lY = (int) (this.ex * this.ZYk.lY());
                int lY2 = (int) (this.Pfn * this.ZYk.lY());
                this.cFZ.setXfermode(this.jFA);
                String str = this.tB;
                switch (str.hashCode()) {
                    case -1383228885:
                        if (str.equals("bottom")) {
                            c10 = 2;
                            break;
                        }
                        c10 = 65535;
                        break;
                    case 115029:
                        if (str.equals("top")) {
                            c10 = 3;
                            break;
                        }
                        c10 = 65535;
                        break;
                    case 3317767:
                        if (str.equals(TtmlNode.LEFT)) {
                            c10 = 1;
                            break;
                        }
                        c10 = 65535;
                        break;
                    case 108511772:
                        if (str.equals(TtmlNode.RIGHT)) {
                            c10 = 0;
                            break;
                        }
                        c10 = 65535;
                        break;
                    default:
                        c10 = 65535;
                        break;
                }
                if (c10 == 0) {
                    float f10 = lY;
                    canvas.drawRect(f10, 0.0f, this.ex, this.Pfn, this.cFZ);
                    this.dLZ.setTranslate(f10, this.Pfn);
                    this.kkU.setLocalMatrix(this.dLZ);
                    this.f11708so.setShader(this.kkU);
                    if (this.ZYk.lY() <= 1.0f && this.ZYk.lY() > 0.9f) {
                        this.f11708so.setAlpha((int) (255.0f - (this.ZYk.lY() * 255.0f)));
                    }
                    canvas.drawRect(0.0f, 0.0f, f10, this.Pfn, this.f11708so);
                    return;
                } else if (c10 == 1) {
                    float f11 = lY;
                    canvas.drawRect(0.0f, 0.0f, this.ex - f11, this.Pfn, this.cFZ);
                    this.dLZ.setTranslate(this.ex - f11, 0.0f);
                    this.kkU.setLocalMatrix(this.dLZ);
                    this.f11708so.setShader(this.kkU);
                    if (this.ZYk.lY() <= 1.0f && this.ZYk.lY() > 0.9f) {
                        this.f11708so.setAlpha((int) (255.0f - (this.ZYk.lY() * 255.0f)));
                    }
                    float f12 = this.ex;
                    canvas.drawRect(f12, this.Pfn, f12 - f11, 0.0f, this.f11708so);
                    return;
                } else if (c10 == 2) {
                    float f13 = lY2;
                    canvas.drawRect(0.0f, f13, this.ex, this.Pfn, this.cFZ);
                    this.dLZ.setTranslate(0.0f, f13);
                    this.kkU.setLocalMatrix(this.dLZ);
                    this.f11708so.setShader(this.kkU);
                    if (this.ZYk.lY() <= 1.0f && this.ZYk.lY() > 0.9f) {
                        this.f11708so.setAlpha((int) (255.0f - (this.ZYk.lY() * 255.0f)));
                    }
                    canvas.drawRect(0.0f, 0.0f, this.ex, f13, this.f11708so);
                    return;
                } else if (c10 != 3) {
                    return;
                } else {
                    float f14 = lY2;
                    canvas.drawRect(0.0f, 0.0f, this.ex, this.Pfn - f14, this.cFZ);
                    this.dLZ.setTranslate(0.0f, this.Pfn - f14);
                    this.kkU.setLocalMatrix(this.dLZ);
                    this.f11708so.setShader(this.kkU);
                    if (this.ZYk.lY() <= 1.0f && this.ZYk.lY() > 0.9f) {
                        this.f11708so.setAlpha((int) (255.0f - (this.ZYk.lY() * 255.0f)));
                    }
                    float f15 = this.ex;
                    float f16 = this.Pfn;
                    canvas.drawRect(f15, f16, 0.0f, f16 - f14, this.f11708so);
                    return;
                }
            }
            this.cFZ.setXfermode(this.jFA);
            canvas.drawRect(0.0f, 0.0f, this.ex, this.Pfn, this.cFZ);
        } catch (Throwable th2) {
            Log.e("BaseEffectWrapper", th2.getMessage());
        }
    }

    @Override // com.bytedance.adsdk.ugeno.oJ.oJ.oJ
    public void ZYk() {
        this.tB = this.oJ.optString(HiAnalyticsConstant.HaKey.BI_KEY_DIRECTION, TtmlNode.LEFT);
    }

    @Override // com.bytedance.adsdk.ugeno.oJ.oJ.oJ
    public void oJ(Canvas canvas) {
        tB(canvas);
    }

    @Override // com.bytedance.adsdk.ugeno.oJ.oJ.oJ
    public void ZYk(Canvas canvas) {
        tB(canvas);
    }

    @Override // com.bytedance.adsdk.ugeno.oJ.oJ.oJ
    public void oJ(int i10, int i11) {
        this.ex = i10;
        this.Pfn = i11;
        String str = this.tB;
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1383228885:
                if (str.equals("bottom")) {
                    c10 = 0;
                    break;
                }
                break;
            case 115029:
                if (str.equals("top")) {
                    c10 = 1;
                    break;
                }
                break;
            case 3317767:
                if (str.equals(TtmlNode.LEFT)) {
                    c10 = 2;
                    break;
                }
                break;
            case 108511772:
                if (str.equals(TtmlNode.RIGHT)) {
                    c10 = 3;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                this.kkU = new LinearGradient(0.0f, -this.Pfn, 0.0f, 0.0f, 0, -1, Shader.TileMode.CLAMP);
                return;
            case 1:
                this.kkU = new LinearGradient(0.0f, this.Pfn, 0.0f, 0.0f, 0, -1, Shader.TileMode.CLAMP);
                return;
            case 2:
                this.kkU = new LinearGradient(this.ex, 0.0f, 0.0f, 0.0f, 0, -1, Shader.TileMode.CLAMP);
                return;
            case 3:
                this.kkU = new LinearGradient(-this.ex, 0.0f, 0.0f, this.Pfn, 0, -1, Shader.TileMode.CLAMP);
                return;
            default:
                return;
        }
    }

    @Override // com.bytedance.adsdk.ugeno.oJ.oJ.oJ
    public List<PropertyValuesHolder> tB() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(PropertyValuesHolder.ofFloat("rubIn", 0.0f, 1.0f));
        arrayList.add(PropertyValuesHolder.ofFloat(com.bytedance.adsdk.ugeno.oJ.Pfn.ALPHA.ZYk(), 0.0f, 1.0f));
        return arrayList;
    }
}
