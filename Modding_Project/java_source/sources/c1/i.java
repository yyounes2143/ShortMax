package c1;

import android.graphics.PointF;
import com.airbnb.lottie.model.DocumentData;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.ss.ttvideoengine.log.IVideoEventLogger;
import com.ss.ttvideoengine.superresolution.SRStrategy;
import java.io.IOException;
/* compiled from: DocumentDataParser.java */
/* loaded from: classes2.dex */
public class i implements n0<DocumentData> {

    /* renamed from: a  reason: collision with root package name */
    public static final i f2867a = new i();

    /* renamed from: b  reason: collision with root package name */
    private static final JsonReader.a f2868b = JsonReader.a.a(IVideoEventLogger.LOG_CALLBACK_TIME, "f", "s", com.mbridge.msdk.foundation.same.report.j.f27256b, "tr", "lh", "ls", "fc", SRStrategy.KEY_SR_STRATEGY_CONFIG, "sw", "of", "ps", "sz");

    private i() {
    }

    @Override // c1.n0
    /* renamed from: b */
    public DocumentData a(JsonReader jsonReader, float f10) throws IOException {
        DocumentData.Justification justification = DocumentData.Justification.CENTER;
        jsonReader.k();
        DocumentData.Justification justification2 = justification;
        String str = null;
        String str2 = null;
        PointF pointF = null;
        PointF pointF2 = null;
        float f11 = 0.0f;
        float f12 = 0.0f;
        float f13 = 0.0f;
        float f14 = 0.0f;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        boolean z10 = true;
        while (jsonReader.o()) {
            switch (jsonReader.x(f2868b)) {
                case 0:
                    str = jsonReader.t();
                    break;
                case 1:
                    str2 = jsonReader.t();
                    break;
                case 2:
                    f11 = (float) jsonReader.q();
                    break;
                case 3:
                    int r10 = jsonReader.r();
                    justification2 = DocumentData.Justification.CENTER;
                    if (r10 <= justification2.ordinal() && r10 >= 0) {
                        justification2 = DocumentData.Justification.values()[r10];
                        break;
                    }
                    break;
                case 4:
                    i10 = jsonReader.r();
                    break;
                case 5:
                    f12 = (float) jsonReader.q();
                    break;
                case 6:
                    f13 = (float) jsonReader.q();
                    break;
                case 7:
                    i11 = s.d(jsonReader);
                    break;
                case 8:
                    i12 = s.d(jsonReader);
                    break;
                case 9:
                    f14 = (float) jsonReader.q();
                    break;
                case 10:
                    z10 = jsonReader.p();
                    break;
                case 11:
                    jsonReader.d();
                    PointF pointF3 = new PointF(((float) jsonReader.q()) * f10, ((float) jsonReader.q()) * f10);
                    jsonReader.l();
                    pointF = pointF3;
                    break;
                case 12:
                    jsonReader.d();
                    PointF pointF4 = new PointF(((float) jsonReader.q()) * f10, ((float) jsonReader.q()) * f10);
                    jsonReader.l();
                    pointF2 = pointF4;
                    break;
                default:
                    jsonReader.F();
                    jsonReader.P();
                    break;
            }
        }
        jsonReader.m();
        return new DocumentData(str, str2, f11, justification2, i10, f12, f13, i11, i12, f14, z10, pointF, pointF2);
    }
}
