package com.google.protobuf;

import com.google.protobuf.Empty;
import com.google.protobuf.EmptyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: EmptyKt.kt */
@Metadata
@SourceDebugExtension({"SMAP\nEmptyKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EmptyKt.kt\ncom/google/protobuf/EmptyKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,34:1\n1#2:35\n*E\n"})
/* loaded from: classes5.dex */
public final class EmptyKtKt {
    @NotNull
    /* renamed from: -initializeempty  reason: not valid java name */
    public static final Empty m4680initializeempty(@NotNull Function1<? super EmptyKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        EmptyKt.Dsl.Companion companion = EmptyKt.Dsl.Companion;
        Empty.Builder newBuilder = Empty.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        EmptyKt.Dsl _create = companion._create(newBuilder);
        block.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final Empty copy(@NotNull Empty empty, @NotNull Function1<? super EmptyKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(empty, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        EmptyKt.Dsl.Companion companion = EmptyKt.Dsl.Companion;
        Empty.Builder builder = empty.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        EmptyKt.Dsl _create = companion._create(builder);
        block.invoke(_create);
        return _create._build();
    }
}
