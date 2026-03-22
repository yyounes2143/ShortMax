package com.google.protobuf;

import com.google.protobuf.Any;
import com.google.protobuf.AnyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: AnyKt.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAnyKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnyKt.kt\ncom/google/protobuf/AnyKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,68:1\n1#2:69\n*E\n"})
/* loaded from: classes5.dex */
public final class AnyKtKt {
    @NotNull
    /* renamed from: -initializeany  reason: not valid java name */
    public static final Any m4674initializeany(@NotNull Function1<? super AnyKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        AnyKt.Dsl.Companion companion = AnyKt.Dsl.Companion;
        Any.Builder newBuilder = Any.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        AnyKt.Dsl _create = companion._create(newBuilder);
        block.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final Any copy(@NotNull Any any, @NotNull Function1<? super AnyKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(any, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        AnyKt.Dsl.Companion companion = AnyKt.Dsl.Companion;
        Any.Builder builder = any.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        AnyKt.Dsl _create = companion._create(builder);
        block.invoke(_create);
        return _create._build();
    }
}
