package com.google.protobuf;

import com.google.protobuf.EnumValue;
import com.google.protobuf.EnumValueKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: EnumValueKt.kt */
@Metadata
@SourceDebugExtension({"SMAP\nEnumValueKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EnumValueKt.kt\ncom/google/protobuf/EnumValueKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,139:1\n1#2:140\n*E\n"})
/* loaded from: classes5.dex */
public final class EnumValueKtKt {
    @NotNull
    /* renamed from: -initializeenumValue  reason: not valid java name */
    public static final EnumValue m4682initializeenumValue(@NotNull Function1<? super EnumValueKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        EnumValueKt.Dsl.Companion companion = EnumValueKt.Dsl.Companion;
        EnumValue.Builder newBuilder = EnumValue.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        EnumValueKt.Dsl _create = companion._create(newBuilder);
        block.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final EnumValue copy(@NotNull EnumValue enumValue, @NotNull Function1<? super EnumValueKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(enumValue, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        EnumValueKt.Dsl.Companion companion = EnumValueKt.Dsl.Companion;
        EnumValue.Builder builder = enumValue.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        EnumValueKt.Dsl _create = companion._create(builder);
        block.invoke(_create);
        return _create._build();
    }
}
