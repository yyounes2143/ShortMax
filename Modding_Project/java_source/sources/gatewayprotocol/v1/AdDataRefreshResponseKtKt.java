package gatewayprotocol.v1;

import gatewayprotocol.v1.AdDataRefreshResponseKt;
import gatewayprotocol.v1.AdDataRefreshResponseOuterClass;
import gatewayprotocol.v1.ErrorOuterClass;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AdDataRefreshResponseKt.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAdDataRefreshResponseKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdDataRefreshResponseKt.kt\ngatewayprotocol/v1/AdDataRefreshResponseKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,175:1\n1#2:176\n*E\n"})
/* loaded from: classes7.dex */
public final class AdDataRefreshResponseKtKt {
    @NotNull
    /* renamed from: -initializeadDataRefreshResponse  reason: not valid java name */
    public static final AdDataRefreshResponseOuterClass.AdDataRefreshResponse m4855initializeadDataRefreshResponse(@NotNull Function1<? super AdDataRefreshResponseKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        AdDataRefreshResponseKt.Dsl.Companion companion = AdDataRefreshResponseKt.Dsl.Companion;
        AdDataRefreshResponseOuterClass.AdDataRefreshResponse.Builder newBuilder = AdDataRefreshResponseOuterClass.AdDataRefreshResponse.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        AdDataRefreshResponseKt.Dsl _create = companion._create(newBuilder);
        block.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final AdDataRefreshResponseOuterClass.AdDataRefreshResponse copy(@NotNull AdDataRefreshResponseOuterClass.AdDataRefreshResponse adDataRefreshResponse, @NotNull Function1<? super AdDataRefreshResponseKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(adDataRefreshResponse, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        AdDataRefreshResponseKt.Dsl.Companion companion = AdDataRefreshResponseKt.Dsl.Companion;
        AdDataRefreshResponseOuterClass.AdDataRefreshResponse.Builder builder = adDataRefreshResponse.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        AdDataRefreshResponseKt.Dsl _create = companion._create(builder);
        block.invoke(_create);
        return _create._build();
    }

    @Nullable
    public static final ErrorOuterClass.Error getErrorOrNull(@NotNull AdDataRefreshResponseOuterClass.AdDataRefreshResponseOrBuilder adDataRefreshResponseOrBuilder) {
        Intrinsics.checkNotNullParameter(adDataRefreshResponseOrBuilder, "<this>");
        if (adDataRefreshResponseOrBuilder.hasError()) {
            return adDataRefreshResponseOrBuilder.getError();
        }
        return null;
    }
}
