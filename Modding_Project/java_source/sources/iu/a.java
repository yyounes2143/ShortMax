package iu;

import java.io.IOException;
import okhttp3.MediaType;
import okhttp3.RequestBody;
/* compiled from: ScalarRequestBodyConverter.java */
/* loaded from: classes8.dex */
final class a<T> implements fu.h<T, RequestBody> {

    /* renamed from: a  reason: collision with root package name */
    static final a<Object> f60082a = new a<>();

    /* renamed from: b  reason: collision with root package name */
    private static final MediaType f60083b = MediaType.e("text/plain; charset=UTF-8");

    private a() {
    }

    @Override // fu.h
    /* renamed from: a */
    public RequestBody convert(T t10) throws IOException {
        return RequestBody.create(f60083b, String.valueOf(t10));
    }
}
