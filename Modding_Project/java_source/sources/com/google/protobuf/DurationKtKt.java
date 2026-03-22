package com.google.protobuf;

import com.google.protobuf.Duration;
import com.google.protobuf.DurationKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: DurationKt.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDurationKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DurationKt.kt\ncom/google/protobuf/DurationKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,68:1\n1#2:69\n*E\n"})
/* loaded from: classes5.dex */
public final class DurationKtKt {
    @NotNull
    /* renamed from: -initializeduration  reason: not valid java name */
    public static final Duration m4679initializeduration(@NotNull Function1<? super DurationKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        DurationKt.Dsl.Companion companion = DurationKt.Dsl.Companion;
        Duration.Builder newBuilder = Duration.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        DurationKt.Dsl _create = companion._create(newBuilder);
        block.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final Duration copy(@NotNull Duration duration, @NotNull Function1<? super DurationKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(duration, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        DurationKt.Dsl.Companion companion = DurationKt.Dsl.Companion;
        Duration.Builder builder = duration.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        DurationKt.Dsl _create = companion._create(builder);
        block.invoke(_create);
        return _create._build();
    }
}
