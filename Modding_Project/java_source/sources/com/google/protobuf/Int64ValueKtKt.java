package com.google.protobuf;

import com.google.protobuf.Int64Value;
import com.google.protobuf.Int64ValueKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: Int64ValueKt.kt */
@Metadata
@SourceDebugExtension({"SMAP\nInt64ValueKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Int64ValueKt.kt\ncom/google/protobuf/Int64ValueKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,51:1\n1#2:52\n*E\n"})
/* loaded from: classes5.dex */
public final class Int64ValueKtKt {
    @NotNull
    /* renamed from: -initializeint64Value  reason: not valid java name */
    public static final Int64Value m4688initializeint64Value(@NotNull Function1<? super Int64ValueKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        Int64ValueKt.Dsl.Companion companion = Int64ValueKt.Dsl.Companion;
        Int64Value.Builder newBuilder = Int64Value.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        Int64ValueKt.Dsl _create = companion._create(newBuilder);
        block.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final Int64Value copy(@NotNull Int64Value int64Value, @NotNull Function1<? super Int64ValueKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(int64Value, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        Int64ValueKt.Dsl.Companion companion = Int64ValueKt.Dsl.Companion;
        Int64Value.Builder builder = int64Value.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        Int64ValueKt.Dsl _create = companion._create(builder);
        block.invoke(_create);
        return _create._build();
    }
}
