package com.google.protobuf;

import com.google.protobuf.SourceContext;
import com.google.protobuf.SourceContextKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: SourceContextKt.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSourceContextKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SourceContextKt.kt\ncom/google/protobuf/SourceContextKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,51:1\n1#2:52\n*E\n"})
/* loaded from: classes5.dex */
public final class SourceContextKtKt {
    @NotNull
    /* renamed from: -initializesourceContext  reason: not valid java name */
    public static final SourceContext m4693initializesourceContext(@NotNull Function1<? super SourceContextKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        SourceContextKt.Dsl.Companion companion = SourceContextKt.Dsl.Companion;
        SourceContext.Builder newBuilder = SourceContext.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        SourceContextKt.Dsl _create = companion._create(newBuilder);
        block.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final SourceContext copy(@NotNull SourceContext sourceContext, @NotNull Function1<? super SourceContextKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(sourceContext, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        SourceContextKt.Dsl.Companion companion = SourceContextKt.Dsl.Companion;
        SourceContext.Builder builder = sourceContext.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        SourceContextKt.Dsl _create = companion._create(builder);
        block.invoke(_create);
        return _create._build();
    }
}
