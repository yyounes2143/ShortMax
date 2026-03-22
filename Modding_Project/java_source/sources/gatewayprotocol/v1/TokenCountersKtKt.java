package gatewayprotocol.v1;

import gatewayprotocol.v1.HeaderBiddingTokenOuterClass;
import gatewayprotocol.v1.TokenCountersKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: TokenCountersKt.kt */
@Metadata
@SourceDebugExtension({"SMAP\nTokenCountersKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TokenCountersKt.kt\ngatewayprotocol/v1/TokenCountersKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,109:1\n1#2:110\n*E\n"})
/* loaded from: classes7.dex */
public final class TokenCountersKtKt {
    @NotNull
    /* renamed from: -initializetokenCounters  reason: not valid java name */
    public static final HeaderBiddingTokenOuterClass.TokenCounters m4905initializetokenCounters(@NotNull Function1<? super TokenCountersKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        TokenCountersKt.Dsl.Companion companion = TokenCountersKt.Dsl.Companion;
        HeaderBiddingTokenOuterClass.TokenCounters.Builder newBuilder = HeaderBiddingTokenOuterClass.TokenCounters.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        TokenCountersKt.Dsl _create = companion._create(newBuilder);
        block.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final HeaderBiddingTokenOuterClass.TokenCounters copy(@NotNull HeaderBiddingTokenOuterClass.TokenCounters tokenCounters, @NotNull Function1<? super TokenCountersKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(tokenCounters, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        TokenCountersKt.Dsl.Companion companion = TokenCountersKt.Dsl.Companion;
        HeaderBiddingTokenOuterClass.TokenCounters.Builder builder = tokenCounters.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        TokenCountersKt.Dsl _create = companion._create(builder);
        block.invoke(_create);
        return _create._build();
    }
}
