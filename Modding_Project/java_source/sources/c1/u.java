package c1;

import com.airbnb.lottie.parser.moshi.JsonReader;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
/* compiled from: KeyframesParser.java */
/* loaded from: classes2.dex */
class u {

    /* renamed from: a  reason: collision with root package name */
    static JsonReader.a f2904a = JsonReader.a.a(CampaignEx.JSON_KEY_AD_K);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> List<e1.a<T>> a(JsonReader jsonReader, com.airbnb.lottie.i iVar, float f10, n0<T> n0Var, boolean z10) throws IOException {
        ArrayList arrayList = new ArrayList();
        if (jsonReader.v() == JsonReader.Token.STRING) {
            iVar.a("Lottie doesn't support expressions.");
            return arrayList;
        }
        jsonReader.k();
        while (jsonReader.o()) {
            if (jsonReader.x(f2904a) != 0) {
                jsonReader.P();
            } else if (jsonReader.v() == JsonReader.Token.BEGIN_ARRAY) {
                jsonReader.d();
                if (jsonReader.v() == JsonReader.Token.NUMBER) {
                    arrayList.add(t.c(jsonReader, iVar, f10, n0Var, false, z10));
                } else {
                    while (jsonReader.o()) {
                        arrayList.add(t.c(jsonReader, iVar, f10, n0Var, true, z10));
                    }
                }
                jsonReader.l();
            } else {
                arrayList.add(t.c(jsonReader, iVar, f10, n0Var, false, z10));
            }
        }
        jsonReader.m();
        b(arrayList);
        return arrayList;
    }

    public static <T> void b(List<? extends e1.a<T>> list) {
        int i10;
        T t10;
        int size = list.size();
        int i11 = 0;
        while (true) {
            i10 = size - 1;
            if (i11 >= i10) {
                break;
            }
            e1.a<T> aVar = list.get(i11);
            i11++;
            e1.a<T> aVar2 = list.get(i11);
            aVar.f50730h = Float.valueOf(aVar2.f50729g);
            if (aVar.f50725c == null && (t10 = aVar2.f50724b) != null) {
                aVar.f50725c = t10;
                if (aVar instanceof u0.i) {
                    ((u0.i) aVar).j();
                }
            }
        }
        e1.a<T> aVar3 = list.get(i10);
        if ((aVar3.f50724b == null || aVar3.f50725c == null) && list.size() > 1) {
            list.remove(aVar3);
        }
    }
}
