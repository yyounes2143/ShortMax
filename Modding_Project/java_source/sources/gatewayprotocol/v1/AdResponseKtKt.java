package gatewayprotocol.v1;

import gatewayprotocol.v1.AdResponseKt;
import gatewayprotocol.v1.AdResponseOuterClass;
import gatewayprotocol.v1.ErrorOuterClass;
import gatewayprotocol.v1.WebviewConfiguration;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AdResponseKt.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAdResponseKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdResponseKt.kt\ngatewayprotocol/v1/AdResponseKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,274:1\n1#2:275\n*E\n"})
/* loaded from: classes7.dex */
public final class AdResponseKtKt {
    @NotNull
    /* renamed from: -initializeadResponse  reason: not valid java name */
    public static final AdResponseOuterClass.AdResponse m4860initializeadResponse(@NotNull Function1<? super AdResponseKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        AdResponseKt.Dsl.Companion companion = AdResponseKt.Dsl.Companion;
        AdResponseOuterClass.AdResponse.Builder newBuilder = AdResponseOuterClass.AdResponse.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        AdResponseKt.Dsl _create = companion._create(newBuilder);
        block.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final AdResponseOuterClass.AdResponse copy(@NotNull AdResponseOuterClass.AdResponse adResponse, @NotNull Function1<? super AdResponseKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(adResponse, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        AdResponseKt.Dsl.Companion companion = AdResponseKt.Dsl.Companion;
        AdResponseOuterClass.AdResponse.Builder builder = adResponse.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        AdResponseKt.Dsl _create = companion._create(builder);
        block.invoke(_create);
        return _create._build();
    }

    @Nullable
    public static final ErrorOuterClass.Error getErrorOrNull(@NotNull AdResponseOuterClass.AdResponseOrBuilder adResponseOrBuilder) {
        Intrinsics.checkNotNullParameter(adResponseOrBuilder, "<this>");
        if (adResponseOrBuilder.hasError()) {
            return adResponseOrBuilder.getError();
        }
        return null;
    }

    @Nullable
    public static final WebviewConfiguration.WebViewConfiguration getWebviewConfigurationOrNull(@NotNull AdResponseOuterClass.AdResponseOrBuilder adResponseOrBuilder) {
        Intrinsics.checkNotNullParameter(adResponseOrBuilder, "<this>");
        if (adResponseOrBuilder.hasWebviewConfiguration()) {
            return adResponseOrBuilder.getWebviewConfiguration();
        }
        return null;
    }
}
