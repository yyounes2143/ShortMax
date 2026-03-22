package com.google.protobuf;

import com.google.protobuf.FloatValue;
import com.google.protobuf.FloatValueKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: FloatValueKt.kt */
@Metadata
@SourceDebugExtension({"SMAP\nFloatValueKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FloatValueKt.kt\ncom/google/protobuf/FloatValueKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,51:1\n1#2:52\n*E\n"})
/* loaded from: classes5.dex */
public final class FloatValueKtKt {
    @NotNull
    /* renamed from: -initializefloatValue  reason: not valid java name */
    public static final FloatValue m4686initializefloatValue(@NotNull Function1<? super FloatValueKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        FloatValueKt.Dsl.Companion companion = FloatValueKt.Dsl.Companion;
        FloatValue.Builder newBuilder = FloatValue.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        FloatValueKt.Dsl _create = companion._create(newBuilder);
        block.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final FloatValue copy(@NotNull FloatValue floatValue, @NotNull Function1<? super FloatValueKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(floatValue, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        FloatValueKt.Dsl.Companion companion = FloatValueKt.Dsl.Companion;
        FloatValue.Builder builder = floatValue.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        FloatValueKt.Dsl _create = companion._create(builder);
        block.invoke(_create);
        return _create._build();
    }
}
