package com.bytedance.adsdk.ZYk.Pfn;

import android.util.JsonReader;
import com.bytedance.adsdk.ZYk.tB.ZYk.Ry;
import com.ss.ttvideoengine.superresolution.SRStrategy;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class cdg {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static com.bytedance.adsdk.ZYk.tB.ZYk.Ry oJ(JsonReader jsonReader, com.bytedance.adsdk.ZYk.cFZ cfz) throws IOException {
        com.bytedance.adsdk.ZYk.tB.oJ.ex exVar;
        char c10;
        String str;
        char c11;
        ArrayList arrayList = new ArrayList();
        float f10 = 0.0f;
        String str2 = null;
        com.bytedance.adsdk.ZYk.tB.oJ.ZYk zYk = null;
        com.bytedance.adsdk.ZYk.tB.oJ.oJ oJVar = null;
        com.bytedance.adsdk.ZYk.tB.oJ.ZYk zYk2 = null;
        Ry.oJ oJVar2 = null;
        Ry.ZYk zYk3 = null;
        boolean z10 = false;
        com.bytedance.adsdk.ZYk.tB.oJ.ex exVar2 = null;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName.hashCode();
            switch (nextName.hashCode()) {
                case 99:
                    if (nextName.equals("c")) {
                        c10 = 0;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 100:
                    if (nextName.equals("d")) {
                        c10 = 1;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 111:
                    if (nextName.equals("o")) {
                        c10 = 2;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 119:
                    if (nextName.equals(SRStrategy.MEDIAINFO_KEY_WIDTH)) {
                        c10 = 3;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 3324:
                    if (nextName.equals("hd")) {
                        c10 = 4;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 3447:
                    if (nextName.equals("lc")) {
                        c10 = 5;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 3454:
                    if (nextName.equals("lj")) {
                        c10 = 6;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 3487:
                    if (nextName.equals("ml")) {
                        c10 = 7;
                        break;
                    }
                    c10 = 65535;
                    break;
                case 3519:
                    if (nextName.equals("nm")) {
                        c10 = '\b';
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
                    oJVar = ex.cFZ(jsonReader, cfz);
                    continue;
                case 1:
                    str = str2;
                    jsonReader.beginArray();
                    while (jsonReader.hasNext()) {
                        jsonReader.beginObject();
                        com.bytedance.adsdk.ZYk.tB.oJ.ZYk zYk4 = null;
                        String str3 = null;
                        while (jsonReader.hasNext()) {
                            String nextName2 = jsonReader.nextName();
                            nextName2.hashCode();
                            if (!nextName2.equals("n")) {
                                if (!nextName2.equals("v")) {
                                    jsonReader.skipValue();
                                } else {
                                    zYk4 = ex.oJ(jsonReader, cfz);
                                }
                            } else {
                                str3 = jsonReader.nextString();
                            }
                        }
                        jsonReader.endObject();
                        str3.hashCode();
                        switch (str3.hashCode()) {
                            case 100:
                                if (str3.equals("d")) {
                                    c11 = 0;
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 103:
                                if (str3.equals("g")) {
                                    c11 = 1;
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 111:
                                if (str3.equals("o")) {
                                    c11 = 2;
                                    break;
                                }
                                c11 = 65535;
                                break;
                            default:
                                c11 = 65535;
                                break;
                        }
                        switch (c11) {
                            case 0:
                            case 1:
                                cfz.oJ(true);
                                arrayList.add(zYk4);
                                break;
                            case 2:
                                zYk = zYk4;
                                break;
                        }
                    }
                    jsonReader.endArray();
                    if (arrayList.size() == 1) {
                        arrayList.add(arrayList.get(0));
                        break;
                    }
                    break;
                case 2:
                    exVar2 = ex.ZYk(jsonReader, cfz);
                    continue;
                case 3:
                    zYk2 = ex.oJ(jsonReader, cfz);
                    continue;
                case 4:
                    z10 = jsonReader.nextBoolean();
                    continue;
                case 5:
                    str = str2;
                    oJVar2 = Ry.oJ.values()[jsonReader.nextInt() - 1];
                    break;
                case 6:
                    str = str2;
                    zYk3 = Ry.ZYk.values()[jsonReader.nextInt() - 1];
                    break;
                case 7:
                    str = str2;
                    f10 = (float) jsonReader.nextDouble();
                    break;
                case '\b':
                    str2 = jsonReader.nextString();
                    continue;
                default:
                    jsonReader.skipValue();
                    str = str2;
                    break;
            }
            str2 = str;
        }
        String str4 = str2;
        if (exVar2 == null) {
            exVar = new com.bytedance.adsdk.ZYk.tB.oJ.ex(Collections.singletonList(new com.bytedance.adsdk.ZYk.cFZ.oJ(100)));
        } else {
            exVar = exVar2;
        }
        return new com.bytedance.adsdk.ZYk.tB.ZYk.Ry(str4, zYk, arrayList, oJVar, exVar, zYk2, oJVar2, zYk3, f10, z10);
    }
}
