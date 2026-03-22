package iu;

import java.io.IOException;
import okhttp3.ResponseBody;
/* compiled from: ScalarResponseBodyConverters.java */
/* loaded from: classes8.dex */
final class e implements fu.h<ResponseBody, Double> {

    /* renamed from: a  reason: collision with root package name */
    static final e f60087a = new e();

    e() {
    }

    @Override // fu.h
    /* renamed from: a */
    public Double convert(ResponseBody responseBody) throws IOException {
        return Double.valueOf(responseBody.string());
    }
}
