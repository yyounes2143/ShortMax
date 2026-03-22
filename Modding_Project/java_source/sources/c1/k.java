package c1;

import androidx.annotation.Nullable;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
/* compiled from: DropShadowEffectParser.java */
/* loaded from: classes2.dex */
public class k {

    /* renamed from: f  reason: collision with root package name */
    private static final JsonReader.a f2876f = JsonReader.a.a("ef");

    /* renamed from: g  reason: collision with root package name */
    private static final JsonReader.a f2877g = JsonReader.a.a("nm", "v");

    /* renamed from: a  reason: collision with root package name */
    private y0.a f2878a;

    /* renamed from: b  reason: collision with root package name */
    private y0.b f2879b;

    /* renamed from: c  reason: collision with root package name */
    private y0.b f2880c;

    /* renamed from: d  reason: collision with root package name */
    private y0.b f2881d;

    /* renamed from: e  reason: collision with root package name */
    private y0.b f2882e;

    private void a(JsonReader jsonReader, com.airbnb.lottie.i iVar) throws IOException {
        jsonReader.k();
        String str = "";
        while (jsonReader.o()) {
            int x10 = jsonReader.x(f2877g);
            if (x10 != 0) {
                if (x10 != 1) {
                    jsonReader.F();
                    jsonReader.P();
                } else {
                    str.hashCode();
                    char c10 = 65535;
                    switch (str.hashCode()) {
                        case 353103893:
                            if (str.equals("Distance")) {
                                c10 = 0;
                                break;
                            }
                            break;
                        case 397447147:
                            if (str.equals("Opacity")) {
                                c10 = 1;
                                break;
                            }
                            break;
                        case 1041377119:
                            if (str.equals("Direction")) {
                                c10 = 2;
                                break;
                            }
                            break;
                        case 1379387491:
                            if (str.equals("Shadow Color")) {
                                c10 = 3;
                                break;
                            }
                            break;
                        case 1383710113:
                            if (str.equals("Softness")) {
                                c10 = 4;
                                break;
                            }
                            break;
                    }
                    switch (c10) {
                        case 0:
                            this.f2881d = d.e(jsonReader, iVar);
                            continue;
                        case 1:
                            this.f2879b = d.f(jsonReader, iVar, false);
                            continue;
                        case 2:
                            this.f2880c = d.f(jsonReader, iVar, false);
                            continue;
                        case 3:
                            this.f2878a = d.c(jsonReader, iVar);
                            continue;
                        case 4:
                            this.f2882e = d.e(jsonReader, iVar);
                            continue;
                        default:
                            jsonReader.P();
                            continue;
                    }
                }
            } else {
                str = jsonReader.t();
            }
        }
        jsonReader.m();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public j b(JsonReader jsonReader, com.airbnb.lottie.i iVar) throws IOException {
        y0.b bVar;
        y0.b bVar2;
        y0.b bVar3;
        y0.b bVar4;
        while (jsonReader.o()) {
            if (jsonReader.x(f2876f) != 0) {
                jsonReader.F();
                jsonReader.P();
            } else {
                jsonReader.d();
                while (jsonReader.o()) {
                    a(jsonReader, iVar);
                }
                jsonReader.l();
            }
        }
        y0.a aVar = this.f2878a;
        if (aVar != null && (bVar = this.f2879b) != null && (bVar2 = this.f2880c) != null && (bVar3 = this.f2881d) != null && (bVar4 = this.f2882e) != null) {
            return new j(aVar, bVar, bVar2, bVar3, bVar4);
        }
        return null;
    }
}
