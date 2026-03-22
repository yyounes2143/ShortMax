package c1;

import com.airbnb.lottie.model.content.TextRangeUnits;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.ss.ttvideoengine.log.IVideoEventLogger;
import com.ss.ttvideoengine.superresolution.SRStrategy;
import java.io.IOException;
import java.util.Collections;
/* compiled from: AnimatableTextPropertiesParser.java */
/* loaded from: classes2.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static final JsonReader.a f2849a = JsonReader.a.a("s", "a");

    /* renamed from: b  reason: collision with root package name */
    private static final JsonReader.a f2850b = JsonReader.a.a("s", "e", "o", "r");

    /* renamed from: c  reason: collision with root package name */
    private static final JsonReader.a f2851c = JsonReader.a.a("fc", SRStrategy.KEY_SR_STRATEGY_CONFIG, "sw", IVideoEventLogger.LOG_CALLBACK_TIME, "o");

    public static y0.k a(JsonReader jsonReader, com.airbnb.lottie.i iVar) throws IOException {
        jsonReader.k();
        y0.m mVar = null;
        y0.l lVar = null;
        while (jsonReader.o()) {
            int x10 = jsonReader.x(f2849a);
            if (x10 != 0) {
                if (x10 != 1) {
                    jsonReader.F();
                    jsonReader.P();
                } else {
                    mVar = c(jsonReader, iVar);
                }
            } else {
                lVar = b(jsonReader, iVar);
            }
        }
        jsonReader.m();
        return new y0.k(mVar, lVar);
    }

    private static y0.l b(JsonReader jsonReader, com.airbnb.lottie.i iVar) throws IOException {
        jsonReader.k();
        y0.d dVar = null;
        y0.d dVar2 = null;
        y0.d dVar3 = null;
        TextRangeUnits textRangeUnits = null;
        while (jsonReader.o()) {
            int x10 = jsonReader.x(f2850b);
            if (x10 != 0) {
                if (x10 != 1) {
                    if (x10 != 2) {
                        if (x10 != 3) {
                            jsonReader.F();
                            jsonReader.P();
                        } else {
                            int r10 = jsonReader.r();
                            if (r10 != 1 && r10 != 2) {
                                iVar.a("Unsupported text range units: " + r10);
                                textRangeUnits = TextRangeUnits.INDEX;
                            } else if (r10 == 1) {
                                textRangeUnits = TextRangeUnits.PERCENT;
                            } else {
                                textRangeUnits = TextRangeUnits.INDEX;
                            }
                        }
                    } else {
                        dVar3 = d.h(jsonReader, iVar);
                    }
                } else {
                    dVar2 = d.h(jsonReader, iVar);
                }
            } else {
                dVar = d.h(jsonReader, iVar);
            }
        }
        jsonReader.m();
        if (dVar == null && dVar2 != null) {
            dVar = new y0.d(Collections.singletonList(new e1.a(0)));
        }
        return new y0.l(dVar, dVar2, dVar3, textRangeUnits);
    }

    private static y0.m c(JsonReader jsonReader, com.airbnb.lottie.i iVar) throws IOException {
        jsonReader.k();
        y0.a aVar = null;
        y0.a aVar2 = null;
        y0.b bVar = null;
        y0.b bVar2 = null;
        y0.d dVar = null;
        while (jsonReader.o()) {
            int x10 = jsonReader.x(f2851c);
            if (x10 != 0) {
                if (x10 != 1) {
                    if (x10 != 2) {
                        if (x10 != 3) {
                            if (x10 != 4) {
                                jsonReader.F();
                                jsonReader.P();
                            } else {
                                dVar = d.h(jsonReader, iVar);
                            }
                        } else {
                            bVar2 = d.e(jsonReader, iVar);
                        }
                    } else {
                        bVar = d.e(jsonReader, iVar);
                    }
                } else {
                    aVar2 = d.c(jsonReader, iVar);
                }
            } else {
                aVar = d.c(jsonReader, iVar);
            }
        }
        jsonReader.m();
        return new y0.m(aVar, aVar2, bVar, bVar2, dVar);
    }
}
