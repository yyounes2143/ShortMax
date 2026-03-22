package c1;

import com.airbnb.lottie.model.content.GradientType;
import com.airbnb.lottie.model.content.ShapeStroke;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.ss.ttvideoengine.log.IVideoEventLogger;
import com.ss.ttvideoengine.superresolution.SRStrategy;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: GradientStrokeParser.java */
/* loaded from: classes2.dex */
public class q {

    /* renamed from: a  reason: collision with root package name */
    private static final JsonReader.a f2894a = JsonReader.a.a("nm", "g", "o", IVideoEventLogger.LOG_CALLBACK_TIME, "s", "e", SRStrategy.MEDIAINFO_KEY_WIDTH, "lc", "lj", "ml", "hd", "d");

    /* renamed from: b  reason: collision with root package name */
    private static final JsonReader.a f2895b = JsonReader.a.a(TtmlNode.TAG_P, CampaignEx.JSON_KEY_AD_K);

    /* renamed from: c  reason: collision with root package name */
    private static final JsonReader.a f2896c = JsonReader.a.a("n", "v");

    /* JADX INFO: Access modifiers changed from: package-private */
    public static com.airbnb.lottie.model.content.a a(JsonReader jsonReader, com.airbnb.lottie.i iVar) throws IOException {
        String str;
        y0.c cVar;
        GradientType gradientType;
        ArrayList arrayList = new ArrayList();
        float f10 = 0.0f;
        String str2 = null;
        GradientType gradientType2 = null;
        y0.c cVar2 = null;
        y0.f fVar = null;
        y0.f fVar2 = null;
        y0.b bVar = null;
        ShapeStroke.LineCapType lineCapType = null;
        ShapeStroke.LineJoinType lineJoinType = null;
        y0.b bVar2 = null;
        boolean z10 = false;
        y0.d dVar = null;
        while (jsonReader.o()) {
            switch (jsonReader.x(f2894a)) {
                case 0:
                    str2 = jsonReader.t();
                    continue;
                case 1:
                    str = str2;
                    jsonReader.k();
                    int i10 = -1;
                    while (jsonReader.o()) {
                        int x10 = jsonReader.x(f2895b);
                        if (x10 != 0) {
                            cVar = cVar2;
                            if (x10 != 1) {
                                jsonReader.F();
                                jsonReader.P();
                            } else {
                                cVar2 = d.g(jsonReader, iVar, i10);
                            }
                        } else {
                            cVar = cVar2;
                            i10 = jsonReader.r();
                        }
                        cVar2 = cVar;
                    }
                    jsonReader.m();
                    break;
                case 2:
                    dVar = d.h(jsonReader, iVar);
                    continue;
                case 3:
                    str = str2;
                    if (jsonReader.r() == 1) {
                        gradientType = GradientType.LINEAR;
                    } else {
                        gradientType = GradientType.RADIAL;
                    }
                    gradientType2 = gradientType;
                    break;
                case 4:
                    fVar = d.i(jsonReader, iVar);
                    continue;
                case 5:
                    fVar2 = d.i(jsonReader, iVar);
                    continue;
                case 6:
                    bVar = d.e(jsonReader, iVar);
                    continue;
                case 7:
                    str = str2;
                    lineCapType = ShapeStroke.LineCapType.values()[jsonReader.r() - 1];
                    break;
                case 8:
                    str = str2;
                    lineJoinType = ShapeStroke.LineJoinType.values()[jsonReader.r() - 1];
                    break;
                case 9:
                    str = str2;
                    f10 = (float) jsonReader.q();
                    break;
                case 10:
                    z10 = jsonReader.p();
                    continue;
                case 11:
                    jsonReader.d();
                    while (jsonReader.o()) {
                        jsonReader.k();
                        String str3 = null;
                        y0.b bVar3 = null;
                        while (jsonReader.o()) {
                            int x11 = jsonReader.x(f2896c);
                            if (x11 != 0) {
                                y0.b bVar4 = bVar2;
                                if (x11 != 1) {
                                    jsonReader.F();
                                    jsonReader.P();
                                } else {
                                    bVar3 = d.e(jsonReader, iVar);
                                }
                                bVar2 = bVar4;
                            } else {
                                str3 = jsonReader.t();
                            }
                        }
                        y0.b bVar5 = bVar2;
                        jsonReader.m();
                        if (str3.equals("o")) {
                            bVar2 = bVar3;
                        } else {
                            if (str3.equals("d") || str3.equals("g")) {
                                iVar.u(true);
                                arrayList.add(bVar3);
                            }
                            bVar2 = bVar5;
                        }
                    }
                    y0.b bVar6 = bVar2;
                    jsonReader.l();
                    if (arrayList.size() == 1) {
                        arrayList.add((y0.b) arrayList.get(0));
                    }
                    bVar2 = bVar6;
                    continue;
                    break;
                default:
                    jsonReader.F();
                    jsonReader.P();
                    continue;
            }
            str2 = str;
        }
        String str4 = str2;
        if (dVar == null) {
            dVar = new y0.d(Collections.singletonList(new e1.a(100)));
        }
        return new com.airbnb.lottie.model.content.a(str4, gradientType2, cVar2, dVar, fVar, fVar2, bVar, lineCapType, lineJoinType, f10, arrayList, bVar2, z10);
    }
}
