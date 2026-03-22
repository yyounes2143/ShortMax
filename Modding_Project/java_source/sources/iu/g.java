package iu;

import java.io.IOException;
import okhttp3.ResponseBody;
/* compiled from: ScalarResponseBodyConverters.java */
/* loaded from: classes8.dex */
final class g implements fu.h<ResponseBody, Integer> {

    /* renamed from: a  reason: collision with root package name */
    static final g f60089a = new g();

    g() {
    }

    @Override // fu.h
    /* renamed from: a */
    public Integer convert(ResponseBody responseBody) throws IOException {
        return Integer.valueOf(responseBody.string());
    }
}
