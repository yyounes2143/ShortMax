package com.google.protobuf;

import com.google.protobuf.Mixin;
import com.google.protobuf.MixinKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: MixinKt.kt */
@Metadata
@SourceDebugExtension({"SMAP\nMixinKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MixinKt.kt\ncom/google/protobuf/MixinKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,68:1\n1#2:69\n*E\n"})
/* loaded from: classes5.dex */
public final class MixinKtKt {
    @NotNull
    /* renamed from: -initializemixin  reason: not valid java name */
    public static final Mixin m4691initializemixin(@NotNull Function1<? super MixinKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        MixinKt.Dsl.Companion companion = MixinKt.Dsl.Companion;
        Mixin.Builder newBuilder = Mixin.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        MixinKt.Dsl _create = companion._create(newBuilder);
        block.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final Mixin copy(@NotNull Mixin mixin, @NotNull Function1<? super MixinKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(mixin, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        MixinKt.Dsl.Companion companion = MixinKt.Dsl.Companion;
        Mixin.Builder builder = mixin.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        MixinKt.Dsl _create = companion._create(builder);
        block.invoke(_create);
        return _create._build();
    }
}
