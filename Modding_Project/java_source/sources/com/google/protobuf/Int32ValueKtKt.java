package com.google.protobuf;

import com.google.protobuf.Int32Value;
import com.google.protobuf.Int32ValueKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: Int32ValueKt.kt */
@Metadata
@SourceDebugExtension({"SMAP\nInt32ValueKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Int32ValueKt.kt\ncom/google/protobuf/Int32ValueKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,51:1\n1#2:52\n*E\n"})
/* loaded from: classes5.dex */
public final class Int32ValueKtKt {
    @NotNull
    /* renamed from: -initializeint32Value  reason: not valid java name */
    public static final Int32Value m4687initializeint32Value(@NotNull Function1<? super Int32ValueKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        Int32ValueKt.Dsl.Companion companion = Int32ValueKt.Dsl.Companion;
        Int32Value.Builder newBuilder = Int32Value.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        Int32ValueKt.Dsl _create = companion._create(newBuilder);
        block.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final Int32Value copy(@NotNull Int32Value int32Value, @NotNull Function1<? super Int32ValueKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(int32Value, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        Int32ValueKt.Dsl.Companion companion = Int32ValueKt.Dsl.Companion;
        Int32Value.Builder builder = int32Value.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        Int32ValueKt.Dsl _create = companion._create(builder);
        block.invoke(_create);
        return _create._build();
    }
}
