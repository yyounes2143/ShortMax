package c1;

import android.graphics.Path;
import com.airbnb.lottie.model.content.GradientType;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.ss.ttvideoengine.log.IVideoEventLogger;
import java.io.IOException;
import java.util.Collections;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: GradientFillParser.java */
/* loaded from: classes2.dex */
public class p {

    /* renamed from: a  reason: collision with root package name */
    private static final JsonReader.a f2892a = JsonReader.a.a("nm", "g", "o", IVideoEventLogger.LOG_CALLBACK_TIME, "s", "e", "r", "hd");

    /* renamed from: b  reason: collision with root package name */
    private static final JsonReader.a f2893b = JsonReader.a.a(TtmlNode.TAG_P, CampaignEx.JSON_KEY_AD_K);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static z0.e a(JsonReader jsonReader, com.airbnb.lottie.i iVar) throws IOException {
        y0.d dVar;
        GradientType gradientType;
        Path.FillType fillType;
        y0.d dVar2 = null;
        Path.FillType fillType2 = Path.FillType.WINDING;
        String str = null;
        GradientType gradientType2 = null;
        y0.c cVar = null;
        y0.f fVar = null;
        y0.f fVar2 = null;
        boolean z10 = false;
        while (jsonReader.o()) {
            switch (jsonReader.x(f2892a)) {
                case 0:
                    str = jsonReader.t();
                    break;
                case 1:
                    jsonReader.k();
                    int i10 = -1;
                    while (jsonReader.o()) {
                        int x10 = jsonReader.x(f2893b);
                        if (x10 != 0) {
                            if (x10 != 1) {
                                jsonReader.F();
                                jsonReader.P();
                            } else {
                                cVar = d.g(jsonReader, iVar, i10);
                            }
                        } else {
                            i10 = jsonReader.r();
                        }
                    }
                    jsonReader.m();
                    break;
                case 2:
                    dVar2 = d.h(jsonReader, iVar);
                    break;
                case 3:
                    if (jsonReader.r() == 1) {
                        gradientType = GradientType.LINEAR;
                    } else {
                        gradientType = GradientType.RADIAL;
                    }
                    gradientType2 = gradientType;
                    break;
                case 4:
                    fVar = d.i(jsonReader, iVar);
                    break;
                case 5:
                    fVar2 = d.i(jsonReader, iVar);
                    break;
                case 6:
                    if (jsonReader.r() == 1) {
                        fillType = Path.FillType.WINDING;
                    } else {
                        fillType = Path.FillType.EVEN_ODD;
                    }
                    fillType2 = fillType;
                    break;
                case 7:
                    z10 = jsonReader.p();
                    break;
                default:
                    jsonReader.F();
                    jsonReader.P();
                    break;
            }
        }
        if (dVar2 == null) {
            dVar = new y0.d(Collections.singletonList(new e1.a(100)));
        } else {
            dVar = dVar2;
        }
        return new z0.e(str, gradientType2, fillType2, cVar, dVar, fVar, fVar2, null, null, z10);
    }
}
