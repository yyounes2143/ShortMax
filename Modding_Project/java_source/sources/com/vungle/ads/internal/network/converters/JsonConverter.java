package com.vungle.ads.internal.network.converters;

import java.io.IOException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KType;
import kotlinx.serialization.json.a;
import kotlinx.serialization.json.c;
import kotlinx.serialization.json.s;
import okhttp3.ResponseBody;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import st.t;
import ws.b;
/* compiled from: JsonConverter.kt */
@Metadata
/* loaded from: classes7.dex */
public final class JsonConverter<E> implements Converter<ResponseBody, E> {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final a json = s.b(null, new Function1<c, Unit>() { // from class: com.vungle.ads.internal.network.converters.JsonConverter$Companion$json$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(c cVar) {
            invoke2(cVar);
            return Unit.f60915a;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(@NotNull c Json) {
            Intrinsics.checkNotNullParameter(Json, "$this$Json");
            Json.f(true);
            Json.d(true);
            Json.e(false);
            Json.c(true);
        }
    }, 1, null);
    @NotNull
    private final KType kType;

    /* compiled from: JsonConverter.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public JsonConverter(@NotNull KType kType) {
        Intrinsics.checkNotNullParameter(kType, "kType");
        this.kType = kType;
    }

    @Override // com.vungle.ads.internal.network.converters.Converter
    @Nullable
    public E convert(@Nullable ResponseBody responseBody) throws IOException {
        if (responseBody != null) {
            try {
                String string = responseBody.string();
                if (string != null) {
                    E e10 = (E) json.b(t.c(a.f61939d.getSerializersModule(), this.kType), string);
                    b.a(responseBody, null);
                    return e10;
                }
            } finally {
            }
        }
        b.a(responseBody, null);
        return null;
    }
}
