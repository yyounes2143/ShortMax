package iu;

import java.io.IOException;
import okhttp3.ResponseBody;
/* compiled from: ScalarResponseBodyConverters.java */
/* loaded from: classes8.dex */
final class c implements fu.h<ResponseBody, Byte> {

    /* renamed from: a  reason: collision with root package name */
    static final c f60085a = new c();

    c() {
    }

    @Override // fu.h
    /* renamed from: a */
    public Byte convert(ResponseBody responseBody) throws IOException {
        return Byte.valueOf(responseBody.string());
    }
}
