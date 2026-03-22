package gatewayprotocol.v1;

import gatewayprotocol.v1.FeatureFlagsKt;
import gatewayprotocol.v1.NativeConfigurationOuterClass;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: FeatureFlagsKt.kt */
@Metadata
@SourceDebugExtension({"SMAP\nFeatureFlagsKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FeatureFlagsKt.kt\ngatewayprotocol/v1/FeatureFlagsKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,188:1\n1#2:189\n*E\n"})
/* loaded from: classes7.dex */
public final class FeatureFlagsKtKt {
    @NotNull
    /* renamed from: -initializefeatureFlags  reason: not valid java name */
    public static final NativeConfigurationOuterClass.FeatureFlags m4877initializefeatureFlags(@NotNull Function1<? super FeatureFlagsKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        FeatureFlagsKt.Dsl.Companion companion = FeatureFlagsKt.Dsl.Companion;
        NativeConfigurationOuterClass.FeatureFlags.Builder newBuilder = NativeConfigurationOuterClass.FeatureFlags.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        FeatureFlagsKt.Dsl _create = companion._create(newBuilder);
        block.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final NativeConfigurationOuterClass.FeatureFlags copy(@NotNull NativeConfigurationOuterClass.FeatureFlags featureFlags, @NotNull Function1<? super FeatureFlagsKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(featureFlags, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        FeatureFlagsKt.Dsl.Companion companion = FeatureFlagsKt.Dsl.Companion;
        NativeConfigurationOuterClass.FeatureFlags.Builder builder = featureFlags.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        FeatureFlagsKt.Dsl _create = companion._create(builder);
        block.invoke(_create);
        return _create._build();
    }
}
