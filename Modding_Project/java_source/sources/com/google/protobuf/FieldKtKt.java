package com.google.protobuf;

import com.google.protobuf.Field;
import com.google.protobuf.FieldKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: FieldKt.kt */
@Metadata
@SourceDebugExtension({"SMAP\nFieldKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FieldKt.kt\ncom/google/protobuf/FieldKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,272:1\n1#2:273\n*E\n"})
/* loaded from: classes5.dex */
public final class FieldKtKt {
    @NotNull
    /* renamed from: -initializefield  reason: not valid java name */
    public static final Field m4683initializefield(@NotNull Function1<? super FieldKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        FieldKt.Dsl.Companion companion = FieldKt.Dsl.Companion;
        Field.Builder newBuilder = Field.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        FieldKt.Dsl _create = companion._create(newBuilder);
        block.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final Field copy(@NotNull Field field, @NotNull Function1<? super FieldKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(field, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        FieldKt.Dsl.Companion companion = FieldKt.Dsl.Companion;
        Field.Builder builder = field.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        FieldKt.Dsl _create = companion._create(builder);
        block.invoke(_create);
        return _create._build();
    }
}
