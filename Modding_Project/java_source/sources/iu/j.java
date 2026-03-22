package iu;

import java.io.IOException;
import okhttp3.ResponseBody;
/* compiled from: ScalarResponseBodyConverters.java */
/* loaded from: classes8.dex */
final class j implements fu.h<ResponseBody, String> {

    /* renamed from: a  reason: collision with root package name */
    static final j f60092a = new j();

    j() {
    }

    @Override // fu.h
    /* renamed from: a */
    public String convert(ResponseBody responseBody) throws IOException {
        return responseBody.string();
    }
}
