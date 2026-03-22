package hu;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonWriter;
import fu.h;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.nio.charset.StandardCharsets;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import okio.Buffer;
import okio.BufferedSink;
/* compiled from: GsonRequestBodyConverter.java */
/* loaded from: classes8.dex */
final class b<T> implements h<T, RequestBody> {

    /* renamed from: d  reason: collision with root package name */
    static final MediaType f53266d = MediaType.e("application/json; charset=UTF-8");

    /* renamed from: a  reason: collision with root package name */
    private final Gson f53267a;

    /* renamed from: b  reason: collision with root package name */
    private final TypeAdapter<T> f53268b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f53269c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(Gson gson, TypeAdapter<T> typeAdapter, boolean z10) {
        this.f53267a = gson;
        this.f53268b = typeAdapter;
        this.f53269c = z10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> void b(BufferedSink bufferedSink, Gson gson, TypeAdapter<T> typeAdapter, T t10) throws IOException {
        JsonWriter newJsonWriter = gson.newJsonWriter(new OutputStreamWriter(bufferedSink.outputStream(), StandardCharsets.UTF_8));
        typeAdapter.write(newJsonWriter, t10);
        newJsonWriter.close();
    }

    @Override // fu.h
    /* renamed from: a */
    public RequestBody convert(T t10) throws IOException {
        if (this.f53269c) {
            return new d(this.f53267a, this.f53268b, t10);
        }
        Buffer buffer = new Buffer();
        b(buffer, this.f53267a, this.f53268b, t10);
        return RequestBody.create(f53266d, buffer.readByteString());
    }
}
