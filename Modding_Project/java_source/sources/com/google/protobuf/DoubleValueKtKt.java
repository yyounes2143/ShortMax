package com.google.protobuf;

import com.google.protobuf.DoubleValue;
import com.google.protobuf.DoubleValueKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: DoubleValueKt.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDoubleValueKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DoubleValueKt.kt\ncom/google/protobuf/DoubleValueKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,51:1\n1#2:52\n*E\n"})
/* loaded from: classes5.dex */
public final class DoubleValueKtKt {
    @NotNull
    /* renamed from: -initializedoubleValue  reason: not valid java name */
    public static final DoubleValue m4678initializedoubleValue(@NotNull Function1<? super DoubleValueKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        DoubleValueKt.Dsl.Companion companion = DoubleValueKt.Dsl.Companion;
        DoubleValue.Builder newBuilder = DoubleValue.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        DoubleValueKt.Dsl _create = companion._create(newBuilder);
        block.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final DoubleValue copy(@NotNull DoubleValue doubleValue, @NotNull Function1<? super DoubleValueKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(doubleValue, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        DoubleValueKt.Dsl.Companion companion = DoubleValueKt.Dsl.Companion;
        DoubleValue.Builder builder = doubleValue.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        DoubleValueKt.Dsl _create = companion._create(builder);
        block.invoke(_create);
        return _create._build();
    }
}
