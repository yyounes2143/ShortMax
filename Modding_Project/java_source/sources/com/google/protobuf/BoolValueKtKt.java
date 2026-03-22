package com.google.protobuf;

import com.google.protobuf.BoolValue;
import com.google.protobuf.BoolValueKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: BoolValueKt.kt */
@Metadata
@SourceDebugExtension({"SMAP\nBoolValueKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BoolValueKt.kt\ncom/google/protobuf/BoolValueKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,51:1\n1#2:52\n*E\n"})
/* loaded from: classes5.dex */
public final class BoolValueKtKt {
    @NotNull
    /* renamed from: -initializeboolValue  reason: not valid java name */
    public static final BoolValue m4676initializeboolValue(@NotNull Function1<? super BoolValueKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        BoolValueKt.Dsl.Companion companion = BoolValueKt.Dsl.Companion;
        BoolValue.Builder newBuilder = BoolValue.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        BoolValueKt.Dsl _create = companion._create(newBuilder);
        block.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final BoolValue copy(@NotNull BoolValue boolValue, @NotNull Function1<? super BoolValueKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(boolValue, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        BoolValueKt.Dsl.Companion companion = BoolValueKt.Dsl.Companion;
        BoolValue.Builder builder = boolValue.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        BoolValueKt.Dsl _create = companion._create(builder);
        block.invoke(_create);
        return _create._build();
    }
}
