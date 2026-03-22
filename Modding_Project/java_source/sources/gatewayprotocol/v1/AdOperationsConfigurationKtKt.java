package gatewayprotocol.v1;

import gatewayprotocol.v1.AdOperationsConfigurationKt;
import gatewayprotocol.v1.NativeConfigurationOuterClass;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: AdOperationsConfigurationKt.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAdOperationsConfigurationKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdOperationsConfigurationKt.kt\ngatewayprotocol/v1/AdOperationsConfigurationKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,113:1\n1#2:114\n*E\n"})
/* loaded from: classes7.dex */
public final class AdOperationsConfigurationKtKt {
    @NotNull
    /* renamed from: -initializeadOperationsConfiguration  reason: not valid java name */
    public static final NativeConfigurationOuterClass.AdOperationsConfiguration m4856initializeadOperationsConfiguration(@NotNull Function1<? super AdOperationsConfigurationKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        AdOperationsConfigurationKt.Dsl.Companion companion = AdOperationsConfigurationKt.Dsl.Companion;
        NativeConfigurationOuterClass.AdOperationsConfiguration.Builder newBuilder = NativeConfigurationOuterClass.AdOperationsConfiguration.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        AdOperationsConfigurationKt.Dsl _create = companion._create(newBuilder);
        block.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final NativeConfigurationOuterClass.AdOperationsConfiguration copy(@NotNull NativeConfigurationOuterClass.AdOperationsConfiguration adOperationsConfiguration, @NotNull Function1<? super AdOperationsConfigurationKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(adOperationsConfiguration, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        AdOperationsConfigurationKt.Dsl.Companion companion = AdOperationsConfigurationKt.Dsl.Companion;
        NativeConfigurationOuterClass.AdOperationsConfiguration.Builder builder = adOperationsConfiguration.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        AdOperationsConfigurationKt.Dsl _create = companion._create(builder);
        block.invoke(_create);
        return _create._build();
    }
}
