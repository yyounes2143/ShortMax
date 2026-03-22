package gatewayprotocol.v1;

import gatewayprotocol.v1.AdRequestOuterClass;
import gatewayprotocol.v1.BannerSizeKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: BannerSizeKt.kt */
@Metadata
@SourceDebugExtension({"SMAP\nBannerSizeKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BannerSizeKt.kt\ngatewayprotocol/v1/BannerSizeKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,68:1\n1#2:69\n*E\n"})
/* loaded from: classes7.dex */
public final class BannerSizeKtKt {
    @NotNull
    /* renamed from: -initializebannerSize  reason: not valid java name */
    public static final AdRequestOuterClass.BannerSize m4862initializebannerSize(@NotNull Function1<? super BannerSizeKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        BannerSizeKt.Dsl.Companion companion = BannerSizeKt.Dsl.Companion;
        AdRequestOuterClass.BannerSize.Builder newBuilder = AdRequestOuterClass.BannerSize.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        BannerSizeKt.Dsl _create = companion._create(newBuilder);
        block.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final AdRequestOuterClass.BannerSize copy(@NotNull AdRequestOuterClass.BannerSize bannerSize, @NotNull Function1<? super BannerSizeKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(bannerSize, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        BannerSizeKt.Dsl.Companion companion = BannerSizeKt.Dsl.Companion;
        AdRequestOuterClass.BannerSize.Builder builder = bannerSize.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        BannerSizeKt.Dsl _create = companion._create(builder);
        block.invoke(_create);
        return _create._build();
    }
}
