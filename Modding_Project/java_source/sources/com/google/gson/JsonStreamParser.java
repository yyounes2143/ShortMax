package com.google.gson;

import com.google.gson.internal.Streams;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.MalformedJsonException;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.util.Iterator;
import java.util.NoSuchElementException;
/* loaded from: classes5.dex */
public final class JsonStreamParser implements Iterator<JsonElement> {
    private final Object lock;
    private final JsonReader parser;

    public JsonStreamParser(String str) {
        this(new StringReader(str));
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        boolean z10;
        synchronized (this.lock) {
            try {
                try {
                    try {
                        if (this.parser.peek() != JsonToken.END_DOCUMENT) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                    } catch (IOException e10) {
                        throw new JsonIOException(e10);
                    }
                } catch (MalformedJsonException e11) {
                    throw new JsonSyntaxException(e11);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return z10;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException();
    }

    public JsonStreamParser(Reader reader) {
        JsonReader jsonReader = new JsonReader(reader);
        this.parser = jsonReader;
        jsonReader.setStrictness(Strictness.LENIENT);
        this.lock = new Object();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.Iterator
    public JsonElement next() throws JsonParseException {
        if (hasNext()) {
            try {
                return Streams.parse(this.parser);
            } catch (OutOfMemoryError | StackOverflowError e10) {
                throw new JsonParseException("Failed parsing JSON source to Json", e10);
            }
        }
        throw new NoSuchElementException();
    }
}
