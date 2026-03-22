package com.google.protobuf;

import com.google.protobuf.ListValue;
import com.google.protobuf.ListValueKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: ListValueKt.kt */
@Metadata
@SourceDebugExtension({"SMAP\nListValueKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ListValueKt.kt\ncom/google/protobuf/ListValueKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,105:1\n1#2:106\n*E\n"})
/* loaded from: classes5.dex */
public final class ListValueKtKt {
    @NotNull
    /* renamed from: -initializelistValue  reason: not valid java name */
    public static final ListValue m4689initializelistValue(@NotNull Function1<? super ListValueKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        ListValueKt.Dsl.Companion companion = ListValueKt.Dsl.Companion;
        ListValue.Builder newBuilder = ListValue.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        ListValueKt.Dsl _create = companion._create(newBuilder);
        block.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final ListValue copy(@NotNull ListValue listValue, @NotNull Function1<? super ListValueKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(listValue, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        ListValueKt.Dsl.Companion companion = ListValueKt.Dsl.Companion;
        ListValue.Builder builder = listValue.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        ListValueKt.Dsl _create = companion._create(builder);
        block.invoke(_create);
        return _create._build();
    }
}
