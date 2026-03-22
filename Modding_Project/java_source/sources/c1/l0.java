package c1;

import com.airbnb.lottie.model.content.ShapeStroke;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.ss.ttvideoengine.superresolution.SRStrategy;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ShapeStrokeParser.java */
/* loaded from: classes2.dex */
public class l0 {

    /* renamed from: a  reason: collision with root package name */
    private static final JsonReader.a f2885a = JsonReader.a.a("nm", "c", SRStrategy.MEDIAINFO_KEY_WIDTH, "o", "lc", "lj", "ml", "hd", "d");

    /* renamed from: b  reason: collision with root package name */
    private static final JsonReader.a f2886b = JsonReader.a.a("n", "v");

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static ShapeStroke a(JsonReader jsonReader, com.airbnb.lottie.i iVar) throws IOException {
        y0.d dVar;
        ShapeStroke.LineCapType lineCapType;
        ShapeStroke.LineJoinType lineJoinType;
        char c10;
        ArrayList arrayList = new ArrayList();
        float f10 = 0.0f;
        boolean z10 = false;
        String str = null;
        y0.b bVar = null;
        y0.a aVar = null;
        y0.b bVar2 = null;
        y0.d dVar2 = null;
        ShapeStroke.LineCapType lineCapType2 = null;
        ShapeStroke.LineJoinType lineJoinType2 = null;
        while (jsonReader.o()) {
            switch (jsonReader.x(f2885a)) {
                case 0:
                    str = jsonReader.t();
                    break;
                case 1:
                    aVar = d.c(jsonReader, iVar);
                    break;
                case 2:
                    bVar2 = d.e(jsonReader, iVar);
                    break;
                case 3:
                    dVar2 = d.h(jsonReader, iVar);
                    break;
                case 4:
                    lineCapType2 = ShapeStroke.LineCapType.values()[jsonReader.r() - 1];
                    break;
                case 5:
                    lineJoinType2 = ShapeStroke.LineJoinType.values()[jsonReader.r() - 1];
                    break;
                case 6:
                    f10 = (float) jsonReader.q();
                    break;
                case 7:
                    z10 = jsonReader.p();
                    break;
                case 8:
                    jsonReader.d();
                    while (jsonReader.o()) {
                        jsonReader.k();
                        String str2 = null;
                        y0.b bVar3 = null;
                        while (jsonReader.o()) {
                            int x10 = jsonReader.x(f2886b);
                            if (x10 != 0) {
                                if (x10 != 1) {
                                    jsonReader.F();
                                    jsonReader.P();
                                } else {
                                    bVar3 = d.e(jsonReader, iVar);
                                }
                            } else {
                                str2 = jsonReader.t();
                            }
                        }
                        jsonReader.m();
                        str2.hashCode();
                        switch (str2.hashCode()) {
                            case 100:
                                if (str2.equals("d")) {
                                    c10 = 0;
                                    break;
                                }
                                c10 = 65535;
                                break;
                            case 103:
                                if (str2.equals("g")) {
                                    c10 = 1;
                                    break;
                                }
                                c10 = 65535;
                                break;
                            case 111:
                                if (str2.equals("o")) {
                                    c10 = 2;
                                    break;
                                }
                                c10 = 65535;
                                break;
                            default:
                                c10 = 65535;
                                break;
                        }
                        switch (c10) {
                            case 0:
                            case 1:
                                iVar.u(true);
                                arrayList.add(bVar3);
                                break;
                            case 2:
                                bVar = bVar3;
                                break;
                        }
                    }
                    jsonReader.l();
                    if (arrayList.size() != 1) {
                        break;
                    } else {
                        arrayList.add((y0.b) arrayList.get(0));
                        break;
                    }
                    break;
                default:
                    jsonReader.P();
                    break;
            }
        }
        if (dVar2 == null) {
            dVar = new y0.d(Collections.singletonList(new e1.a(100)));
        } else {
            dVar = dVar2;
        }
        if (lineCapType2 == null) {
            lineCapType = ShapeStroke.LineCapType.BUTT;
        } else {
            lineCapType = lineCapType2;
        }
        if (lineJoinType2 == null) {
            lineJoinType = ShapeStroke.LineJoinType.MITER;
        } else {
            lineJoinType = lineJoinType2;
        }
        return new ShapeStroke(str, bVar, arrayList, aVar, dVar, bVar2, lineCapType, lineJoinType, f10, z10);
    }
}
