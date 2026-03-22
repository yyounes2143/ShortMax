package com.bytedance.adsdk.ugeno.oJ.oJ;

import android.animation.PropertyValuesHolder;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class Pfn extends oJ {
    private Path BTZ;
    private Paint Pfn;
    private PorterDuffXfermode PiB;

    /* renamed from: ba  reason: collision with root package name */
    private float f11701ba;
    private String cFZ;
    private Path dLZ;
    private float ex;
    private boolean jFA;
    private Path kkU;

    /* renamed from: so  reason: collision with root package name */
    private boolean f11702so;
    private float tB;

    public Pfn(com.bytedance.adsdk.ugeno.ZYk.tB tBVar, JSONObject jSONObject) {
        super(tBVar, jSONObject);
        this.f11702so = true;
        this.jFA = true;
        Paint paint = new Paint();
        this.Pfn = paint;
        paint.setAntiAlias(true);
        this.ZYk.dLZ().setLayerType(2, null);
        this.PiB = new PorterDuffXfermode(PorterDuff.Mode.CLEAR);
        this.kkU = new Path();
        this.dLZ = new Path();
        this.BTZ = new Path();
        this.Pfn.setXfermode(this.PiB);
    }

    private void tB(Canvas canvas) {
        if (this.ZYk.Yg() > 0.0f) {
            int Yg = (int) (this.tB * this.ZYk.Yg());
            int Yg2 = (int) (this.ex * this.ZYk.Yg());
            this.Pfn.setXfermode(this.PiB);
            String str = this.cFZ;
            str.hashCode();
            char c10 = 65535;
            switch (str.hashCode()) {
                case -1383228885:
                    if (str.equals("bottom")) {
                        c10 = 0;
                        break;
                    }
                    break;
                case -1364013995:
                    if (str.equals(TtmlNode.CENTER)) {
                        c10 = 1;
                        break;
                    }
                    break;
                case 115029:
                    if (str.equals("top")) {
                        c10 = 2;
                        break;
                    }
                    break;
                case 3317767:
                    if (str.equals(TtmlNode.LEFT)) {
                        c10 = 3;
                        break;
                    }
                    break;
                case 108511772:
                    if (str.equals(TtmlNode.RIGHT)) {
                        c10 = 4;
                        break;
                    }
                    break;
            }
            switch (c10) {
                case 0:
                    canvas.drawRect(0.0f, Yg2, this.tB, this.ex, this.Pfn);
                    return;
                case 1:
                    this.kkU.reset();
                    this.dLZ.reset();
                    this.BTZ.reset();
                    Path.Direction direction = Path.Direction.CW;
                    this.kkU.addCircle(this.tB / 2.0f, this.ex / 2.0f, Yg, direction);
                    Path path = this.dLZ;
                    float f10 = this.tB;
                    path.addRect(f10 / 2.0f, 0.0f, f10, this.ex, direction);
                    Path path2 = this.dLZ;
                    Path path3 = this.kkU;
                    Path.Op op2 = Path.Op.DIFFERENCE;
                    path2.op(path3, op2);
                    this.BTZ.addRect(0.0f, 0.0f, this.tB / 2.0f, this.ex, direction);
                    this.BTZ.op(this.kkU, op2);
                    canvas.drawPath(this.dLZ, this.Pfn);
                    canvas.drawPath(this.BTZ, this.Pfn);
                    return;
                case 2:
                    canvas.drawRect(0.0f, 0.0f, this.tB, this.ex - Yg2, this.Pfn);
                    return;
                case 3:
                    canvas.drawRect(0.0f, 0.0f, this.tB - Yg, this.ex, this.Pfn);
                    return;
                case 4:
                    canvas.drawRect(Yg, 0.0f, this.tB, this.ex, this.Pfn);
                    return;
                default:
                    return;
            }
        }
        this.Pfn.setXfermode(this.PiB);
        canvas.drawRect(0.0f, 0.0f, this.tB, this.ex, this.Pfn);
    }

    @Override // com.bytedance.adsdk.ugeno.oJ.oJ.oJ
    public void ZYk() {
        this.f11701ba = (float) this.oJ.optDouble("start", 0.0d);
        this.cFZ = this.oJ.optString(HiAnalyticsConstant.HaKey.BI_KEY_DIRECTION, TtmlNode.CENTER);
    }

    @Override // com.bytedance.adsdk.ugeno.oJ.oJ.oJ
    public void oJ(Canvas canvas) {
        tB(canvas);
    }

    @Override // com.bytedance.adsdk.ugeno.oJ.oJ.oJ
    public void oJ(int i10, int i11) {
        if (i10 > 0 && this.f11702so) {
            this.tB = i10;
            this.f11702so = false;
        }
        if (i11 <= 0 || !this.jFA) {
            return;
        }
        this.ex = i11;
        this.jFA = false;
    }

    @Override // com.bytedance.adsdk.ugeno.oJ.oJ.oJ
    public void ZYk(Canvas canvas) {
        tB(canvas);
    }

    @Override // com.bytedance.adsdk.ugeno.oJ.oJ.oJ
    public List<PropertyValuesHolder> tB() {
        PropertyValuesHolder ofFloat = PropertyValuesHolder.ofFloat(ex(), this.f11701ba, 1.0f);
        ArrayList arrayList = new ArrayList();
        arrayList.add(ofFloat);
        return arrayList;
    }
}
