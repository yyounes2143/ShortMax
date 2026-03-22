package gatewayprotocol.v1;

import gatewayprotocol.v1.HeaderBiddingAdMarkupKt;
import gatewayprotocol.v1.HeaderBiddingAdMarkupOuterClass;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: HeaderBiddingAdMarkupKt.kt */
@Metadata
@SourceDebugExtension({"SMAP\nHeaderBiddingAdMarkupKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HeaderBiddingAdMarkupKt.kt\ngatewayprotocol/v1/HeaderBiddingAdMarkupKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,117:1\n1#2:118\n*E\n"})
/* loaded from: classes7.dex */
public final class HeaderBiddingAdMarkupKtKt {
    @NotNull
    /* renamed from: -initializeheaderBiddingAdMarkup  reason: not valid java name */
    public static final HeaderBiddingAdMarkupOuterClass.HeaderBiddingAdMarkup m4879initializeheaderBiddingAdMarkup(@NotNull Function1<? super HeaderBiddingAdMarkupKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        HeaderBiddingAdMarkupKt.Dsl.Companion companion = HeaderBiddingAdMarkupKt.Dsl.Companion;
        HeaderBiddingAdMarkupOuterClass.HeaderBiddingAdMarkup.Builder newBuilder = HeaderBiddingAdMarkupOuterClass.HeaderBiddingAdMarkup.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        HeaderBiddingAdMarkupKt.Dsl _create = companion._create(newBuilder);
        block.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final HeaderBiddingAdMarkupOuterClass.HeaderBiddingAdMarkup copy(@NotNull HeaderBiddingAdMarkupOuterClass.HeaderBiddingAdMarkup headerBiddingAdMarkup, @NotNull Function1<? super HeaderBiddingAdMarkupKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(headerBiddingAdMarkup, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        HeaderBiddingAdMarkupKt.Dsl.Companion companion = HeaderBiddingAdMarkupKt.Dsl.Companion;
        HeaderBiddingAdMarkupOuterClass.HeaderBiddingAdMarkup.Builder builder = headerBiddingAdMarkup.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        HeaderBiddingAdMarkupKt.Dsl _create = companion._create(builder);
        block.invoke(_create);
        return _create._build();
    }
}
