package c1;

import android.graphics.PointF;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* compiled from: ShapeDataParser.java */
/* loaded from: classes2.dex */
public class h0 implements n0<z0.i> {

    /* renamed from: a  reason: collision with root package name */
    public static final h0 f2865a = new h0();

    /* renamed from: b  reason: collision with root package name */
    private static final JsonReader.a f2866b = JsonReader.a.a("c", "v", "i", "o");

    private h0() {
    }

    @Override // c1.n0
    /* renamed from: b */
    public z0.i a(JsonReader jsonReader, float f10) throws IOException {
        if (jsonReader.v() == JsonReader.Token.BEGIN_ARRAY) {
            jsonReader.d();
        }
        jsonReader.k();
        List<PointF> list = null;
        List<PointF> list2 = null;
        List<PointF> list3 = null;
        boolean z10 = false;
        while (jsonReader.o()) {
            int x10 = jsonReader.x(f2866b);
            if (x10 != 0) {
                if (x10 != 1) {
                    if (x10 != 2) {
                        if (x10 != 3) {
                            jsonReader.F();
                            jsonReader.P();
                        } else {
                            list3 = s.f(jsonReader, f10);
                        }
                    } else {
                        list2 = s.f(jsonReader, f10);
                    }
                } else {
                    list = s.f(jsonReader, f10);
                }
            } else {
                z10 = jsonReader.p();
            }
        }
        jsonReader.m();
        if (jsonReader.v() == JsonReader.Token.END_ARRAY) {
            jsonReader.l();
        }
        if (list != null && list2 != null && list3 != null) {
            if (list.isEmpty()) {
                return new z0.i(new PointF(), false, Collections.emptyList());
            }
            int size = list.size();
            PointF pointF = list.get(0);
            ArrayList arrayList = new ArrayList(size);
            for (int i10 = 1; i10 < size; i10++) {
                PointF pointF2 = list.get(i10);
                int i11 = i10 - 1;
                arrayList.add(new x0.a(d1.k.a(list.get(i11), list3.get(i11)), d1.k.a(pointF2, list2.get(i10)), pointF2));
            }
            if (z10) {
                PointF pointF3 = list.get(0);
                int i12 = size - 1;
                arrayList.add(new x0.a(d1.k.a(list.get(i12), list3.get(i12)), d1.k.a(pointF3, list2.get(0)), pointF3));
            }
            return new z0.i(pointF, z10, arrayList);
        }
        throw new IllegalArgumentException("Shape data was missing information.");
    }
}
