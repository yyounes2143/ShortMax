package com.bytedance.adsdk.ugeno.oJ.oJ;

import android.animation.PropertyValuesHolder;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.Log;
import android.view.ViewGroup;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ZYk extends oJ {
    private int Pfn;

    /* renamed from: ba  reason: collision with root package name */
    private Paint f11703ba;
    private int ex;
    private int tB;

    public ZYk(com.bytedance.adsdk.ugeno.ZYk.tB tBVar, JSONObject jSONObject) {
        super(tBVar, jSONObject);
        Paint paint = new Paint();
        this.f11703ba = paint;
        paint.setAntiAlias(true);
    }

    private void tB(Canvas canvas) {
        try {
            if (this.ZYk.nQI() > 0.0f) {
                this.f11703ba.setColor(this.tB);
                this.f11703ba.setAlpha((int) ((1.0f - this.ZYk.nQI()) * 255.0f));
                ((ViewGroup) this.ZYk.dLZ().getParent()).setClipChildren(true);
                int i10 = this.ex;
                int i11 = this.Pfn;
                canvas.drawCircle(i10, i11, Math.min(i10, i11) * 2 * this.ZYk.nQI(), this.f11703ba);
            }
        } catch (Throwable th2) {
            Log.d("BaseEffectWrapper", "ripple animation error " + th2.getMessage());
        }
    }

    @Override // com.bytedance.adsdk.ugeno.oJ.oJ.oJ
    public void ZYk() {
        this.tB = com.bytedance.adsdk.ugeno.cFZ.oJ.oJ(this.oJ.optString(TtmlNode.ATTR_TTS_BACKGROUND_COLOR), -1);
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
        this.ex = i10 / 2;
        this.Pfn = i11 / 2;
    }

    @Override // com.bytedance.adsdk.ugeno.oJ.oJ.oJ
    public List<PropertyValuesHolder> tB() {
        PropertyValuesHolder ofFloat = PropertyValuesHolder.ofFloat(ex(), 0.0f, 1.0f);
        ArrayList arrayList = new ArrayList();
        arrayList.add(ofFloat);
        return arrayList;
    }
}
