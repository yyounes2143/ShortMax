package com.bytedance.adsdk.ZYk.Pfn;

import android.graphics.PointF;
import android.util.JsonReader;
import com.bytedance.adsdk.ZYk.tB.ZYk;
import com.mbridge.msdk.foundation.same.report.j;
import com.ss.ttvideoengine.log.IVideoEventLogger;
import com.ss.ttvideoengine.superresolution.SRStrategy;
import java.io.IOException;
/* loaded from: classes3.dex */
public class jFA implements Jm<com.bytedance.adsdk.ZYk.tB.ZYk> {
    public static final jFA oJ = new jFA();

    private jFA() {
    }

    @Override // com.bytedance.adsdk.ZYk.Pfn.Jm
    /* renamed from: oJ */
    public com.bytedance.adsdk.ZYk.tB.ZYk ZYk(JsonReader jsonReader, float f10) throws IOException {
        ZYk.oJ oJVar = ZYk.oJ.CENTER;
        jsonReader.beginObject();
        ZYk.oJ oJVar2 = oJVar;
        String str = null;
        String str2 = null;
        PointF pointF = null;
        PointF pointF2 = null;
        float f11 = 0.0f;
        float f12 = 0.0f;
        float f13 = 0.0f;
        float f14 = 0.0f;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        boolean z10 = true;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            char c10 = 65535;
            switch (nextName.hashCode()) {
                case 102:
                    if (nextName.equals("f")) {
                        c10 = 0;
                        break;
                    }
                    break;
                case 106:
                    if (nextName.equals(j.f27256b)) {
                        c10 = 1;
                        break;
                    }
                    break;
                case 115:
                    if (nextName.equals("s")) {
                        c10 = 2;
                        break;
                    }
                    break;
                case 116:
                    if (nextName.equals(IVideoEventLogger.LOG_CALLBACK_TIME)) {
                        c10 = 3;
                        break;
                    }
                    break;
                case 3261:
                    if (nextName.equals("fc")) {
                        c10 = 4;
                        break;
                    }
                    break;
                case 3452:
                    if (nextName.equals("lh")) {
                        c10 = 5;
                        break;
                    }
                    break;
                case 3463:
                    if (nextName.equals("ls")) {
                        c10 = 6;
                        break;
                    }
                    break;
                case 3543:
                    if (nextName.equals("of")) {
                        c10 = 7;
                        break;
                    }
                    break;
                case 3587:
                    if (nextName.equals("ps")) {
                        c10 = '\b';
                        break;
                    }
                    break;
                case 3664:
                    if (nextName.equals(SRStrategy.KEY_SR_STRATEGY_CONFIG)) {
                        c10 = '\t';
                        break;
                    }
                    break;
                case 3684:
                    if (nextName.equals("sw")) {
                        c10 = '\n';
                        break;
                    }
                    break;
                case 3687:
                    if (nextName.equals("sz")) {
                        c10 = 11;
                        break;
                    }
                    break;
                case 3710:
                    if (nextName.equals("tr")) {
                        c10 = '\f';
                        break;
                    }
                    break;
            }
            switch (c10) {
                case 0:
                    str2 = jsonReader.nextString();
                    break;
                case 1:
                    int nextInt = jsonReader.nextInt();
                    oJVar2 = ZYk.oJ.CENTER;
                    if (nextInt <= oJVar2.ordinal() && nextInt >= 0) {
                        oJVar2 = ZYk.oJ.values()[nextInt];
                        break;
                    }
                    break;
                case 2:
                    f11 = (float) jsonReader.nextDouble();
                    break;
                case 3:
                    str = jsonReader.nextString();
                    break;
                case 4:
                    i11 = RZ.oJ(jsonReader);
                    break;
                case 5:
                    f12 = (float) jsonReader.nextDouble();
                    break;
                case 6:
                    f13 = (float) jsonReader.nextDouble();
                    break;
                case 7:
                    z10 = jsonReader.nextBoolean();
                    break;
                case '\b':
                    jsonReader.beginArray();
                    PointF pointF3 = new PointF(((float) jsonReader.nextDouble()) * f10, ((float) jsonReader.nextDouble()) * f10);
                    jsonReader.endArray();
                    pointF = pointF3;
                    break;
                case '\t':
                    i12 = RZ.oJ(jsonReader);
                    break;
                case '\n':
                    f14 = (float) jsonReader.nextDouble();
                    break;
                case 11:
                    jsonReader.beginArray();
                    PointF pointF4 = new PointF(((float) jsonReader.nextDouble()) * f10, ((float) jsonReader.nextDouble()) * f10);
                    jsonReader.endArray();
                    pointF2 = pointF4;
                    break;
                case '\f':
                    i10 = jsonReader.nextInt();
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        return new com.bytedance.adsdk.ZYk.tB.ZYk(str, str2, f11, oJVar2, i10, f12, f13, i11, i12, f14, z10, pointF, pointF2);
    }
}
