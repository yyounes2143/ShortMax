package com.google.protobuf;

import com.google.protobuf.FieldMask;
import com.google.protobuf.FieldMaskKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: FieldMaskKt.kt */
@Metadata
@SourceDebugExtension({"SMAP\nFieldMaskKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FieldMaskKt.kt\ncom/google/protobuf/FieldMaskKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,104:1\n1#2:105\n*E\n"})
/* loaded from: classes5.dex */
public final class FieldMaskKtKt {
    @NotNull
    /* renamed from: -initializefieldMask  reason: not valid java name */
    public static final FieldMask m4684initializefieldMask(@NotNull Function1<? super FieldMaskKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        FieldMaskKt.Dsl.Companion companion = FieldMaskKt.Dsl.Companion;
        FieldMask.Builder newBuilder = FieldMask.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        FieldMaskKt.Dsl _create = companion._create(newBuilder);
        block.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final FieldMask copy(@NotNull FieldMask fieldMask, @NotNull Function1<? super FieldMaskKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(fieldMask, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        FieldMaskKt.Dsl.Companion companion = FieldMaskKt.Dsl.Companion;
        FieldMask.Builder builder = fieldMask.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        FieldMaskKt.Dsl _create = companion._create(builder);
        block.invoke(_create);
        return _create._build();
    }
}
