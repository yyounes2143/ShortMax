package com.google.protobuf;

import com.google.protobuf.Struct;
import com.google.protobuf.StructKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: StructKt.kt */
@Metadata
@SourceDebugExtension({"SMAP\nStructKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StructKt.kt\ncom/google/protobuf/StructKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,95:1\n1#2:96\n*E\n"})
/* loaded from: classes5.dex */
public final class StructKtKt {
    @NotNull
    /* renamed from: -initializestruct  reason: not valid java name */
    public static final Struct m4695initializestruct(@NotNull Function1<? super StructKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        StructKt.Dsl.Companion companion = StructKt.Dsl.Companion;
        Struct.Builder newBuilder = Struct.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        StructKt.Dsl _create = companion._create(newBuilder);
        block.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final Struct copy(@NotNull Struct struct, @NotNull Function1<? super StructKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(struct, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        StructKt.Dsl.Companion companion = StructKt.Dsl.Companion;
        Struct.Builder builder = struct.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        StructKt.Dsl _create = companion._create(builder);
        block.invoke(_create);
        return _create._build();
    }
}
