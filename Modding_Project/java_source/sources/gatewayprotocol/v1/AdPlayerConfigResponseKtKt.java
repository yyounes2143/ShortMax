package gatewayprotocol.v1;

import gatewayprotocol.v1.AdPlayerConfigResponseKt;
import gatewayprotocol.v1.AdPlayerConfigResponseOuterClass;
import gatewayprotocol.v1.ErrorOuterClass;
import gatewayprotocol.v1.WebviewConfiguration;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AdPlayerConfigResponseKt.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAdPlayerConfigResponseKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdPlayerConfigResponseKt.kt\ngatewayprotocol/v1/AdPlayerConfigResponseKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,270:1\n1#2:271\n*E\n"})
/* loaded from: classes7.dex */
public final class AdPlayerConfigResponseKtKt {
    @NotNull
    /* renamed from: -initializeadPlayerConfigResponse  reason: not valid java name */
    public static final AdPlayerConfigResponseOuterClass.AdPlayerConfigResponse m4858initializeadPlayerConfigResponse(@NotNull Function1<? super AdPlayerConfigResponseKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        AdPlayerConfigResponseKt.Dsl.Companion companion = AdPlayerConfigResponseKt.Dsl.Companion;
        AdPlayerConfigResponseOuterClass.AdPlayerConfigResponse.Builder newBuilder = AdPlayerConfigResponseOuterClass.AdPlayerConfigResponse.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        AdPlayerConfigResponseKt.Dsl _create = companion._create(newBuilder);
        block.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final AdPlayerConfigResponseOuterClass.AdPlayerConfigResponse copy(@NotNull AdPlayerConfigResponseOuterClass.AdPlayerConfigResponse adPlayerConfigResponse, @NotNull Function1<? super AdPlayerConfigResponseKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(adPlayerConfigResponse, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        AdPlayerConfigResponseKt.Dsl.Companion companion = AdPlayerConfigResponseKt.Dsl.Companion;
        AdPlayerConfigResponseOuterClass.AdPlayerConfigResponse.Builder builder = adPlayerConfigResponse.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        AdPlayerConfigResponseKt.Dsl _create = companion._create(builder);
        block.invoke(_create);
        return _create._build();
    }

    @Nullable
    public static final ErrorOuterClass.Error getErrorOrNull(@NotNull AdPlayerConfigResponseOuterClass.AdPlayerConfigResponseOrBuilder adPlayerConfigResponseOrBuilder) {
        Intrinsics.checkNotNullParameter(adPlayerConfigResponseOrBuilder, "<this>");
        if (adPlayerConfigResponseOrBuilder.hasError()) {
            return adPlayerConfigResponseOrBuilder.getError();
        }
        return null;
    }

    @Nullable
    public static final WebviewConfiguration.WebViewConfiguration getWebviewConfigurationOrNull(@NotNull AdPlayerConfigResponseOuterClass.AdPlayerConfigResponseOrBuilder adPlayerConfigResponseOrBuilder) {
        Intrinsics.checkNotNullParameter(adPlayerConfigResponseOrBuilder, "<this>");
        if (adPlayerConfigResponseOrBuilder.hasWebviewConfiguration()) {
            return adPlayerConfigResponseOrBuilder.getWebviewConfiguration();
        }
        return null;
    }
}
