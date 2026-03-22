package com.google.protobuf;

import com.google.protobuf.Method;
import com.google.protobuf.MethodKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: MethodKt.kt */
@Metadata
@SourceDebugExtension({"SMAP\nMethodKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MethodKt.kt\ncom/google/protobuf/MethodKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,214:1\n1#2:215\n*E\n"})
/* loaded from: classes5.dex */
public final class MethodKtKt {
    @NotNull
    /* renamed from: -initializemethod  reason: not valid java name */
    public static final Method m4690initializemethod(@NotNull Function1<? super MethodKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        MethodKt.Dsl.Companion companion = MethodKt.Dsl.Companion;
        Method.Builder newBuilder = Method.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        MethodKt.Dsl _create = companion._create(newBuilder);
        block.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final Method copy(@NotNull Method method, @NotNull Function1<? super MethodKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(method, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        MethodKt.Dsl.Companion companion = MethodKt.Dsl.Companion;
        Method.Builder builder = method.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        MethodKt.Dsl _create = companion._create(builder);
        block.invoke(_create);
        return _create._build();
    }
}
