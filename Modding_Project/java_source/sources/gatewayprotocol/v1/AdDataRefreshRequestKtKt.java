package gatewayprotocol.v1;

import gatewayprotocol.v1.AdDataRefreshRequestKt;
import gatewayprotocol.v1.AdDataRefreshRequestOuterClass;
import gatewayprotocol.v1.CampaignStateOuterClass;
import gatewayprotocol.v1.DynamicDeviceInfoOuterClass;
import gatewayprotocol.v1.SessionCountersOuterClass;
import gatewayprotocol.v1.StaticDeviceInfoOuterClass;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AdDataRefreshRequestKt.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAdDataRefreshRequestKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdDataRefreshRequestKt.kt\ngatewayprotocol/v1/AdDataRefreshRequestKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,240:1\n1#2:241\n*E\n"})
/* loaded from: classes7.dex */
public final class AdDataRefreshRequestKtKt {
    @NotNull
    /* renamed from: -initializeadDataRefreshRequest  reason: not valid java name */
    public static final AdDataRefreshRequestOuterClass.AdDataRefreshRequest m4854initializeadDataRefreshRequest(@NotNull Function1<? super AdDataRefreshRequestKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        AdDataRefreshRequestKt.Dsl.Companion companion = AdDataRefreshRequestKt.Dsl.Companion;
        AdDataRefreshRequestOuterClass.AdDataRefreshRequest.Builder newBuilder = AdDataRefreshRequestOuterClass.AdDataRefreshRequest.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        AdDataRefreshRequestKt.Dsl _create = companion._create(newBuilder);
        block.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final AdDataRefreshRequestOuterClass.AdDataRefreshRequest copy(@NotNull AdDataRefreshRequestOuterClass.AdDataRefreshRequest adDataRefreshRequest, @NotNull Function1<? super AdDataRefreshRequestKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(adDataRefreshRequest, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        AdDataRefreshRequestKt.Dsl.Companion companion = AdDataRefreshRequestKt.Dsl.Companion;
        AdDataRefreshRequestOuterClass.AdDataRefreshRequest.Builder builder = adDataRefreshRequest.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        AdDataRefreshRequestKt.Dsl _create = companion._create(builder);
        block.invoke(_create);
        return _create._build();
    }

    @Nullable
    public static final CampaignStateOuterClass.CampaignState getCampaignStateOrNull(@NotNull AdDataRefreshRequestOuterClass.AdDataRefreshRequestOrBuilder adDataRefreshRequestOrBuilder) {
        Intrinsics.checkNotNullParameter(adDataRefreshRequestOrBuilder, "<this>");
        if (adDataRefreshRequestOrBuilder.hasCampaignState()) {
            return adDataRefreshRequestOrBuilder.getCampaignState();
        }
        return null;
    }

    @Nullable
    public static final DynamicDeviceInfoOuterClass.DynamicDeviceInfo getDynamicDeviceInfoOrNull(@NotNull AdDataRefreshRequestOuterClass.AdDataRefreshRequestOrBuilder adDataRefreshRequestOrBuilder) {
        Intrinsics.checkNotNullParameter(adDataRefreshRequestOrBuilder, "<this>");
        if (adDataRefreshRequestOrBuilder.hasDynamicDeviceInfo()) {
            return adDataRefreshRequestOrBuilder.getDynamicDeviceInfo();
        }
        return null;
    }

    @Nullable
    public static final SessionCountersOuterClass.SessionCounters getSessionCountersOrNull(@NotNull AdDataRefreshRequestOuterClass.AdDataRefreshRequestOrBuilder adDataRefreshRequestOrBuilder) {
        Intrinsics.checkNotNullParameter(adDataRefreshRequestOrBuilder, "<this>");
        if (adDataRefreshRequestOrBuilder.hasSessionCounters()) {
            return adDataRefreshRequestOrBuilder.getSessionCounters();
        }
        return null;
    }

    @Nullable
    public static final StaticDeviceInfoOuterClass.StaticDeviceInfo getStaticDeviceInfoOrNull(@NotNull AdDataRefreshRequestOuterClass.AdDataRefreshRequestOrBuilder adDataRefreshRequestOrBuilder) {
        Intrinsics.checkNotNullParameter(adDataRefreshRequestOrBuilder, "<this>");
        if (adDataRefreshRequestOrBuilder.hasStaticDeviceInfo()) {
            return adDataRefreshRequestOrBuilder.getStaticDeviceInfo();
        }
        return null;
    }
}
