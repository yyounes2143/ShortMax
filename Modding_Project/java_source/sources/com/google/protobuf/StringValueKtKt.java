package com.google.protobuf;

import com.google.protobuf.StringValue;
import com.google.protobuf.StringValueKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: StringValueKt.kt */
@Metadata
@SourceDebugExtension({"SMAP\nStringValueKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StringValueKt.kt\ncom/google/protobuf/StringValueKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,51:1\n1#2:52\n*E\n"})
/* loaded from: classes5.dex */
public final class StringValueKtKt {
    @NotNull
    /* renamed from: -initializestringValue  reason: not valid java name */
    public static final StringValue m4694initializestringValue(@NotNull Function1<? super StringValueKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StringValueKt.Dsl.Companion companion = StringValueKt.Dsl.Companion;
        StringValue.Builder newBuilder = StringValue.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        StringValueKt.Dsl _create = companion._create(newBuilder);
        block.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final StringValue copy(@NotNull StringValue stringValue, @NotNull Function1<? super StringValueKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(stringValue, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        StringValueKt.Dsl.Companion companion = StringValueKt.Dsl.Companion;
        StringValue.Builder builder = stringValue.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        StringValueKt.Dsl _create = companion._create(builder);
        block.invoke(_create);
        return _create._build();
    }
}
