package c1;

import android.graphics.Path;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
import java.util.Collections;
/* compiled from: ShapeFillParser.java */
/* loaded from: classes2.dex */
class i0 {

    /* renamed from: a  reason: collision with root package name */
    private static final JsonReader.a f2869a = JsonReader.a.a("nm", "c", "o", "fillEnabled", "r", "hd");

    /* JADX INFO: Access modifiers changed from: package-private */
    public static z0.j a(JsonReader jsonReader, com.airbnb.lottie.i iVar) throws IOException {
        Path.FillType fillType;
        y0.d dVar = null;
        String str = null;
        y0.a aVar = null;
        boolean z10 = false;
        boolean z11 = false;
        int i10 = 1;
        while (jsonReader.o()) {
            int x10 = jsonReader.x(f2869a);
            if (x10 != 0) {
                if (x10 != 1) {
                    if (x10 != 2) {
                        if (x10 != 3) {
                            if (x10 != 4) {
                                if (x10 != 5) {
                                    jsonReader.F();
                                    jsonReader.P();
                                } else {
                                    z11 = jsonReader.p();
                                }
                            } else {
                                i10 = jsonReader.r();
                            }
                        } else {
                            z10 = jsonReader.p();
                        }
                    } else {
                        dVar = d.h(jsonReader, iVar);
                    }
                } else {
                    aVar = d.c(jsonReader, iVar);
                }
            } else {
                str = jsonReader.t();
            }
        }
        if (dVar == null) {
            dVar = new y0.d(Collections.singletonList(new e1.a(100)));
        }
        y0.d dVar2 = dVar;
        if (i10 == 1) {
            fillType = Path.FillType.WINDING;
        } else {
            fillType = Path.FillType.EVEN_ODD;
        }
        return new z0.j(str, z10, fillType, aVar, dVar2, z11);
    }
}
