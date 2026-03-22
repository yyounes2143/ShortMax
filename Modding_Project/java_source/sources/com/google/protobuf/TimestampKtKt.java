package com.google.protobuf;

import com.google.protobuf.Timestamp;
import com.google.protobuf.TimestampKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: TimestampKt.kt */
@Metadata
@SourceDebugExtension({"SMAP\nTimestampKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TimestampKt.kt\ncom/google/protobuf/TimestampKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,68:1\n1#2:69\n*E\n"})
/* loaded from: classes5.dex */
public final class TimestampKtKt {
    @NotNull
    /* renamed from: -initializetimestamp  reason: not valid java name */
    public static final Timestamp m4696initializetimestamp(@NotNull Function1<? super TimestampKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        TimestampKt.Dsl.Companion companion = TimestampKt.Dsl.Companion;
        Timestamp.Builder newBuilder = Timestamp.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        TimestampKt.Dsl _create = companion._create(newBuilder);
        block.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final Timestamp copy(@NotNull Timestamp timestamp, @NotNull Function1<? super TimestampKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(timestamp, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        TimestampKt.Dsl.Companion companion = TimestampKt.Dsl.Companion;
        Timestamp.Builder builder = timestamp.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        TimestampKt.Dsl _create = companion._create(builder);
        block.invoke(_create);
        return _create._build();
    }
}
