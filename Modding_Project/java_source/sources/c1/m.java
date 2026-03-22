package c1;

import com.airbnb.lottie.parser.moshi.JsonReader;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.ss.ttvideoengine.superresolution.SRStrategy;
import java.io.IOException;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FontCharacterParser.java */
/* loaded from: classes2.dex */
public class m {

    /* renamed from: a  reason: collision with root package name */
    private static final JsonReader.a f2887a = JsonReader.a.a("ch", "size", SRStrategy.MEDIAINFO_KEY_WIDTH, TtmlNode.TAG_STYLE, "fFamily", "data");

    /* renamed from: b  reason: collision with root package name */
    private static final JsonReader.a f2888b = JsonReader.a.a("shapes");

    /* JADX INFO: Access modifiers changed from: package-private */
    public static x0.c a(JsonReader jsonReader, com.airbnb.lottie.i iVar) throws IOException {
        ArrayList arrayList = new ArrayList();
        jsonReader.k();
        double d10 = 0.0d;
        String str = null;
        String str2 = null;
        char c10 = 0;
        double d11 = 0.0d;
        while (jsonReader.o()) {
            int x10 = jsonReader.x(f2887a);
            if (x10 != 0) {
                if (x10 != 1) {
                    if (x10 != 2) {
                        if (x10 != 3) {
                            if (x10 != 4) {
                                if (x10 != 5) {
                                    jsonReader.F();
                                    jsonReader.P();
                                } else {
                                    jsonReader.k();
                                    while (jsonReader.o()) {
                                        if (jsonReader.x(f2888b) != 0) {
                                            jsonReader.F();
                                            jsonReader.P();
                                        } else {
                                            jsonReader.d();
                                            while (jsonReader.o()) {
                                                arrayList.add((z0.k) h.a(jsonReader, iVar));
                                            }
                                            jsonReader.l();
                                        }
                                    }
                                    jsonReader.m();
                                }
                            } else {
                                str2 = jsonReader.t();
                            }
                        } else {
                            str = jsonReader.t();
                        }
                    } else {
                        d10 = jsonReader.q();
                    }
                } else {
                    d11 = jsonReader.q();
                }
            } else {
                c10 = jsonReader.t().charAt(0);
            }
        }
        jsonReader.m();
        return new x0.c(arrayList, c10, d11, d10, str, str2);
    }
}
