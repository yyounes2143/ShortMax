package c1;

import android.graphics.Color;
import android.graphics.Rect;
import com.airbnb.lottie.model.content.LBlendMode;
import com.airbnb.lottie.model.layer.Layer;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.ss.ttvideoengine.log.IVideoEventLogger;
import com.ss.ttvideoengine.net.DNSParser;
import com.ss.ttvideoengine.superresolution.SRStrategy;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
/* compiled from: LayerParser.java */
/* loaded from: classes2.dex */
public class v {

    /* renamed from: a  reason: collision with root package name */
    private static final JsonReader.a f2905a = JsonReader.a.a("nm", "ind", "refId", "ty", "parent", "sw", "sh", SRStrategy.KEY_SR_STRATEGY_CONFIG, "ks", TtmlNode.TAG_TT, "masksProperties", "shapes", IVideoEventLogger.LOG_CALLBACK_TIME, "ef", IVideoEventLogger.FEATURE_KEY_SR, "st", SRStrategy.MEDIAINFO_KEY_WIDTH, "h", DNSParser.DNS_RESULT_IP, "op", "tm", "cl", "hd", "ao", "bm");

    /* renamed from: b  reason: collision with root package name */
    private static final JsonReader.a f2906b = JsonReader.a.a("d", "a");

    /* renamed from: c  reason: collision with root package name */
    private static final JsonReader.a f2907c = JsonReader.a.a("ty", "nm");

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LayerParser.java */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f2908a;

        static {
            int[] iArr = new int[Layer.MatteType.values().length];
            f2908a = iArr;
            try {
                iArr[Layer.MatteType.LUMA.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2908a[Layer.MatteType.LUMA_INVERTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static Layer a(com.airbnb.lottie.i iVar) {
        Rect b10 = iVar.b();
        return new Layer(Collections.emptyList(), iVar, "__container", -1L, Layer.LayerType.PRE_COMP, -1L, null, Collections.emptyList(), new y0.n(), 0, 0, 0, 0.0f, 0.0f, b10.width(), b10.height(), null, null, Collections.emptyList(), Layer.MatteType.NONE, null, false, null, null, LBlendMode.NORMAL);
    }

    public static Layer b(JsonReader jsonReader, com.airbnb.lottie.i iVar) throws IOException {
        ArrayList arrayList;
        boolean z10;
        float f10;
        Layer.MatteType matteType = Layer.MatteType.NONE;
        LBlendMode lBlendMode = LBlendMode.NORMAL;
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        jsonReader.k();
        Float valueOf = Float.valueOf(0.0f);
        Float valueOf2 = Float.valueOf(1.0f);
        Layer.MatteType matteType2 = matteType;
        LBlendMode lBlendMode2 = lBlendMode;
        Layer.LayerType layerType = null;
        String str = null;
        y0.j jVar = null;
        y0.k kVar = null;
        y0.b bVar = null;
        z0.a aVar = null;
        j jVar2 = null;
        long j10 = 0;
        boolean z11 = false;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        boolean z12 = false;
        float f11 = 0.0f;
        float f12 = 0.0f;
        float f13 = 0.0f;
        float f14 = 0.0f;
        float f15 = 0.0f;
        long j11 = -1;
        float f16 = 1.0f;
        String str2 = "UNSET";
        String str3 = null;
        y0.n nVar = null;
        while (jsonReader.o()) {
            switch (jsonReader.x(f2905a)) {
                case 0:
                    str2 = jsonReader.t();
                    break;
                case 1:
                    j10 = jsonReader.r();
                    break;
                case 2:
                    str = jsonReader.t();
                    break;
                case 3:
                    int r10 = jsonReader.r();
                    layerType = Layer.LayerType.UNKNOWN;
                    if (r10 >= layerType.ordinal()) {
                        break;
                    } else {
                        layerType = Layer.LayerType.values()[r10];
                        break;
                    }
                case 4:
                    j11 = jsonReader.r();
                    break;
                case 5:
                    i10 = (int) (jsonReader.r() * d1.p.e());
                    break;
                case 6:
                    i11 = (int) (jsonReader.r() * d1.p.e());
                    break;
                case 7:
                    i12 = Color.parseColor(jsonReader.t());
                    break;
                case 8:
                    nVar = c.h(jsonReader, iVar);
                    break;
                case 9:
                    int r11 = jsonReader.r();
                    if (r11 >= Layer.MatteType.values().length) {
                        iVar.a("Unsupported matte type: " + r11);
                        break;
                    } else {
                        matteType2 = Layer.MatteType.values()[r11];
                        int i13 = a.f2908a[matteType2.ordinal()];
                        if (i13 != 1) {
                            if (i13 == 2) {
                                iVar.a("Unsupported matte type: Luma Inverted");
                            }
                        } else {
                            iVar.a("Unsupported matte type: Luma");
                        }
                        iVar.r(1);
                        break;
                    }
                case 10:
                    jsonReader.d();
                    while (jsonReader.o()) {
                        arrayList2.add(x.a(jsonReader, iVar));
                    }
                    iVar.r(arrayList2.size());
                    jsonReader.l();
                    break;
                case 11:
                    jsonReader.d();
                    while (jsonReader.o()) {
                        z0.c a10 = h.a(jsonReader, iVar);
                        if (a10 != null) {
                            arrayList3.add(a10);
                        }
                    }
                    jsonReader.l();
                    break;
                case 12:
                    jsonReader.k();
                    while (jsonReader.o()) {
                        int x10 = jsonReader.x(f2906b);
                        if (x10 != 0) {
                            if (x10 != 1) {
                                jsonReader.F();
                                jsonReader.P();
                            } else {
                                jsonReader.d();
                                if (jsonReader.o()) {
                                    kVar = b.a(jsonReader, iVar);
                                }
                                while (jsonReader.o()) {
                                    jsonReader.P();
                                }
                                jsonReader.l();
                            }
                        } else {
                            jVar = d.d(jsonReader, iVar);
                        }
                    }
                    jsonReader.m();
                    break;
                case 13:
                    jsonReader.d();
                    ArrayList arrayList4 = new ArrayList();
                    while (jsonReader.o()) {
                        jsonReader.k();
                        while (jsonReader.o()) {
                            int x11 = jsonReader.x(f2907c);
                            if (x11 != 0) {
                                if (x11 != 1) {
                                    jsonReader.F();
                                    jsonReader.P();
                                } else {
                                    arrayList4.add(jsonReader.t());
                                }
                            } else {
                                int r12 = jsonReader.r();
                                if (r12 == 29) {
                                    aVar = e.b(jsonReader, iVar);
                                } else if (r12 == 25) {
                                    jVar2 = new k().b(jsonReader, iVar);
                                }
                            }
                        }
                        jsonReader.m();
                    }
                    jsonReader.l();
                    iVar.a("Lottie doesn't support layer effects. If you are using them for  fills, strokes, trim paths etc. then try adding them directly as contents  in your shape. Found: " + arrayList4);
                    break;
                case 14:
                    f16 = (float) jsonReader.q();
                    break;
                case 15:
                    f12 = (float) jsonReader.q();
                    break;
                case 16:
                    f13 = (float) (jsonReader.q() * d1.p.e());
                    break;
                case 17:
                    f14 = (float) (jsonReader.q() * d1.p.e());
                    break;
                case 18:
                    f11 = (float) jsonReader.q();
                    break;
                case 19:
                    f15 = (float) jsonReader.q();
                    break;
                case 20:
                    bVar = d.f(jsonReader, iVar, false);
                    break;
                case 21:
                    str3 = jsonReader.t();
                    break;
                case 22:
                    z12 = jsonReader.p();
                    break;
                case 23:
                    if (jsonReader.r() == 1) {
                        z11 = true;
                        break;
                    } else {
                        z11 = false;
                        break;
                    }
                case 24:
                    int r13 = jsonReader.r();
                    if (r13 >= LBlendMode.values().length) {
                        iVar.a("Unsupported Blend Mode: " + r13);
                        lBlendMode2 = LBlendMode.NORMAL;
                        break;
                    } else {
                        lBlendMode2 = LBlendMode.values()[r13];
                        break;
                    }
                default:
                    jsonReader.F();
                    jsonReader.P();
                    break;
            }
        }
        jsonReader.m();
        ArrayList arrayList5 = new ArrayList();
        if (f11 > 0.0f) {
            arrayList = arrayList2;
            z10 = z11;
            arrayList5.add(new e1.a(iVar, valueOf, valueOf, null, 0.0f, Float.valueOf(f11)));
            f10 = 0.0f;
        } else {
            arrayList = arrayList2;
            z10 = z11;
            f10 = 0.0f;
        }
        if (f15 <= f10) {
            f15 = iVar.f();
        }
        arrayList5.add(new e1.a(iVar, valueOf2, valueOf2, null, f11, Float.valueOf(f15)));
        arrayList5.add(new e1.a(iVar, valueOf, valueOf, null, f15, Float.valueOf(Float.MAX_VALUE)));
        if (str2.endsWith(".ai") || "ai".equals(str3)) {
            iVar.a("Convert your Illustrator layers to shape layers.");
        }
        if (z10) {
            if (nVar == null) {
                nVar = new y0.n();
            }
            nVar.p(z10);
        }
        return new Layer(arrayList3, iVar, str2, j10, layerType, j11, str, arrayList, nVar, i10, i11, i12, f16, f12, f13, f14, jVar, kVar, arrayList5, matteType2, bVar, z12, aVar, jVar2, lBlendMode2);
    }
}
