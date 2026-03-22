package c1;

import android.graphics.PointF;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.ss.ttvideoengine.superresolution.SRStrategy;
import java.io.IOException;
/* compiled from: AnimatableTransformParser.java */
/* loaded from: classes2.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static final JsonReader.a f2853a = JsonReader.a.a("a", TtmlNode.TAG_P, "s", "rz", "r", "o", SRStrategy.KEY_SR_OPEN, "eo", "sk", "sa", "rx", "ry");

    /* renamed from: b  reason: collision with root package name */
    private static final JsonReader.a f2854b = JsonReader.a.a(CampaignEx.JSON_KEY_AD_K);

    private static void a(y0.b bVar, com.airbnb.lottie.i iVar) {
        boolean isEmpty = bVar.b().isEmpty();
        Float valueOf = Float.valueOf(0.0f);
        if (isEmpty) {
            bVar.b().add(new e1.a(iVar, valueOf, valueOf, null, 0.0f, Float.valueOf(iVar.f())));
        } else if (((e1.a) bVar.b().get(0)).f50724b == 0) {
            bVar.b().set(0, new e1.a(iVar, valueOf, valueOf, null, 0.0f, Float.valueOf(iVar.f())));
        }
    }

    private static boolean b(y0.e eVar) {
        if (eVar != null && (!eVar.c() || !eVar.b().get(0).f50724b.equals(0.0f, 0.0f))) {
            return false;
        }
        return true;
    }

    private static boolean c(y0.o<PointF, PointF> oVar) {
        if (oVar != null && ((oVar instanceof y0.i) || !oVar.c() || !oVar.b().get(0).f50724b.equals(0.0f, 0.0f))) {
            return false;
        }
        return true;
    }

    private static boolean d(y0.b bVar) {
        if (bVar != null && (!bVar.c() || ((Float) ((e1.a) bVar.b().get(0)).f50724b).floatValue() != 0.0f)) {
            return false;
        }
        return true;
    }

    private static boolean e(y0.g gVar) {
        if (gVar != null && (!gVar.c() || !((e1.d) ((e1.a) gVar.b().get(0)).f50724b).a(1.0f, 1.0f))) {
            return false;
        }
        return true;
    }

    private static boolean f(y0.b bVar) {
        if (bVar != null && (!bVar.c() || ((Float) ((e1.a) bVar.b().get(0)).f50724b).floatValue() != 0.0f)) {
            return false;
        }
        return true;
    }

    private static boolean g(y0.b bVar) {
        if (bVar != null && (!bVar.c() || ((Float) ((e1.a) bVar.b().get(0)).f50724b).floatValue() != 0.0f)) {
            return false;
        }
        return true;
    }

    public static y0.n h(JsonReader jsonReader, com.airbnb.lottie.i iVar) throws IOException {
        boolean z10;
        y0.e eVar;
        y0.o<PointF, PointF> oVar;
        y0.b bVar;
        y0.g gVar;
        y0.b bVar2;
        y0.b bVar3;
        y0.b bVar4;
        y0.b bVar5;
        y0.b bVar6;
        if (jsonReader.v() == JsonReader.Token.BEGIN_OBJECT) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            jsonReader.k();
        }
        y0.e eVar2 = null;
        y0.o<PointF, PointF> oVar2 = null;
        y0.b bVar7 = null;
        y0.g gVar2 = null;
        y0.b bVar8 = null;
        y0.b bVar9 = null;
        y0.b bVar10 = null;
        y0.b bVar11 = null;
        y0.b bVar12 = null;
        y0.d dVar = null;
        y0.b bVar13 = null;
        y0.b bVar14 = null;
        while (jsonReader.o()) {
            switch (jsonReader.x(f2853a)) {
                case 0:
                    jsonReader.k();
                    while (jsonReader.o()) {
                        if (jsonReader.x(f2854b) != 0) {
                            jsonReader.F();
                            jsonReader.P();
                        } else {
                            eVar2 = a.a(jsonReader, iVar);
                        }
                    }
                    jsonReader.m();
                    break;
                case 1:
                    oVar2 = a.b(jsonReader, iVar);
                    break;
                case 2:
                    gVar2 = d.j(jsonReader, iVar);
                    break;
                case 3:
                    bVar12 = d.f(jsonReader, iVar, false);
                    a(bVar12, iVar);
                    break;
                case 4:
                    bVar7 = d.f(jsonReader, iVar, false);
                    a(bVar7, iVar);
                    break;
                case 5:
                    dVar = d.h(jsonReader, iVar);
                    break;
                case 6:
                    bVar13 = d.f(jsonReader, iVar, false);
                    break;
                case 7:
                    bVar14 = d.f(jsonReader, iVar, false);
                    break;
                case 8:
                    bVar8 = d.f(jsonReader, iVar, false);
                    break;
                case 9:
                    bVar9 = d.f(jsonReader, iVar, false);
                    break;
                case 10:
                    bVar10 = d.f(jsonReader, iVar, false);
                    a(bVar10, iVar);
                    break;
                case 11:
                    bVar11 = d.f(jsonReader, iVar, false);
                    a(bVar11, iVar);
                    break;
                default:
                    jsonReader.F();
                    jsonReader.P();
                    break;
            }
        }
        if (z10) {
            jsonReader.m();
        }
        if (b(eVar2)) {
            eVar = null;
        } else {
            eVar = eVar2;
        }
        if (c(oVar2)) {
            oVar = null;
        } else {
            oVar = oVar2;
        }
        if (d(bVar7)) {
            bVar = null;
        } else {
            bVar = bVar7;
        }
        if (e(gVar2)) {
            gVar = null;
        } else {
            gVar = gVar2;
        }
        if (g(bVar8)) {
            bVar2 = null;
        } else {
            bVar2 = bVar8;
        }
        if (f(bVar9)) {
            bVar3 = null;
        } else {
            bVar3 = bVar9;
        }
        if (d(bVar10)) {
            bVar4 = null;
        } else {
            bVar4 = bVar10;
        }
        if (d(bVar11)) {
            bVar5 = null;
        } else {
            bVar5 = bVar11;
        }
        if (d(bVar12)) {
            bVar6 = null;
        } else {
            bVar6 = bVar12;
        }
        return new y0.n(eVar, oVar, gVar, bVar, dVar, bVar13, bVar14, bVar2, bVar3, bVar4, bVar5, bVar6);
    }
}
