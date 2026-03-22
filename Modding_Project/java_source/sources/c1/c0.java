package c1;

import android.graphics.PointF;
import com.airbnb.lottie.model.content.PolystarShape;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.ss.ttvideoengine.superresolution.SRStrategy;
import java.io.IOException;
/* compiled from: PolystarShapeParser.java */
/* loaded from: classes2.dex */
class c0 {

    /* renamed from: a  reason: collision with root package name */
    private static final JsonReader.a f2855a = JsonReader.a.a("nm", "sy", "pt", TtmlNode.TAG_P, "r", SRStrategy.KEY_ORIGIN_RESOLUTION, "os", "ir", "is", "hd", "d");

    /* JADX INFO: Access modifiers changed from: package-private */
    public static PolystarShape a(JsonReader jsonReader, com.airbnb.lottie.i iVar, int i10) throws IOException {
        boolean z10;
        if (i10 == 3) {
            z10 = true;
        } else {
            z10 = false;
        }
        boolean z11 = false;
        boolean z12 = z10;
        String str = null;
        PolystarShape.Type type = null;
        y0.b bVar = null;
        y0.o<PointF, PointF> oVar = null;
        y0.b bVar2 = null;
        y0.b bVar3 = null;
        y0.b bVar4 = null;
        y0.b bVar5 = null;
        y0.b bVar6 = null;
        while (jsonReader.o()) {
            switch (jsonReader.x(f2855a)) {
                case 0:
                    str = jsonReader.t();
                    break;
                case 1:
                    type = PolystarShape.Type.forValue(jsonReader.r());
                    break;
                case 2:
                    bVar = d.f(jsonReader, iVar, false);
                    break;
                case 3:
                    oVar = a.b(jsonReader, iVar);
                    break;
                case 4:
                    bVar2 = d.f(jsonReader, iVar, false);
                    break;
                case 5:
                    bVar4 = d.e(jsonReader, iVar);
                    break;
                case 6:
                    bVar6 = d.f(jsonReader, iVar, false);
                    break;
                case 7:
                    bVar3 = d.e(jsonReader, iVar);
                    break;
                case 8:
                    bVar5 = d.f(jsonReader, iVar, false);
                    break;
                case 9:
                    z11 = jsonReader.p();
                    break;
                case 10:
                    if (jsonReader.r() == 3) {
                        z12 = true;
                        break;
                    } else {
                        z12 = false;
                        break;
                    }
                default:
                    jsonReader.F();
                    jsonReader.P();
                    break;
            }
        }
        return new PolystarShape(str, type, bVar, oVar, bVar2, bVar3, bVar4, bVar5, bVar6, z11, z12);
    }
}
