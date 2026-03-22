package hu;

import com.google.gson.Gson;
import com.google.gson.JsonIOException;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import fu.h;
import java.io.IOException;
import okhttp3.ResponseBody;
/* compiled from: GsonResponseBodyConverter.java */
/* loaded from: classes8.dex */
final class c<T> implements h<ResponseBody, T> {

    /* renamed from: a  reason: collision with root package name */
    private final Gson f53270a;

    /* renamed from: b  reason: collision with root package name */
    private final TypeAdapter<T> f53271b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(Gson gson, TypeAdapter<T> typeAdapter) {
        this.f53270a = gson;
        this.f53271b = typeAdapter;
    }

    @Override // fu.h
    /* renamed from: a */
    public T convert(ResponseBody responseBody) throws IOException {
        JsonReader newJsonReader = this.f53270a.newJsonReader(responseBody.charStream());
        try {
            T read = this.f53271b.read(newJsonReader);
            if (newJsonReader.peek() == JsonToken.END_DOCUMENT) {
                return read;
            }
            throw new JsonIOException("JSON document was not fully consumed.");
        } finally {
            responseBody.close();
        }
    }
}
