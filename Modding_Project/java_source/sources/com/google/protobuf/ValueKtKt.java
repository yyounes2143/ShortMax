package com.google.protobuf;

import com.google.protobuf.Value;
import com.google.protobuf.ValueKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ValueKt.kt */
@Metadata
@SourceDebugExtension({"SMAP\nValueKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ValueKt.kt\ncom/google/protobuf/ValueKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,198:1\n1#2:199\n*E\n"})
/* loaded from: classes5.dex */
public final class ValueKtKt {
    @NotNull
    /* renamed from: -initializevalue  reason: not valid java name */
    public static final Value m4700initializevalue(@NotNull Function1<? super ValueKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        ValueKt.Dsl.Companion companion = ValueKt.Dsl.Companion;
        Value.Builder newBuilder = Value.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        ValueKt.Dsl _create = companion._create(newBuilder);
        block.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final Value copy(@NotNull Value value, @NotNull Function1<? super ValueKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(value, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        ValueKt.Dsl.Companion companion = ValueKt.Dsl.Companion;
        Value.Builder builder = value.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        ValueKt.Dsl _create = companion._create(builder);
        block.invoke(_create);
        return _create._build();
    }

    @Nullable
    public static final ListValue getListValueOrNull(@NotNull ValueOrBuilder valueOrBuilder) {
        Intrinsics.checkNotNullParameter(valueOrBuilder, "<this>");
        if (valueOrBuilder.hasListValue()) {
            return valueOrBuilder.getListValue();
        }
        return null;
    }

    @Nullable
    public static final Struct getStructValueOrNull(@NotNull ValueOrBuilder valueOrBuilder) {
        Intrinsics.checkNotNullParameter(valueOrBuilder, "<this>");
        if (valueOrBuilder.hasStructValue()) {
            return valueOrBuilder.getStructValue();
        }
        return null;
    }
}
