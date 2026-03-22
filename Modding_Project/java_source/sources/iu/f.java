package iu;

import java.io.IOException;
import okhttp3.ResponseBody;
/* compiled from: ScalarResponseBodyConverters.java */
/* loaded from: classes8.dex */
final class f implements fu.h<ResponseBody, Float> {

    /* renamed from: a  reason: collision with root package name */
    static final f f60088a = new f();

    f() {
    }

    @Override // fu.h
    /* renamed from: a */
    public Float convert(ResponseBody responseBody) throws IOException {
        return Float.valueOf(responseBody.string());
    }
}
