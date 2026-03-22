package com.google.protobuf;

import com.google.protobuf.Option;
import com.google.protobuf.OptionKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: OptionKt.kt */
@Metadata
@SourceDebugExtension({"SMAP\nOptionKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OptionKt.kt\ncom/google/protobuf/OptionKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,78:1\n1#2:79\n*E\n"})
/* loaded from: classes5.dex */
public final class OptionKtKt {
    @NotNull
    /* renamed from: -initializeoption  reason: not valid java name */
    public static final Option m4692initializeoption(@NotNull Function1<? super OptionKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        OptionKt.Dsl.Companion companion = OptionKt.Dsl.Companion;
        Option.Builder newBuilder = Option.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        OptionKt.Dsl _create = companion._create(newBuilder);
        block.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final Option copy(@NotNull Option option, @NotNull Function1<? super OptionKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(option, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        OptionKt.Dsl.Companion companion = OptionKt.Dsl.Companion;
        Option.Builder builder = option.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        OptionKt.Dsl _create = companion._create(builder);
        block.invoke(_create);
        return _create._build();
    }

    @Nullable
    public static final Any getValueOrNull(@NotNull OptionOrBuilder optionOrBuilder) {
        Intrinsics.checkNotNullParameter(optionOrBuilder, "<this>");
        if (optionOrBuilder.hasValue()) {
            return optionOrBuilder.getValue();
        }
        return null;
    }
}
