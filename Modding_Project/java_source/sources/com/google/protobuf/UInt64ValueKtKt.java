package com.google.protobuf;

import com.google.protobuf.UInt64Value;
import com.google.protobuf.UInt64ValueKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: UInt64ValueKt.kt */
@Metadata
@SourceDebugExtension({"SMAP\nUInt64ValueKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UInt64ValueKt.kt\ncom/google/protobuf/UInt64ValueKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,51:1\n1#2:52\n*E\n"})
/* loaded from: classes5.dex */
public final class UInt64ValueKtKt {
    @NotNull
    /* renamed from: -initializeuInt64Value  reason: not valid java name */
    public static final UInt64Value m4699initializeuInt64Value(@NotNull Function1<? super UInt64ValueKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        UInt64ValueKt.Dsl.Companion companion = UInt64ValueKt.Dsl.Companion;
        UInt64Value.Builder newBuilder = UInt64Value.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        UInt64ValueKt.Dsl _create = companion._create(newBuilder);
        block.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final UInt64Value copy(@NotNull UInt64Value uInt64Value, @NotNull Function1<? super UInt64ValueKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(uInt64Value, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        UInt64ValueKt.Dsl.Companion companion = UInt64ValueKt.Dsl.Companion;
        UInt64Value.Builder builder = uInt64Value.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        UInt64ValueKt.Dsl _create = companion._create(builder);
        block.invoke(_create);
        return _create._build();
    }
}
