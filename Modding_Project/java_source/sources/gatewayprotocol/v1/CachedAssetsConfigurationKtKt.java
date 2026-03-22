package gatewayprotocol.v1;

import gatewayprotocol.v1.CachedAssetsConfigurationKt;
import gatewayprotocol.v1.NativeConfigurationOuterClass;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: CachedAssetsConfigurationKt.kt */
@Metadata
@SourceDebugExtension({"SMAP\nCachedAssetsConfigurationKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CachedAssetsConfigurationKt.kt\ngatewayprotocol/v1/CachedAssetsConfigurationKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,88:1\n1#2:89\n*E\n"})
/* loaded from: classes7.dex */
public final class CachedAssetsConfigurationKtKt {
    @NotNull
    /* renamed from: -initializecachedAssetsConfiguration  reason: not valid java name */
    public static final NativeConfigurationOuterClass.CachedAssetsConfiguration m4863initializecachedAssetsConfiguration(@NotNull Function1<? super CachedAssetsConfigurationKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        CachedAssetsConfigurationKt.Dsl.Companion companion = CachedAssetsConfigurationKt.Dsl.Companion;
        NativeConfigurationOuterClass.CachedAssetsConfiguration.Builder newBuilder = NativeConfigurationOuterClass.CachedAssetsConfiguration.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        CachedAssetsConfigurationKt.Dsl _create = companion._create(newBuilder);
        block.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final NativeConfigurationOuterClass.CachedAssetsConfiguration copy(@NotNull NativeConfigurationOuterClass.CachedAssetsConfiguration cachedAssetsConfiguration, @NotNull Function1<? super CachedAssetsConfigurationKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(cachedAssetsConfiguration, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        CachedAssetsConfigurationKt.Dsl.Companion companion = CachedAssetsConfigurationKt.Dsl.Companion;
        NativeConfigurationOuterClass.CachedAssetsConfiguration.Builder builder = cachedAssetsConfiguration.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        CachedAssetsConfigurationKt.Dsl _create = companion._create(builder);
        block.invoke(_create);
        return _create._build();
    }
}
