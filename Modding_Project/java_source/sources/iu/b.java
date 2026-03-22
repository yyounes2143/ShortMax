package iu;

import java.io.IOException;
import okhttp3.ResponseBody;
/* compiled from: ScalarResponseBodyConverters.java */
/* loaded from: classes8.dex */
final class b implements fu.h<ResponseBody, Boolean> {

    /* renamed from: a  reason: collision with root package name */
    static final b f60084a = new b();

    b() {
    }

    @Override // fu.h
    /* renamed from: a */
    public Boolean convert(ResponseBody responseBody) throws IOException {
        return Boolean.valueOf(responseBody.string());
    }
}
