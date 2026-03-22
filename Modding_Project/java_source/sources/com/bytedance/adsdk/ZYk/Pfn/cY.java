package com.bytedance.adsdk.ZYk.Pfn;

import android.graphics.Rect;
import android.util.JsonReader;
import android.util.LongSparseArray;
import android.util.SparseArray;
import com.bytedance.adsdk.ZYk.cFZ;
import com.bytedance.adsdk.ZYk.kkU;
import com.bytedance.adsdk.ZYk.tB.tB.Pfn;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.ss.ttvideoengine.net.DNSParser;
import com.ss.ttvideoengine.superresolution.SRStrategy;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class cY {
    /* JADX WARN: Removed duplicated region for block: B:34:0x0058 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0042 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void ZYk(android.util.JsonReader r5, com.bytedance.adsdk.ZYk.cFZ.oJ r6) {
        /*
            r5.beginObject()     // Catch: java.io.IOException -> L62
        L3:
            boolean r0 = r5.hasNext()     // Catch: java.io.IOException -> L62
            if (r0 == 0) goto L5f
            java.lang.String r0 = r5.nextName()     // Catch: java.io.IOException -> L62
            int r1 = r0.hashCode()     // Catch: java.io.IOException -> L62
            r2 = 3239(0xca7, float:4.539E-42)
            r3 = 1
            r4 = 2
            if (r1 == r2) goto L35
            r2 = 3276(0xccc, float:4.59E-42)
            if (r1 == r2) goto L2b
            r2 = 107027(0x1a213, float:1.49977E-40)
            if (r1 == r2) goto L21
            goto L3f
        L21:
            java.lang.String r1 = "lel"
            boolean r0 = r0.equals(r1)     // Catch: java.io.IOException -> L62
            if (r0 == 0) goto L3f
            r0 = r4
            goto L40
        L2b:
            java.lang.String r1 = "fr"
            boolean r0 = r0.equals(r1)     // Catch: java.io.IOException -> L62
            if (r0 == 0) goto L3f
            r0 = 0
            goto L40
        L35:
            java.lang.String r1 = "el"
            boolean r0 = r0.equals(r1)     // Catch: java.io.IOException -> L62
            if (r0 == 0) goto L3f
            r0 = r3
            goto L40
        L3f:
            r0 = -1
        L40:
            if (r0 == 0) goto L58
            if (r0 == r3) goto L51
            if (r0 == r4) goto L4a
            r5.skipValue()     // Catch: java.io.IOException -> L62
            goto L3
        L4a:
            org.json.JSONArray r0 = tB(r5)     // Catch: java.io.IOException -> L62
            r6.cFZ = r0     // Catch: java.io.IOException -> L62
            goto L3
        L51:
            java.lang.String r0 = r5.nextString()     // Catch: java.io.IOException -> L62
            r6.f11506ba = r0     // Catch: java.io.IOException -> L62
            goto L3
        L58:
            int r0 = r5.nextInt()     // Catch: java.io.IOException -> L62
            r6.Pfn = r0     // Catch: java.io.IOException -> L62
            goto L3
        L5f:
            r5.endObject()     // Catch: java.io.IOException -> L62
        L62:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.adsdk.ZYk.Pfn.cY.ZYk(android.util.JsonReader, com.bytedance.adsdk.ZYk.cFZ$oJ):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:62:0x008d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0095 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x009d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00a5 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00ad A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00b5 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00bd A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0089 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.util.List<com.bytedance.adsdk.ZYk.kkU.oJ> ex(android.util.JsonReader r5) {
        /*
            java.util.ArrayList r0 = new java.util.ArrayList     // Catch: java.lang.Exception -> Lce
            r0.<init>()     // Catch: java.lang.Exception -> Lce
        L5:
            boolean r1 = r5.hasNext()     // Catch: java.lang.Exception -> Lce
            if (r1 == 0) goto Lcd
            com.bytedance.adsdk.ZYk.kkU$oJ r1 = new com.bytedance.adsdk.ZYk.kkU$oJ     // Catch: java.lang.Exception -> Lce
            r1.<init>()     // Catch: java.lang.Exception -> Lce
            r5.beginObject()     // Catch: java.lang.Exception -> Lce
        L13:
            boolean r2 = r5.hasNext()     // Catch: java.lang.Exception -> Lce
            if (r2 == 0) goto Lc5
            java.lang.String r2 = r5.nextName()     // Catch: java.lang.Exception -> Lce
            int r3 = r2.hashCode()     // Catch: java.lang.Exception -> Lce
            r4 = 99
            if (r3 == r4) goto L7b
            r4 = 102(0x66, float:1.43E-43)
            if (r3 == r4) goto L71
            r4 = 108(0x6c, float:1.51E-43)
            if (r3 == r4) goto L67
            r4 = 115(0x73, float:1.61E-43)
            if (r3 == r4) goto L5d
            r4 = 3153(0xc51, float:4.418E-42)
            if (r3 == r4) goto L53
            r4 = 3449(0xd79, float:4.833E-42)
            if (r3 == r4) goto L49
            r4 = 96670(0x1799e, float:1.35464E-40)
            if (r3 == r4) goto L3f
            goto L85
        L3f:
            java.lang.String r3 = "ali"
            boolean r2 = r2.equals(r3)     // Catch: java.lang.Exception -> Lce
            if (r2 == 0) goto L85
            r2 = 6
            goto L86
        L49:
            java.lang.String r3 = "le"
            boolean r2 = r2.equals(r3)     // Catch: java.lang.Exception -> Lce
            if (r2 == 0) goto L85
            r2 = 1
            goto L86
        L53:
            java.lang.String r3 = "bs"
            boolean r2 = r2.equals(r3)     // Catch: java.lang.Exception -> Lce
            if (r2 == 0) goto L85
            r2 = 5
            goto L86
        L5d:
            java.lang.String r3 = "s"
            boolean r2 = r2.equals(r3)     // Catch: java.lang.Exception -> Lce
            if (r2 == 0) goto L85
            r2 = 2
            goto L86
        L67:
            java.lang.String r3 = "l"
            boolean r2 = r2.equals(r3)     // Catch: java.lang.Exception -> Lce
            if (r2 == 0) goto L85
            r2 = 0
            goto L86
        L71:
            java.lang.String r3 = "f"
            boolean r2 = r2.equals(r3)     // Catch: java.lang.Exception -> Lce
            if (r2 == 0) goto L85
            r2 = 4
            goto L86
        L7b:
            java.lang.String r3 = "c"
            boolean r2 = r2.equals(r3)     // Catch: java.lang.Exception -> Lce
            if (r2 == 0) goto L85
            r2 = 3
            goto L86
        L85:
            r2 = -1
        L86:
            switch(r2) {
                case 0: goto Lbd;
                case 1: goto Lb5;
                case 2: goto Lad;
                case 3: goto La5;
                case 4: goto L9d;
                case 5: goto L95;
                case 6: goto L8d;
                default: goto L89;
            }     // Catch: java.lang.Exception -> Lce
        L89:
            r5.skipValue()     // Catch: java.lang.Exception -> Lce
            goto L13
        L8d:
            java.lang.String r2 = r5.nextString()     // Catch: java.lang.Exception -> Lce
            r1.cFZ = r2     // Catch: java.lang.Exception -> Lce
            goto L13
        L95:
            int r2 = r5.nextInt()     // Catch: java.lang.Exception -> Lce
            r1.f11520ba = r2     // Catch: java.lang.Exception -> Lce
            goto L13
        L9d:
            java.lang.String r2 = r5.nextString()     // Catch: java.lang.Exception -> Lce
            r1.ex = r2     // Catch: java.lang.Exception -> Lce
            goto L13
        La5:
            java.lang.String r2 = r5.nextString()     // Catch: java.lang.Exception -> Lce
            r1.tB = r2     // Catch: java.lang.Exception -> Lce
            goto L13
        Lad:
            int r2 = r5.nextInt()     // Catch: java.lang.Exception -> Lce
            r1.Pfn = r2     // Catch: java.lang.Exception -> Lce
            goto L13
        Lb5:
            int r2 = r5.nextInt()     // Catch: java.lang.Exception -> Lce
            r1.ZYk = r2     // Catch: java.lang.Exception -> Lce
            goto L13
        Lbd:
            int r2 = r5.nextInt()     // Catch: java.lang.Exception -> Lce
            r1.oJ = r2     // Catch: java.lang.Exception -> Lce
            goto L13
        Lc5:
            r5.endObject()     // Catch: java.lang.Exception -> Lce
            r0.add(r1)     // Catch: java.lang.Exception -> Lce
            goto L5
        Lcd:
            return r0
        Lce:
            r5 = 0
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.adsdk.ZYk.Pfn.cY.ex(android.util.JsonReader):java.util.List");
    }

    public static com.bytedance.adsdk.ZYk.cFZ oJ(JsonReader jsonReader) throws IOException {
        float oJ = com.bytedance.adsdk.ZYk.ba.ba.oJ();
        LongSparseArray<com.bytedance.adsdk.ZYk.tB.tB.Pfn> longSparseArray = new LongSparseArray<>();
        ArrayList arrayList = new ArrayList();
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        HashMap hashMap3 = new HashMap();
        ArrayList arrayList2 = new ArrayList();
        SparseArray<com.bytedance.adsdk.ZYk.tB.ex> sparseArray = new SparseArray<>();
        cFZ.tB tBVar = new cFZ.tB();
        cFZ.oJ oJVar = new cFZ.oJ();
        cFZ.ZYk zYk = new cFZ.ZYk();
        com.bytedance.adsdk.ZYk.cFZ cfz = new com.bytedance.adsdk.ZYk.cFZ();
        jsonReader.beginObject();
        int i10 = 0;
        int i11 = 0;
        String str = null;
        float f10 = 0.0f;
        float f11 = 0.0f;
        float f12 = 0.0f;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            char c10 = 65535;
            switch (nextName.hashCode()) {
                case -1408207997:
                    if (nextName.equals("assets")) {
                        c10 = 0;
                        break;
                    }
                    break;
                case -1109732030:
                    if (nextName.equals("layers")) {
                        c10 = 1;
                        break;
                    }
                    break;
                case -865448777:
                    if (nextName.equals("globalEvent")) {
                        c10 = 2;
                        break;
                    }
                    break;
                case 104:
                    if (nextName.equals("h")) {
                        c10 = 3;
                        break;
                    }
                    break;
                case 118:
                    if (nextName.equals("v")) {
                        c10 = 4;
                        break;
                    }
                    break;
                case 119:
                    if (nextName.equals(SRStrategy.MEDIAINFO_KEY_WIDTH)) {
                        c10 = 5;
                        break;
                    }
                    break;
                case 3208:
                    if (nextName.equals("dl")) {
                        c10 = 6;
                        break;
                    }
                    break;
                case 3276:
                    if (nextName.equals("fr")) {
                        c10 = 7;
                        break;
                    }
                    break;
                case 3292:
                    if (nextName.equals("gc")) {
                        c10 = '\b';
                        break;
                    }
                    break;
                case 3367:
                    if (nextName.equals(DNSParser.DNS_RESULT_IP)) {
                        c10 = '\t';
                        break;
                    }
                    break;
                case 3553:
                    if (nextName.equals("op")) {
                        c10 = '\n';
                        break;
                    }
                    break;
                case 94623709:
                    if (nextName.equals("chars")) {
                        c10 = 11;
                        break;
                    }
                    break;
                case 97615364:
                    if (nextName.equals("fonts")) {
                        c10 = '\f';
                        break;
                    }
                    break;
                case 110364485:
                    if (nextName.equals("timer")) {
                        c10 = '\r';
                        break;
                    }
                    break;
                case 839250809:
                    if (nextName.equals("markers")) {
                        c10 = 14;
                        break;
                    }
                    break;
            }
            switch (c10) {
                case 0:
                    oJ(jsonReader, cfz, hashMap, hashMap2);
                    continue;
                case 1:
                    oJ(jsonReader, cfz, arrayList, longSparseArray);
                    continue;
                case 2:
                    oJ(jsonReader, zYk);
                    continue;
                case 3:
                    i11 = jsonReader.nextInt();
                    continue;
                case 4:
                    String[] split = jsonReader.nextString().split("\\.");
                    if (com.bytedance.adsdk.ZYk.ba.ba.oJ(Integer.parseInt(split[0]), Integer.parseInt(split[1]), Integer.parseInt(split[2]), 4, 4, 0)) {
                        continue;
                    } else {
                        cfz.oJ("Lottie only supports bodymovin >= 4.4.0");
                    }
                case 5:
                    i10 = jsonReader.nextInt();
                    continue;
                case 6:
                    str = jsonReader.nextString();
                    continue;
                case 7:
                    f12 = (float) jsonReader.nextDouble();
                    continue;
                case '\b':
                    oJ(jsonReader, oJVar);
                    break;
                case '\t':
                    f11 = (float) jsonReader.nextDouble();
                    continue;
                case '\n':
                    f10 = ((float) jsonReader.nextDouble()) - 0.01f;
                    continue;
                case 11:
                    oJ(jsonReader, cfz, sparseArray);
                    break;
                case '\f':
                    oJ(jsonReader, hashMap3);
                    break;
                case '\r':
                    oJ(jsonReader, tBVar);
                    break;
                case 14:
                    oJ(jsonReader, arrayList2);
                    break;
                default:
                    jsonReader.skipValue();
                    break;
            }
        }
        jsonReader.endObject();
        cfz.oJ(new Rect(0, 0, (int) (i10 * oJ), (int) (i11 * oJ)), f11, f10, f12, arrayList, longSparseArray, hashMap, hashMap2, sparseArray, hashMap3, arrayList2, tBVar, str, oJVar, zYk);
        return cfz;
    }

    private static JSONArray tB(JsonReader jsonReader) {
        char c10;
        JSONArray jSONArray = new JSONArray();
        try {
            jsonReader.beginArray();
            while (jsonReader.hasNext()) {
                JSONObject jSONObject = new JSONObject();
                jSONArray.put(jSONObject);
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    String nextName = jsonReader.nextName();
                    int hashCode = nextName.hashCode();
                    if (hashCode != 3324) {
                        if (hashCode == 116753 && nextName.equals("vid")) {
                            c10 = 0;
                        }
                        c10 = 65535;
                    } else {
                        if (nextName.equals("hd")) {
                            c10 = 1;
                        }
                        c10 = 65535;
                    }
                    if (c10 != 0) {
                        if (c10 != 1) {
                            jsonReader.skipValue();
                        } else {
                            try {
                                jSONObject.put("hd", jsonReader.nextInt());
                            } catch (JSONException unused) {
                            }
                        }
                    } else {
                        jSONObject.put("vid", jsonReader.nextString());
                    }
                }
                jsonReader.endObject();
            }
            jsonReader.endArray();
        } catch (Exception unused2) {
        }
        return jSONArray;
    }

    private static Map<String, Object> ZYk(JsonReader jsonReader) throws IOException {
        HashMap hashMap = new HashMap();
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            if (nextName.equals("lel")) {
                hashMap.put("lel", tB(jsonReader));
            } else if (!nextName.equals("lottie_back")) {
                jsonReader.skipValue();
            } else {
                JSONObject jSONObject = new JSONObject();
                hashMap.put("lottie_back", jSONObject);
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    String nextName2 = jsonReader.nextName();
                    nextName2.hashCode();
                    if (nextName2.equals("hd")) {
                        try {
                            jSONObject.putOpt("hd", Integer.valueOf(jsonReader.nextInt()));
                            jSONObject.putOpt("vid", "lottie_back");
                        } catch (JSONException unused) {
                        }
                    } else {
                        jsonReader.skipValue();
                    }
                }
                jsonReader.endObject();
            }
        }
        jsonReader.endObject();
        Object remove = hashMap.remove("lottie_back");
        if (remove instanceof JSONObject) {
            Object obj = hashMap.get("lel");
            if (obj instanceof JSONArray) {
                ((JSONArray) obj).put(remove);
            } else {
                JSONArray jSONArray = new JSONArray();
                jSONArray.put(remove);
                hashMap.put("lel", jSONArray);
            }
        }
        return hashMap;
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x005b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0045 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void oJ(android.util.JsonReader r7, com.bytedance.adsdk.ZYk.cFZ.ZYk r8) {
        /*
            r7.beginObject()     // Catch: java.lang.Exception -> L92
        L3:
            boolean r0 = r7.hasNext()     // Catch: java.lang.Exception -> L92
            if (r0 == 0) goto L8f
            java.lang.String r0 = r7.nextName()     // Catch: java.lang.Exception -> L92
            int r1 = r0.hashCode()     // Catch: java.lang.Exception -> L92
            r2 = 3239(0xca7, float:4.539E-42)
            r3 = 1
            r4 = 2
            r5 = 0
            r6 = -1
            if (r1 == r2) goto L38
            r2 = 107027(0x1a213, float:1.49977E-40)
            if (r1 == r2) goto L2e
            r2 = 3237004(0x31648c, float:4.536009E-39)
            if (r1 == r2) goto L24
            goto L42
        L24:
            java.lang.String r1 = "inel"
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Exception -> L92
            if (r0 == 0) goto L42
            r0 = r5
            goto L43
        L2e:
            java.lang.String r1 = "lel"
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Exception -> L92
            if (r0 == 0) goto L42
            r0 = r4
            goto L43
        L38:
            java.lang.String r1 = "el"
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Exception -> L92
            if (r0 == 0) goto L42
            r0 = r3
            goto L43
        L42:
            r0 = r6
        L43:
            if (r0 == 0) goto L5b
            if (r0 == r3) goto L54
            if (r0 == r4) goto L4d
            r7.skipValue()     // Catch: java.lang.Exception -> L92
            goto L3
        L4d:
            org.json.JSONArray r0 = tB(r7)     // Catch: java.lang.Exception -> L92
            r8.tB = r0     // Catch: java.lang.Exception -> L92
            goto L3
        L54:
            java.lang.String r0 = r7.nextString()     // Catch: java.lang.Exception -> L92
            r8.oJ = r0     // Catch: java.lang.Exception -> L92
            goto L3
        L5b:
            int[] r0 = new int[]{r6, r6}     // Catch: java.lang.Exception -> L92
            int[][] r0 = new int[][]{r0}     // Catch: java.lang.Exception -> L92
            r8.ZYk = r0     // Catch: java.lang.Exception -> L92
            r7.beginArray()     // Catch: java.lang.Exception -> L92
            boolean r0 = r7.hasNext()     // Catch: java.lang.Exception -> L92
            if (r0 == 0) goto L8a
            r7.beginArray()     // Catch: java.lang.Exception -> L92
            r0 = r5
        L72:
            if (r0 >= r4) goto L87
            boolean r1 = r7.hasNext()     // Catch: java.lang.Exception -> L92
            if (r1 == 0) goto L84
            int[][] r1 = r8.ZYk     // Catch: java.lang.Exception -> L92
            r1 = r1[r5]     // Catch: java.lang.Exception -> L92
            int r2 = r7.nextInt()     // Catch: java.lang.Exception -> L92
            r1[r0] = r2     // Catch: java.lang.Exception -> L92
        L84:
            int r0 = r0 + 1
            goto L72
        L87:
            r7.endArray()     // Catch: java.lang.Exception -> L92
        L8a:
            r7.endArray()     // Catch: java.lang.Exception -> L92
            goto L3
        L8f:
            r7.endObject()     // Catch: java.lang.Exception -> L92
        L92:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.adsdk.ZYk.Pfn.cY.oJ(android.util.JsonReader, com.bytedance.adsdk.ZYk.cFZ$ZYk):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x0086 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0060 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void oJ(android.util.JsonReader r7, com.bytedance.adsdk.ZYk.cFZ.oJ r8) {
        /*
            r7.beginObject()     // Catch: java.lang.Exception -> L91
        L3:
            boolean r0 = r7.hasNext()     // Catch: java.lang.Exception -> L91
            if (r0 == 0) goto L8e
            java.lang.String r0 = r7.nextName()     // Catch: java.lang.Exception -> L91
            int r1 = r0.hashCode()     // Catch: java.lang.Exception -> L91
            r2 = 3139(0xc43, float:4.399E-42)
            r3 = 1
            r4 = 2
            r5 = 3
            r6 = 4
            if (r1 == r2) goto L53
            r2 = 3232(0xca0, float:4.529E-42)
            if (r1 == r2) goto L49
            r2 = 3571(0xdf3, float:5.004E-42)
            if (r1 == r2) goto L3f
            r2 = 3666(0xe52, float:5.137E-42)
            if (r1 == r2) goto L35
            r2 = 98713(0x18199, float:1.38326E-40)
            if (r1 == r2) goto L2b
            goto L5d
        L2b:
            java.lang.String r1 = "cpf"
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Exception -> L91
            if (r0 == 0) goto L5d
            r0 = r6
            goto L5e
        L35:
            java.lang.String r1 = "se"
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Exception -> L91
            if (r0 == 0) goto L5d
            r0 = 0
            goto L5e
        L3f:
            java.lang.String r1 = "pc"
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Exception -> L91
            if (r0 == 0) goto L5d
            r0 = r5
            goto L5e
        L49:
            java.lang.String r1 = "ee"
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Exception -> L91
            if (r0 == 0) goto L5d
            r0 = r4
            goto L5e
        L53:
            java.lang.String r1 = "be"
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Exception -> L91
            if (r0 == 0) goto L5d
            r0 = r3
            goto L5e
        L5d:
            r0 = -1
        L5e:
            if (r0 == 0) goto L86
            if (r0 == r3) goto L7e
            if (r0 == r4) goto L77
            if (r0 == r5) goto L70
            if (r0 == r6) goto L6c
            r7.skipValue()     // Catch: java.lang.Exception -> L91
            goto L3
        L6c:
            ZYk(r7, r8)     // Catch: java.lang.Exception -> L91
            goto L3
        L70:
            int r0 = r7.nextInt()     // Catch: java.lang.Exception -> L91
            r8.ex = r0     // Catch: java.lang.Exception -> L91
            goto L3
        L77:
            java.util.Map r0 = ZYk(r7)     // Catch: java.lang.Exception -> L91
            r8.tB = r0     // Catch: java.lang.Exception -> L91
            goto L3
        L7e:
            java.util.Map r0 = ZYk(r7)     // Catch: java.lang.Exception -> L91
            r8.ZYk = r0     // Catch: java.lang.Exception -> L91
            goto L3
        L86:
            int r0 = r7.nextInt()     // Catch: java.lang.Exception -> L91
            r8.oJ = r0     // Catch: java.lang.Exception -> L91
            goto L3
        L8e:
            r7.endObject()     // Catch: java.lang.Exception -> L91
        L91:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.adsdk.ZYk.Pfn.cY.oJ(android.util.JsonReader, com.bytedance.adsdk.ZYk.cFZ$oJ):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:63:0x0081 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0089 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0091 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00b2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00ba A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00c2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00ca A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x007d A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static void oJ(android.util.JsonReader r6, com.bytedance.adsdk.ZYk.cFZ.tB r7) {
        /*
            r6.beginObject()     // Catch: java.lang.Exception -> Ld5
        L3:
            boolean r0 = r6.hasNext()     // Catch: java.lang.Exception -> Ld5
            if (r0 == 0) goto Ld2
            java.lang.String r0 = r6.nextName()     // Catch: java.lang.Exception -> Ld5
            int r1 = r0.hashCode()     // Catch: java.lang.Exception -> Ld5
            r2 = 3123(0xc33, float:4.376E-42)
            r3 = 0
            r4 = 2
            r5 = -1
            if (r1 == r2) goto L6f
            r2 = 3239(0xca7, float:4.539E-42)
            if (r1 == r2) goto L65
            r2 = 3355(0xd1b, float:4.701E-42)
            if (r1 == r2) goto L5b
            r2 = 3418(0xd5a, float:4.79E-42)
            if (r1 == r2) goto L51
            r2 = 3704(0xe78, float:5.19E-42)
            if (r1 == r2) goto L47
            r2 = 107027(0x1a213, float:1.49977E-40)
            if (r1 == r2) goto L3d
            r2 = 3237004(0x31648c, float:4.536009E-39)
            if (r1 == r2) goto L33
            goto L79
        L33:
            java.lang.String r1 = "inel"
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Exception -> Ld5
            if (r0 == 0) goto L79
            r0 = 4
            goto L7a
        L3d:
            java.lang.String r1 = "lel"
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Exception -> Ld5
            if (r0 == 0) goto L79
            r0 = 6
            goto L7a
        L47:
            java.lang.String r1 = "tl"
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Exception -> Ld5
            if (r0 == 0) goto L79
            r0 = r4
            goto L7a
        L51:
            java.lang.String r1 = "ke"
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Exception -> Ld5
            if (r0 == 0) goto L79
            r0 = r3
            goto L7a
        L5b:
            java.lang.String r1 = "id"
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Exception -> Ld5
            if (r0 == 0) goto L79
            r0 = 1
            goto L7a
        L65:
            java.lang.String r1 = "el"
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Exception -> Ld5
            if (r0 == 0) goto L79
            r0 = 5
            goto L7a
        L6f:
            java.lang.String r1 = "at"
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Exception -> Ld5
            if (r0 == 0) goto L79
            r0 = 3
            goto L7a
        L79:
            r0 = r5
        L7a:
            switch(r0) {
                case 0: goto Lca;
                case 1: goto Lc2;
                case 2: goto Lba;
                case 3: goto Lb2;
                case 4: goto L91;
                case 5: goto L89;
                case 6: goto L81;
                default: goto L7d;
            }     // Catch: java.lang.Exception -> Ld5
        L7d:
            r6.skipValue()     // Catch: java.lang.Exception -> Ld5
            goto L3
        L81:
            org.json.JSONArray r0 = tB(r6)     // Catch: java.lang.Exception -> Ld5
            r7.cFZ = r0     // Catch: java.lang.Exception -> Ld5
            goto L3
        L89:
            java.lang.String r0 = r6.nextString()     // Catch: java.lang.Exception -> Ld5
            r7.f11509ba = r0     // Catch: java.lang.Exception -> Ld5
            goto L3
        L91:
            int[] r0 = new int[]{r5, r5}     // Catch: java.lang.Exception -> Ld5
            r7.Pfn = r0     // Catch: java.lang.Exception -> Ld5
            r6.beginArray()     // Catch: java.lang.Exception -> Ld5
        L9a:
            if (r3 >= r4) goto Lad
            boolean r0 = r6.hasNext()     // Catch: java.lang.Exception -> Ld5
            if (r0 == 0) goto Laa
            int[] r0 = r7.Pfn     // Catch: java.lang.Exception -> Ld5
            int r1 = r6.nextInt()     // Catch: java.lang.Exception -> Ld5
            r0[r3] = r1     // Catch: java.lang.Exception -> Ld5
        Laa:
            int r3 = r3 + 1
            goto L9a
        Lad:
            r6.endArray()     // Catch: java.lang.Exception -> Ld5
            goto L3
        Lb2:
            java.lang.String r0 = r6.nextString()     // Catch: java.lang.Exception -> Ld5
            r7.ex = r0     // Catch: java.lang.Exception -> Ld5
            goto L3
        Lba:
            java.lang.String r0 = r6.nextString()     // Catch: java.lang.Exception -> Ld5
            r7.tB = r0     // Catch: java.lang.Exception -> Ld5
            goto L3
        Lc2:
            java.lang.String r0 = r6.nextString()     // Catch: java.lang.Exception -> Ld5
            r7.ZYk = r0     // Catch: java.lang.Exception -> Ld5
            goto L3
        Lca:
            int r0 = r6.nextInt()     // Catch: java.lang.Exception -> Ld5
            r7.oJ = r0     // Catch: java.lang.Exception -> Ld5
            goto L3
        Ld2:
            r6.endObject()     // Catch: java.lang.Exception -> Ld5
        Ld5:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.adsdk.ZYk.Pfn.cY.oJ(android.util.JsonReader, com.bytedance.adsdk.ZYk.cFZ$tB):void");
    }

    private static void oJ(JsonReader jsonReader, com.bytedance.adsdk.ZYk.cFZ cfz, List<com.bytedance.adsdk.ZYk.tB.tB.Pfn> list, LongSparseArray<com.bytedance.adsdk.ZYk.tB.tB.Pfn> longSparseArray) throws IOException {
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            com.bytedance.adsdk.ZYk.tB.tB.Pfn oJ = Id.oJ(jsonReader, cfz);
            oJ.dLZ();
            Pfn.oJ oJVar = Pfn.oJ.PRE_COMP;
            list.add(oJ);
            longSparseArray.put(oJ.Pfn(), oJ);
        }
        jsonReader.endArray();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private static void oJ(JsonReader jsonReader, com.bytedance.adsdk.ZYk.cFZ cfz, Map<String, List<com.bytedance.adsdk.ZYk.tB.tB.Pfn>> map, Map<String, com.bytedance.adsdk.ZYk.kkU> map2) throws IOException {
        int i10;
        int i11 = 2;
        int i12 = -1;
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            ArrayList arrayList = new ArrayList();
            LongSparseArray longSparseArray = new LongSparseArray();
            jsonReader.beginObject();
            int i13 = 0;
            int i14 = 0;
            String str = null;
            String str2 = null;
            String str3 = null;
            String str4 = null;
            List<kkU.oJ> list = null;
            String str5 = null;
            int[][] iArr = null;
            JSONArray jSONArray = null;
            while (jsonReader.hasNext()) {
                String nextName = jsonReader.nextName();
                nextName.hashCode();
                switch (nextName.hashCode()) {
                    case -1109732030:
                        if (nextName.equals("layers")) {
                            i10 = 0;
                            break;
                        }
                        i10 = i12;
                        break;
                    case 104:
                        if (nextName.equals("h")) {
                            i10 = 1;
                            break;
                        }
                        i10 = i12;
                        break;
                    case 112:
                        if (nextName.equals(TtmlNode.TAG_P)) {
                            i10 = i11;
                            break;
                        }
                        i10 = i12;
                        break;
                    case 117:
                        if (nextName.equals("u")) {
                            i10 = 3;
                            break;
                        }
                        i10 = i12;
                        break;
                    case 119:
                        if (nextName.equals(SRStrategy.MEDIAINFO_KEY_WIDTH)) {
                            i10 = 4;
                            break;
                        }
                        i10 = i12;
                        break;
                    case 3239:
                        if (nextName.equals("el")) {
                            i10 = 5;
                            break;
                        }
                        i10 = i12;
                        break;
                    case 3355:
                        if (nextName.equals("id")) {
                            i10 = 6;
                            break;
                        }
                        i10 = i12;
                        break;
                    case 3695:
                        if (nextName.equals("tc")) {
                            i10 = 7;
                            break;
                        }
                        i10 = i12;
                        break;
                    case 107027:
                        if (nextName.equals("lel")) {
                            i10 = 8;
                            break;
                        }
                        i10 = i12;
                        break;
                    case 112793:
                        if (nextName.equals("rel")) {
                            i10 = 9;
                            break;
                        }
                        i10 = i12;
                        break;
                    case 3237004:
                        if (nextName.equals("inel")) {
                            i10 = 10;
                            break;
                        }
                        i10 = i12;
                        break;
                    default:
                        i10 = i12;
                        break;
                }
                switch (i10) {
                    case 0:
                        jsonReader.beginArray();
                        while (jsonReader.hasNext()) {
                            com.bytedance.adsdk.ZYk.tB.tB.Pfn oJ = Id.oJ(jsonReader, cfz);
                            longSparseArray.put(oJ.Pfn(), oJ);
                            arrayList.add(oJ);
                        }
                        jsonReader.endArray();
                        i11 = 2;
                        i12 = -1;
                        break;
                    case 1:
                        i14 = jsonReader.nextInt();
                        break;
                    case 2:
                        str2 = jsonReader.nextString();
                        break;
                    case 3:
                        str3 = jsonReader.nextString();
                        break;
                    case 4:
                        i13 = jsonReader.nextInt();
                        break;
                    case 5:
                        str5 = jsonReader.nextString();
                        break;
                    case 6:
                        str = jsonReader.nextString();
                        break;
                    case 7:
                        jsonReader.beginArray();
                        list = ex(jsonReader);
                        jsonReader.endArray();
                        break;
                    case 8:
                        jSONArray = tB(jsonReader);
                        break;
                    case 9:
                        str4 = jsonReader.nextString();
                        break;
                    case 10:
                        int[][] iArr2 = {new int[]{i12, i12}};
                        jsonReader.beginArray();
                        if (jsonReader.hasNext()) {
                            jsonReader.beginArray();
                            for (int i15 = 0; i15 < i11; i15++) {
                                if (jsonReader.hasNext()) {
                                    iArr2[0][i15] = jsonReader.nextInt();
                                }
                            }
                            jsonReader.endArray();
                        }
                        jsonReader.endArray();
                        iArr = iArr2;
                        break;
                    default:
                        jsonReader.skipValue();
                        i11 = 2;
                        i12 = -1;
                        break;
                }
            }
            jsonReader.endObject();
            if (str2 != null) {
                com.bytedance.adsdk.ZYk.kkU kku = new com.bytedance.adsdk.ZYk.kkU(i13, i14, str, str2, str3, str4, list, str5, iArr, jSONArray);
                map2.put(kku.so(), kku);
            } else {
                map.put(str, arrayList);
            }
            i11 = 2;
            i12 = -1;
        }
        jsonReader.endArray();
    }

    private static void oJ(JsonReader jsonReader, Map<String, com.bytedance.adsdk.ZYk.tB.tB> map) throws IOException {
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            if (!nextName.equals("list")) {
                jsonReader.skipValue();
            } else {
                jsonReader.beginArray();
                while (jsonReader.hasNext()) {
                    com.bytedance.adsdk.ZYk.tB.tB oJ = WcQ.oJ(jsonReader);
                    map.put(oJ.ZYk(), oJ);
                }
                jsonReader.endArray();
            }
        }
        jsonReader.endObject();
    }

    private static void oJ(JsonReader jsonReader, com.bytedance.adsdk.ZYk.cFZ cfz, SparseArray<com.bytedance.adsdk.ZYk.tB.ex> sparseArray) throws IOException {
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            com.bytedance.adsdk.ZYk.tB.ex oJ = PiB.oJ(jsonReader, cfz);
            sparseArray.put(oJ.hashCode(), oJ);
        }
        jsonReader.endArray();
    }

    private static void oJ(JsonReader jsonReader, List<com.bytedance.adsdk.ZYk.tB.ba> list) throws IOException {
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            jsonReader.beginObject();
            float f10 = 0.0f;
            String str = null;
            float f11 = 0.0f;
            while (jsonReader.hasNext()) {
                String nextName = jsonReader.nextName();
                nextName.hashCode();
                char c10 = 65535;
                switch (nextName.hashCode()) {
                    case 3178:
                        if (nextName.equals("cm")) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case 3214:
                        if (nextName.equals(DownloadCommon.DOWNLOAD_REPORT_DOWNLOAD_RATE)) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case 3705:
                        if (nextName.equals("tm")) {
                            c10 = 2;
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        str = jsonReader.nextString();
                        break;
                    case 1:
                        f11 = (float) jsonReader.nextDouble();
                        break;
                    case 2:
                        f10 = (float) jsonReader.nextDouble();
                        break;
                    default:
                        jsonReader.skipValue();
                        break;
                }
            }
            jsonReader.endObject();
            list.add(new com.bytedance.adsdk.ZYk.tB.ba(str, f10, f11));
        }
        jsonReader.endArray();
    }
}
