package hu;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import java.io.IOException;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import okio.BufferedSink;
/* compiled from: GsonStreamingRequestBody.java */
/* loaded from: classes8.dex */
final class d<T> extends RequestBody {

    /* renamed from: a  reason: collision with root package name */
    private final Gson f53272a;

    /* renamed from: b  reason: collision with root package name */
    private final TypeAdapter<T> f53273b;

    /* renamed from: c  reason: collision with root package name */
    private final T f53274c;

    public d(Gson gson, TypeAdapter<T> typeAdapter, T t10) {
        this.f53272a = gson;
        this.f53273b = typeAdapter;
        this.f53274c = t10;
    }

    @Override // okhttp3.RequestBody
    public MediaType contentType() {
        return b.f53266d;
    }

    @Override // okhttp3.RequestBody
    public void writeTo(BufferedSink bufferedSink) throws IOException {
        b.b(bufferedSink, this.f53272a, this.f53273b, this.f53274c);
    }
}
