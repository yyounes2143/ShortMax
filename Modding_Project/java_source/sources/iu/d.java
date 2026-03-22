package iu;

import java.io.IOException;
import okhttp3.ResponseBody;
/* compiled from: ScalarResponseBodyConverters.java */
/* loaded from: classes8.dex */
final class d implements fu.h<ResponseBody, Character> {

    /* renamed from: a  reason: collision with root package name */
    static final d f60086a = new d();

    d() {
    }

    @Override // fu.h
    /* renamed from: a */
    public Character convert(ResponseBody responseBody) throws IOException {
        String string = responseBody.string();
        if (string.length() == 1) {
            return Character.valueOf(string.charAt(0));
        }
        throw new IOException("Expected body of length 1 for Character conversion but was " + string.length());
    }
}
