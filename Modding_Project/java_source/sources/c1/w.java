package c1;

import android.graphics.Rect;
import androidx.collection.LongSparseArray;
import androidx.collection.SparseArrayCompat;
import com.airbnb.lottie.model.layer.Layer;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.ss.ttvideoengine.net.DNSParser;
import com.ss.ttvideoengine.superresolution.SRStrategy;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* compiled from: LottieCompositionMoshiParser.java */
/* loaded from: classes2.dex */
public class w {

    /* renamed from: a  reason: collision with root package name */
    private static final JsonReader.a f2909a = JsonReader.a.a(SRStrategy.MEDIAINFO_KEY_WIDTH, "h", DNSParser.DNS_RESULT_IP, "op", "fr", "v", "layers", "assets", "fonts", "chars", "markers");

    /* renamed from: b  reason: collision with root package name */
    static JsonReader.a f2910b = JsonReader.a.a("id", "layers", SRStrategy.MEDIAINFO_KEY_WIDTH, "h", TtmlNode.TAG_P, "u");

    /* renamed from: c  reason: collision with root package name */
    private static final JsonReader.a f2911c = JsonReader.a.a("list");

    /* renamed from: d  reason: collision with root package name */
    private static final JsonReader.a f2912d = JsonReader.a.a("cm", "tm", DownloadCommon.DOWNLOAD_REPORT_DOWNLOAD_RATE);

    public static com.airbnb.lottie.i a(JsonReader jsonReader) throws IOException {
        HashMap hashMap;
        ArrayList arrayList;
        JsonReader jsonReader2 = jsonReader;
        float e10 = d1.p.e();
        LongSparseArray<Layer> longSparseArray = new LongSparseArray<>();
        ArrayList arrayList2 = new ArrayList();
        HashMap hashMap2 = new HashMap();
        HashMap hashMap3 = new HashMap();
        HashMap hashMap4 = new HashMap();
        ArrayList arrayList3 = new ArrayList();
        SparseArrayCompat<x0.c> sparseArrayCompat = new SparseArrayCompat<>();
        com.airbnb.lottie.i iVar = new com.airbnb.lottie.i();
        jsonReader.k();
        float f10 = 0.0f;
        float f11 = 0.0f;
        float f12 = 0.0f;
        int i10 = 0;
        int i11 = 0;
        while (jsonReader.o()) {
            switch (jsonReader2.x(f2909a)) {
                case 0:
                    hashMap = hashMap4;
                    arrayList = arrayList3;
                    i11 = (int) jsonReader.q();
                    break;
                case 1:
                    i10 = (int) jsonReader.q();
                    continue;
                    jsonReader2 = jsonReader;
                case 2:
                    f10 = (float) jsonReader.q();
                    continue;
                    jsonReader2 = jsonReader;
                case 3:
                    hashMap = hashMap4;
                    arrayList = arrayList3;
                    f11 = ((float) jsonReader.q()) - 0.01f;
                    break;
                case 4:
                    hashMap = hashMap4;
                    arrayList = arrayList3;
                    f12 = (float) jsonReader.q();
                    break;
                case 5:
                    String[] split = jsonReader.t().split("\\.");
                    if (!d1.p.j(Integer.parseInt(split[0]), Integer.parseInt(split[1]), Integer.parseInt(split[2]), 4, 4, 0)) {
                        iVar.a("Lottie only supports bodymovin >= 4.4.0");
                        continue;
                    }
                    jsonReader2 = jsonReader;
                case 6:
                    e(jsonReader2, iVar, arrayList2, longSparseArray);
                    continue;
                    jsonReader2 = jsonReader;
                case 7:
                    b(jsonReader2, iVar, hashMap2, hashMap3);
                    continue;
                    jsonReader2 = jsonReader;
                case 8:
                    d(jsonReader2, hashMap4);
                    continue;
                    jsonReader2 = jsonReader;
                case 9:
                    c(jsonReader2, iVar, sparseArrayCompat);
                    continue;
                    jsonReader2 = jsonReader;
                case 10:
                    f(jsonReader2, arrayList3);
                    continue;
                    jsonReader2 = jsonReader;
                default:
                    jsonReader.F();
                    jsonReader.P();
                    continue;
                    jsonReader2 = jsonReader;
            }
            hashMap4 = hashMap;
            arrayList3 = arrayList;
            jsonReader2 = jsonReader;
        }
        iVar.s(new Rect(0, 0, (int) (i11 * e10), (int) (i10 * e10)), f10, f11, f12, arrayList2, longSparseArray, hashMap2, hashMap3, d1.p.e(), sparseArrayCompat, hashMap4, arrayList3, i11, i10);
        return iVar;
    }

    private static void b(JsonReader jsonReader, com.airbnb.lottie.i iVar, Map<String, List<Layer>> map, Map<String, com.airbnb.lottie.m0> map2) throws IOException {
        jsonReader.d();
        while (jsonReader.o()) {
            ArrayList arrayList = new ArrayList();
            LongSparseArray longSparseArray = new LongSparseArray();
            jsonReader.k();
            int i10 = 0;
            int i11 = 0;
            String str = null;
            String str2 = null;
            String str3 = null;
            while (jsonReader.o()) {
                int x10 = jsonReader.x(f2910b);
                if (x10 != 0) {
                    if (x10 != 1) {
                        if (x10 != 2) {
                            if (x10 != 3) {
                                if (x10 != 4) {
                                    if (x10 != 5) {
                                        jsonReader.F();
                                        jsonReader.P();
                                    } else {
                                        str3 = jsonReader.t();
                                    }
                                } else {
                                    str2 = jsonReader.t();
                                }
                            } else {
                                i11 = jsonReader.r();
                            }
                        } else {
                            i10 = jsonReader.r();
                        }
                    } else {
                        jsonReader.d();
                        while (jsonReader.o()) {
                            Layer b10 = v.b(jsonReader, iVar);
                            longSparseArray.put(b10.e(), b10);
                            arrayList.add(b10);
                        }
                        jsonReader.l();
                    }
                } else {
                    str = jsonReader.t();
                }
            }
            jsonReader.m();
            if (str2 != null) {
                com.airbnb.lottie.m0 m0Var = new com.airbnb.lottie.m0(i10, i11, str, str2, str3);
                map2.put(m0Var.e(), m0Var);
            } else {
                map.put(str, arrayList);
            }
        }
        jsonReader.l();
    }

    private static void c(JsonReader jsonReader, com.airbnb.lottie.i iVar, SparseArrayCompat<x0.c> sparseArrayCompat) throws IOException {
        jsonReader.d();
        while (jsonReader.o()) {
            x0.c a10 = m.a(jsonReader, iVar);
            sparseArrayCompat.put(a10.hashCode(), a10);
        }
        jsonReader.l();
    }

    private static void d(JsonReader jsonReader, Map<String, x0.b> map) throws IOException {
        jsonReader.k();
        while (jsonReader.o()) {
            if (jsonReader.x(f2911c) != 0) {
                jsonReader.F();
                jsonReader.P();
            } else {
                jsonReader.d();
                while (jsonReader.o()) {
                    x0.b a10 = n.a(jsonReader);
                    map.put(a10.b(), a10);
                }
                jsonReader.l();
            }
        }
        jsonReader.m();
    }

    private static void e(JsonReader jsonReader, com.airbnb.lottie.i iVar, List<Layer> list, LongSparseArray<Layer> longSparseArray) throws IOException {
        jsonReader.d();
        int i10 = 0;
        while (jsonReader.o()) {
            Layer b10 = v.b(jsonReader, iVar);
            if (b10.g() == Layer.LayerType.IMAGE) {
                i10++;
            }
            list.add(b10);
            longSparseArray.put(b10.e(), b10);
            if (i10 > 4) {
                d1.f.c("You have " + i10 + " images. Lottie should primarily be used with shapes. If you are using Adobe Illustrator, convert the Illustrator layers to shape layers.");
            }
        }
        jsonReader.l();
    }

    private static void f(JsonReader jsonReader, List<x0.g> list) throws IOException {
        jsonReader.d();
        while (jsonReader.o()) {
            jsonReader.k();
            float f10 = 0.0f;
            String str = null;
            float f11 = 0.0f;
            while (jsonReader.o()) {
                int x10 = jsonReader.x(f2912d);
                if (x10 != 0) {
                    if (x10 != 1) {
                        if (x10 != 2) {
                            jsonReader.F();
                            jsonReader.P();
                        } else {
                            f11 = (float) jsonReader.q();
                        }
                    } else {
                        f10 = (float) jsonReader.q();
                    }
                } else {
                    str = jsonReader.t();
                }
            }
            jsonReader.m();
            list.add(new x0.g(str, f10, f11));
        }
        jsonReader.l();
    }
}
