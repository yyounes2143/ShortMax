package fr;

import com.explorestack.protobuf.ListValue;
import com.explorestack.protobuf.Struct;
import com.explorestack.protobuf.Value;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yq.s;
/* compiled from: ProtoUtils.kt */
@Metadata
/* loaded from: classes8.dex */
public final class f {
    @Nullable
    public static final String a(@NotNull Struct struct, @NotNull String key) {
        Intrinsics.checkNotNullParameter(struct, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        Value b10 = b(struct, key);
        if (b10 != null) {
            return b10.getStringValue();
        }
        return null;
    }

    @Nullable
    public static final Value b(@NotNull Struct struct, @NotNull String key) {
        Intrinsics.checkNotNullParameter(struct, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        return struct.getFieldsMap().get(key);
    }

    @NotNull
    public static final <T> ListValue c(@NotNull List<? extends T> list, @NotNull Function1<? super T, Value> transform) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(transform, "transform");
        ListValue.Builder newBuilder = ListValue.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            Value invoke = transform.invoke((T) it.next());
            if (invoke != null) {
                newBuilder.addValues(invoke);
            }
        }
        ListValue build = newBuilder.build();
        Intrinsics.checkNotNullExpressionValue(build, "listValueBuilder.build()");
        return build;
    }

    @NotNull
    public static final Struct.Builder d(@NotNull Struct.Builder builder, @NotNull String key, @NotNull ListValue value) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        builder.putFields(key, h(value));
        return builder;
    }

    @NotNull
    public static final Struct.Builder e(@NotNull Struct.Builder builder, @NotNull String key, @NotNull Struct value) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        builder.putFields(key, j(value));
        return builder;
    }

    @NotNull
    public static final Struct.Builder f(@NotNull Struct.Builder builder, @NotNull String key, @NotNull Number value) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        builder.putFields(key, k(value));
        return builder;
    }

    @NotNull
    public static final Struct.Builder g(@NotNull Struct.Builder builder, @NotNull String key, @NotNull String value) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        builder.putFields(key, l(value));
        return builder;
    }

    @NotNull
    public static final Value h(@NotNull ListValue listValue) {
        Intrinsics.checkNotNullParameter(listValue, "<this>");
        Value build = Value.newBuilder().setListValue(listValue).build();
        Intrinsics.checkNotNullExpressionValue(build, "newBuilder()\n        .se…ue(this)\n        .build()");
        return build;
    }

    @NotNull
    public static final Value i(@NotNull Struct.Builder builder) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Struct build = builder.build();
        Intrinsics.checkNotNullExpressionValue(build, "build()");
        return j(build);
    }

    @NotNull
    public static final Value j(@NotNull Struct struct) {
        Intrinsics.checkNotNullParameter(struct, "<this>");
        Value build = Value.newBuilder().setStructValue(struct).build();
        Intrinsics.checkNotNullExpressionValue(build, "newBuilder()\n        .se…ue(this)\n        .build()");
        return build;
    }

    @NotNull
    public static final Value k(@NotNull Number number) {
        double doubleValue;
        Intrinsics.checkNotNullParameter(number, "<this>");
        Value.Builder newBuilder = Value.newBuilder();
        Double D = s.D(number, null, 1, null);
        if (D != null) {
            doubleValue = D.doubleValue();
        } else {
            doubleValue = number.doubleValue();
        }
        Value build = newBuilder.setNumberValue(doubleValue).build();
        Intrinsics.checkNotNullExpressionValue(build, "newBuilder()\n        .se…ouble())\n        .build()");
        return build;
    }

    @NotNull
    public static final Value l(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Value build = Value.newBuilder().setStringValue(str).build();
        Intrinsics.checkNotNullExpressionValue(build, "newBuilder()\n        .se…ue(this)\n        .build()");
        return build;
    }
}
