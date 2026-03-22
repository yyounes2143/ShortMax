package c1;

import com.airbnb.lottie.model.content.MergePaths;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.IOException;
/* compiled from: MergePathsParser.java */
/* loaded from: classes2.dex */
class y {

    /* renamed from: a  reason: collision with root package name */
    private static final JsonReader.a f2913a = JsonReader.a.a("nm", "mm", "hd");

    /* JADX INFO: Access modifiers changed from: package-private */
    public static MergePaths a(JsonReader jsonReader) throws IOException {
        String str = null;
        boolean z10 = false;
        MergePaths.MergePathsMode mergePathsMode = null;
        while (jsonReader.o()) {
            int x10 = jsonReader.x(f2913a);
            if (x10 != 0) {
                if (x10 != 1) {
                    if (x10 != 2) {
                        jsonReader.F();
                        jsonReader.P();
                    } else {
                        z10 = jsonReader.p();
                    }
                } else {
                    mergePathsMode = MergePaths.MergePathsMode.forId(jsonReader.r());
                }
            } else {
                str = jsonReader.t();
            }
        }
        return new MergePaths(str, mergePathsMode, z10);
    }
}
