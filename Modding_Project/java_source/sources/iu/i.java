package iu;

import java.io.IOException;
import okhttp3.ResponseBody;
/* compiled from: ScalarResponseBodyConverters.java */
/* loaded from: classes8.dex */
final class i implements fu.h<ResponseBody, Short> {

    /* renamed from: a  reason: collision with root package name */
    static final i f60091a = new i();

    i() {
    }

    @Override // fu.h
    /* renamed from: a */
    public Short convert(ResponseBody responseBody) throws IOException {
        return Short.valueOf(responseBody.string());
    }
}
