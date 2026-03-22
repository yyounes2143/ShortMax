package com.google.protobuf;

import com.google.protobuf.BytesValue;
import com.google.protobuf.BytesValueKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: BytesValueKt.kt */
@Metadata
@SourceDebugExtension({"SMAP\nBytesValueKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BytesValueKt.kt\ncom/google/protobuf/BytesValueKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,51:1\n1#2:52\n*E\n"})
/* loaded from: classes5.dex */
public final class BytesValueKtKt {
    @NotNull
    /* renamed from: -initializebytesValue  reason: not valid java name */
    public static final BytesValue m4677initializebytesValue(@NotNull Function1<? super BytesValueKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        BytesValueKt.Dsl.Companion companion = BytesValueKt.Dsl.Companion;
        BytesValue.Builder newBuilder = BytesValue.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        BytesValueKt.Dsl _create = companion._create(newBuilder);
        block.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final BytesValue copy(@NotNull BytesValue bytesValue, @NotNull Function1<? super BytesValueKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(bytesValue, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        BytesValueKt.Dsl.Companion companion = BytesValueKt.Dsl.Companion;
        BytesValue.Builder builder = bytesValue.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        BytesValueKt.Dsl _create = companion._create(builder);
        block.invoke(_create);
        return _create._build();
    }
}
