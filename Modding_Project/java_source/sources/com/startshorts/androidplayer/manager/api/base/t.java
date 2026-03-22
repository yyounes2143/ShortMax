package com.startshorts.androidplayer.manager.api.base;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import fu.d0;
import fu.h;
import java.io.IOException;
import java.io.StringReader;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.ResponseBody;
import org.jetbrains.annotations.NotNull;
/* compiled from: ResponseConverter.kt */
@Metadata
/* loaded from: classes6.dex */
public final class t extends h.a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f41815a = new a(null);
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final ms.i<Gson> f41816b = kotlin.c.b(new Function0() { // from class: com.startshorts.androidplayer.manager.api.base.s
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            Gson h10;
            h10 = t.h();
            return h10;
        }
    });

    /* compiled from: ResponseConverter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Gson b() {
            return (Gson) t.f41816b.getValue();
        }

        private a() {
        }
    }

    /* compiled from: ResponseConverter.kt */
    @Metadata
    /* loaded from: classes6.dex */
    private static final class b<T> implements fu.h<ResponseBody, T> {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final TypeAdapter<T> f41817a;

        public b(@NotNull TypeAdapter<T> adapter) {
            Intrinsics.checkNotNullParameter(adapter, "adapter");
            this.f41817a = adapter;
        }

        @Override // fu.h
        /* renamed from: a */
        public T convert(@NotNull ResponseBody responseBody) throws IOException {
            Intrinsics.checkNotNullParameter(responseBody, "responseBody");
            StringReader stringReader = new StringReader(responseBody.string());
            JsonReader newJsonReader = t.f41815a.b().newJsonReader(stringReader);
            newJsonReader.setLenient(true);
            try {
                return this.f41817a.read(newJsonReader);
            } finally {
                try {
                    stringReader.close();
                    newJsonReader.close();
                } catch (Exception unused) {
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Gson h() {
        return new Gson();
    }

    @Override // fu.h.a
    @NotNull
    public fu.h<ResponseBody, ?> d(@NotNull Type type, @NotNull Annotation[] annotations, @NotNull d0 retrofit) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(annotations, "annotations");
        Intrinsics.checkNotNullParameter(retrofit, "retrofit");
        TypeAdapter adapter = f41815a.b().getAdapter(TypeToken.get(type));
        Intrinsics.checkNotNull(adapter);
        return new b(adapter);
    }
}
