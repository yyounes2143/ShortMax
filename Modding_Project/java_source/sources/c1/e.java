package c1;

import androidx.annotation.Nullable;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BlurEffectParser.java */
/* loaded from: classes2.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private static final JsonReader.a f2857a = JsonReader.a.a("ef");

    /* renamed from: b  reason: collision with root package name */
    private static final JsonReader.a f2858b = JsonReader.a.a("ty", "v");

    @Nullable
    private static z0.a a(JsonReader jsonReader, com.airbnb.lottie.i iVar) throws IOException {
        jsonReader.k();
        z0.a aVar = null;
        while (true) {
            boolean z10 = false;
            while (jsonReader.o()) {
                int x10 = jsonReader.x(f2858b);
                if (x10 != 0) {
                    if (x10 != 1) {
                        jsonReader.F();
                        jsonReader.P();
                    } else if (z10) {
                        aVar = new z0.a(d.e(jsonReader, iVar));
                    } else {
                        jsonReader.P();
                    }
                } else if (jsonReader.r() == 0) {
                    z10 = true;
                }
            }
            jsonReader.m();
            return aVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static z0.a b(JsonReader jsonReader, com.airbnb.lottie.i iVar) throws IOException {
        z0.a aVar = null;
        while (jsonReader.o()) {
            if (jsonReader.x(f2857a) != 0) {
                jsonReader.F();
                jsonReader.P();
            } else {
                jsonReader.d();
                while (jsonReader.o()) {
                    z0.a a10 = a(jsonReader, iVar);
                    if (a10 != null) {
                        aVar = a10;
                    }
                }
                jsonReader.l();
            }
        }
        return aVar;
    }
}
