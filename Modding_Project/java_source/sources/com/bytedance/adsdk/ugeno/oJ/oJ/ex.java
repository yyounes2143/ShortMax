package com.bytedance.adsdk.ugeno.oJ.oJ;

import android.animation.PropertyValuesHolder;
import android.annotation.SuppressLint;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.Shader;
import android.text.TextUtils;
import com.bytedance.adsdk.ugeno.cFZ.oJ;
import com.bytedance.adsdk.ugeno.cFZ.so;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ex extends oJ {
    private static final float WcQ;
    private static final float awB;
    private static final float eZI;

    /* renamed from: si  reason: collision with root package name */
    private static final float f11704si;
    private boolean BTZ;
    private Path Pfn;
    private Path PiB;
    private float Ry;

    /* renamed from: ba  reason: collision with root package name */
    private oJ.C0143oJ f11705ba;
    private int cFZ;
    private int dLZ;
    private Paint ex;
    private float jFA;
    private int kkU;

    /* renamed from: so  reason: collision with root package name */
    private int f11706so;
    private int tB;

    static {
        float radians = (float) Math.toRadians(30.0d);
        WcQ = radians;
        awB = (float) Math.tan(radians);
        eZI = (float) Math.cos(radians);
        f11704si = (float) Math.sin(radians);
    }

    public ex(com.bytedance.adsdk.ugeno.ZYk.tB tBVar, JSONObject jSONObject) {
        super(tBVar, jSONObject);
        this.BTZ = true;
        Paint paint = new Paint();
        this.ex = paint;
        paint.setAntiAlias(true);
        this.Pfn = new Path();
        this.jFA = this.ZYk.cY();
        this.PiB = new Path();
    }

    private void tB(Canvas canvas) {
        LinearGradient linearGradient;
        try {
            if (this.ZYk.bgF() > 0.0f) {
                int i10 = this.kkU;
                float f10 = awB;
                float bgF = (i10 + (i10 * f10)) * this.ZYk.bgF();
                this.PiB.reset();
                this.PiB.moveTo(bgF, 0.0f);
                int i11 = this.dLZ;
                float f11 = bgF - (i11 * f10);
                this.PiB.lineTo(f11, i11);
                this.PiB.lineTo(f11 + this.tB, this.dLZ);
                this.PiB.lineTo(this.tB + bgF, 0.0f);
                this.PiB.close();
                float f12 = this.Ry;
                float f13 = eZI * f12;
                float f14 = f12 * f11704si;
                if (this.BTZ && this.f11705ba != null) {
                    linearGradient = new LinearGradient(bgF, 0.0f, bgF + f13, f14, this.f11705ba.ZYk, (float[]) null, Shader.TileMode.CLAMP);
                } else {
                    float f15 = bgF + f13;
                    int i12 = this.f11706so;
                    linearGradient = new LinearGradient(bgF, 0.0f, f15, f14, new int[]{i12, this.cFZ, i12}, (float[]) null, Shader.TileMode.CLAMP);
                }
                this.ex.setShader(linearGradient);
                Path path = this.Pfn;
                if (path != null) {
                    canvas.clipPath(path, Region.Op.INTERSECT);
                }
                canvas.drawPath(this.PiB, this.ex);
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.bytedance.adsdk.ugeno.oJ.oJ.oJ
    public void ZYk() {
        this.tB = (int) so.oJ(this.ZYk.dLZ().getContext(), this.oJ.optInt("shineWidth", 30));
        String optString = this.oJ.optString(TtmlNode.ATTR_TTS_BACKGROUND_COLOR, "linear-gradient(90deg, rgba(255, 255, 255, 0), rgba(255, 255, 255, 0.25) 30%, rgba(255, 255, 255, 0.3) 50%, rgba(255, 255, 255, 0.25) 70%, rgba(255, 255, 255, 0))");
        String str = TextUtils.isEmpty(optString) ? "linear-gradient(90deg, rgba(255, 255, 255, 0), rgba(255, 255, 255, 0.25) 30%, rgba(255, 255, 255, 0.3) 50%, rgba(255, 255, 255, 0.25) 70%, rgba(255, 255, 255, 0))" : optString;
        if (str.startsWith("linear")) {
            this.f11705ba = com.bytedance.adsdk.ugeno.cFZ.oJ.ZYk(str);
        } else {
            int oJ = com.bytedance.adsdk.ugeno.cFZ.oJ.oJ(str);
            this.cFZ = oJ;
            this.f11706so = com.bytedance.adsdk.ugeno.cFZ.oJ.oJ(oJ, 32);
            this.BTZ = false;
        }
        this.Ry = eZI * this.tB;
    }

    @Override // com.bytedance.adsdk.ugeno.oJ.oJ.oJ
    @SuppressLint({"DrawAllocation"})
    public void oJ(Canvas canvas) {
        tB(canvas);
    }

    @Override // com.bytedance.adsdk.ugeno.oJ.oJ.oJ
    public void oJ(int i10, int i11) {
        this.kkU = i10;
        this.dLZ = i11;
        try {
            RectF rectF = new RectF(0.0f, 0.0f, i10, i11);
            Path path = this.Pfn;
            float f10 = this.jFA;
            path.addRoundRect(rectF, f10, f10, Path.Direction.CW);
        } catch (Throwable unused) {
        }
    }

    @Override // com.bytedance.adsdk.ugeno.oJ.oJ.oJ
    public void ZYk(Canvas canvas) {
        tB(canvas);
    }

    @Override // com.bytedance.adsdk.ugeno.oJ.oJ.oJ
    public List<PropertyValuesHolder> tB() {
        PropertyValuesHolder ofFloat = PropertyValuesHolder.ofFloat(ex(), 0.0f, 1.0f);
        ArrayList arrayList = new ArrayList();
        arrayList.add(ofFloat);
        return arrayList;
    }
}
