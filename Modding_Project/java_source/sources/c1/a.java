package c1;

import android.graphics.PointF;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.ss.texturerender.TextureRenderKeys;
import java.io.IOException;
import java.util.ArrayList;
/* compiled from: AnimatablePathValueParser.java */
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static final JsonReader.a f2847a = JsonReader.a.a(CampaignEx.JSON_KEY_AD_K, TextureRenderKeys.KEY_IS_X, TextureRenderKeys.KEY_IS_Y);

    public static y0.e a(JsonReader jsonReader, com.airbnb.lottie.i iVar) throws IOException {
        ArrayList arrayList = new ArrayList();
        if (jsonReader.v() == JsonReader.Token.BEGIN_ARRAY) {
            jsonReader.d();
            while (jsonReader.o()) {
                arrayList.add(z.a(jsonReader, iVar));
            }
            jsonReader.l();
            u.b(arrayList);
        } else {
            arrayList.add(new e1.a(s.e(jsonReader, d1.p.e())));
        }
        return new y0.e(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static y0.o<PointF, PointF> b(JsonReader jsonReader, com.airbnb.lottie.i iVar) throws IOException {
        jsonReader.k();
        y0.e eVar = null;
        y0.b bVar = null;
        boolean z10 = false;
        y0.b bVar2 = null;
        while (jsonReader.v() != JsonReader.Token.END_OBJECT) {
            int x10 = jsonReader.x(f2847a);
            if (x10 != 0) {
                if (x10 != 1) {
                    if (x10 != 2) {
                        jsonReader.F();
                        jsonReader.P();
                    } else if (jsonReader.v() == JsonReader.Token.STRING) {
                        jsonReader.P();
                        z10 = true;
                    } else {
                        bVar = d.e(jsonReader, iVar);
                    }
                } else if (jsonReader.v() == JsonReader.Token.STRING) {
                    jsonReader.P();
                    z10 = true;
                } else {
                    bVar2 = d.e(jsonReader, iVar);
                }
            } else {
                eVar = a(jsonReader, iVar);
            }
        }
        jsonReader.m();
        if (z10) {
            iVar.a("Lottie doesn't support expressions.");
        }
        if (eVar != null) {
            return eVar;
        }
        return new y0.i(bVar2, bVar);
    }
}
