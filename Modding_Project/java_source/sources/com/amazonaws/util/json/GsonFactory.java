package com.amazonaws.util.json;

import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.io.Writer;
/* loaded from: classes2.dex */
final class GsonFactory implements AwsJsonFactory {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.amazonaws.util.json.GsonFactory$1  reason: invalid class name */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f6440a;

        static {
            int[] iArr = new int[JsonToken.values().length];
            f6440a = iArr;
            try {
                iArr[JsonToken.BEGIN_ARRAY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f6440a[JsonToken.END_ARRAY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f6440a[JsonToken.BEGIN_OBJECT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f6440a[JsonToken.END_OBJECT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f6440a[JsonToken.NAME.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f6440a[JsonToken.BOOLEAN.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f6440a[JsonToken.NUMBER.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f6440a[JsonToken.NULL.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f6440a[JsonToken.STRING.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f6440a[JsonToken.END_DOCUMENT.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    /* loaded from: classes2.dex */
    private static final class GsonReader implements AwsJsonReader {

        /* renamed from: a  reason: collision with root package name */
        private final JsonReader f6441a;

        public GsonReader(Reader reader) {
            this.f6441a = new JsonReader(reader);
        }

        @Override // com.amazonaws.util.json.AwsJsonReader
        public void a() throws IOException {
            this.f6441a.endArray();
        }

        @Override // com.amazonaws.util.json.AwsJsonReader
        public void b() throws IOException {
            this.f6441a.beginArray();
        }

        @Override // com.amazonaws.util.json.AwsJsonReader
        public void c() throws IOException {
            this.f6441a.beginObject();
        }

        @Override // com.amazonaws.util.json.AwsJsonReader
        public void close() throws IOException {
            this.f6441a.close();
        }

        @Override // com.amazonaws.util.json.AwsJsonReader
        public void d() throws IOException {
            this.f6441a.endObject();
        }

        @Override // com.amazonaws.util.json.AwsJsonReader
        public boolean e() throws IOException {
            JsonToken peek = this.f6441a.peek();
            if (!JsonToken.BEGIN_ARRAY.equals(peek) && !JsonToken.BEGIN_OBJECT.equals(peek)) {
                return false;
            }
            return true;
        }

        @Override // com.amazonaws.util.json.AwsJsonReader
        public void f() throws IOException {
            this.f6441a.skipValue();
        }

        @Override // com.amazonaws.util.json.AwsJsonReader
        public String g() throws IOException {
            return this.f6441a.nextName();
        }

        @Override // com.amazonaws.util.json.AwsJsonReader
        public String h() throws IOException {
            JsonToken peek = this.f6441a.peek();
            if (JsonToken.NULL.equals(peek)) {
                this.f6441a.nextNull();
                return null;
            } else if (JsonToken.BOOLEAN.equals(peek)) {
                if (this.f6441a.nextBoolean()) {
                    return "true";
                }
                return "false";
            } else {
                return this.f6441a.nextString();
            }
        }

        @Override // com.amazonaws.util.json.AwsJsonReader
        public boolean hasNext() throws IOException {
            return this.f6441a.hasNext();
        }

        @Override // com.amazonaws.util.json.AwsJsonReader
        public AwsJsonToken peek() throws IOException {
            try {
                return GsonFactory.d(this.f6441a.peek());
            } catch (EOFException unused) {
                return null;
            }
        }
    }

    /* loaded from: classes2.dex */
    private static final class GsonWriter implements AwsJsonWriter {

        /* renamed from: a  reason: collision with root package name */
        private final JsonWriter f6442a;

        public GsonWriter(Writer writer) {
            this.f6442a = new JsonWriter(writer);
        }

        @Override // com.amazonaws.util.json.AwsJsonWriter
        public AwsJsonWriter a() throws IOException {
            this.f6442a.endArray();
            return this;
        }

        @Override // com.amazonaws.util.json.AwsJsonWriter
        public AwsJsonWriter b() throws IOException {
            this.f6442a.beginArray();
            return this;
        }

        @Override // com.amazonaws.util.json.AwsJsonWriter
        public AwsJsonWriter c() throws IOException {
            this.f6442a.beginObject();
            return this;
        }

        @Override // com.amazonaws.util.json.AwsJsonWriter
        public void close() throws IOException {
            this.f6442a.close();
        }

        @Override // com.amazonaws.util.json.AwsJsonWriter
        public AwsJsonWriter d() throws IOException {
            this.f6442a.endObject();
            return this;
        }

        @Override // com.amazonaws.util.json.AwsJsonWriter
        public AwsJsonWriter e(String str) throws IOException {
            this.f6442a.value(str);
            return this;
        }

        @Override // com.amazonaws.util.json.AwsJsonWriter
        public AwsJsonWriter f(String str) throws IOException {
            this.f6442a.name(str);
            return this;
        }

        @Override // com.amazonaws.util.json.AwsJsonWriter
        public void flush() throws IOException {
            this.f6442a.flush();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static AwsJsonToken d(JsonToken jsonToken) {
        if (jsonToken == null) {
            return null;
        }
        switch (AnonymousClass1.f6440a[jsonToken.ordinal()]) {
            case 1:
                return AwsJsonToken.BEGIN_ARRAY;
            case 2:
                return AwsJsonToken.END_ARRAY;
            case 3:
                return AwsJsonToken.BEGIN_OBJECT;
            case 4:
                return AwsJsonToken.END_OBJECT;
            case 5:
                return AwsJsonToken.FIELD_NAME;
            case 6:
                return AwsJsonToken.VALUE_BOOLEAN;
            case 7:
                return AwsJsonToken.VALUE_NUMBER;
            case 8:
                return AwsJsonToken.VALUE_NULL;
            case 9:
                return AwsJsonToken.VALUE_STRING;
            case 10:
                return null;
            default:
                return AwsJsonToken.UNKNOWN;
        }
    }

    @Override // com.amazonaws.util.json.AwsJsonFactory
    public AwsJsonWriter a(Writer writer) {
        return new GsonWriter(writer);
    }

    @Override // com.amazonaws.util.json.AwsJsonFactory
    public AwsJsonReader b(Reader reader) {
        return new GsonReader(reader);
    }
}
