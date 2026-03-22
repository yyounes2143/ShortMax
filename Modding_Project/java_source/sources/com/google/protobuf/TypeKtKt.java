package com.google.protobuf;

import com.google.protobuf.Type;
import com.google.protobuf.TypeKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: TypeKt.kt */
@Metadata
@SourceDebugExtension({"SMAP\nTypeKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TypeKt.kt\ncom/google/protobuf/TypeKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,331:1\n1#2:332\n*E\n"})
/* loaded from: classes5.dex */
public final class TypeKtKt {
    @NotNull
    /* renamed from: -initializetype  reason: not valid java name */
    public static final Type m4697initializetype(@NotNull Function1<? super TypeKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        TypeKt.Dsl.Companion companion = TypeKt.Dsl.Companion;
        Type.Builder newBuilder = Type.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        TypeKt.Dsl _create = companion._create(newBuilder);
        block.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final Type copy(@NotNull Type type, @NotNull Function1<? super TypeKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(type, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        TypeKt.Dsl.Companion companion = TypeKt.Dsl.Companion;
        Type.Builder builder = type.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        TypeKt.Dsl _create = companion._create(builder);
        block.invoke(_create);
        return _create._build();
    }

    @Nullable
    public static final SourceContext getSourceContextOrNull(@NotNull TypeOrBuilder typeOrBuilder) {
        Intrinsics.checkNotNullParameter(typeOrBuilder, "<this>");
        if (typeOrBuilder.hasSourceContext()) {
            return typeOrBuilder.getSourceContext();
        }
        return null;
    }
}
