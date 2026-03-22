package gatewayprotocol.v1;

import gatewayprotocol.v1.CampaignStateKt;
import gatewayprotocol.v1.CampaignStateOuterClass;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: CampaignStateKt.kt */
@Metadata
@SourceDebugExtension({"SMAP\nCampaignStateKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CampaignStateKt.kt\ngatewayprotocol/v1/CampaignStateKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,236:1\n1#2:237\n*E\n"})
/* loaded from: classes7.dex */
public final class CampaignStateKtKt {
    @NotNull
    /* renamed from: -initializecampaignState  reason: not valid java name */
    public static final CampaignStateOuterClass.CampaignState m4865initializecampaignState(@NotNull Function1<? super CampaignStateKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        CampaignStateKt.Dsl.Companion companion = CampaignStateKt.Dsl.Companion;
        CampaignStateOuterClass.CampaignState.Builder newBuilder = CampaignStateOuterClass.CampaignState.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        CampaignStateKt.Dsl _create = companion._create(newBuilder);
        block.invoke(_create);
        return _create._build();
    }

    @NotNull
    public static final CampaignStateOuterClass.CampaignState copy(@NotNull CampaignStateOuterClass.CampaignState campaignState, @NotNull Function1<? super CampaignStateKt.Dsl, Unit> block) {
        Intrinsics.checkNotNullParameter(campaignState, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        CampaignStateKt.Dsl.Companion companion = CampaignStateKt.Dsl.Companion;
        CampaignStateOuterClass.CampaignState.Builder builder = campaignState.toBuilder();
        Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
        CampaignStateKt.Dsl _create = companion._create(builder);
        block.invoke(_create);
        return _create._build();
    }
}
