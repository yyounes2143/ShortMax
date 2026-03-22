package iu;

import java.io.IOException;
import okhttp3.ResponseBody;
/* compiled from: ScalarResponseBodyConverters.java */
/* loaded from: classes8.dex */
final class h implements fu.h<ResponseBody, Long> {

    /* renamed from: a  reason: collision with root package name */
    static final h f60090a = new h();

    h() {
    }

    @Override // fu.h
    /* renamed from: a */
    public Long convert(ResponseBody responseBody) throws IOException {
        return Long.valueOf(responseBody.string());
    }
}
