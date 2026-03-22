package com.google.protobuf;

import com.google.protobuf.Enum;
import com.google.protobuf.EnumKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: EnumKt.kt */
@Metadata
@SourceDebugExtension({"SMAP\nEnumKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EnumKt.kt\ncom/google/protobuf/EnumKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,261:1\n1#2:262\n*E\n"})
/* loaded from: classes5.dex */
public final class EnumKtKt {
    @NotNull
    /* renamed from: -initializeenum  reason: not valid java name */
    public static final Enum m4681initializeenum(@NotNull Function1<? super EnumKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        EnumKt.Dsl.Companion companion = EnumKt.Dsl.Companion;
        Enum.Builder newBuilder = Enum.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        EnumKt.Dsl _create = companion._create(newBuilder);
        block.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final Enum copy(@NotNull Enum r22, @NotNull Function1<? super EnumKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(r22, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        EnumKt.Dsl.Companion companion = EnumKt.Dsl.Companion;
        Enum.Builder builder = r22.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        EnumKt.Dsl _create = companion._create(builder);
        block.invoke(_create);
        return _create._build();
    }

    @Nullable
    public static final SourceContext getSourceContextOrNull(@NotNull EnumOrBuilder enumOrBuilder) {
        Intrinsics.checkNotNullParameter(enumOrBuilder, "<this>");
        if (enumOrBuilder.hasSourceContext()) {
            return enumOrBuilder.getSourceContext();
        }
        return null;
    }
}
