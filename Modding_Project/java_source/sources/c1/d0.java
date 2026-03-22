package c1;

import android.graphics.PointF;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.io.IOException;
/* compiled from: RectangleShapeParser.java */
/* loaded from: classes2.dex */
class d0 {

    /* renamed from: a  reason: collision with root package name */
    private static final JsonReader.a f2856a = JsonReader.a.a("nm", TtmlNode.TAG_P, "s", "r", "hd");

    /* JADX INFO: Access modifiers changed from: package-private */
    public static z0.f a(JsonReader jsonReader, com.airbnb.lottie.i iVar) throws IOException {
        String str = null;
        y0.o<PointF, PointF> oVar = null;
        y0.f fVar = null;
        y0.b bVar = null;
        boolean z10 = false;
        while (jsonReader.o()) {
            int x10 = jsonReader.x(f2856a);
            if (x10 != 0) {
                if (x10 != 1) {
                    if (x10 != 2) {
                        if (x10 != 3) {
                            if (x10 != 4) {
                                jsonReader.P();
                            } else {
                                z10 = jsonReader.p();
                            }
                        } else {
                            bVar = d.e(jsonReader, iVar);
                        }
                    } else {
                        fVar = d.i(jsonReader, iVar);
                    }
                } else {
                    oVar = a.b(jsonReader, iVar);
                }
            } else {
                str = jsonReader.t();
            }
        }
        return new z0.f(str, oVar, fVar, bVar, z10);
    }
}
