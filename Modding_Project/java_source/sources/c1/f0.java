package c1;

import androidx.annotation.Nullable;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
/* compiled from: RoundedCornersParser.java */
/* loaded from: classes2.dex */
public class f0 {

    /* renamed from: a  reason: collision with root package name */
    private static final JsonReader.a f2861a = JsonReader.a.a("nm", "r", "hd");

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static z0.h a(JsonReader jsonReader, com.airbnb.lottie.i iVar) throws IOException {
        boolean z10 = false;
        String str = null;
        y0.b bVar = null;
        while (jsonReader.o()) {
            int x10 = jsonReader.x(f2861a);
            if (x10 != 0) {
                if (x10 != 1) {
                    if (x10 != 2) {
                        jsonReader.P();
                    } else {
                        z10 = jsonReader.p();
                    }
                } else {
                    bVar = d.f(jsonReader, iVar, true);
                }
            } else {
                str = jsonReader.t();
            }
        }
        if (z10) {
            return null;
        }
        return new z0.h(str, bVar);
    }
}
