package com.google.protobuf;

import com.google.protobuf.Api;
import com.google.protobuf.ApiKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ApiKt.kt */
@Metadata
@SourceDebugExtension({"SMAP\nApiKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ApiKt.kt\ncom/google/protobuf/ApiKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,332:1\n1#2:333\n*E\n"})
/* loaded from: classes5.dex */
public final class ApiKtKt {
    @NotNull
    /* renamed from: -initializeapi  reason: not valid java name */
    public static final Api m4675initializeapi(@NotNull Function1<? super ApiKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        ApiKt.Dsl.Companion companion = ApiKt.Dsl.Companion;
        Api.Builder newBuilder = Api.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        ApiKt.Dsl _create = companion._create(newBuilder);
        block.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final Api copy(@NotNull Api api, @NotNull Function1<? super ApiKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(api, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        ApiKt.Dsl.Companion companion = ApiKt.Dsl.Companion;
        Api.Builder builder = api.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        ApiKt.Dsl _create = companion._create(builder);
        block.invoke(_create);
        return _create._build();
    }

    @Nullable
    public static final SourceContext getSourceContextOrNull(@NotNull ApiOrBuilder apiOrBuilder) {
        Intrinsics.checkNotNullParameter(apiOrBuilder, "<this>");
        if (apiOrBuilder.hasSourceContext()) {
            return apiOrBuilder.getSourceContext();
        }
        return null;
    }
}
