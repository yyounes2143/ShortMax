package gatewayprotocol.v1;

import gatewayprotocol.v1.AllowedPiiOuterClass;
import gatewayprotocol.v1.MutableDataKt;
import gatewayprotocol.v1.MutableDataOuterClass;
import gatewayprotocol.v1.SessionCountersOuterClass;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MutableDataKt.kt */
@Metadata
@SourceDebugExtension({"SMAP\nMutableDataKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MutableDataKt.kt\ngatewayprotocol/v1/MutableDataKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,323:1\n1#2:324\n*E\n"})
/* loaded from: classes7.dex */
public final class MutableDataKtKt {
    @NotNull
    /* renamed from: -initializemutableData  reason: not valid java name */
    public static final MutableDataOuterClass.MutableData m4887initializemutableData(@NotNull Function1<? super MutableDataKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        MutableDataKt.Dsl.Companion companion = MutableDataKt.Dsl.Companion;
        MutableDataOuterClass.MutableData.Builder newBuilder = MutableDataOuterClass.MutableData.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        MutableDataKt.Dsl _create = companion._create(newBuilder);
        block.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final MutableDataOuterClass.MutableData copy(@NotNull MutableDataOuterClass.MutableData mutableData, @NotNull Function1<? super MutableDataKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(mutableData, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        MutableDataKt.Dsl.Companion companion = MutableDataKt.Dsl.Companion;
        MutableDataOuterClass.MutableData.Builder builder = mutableData.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        MutableDataKt.Dsl _create = companion._create(builder);
        block.invoke(_create);
        return _create._build();
    }

    @Nullable
    public static final AllowedPiiOuterClass.AllowedPii getAllowedPiiOrNull(@NotNull MutableDataOuterClass.MutableDataOrBuilder mutableDataOrBuilder) {
        Intrinsics.checkNotNullParameter(mutableDataOrBuilder, "<this>");
        if (mutableDataOrBuilder.hasAllowedPii()) {
            return mutableDataOrBuilder.getAllowedPii();
        }
        return null;
    }

    @Nullable
    public static final SessionCountersOuterClass.SessionCounters getSessionCountersOrNull(@NotNull MutableDataOuterClass.MutableDataOrBuilder mutableDataOrBuilder) {
        Intrinsics.checkNotNullParameter(mutableDataOrBuilder, "<this>");
        if (mutableDataOrBuilder.hasSessionCounters()) {
            return mutableDataOrBuilder.getSessionCounters();
        }
        return null;
    }
}
