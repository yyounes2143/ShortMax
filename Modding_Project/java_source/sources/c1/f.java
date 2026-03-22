package c1;

import android.graphics.PointF;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.io.IOException;
/* compiled from: CircleShapeParser.java */
/* loaded from: classes2.dex */
class f {

    /* renamed from: a  reason: collision with root package name */
    private static final JsonReader.a f2860a = JsonReader.a.a("nm", TtmlNode.TAG_P, "s", "hd", "d");

    /* JADX INFO: Access modifiers changed from: package-private */
    public static z0.b a(JsonReader jsonReader, com.airbnb.lottie.i iVar, int i10) throws IOException {
        boolean z10;
        if (i10 == 3) {
            z10 = true;
        } else {
            z10 = false;
        }
        boolean z11 = z10;
        boolean z12 = false;
        String str = null;
        y0.o<PointF, PointF> oVar = null;
        y0.f fVar = null;
        while (jsonReader.o()) {
            int x10 = jsonReader.x(f2860a);
            if (x10 != 0) {
                if (x10 != 1) {
                    if (x10 != 2) {
                        if (x10 != 3) {
                            if (x10 != 4) {
                                jsonReader.F();
                                jsonReader.P();
                            } else if (jsonReader.r() == 3) {
                                z11 = true;
                            } else {
                                z11 = false;
                            }
                        } else {
                            z12 = jsonReader.p();
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
        return new z0.b(str, oVar, fVar, z11, z12);
    }
}
