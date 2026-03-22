package com.unity3d.ads.core.data.repository;

import com.google.protobuf.ByteString;
import com.unity3d.ads.core.domain.GetSharedDataTimestamps;
import gatewayprotocol.v1.CampaignKt;
import gatewayprotocol.v1.CampaignStateKt;
import gatewayprotocol.v1.CampaignStateOuterClass;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.p0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.flow.o;
import kt.e;
import ms.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AndroidCampaignRepository.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAndroidCampaignRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidCampaignRepository.kt\ncom/unity3d/ads/core/data/repository/AndroidCampaignRepository\n+ 2 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowKt\n+ 3 CampaignKt.kt\ngatewayprotocol/v1/CampaignKtKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 6 CampaignStateKt.kt\ngatewayprotocol/v1/CampaignStateKtKt\n+ 7 CampaignStateKt.kt\ngatewayprotocol/v1/CampaignStateKt$Dsl\n*L\n1#1,50:1\n230#2,5:51\n230#2,5:58\n206#3:56\n206#3:63\n1#4:57\n1#4:64\n1#4:76\n3190#5,10:65\n10#6:75\n203#7,2:77\n104#7,2:79\n*S KotlinDebug\n*F\n+ 1 AndroidCampaignRepository.kt\ncom/unity3d/ads/core/data/repository/AndroidCampaignRepository\n*L\n19#1:51,5\n33#1:58,5\n24#1:56\n38#1:63\n24#1:57\n38#1:64\n45#1:76\n43#1:65,10\n45#1:75\n46#1:77,2\n47#1:79,2\n*E\n"})
/* loaded from: classes7.dex */
public final class AndroidCampaignRepository implements CampaignRepository {
    @NotNull
    private final e<Map<String, CampaignStateOuterClass.Campaign>> campaigns;
    @NotNull
    private final GetSharedDataTimestamps getSharedDataTimestamps;

    public AndroidCampaignRepository(@NotNull GetSharedDataTimestamps getSharedDataTimestamps) {
        Intrinsics.checkNotNullParameter(getSharedDataTimestamps, "getSharedDataTimestamps");
        this.getSharedDataTimestamps = getSharedDataTimestamps;
        this.campaigns = o.a(p0.i());
    }

    @Override // com.unity3d.ads.core.data.repository.CampaignRepository
    @Nullable
    public CampaignStateOuterClass.Campaign getCampaign(@NotNull ByteString opportunityId) {
        Intrinsics.checkNotNullParameter(opportunityId, "opportunityId");
        return this.campaigns.getValue().get(opportunityId.toStringUtf8());
    }

    @Override // com.unity3d.ads.core.data.repository.CampaignRepository
    @NotNull
    public CampaignStateOuterClass.CampaignState getCampaignState() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : this.campaigns.getValue().values()) {
            if (((CampaignStateOuterClass.Campaign) obj).hasShowTimestamp()) {
                arrayList.add(obj);
            } else {
                arrayList2.add(obj);
            }
        }
        Pair pair = new Pair(arrayList, arrayList2);
        CampaignStateKt.Dsl.Companion companion = CampaignStateKt.Dsl.Companion;
        CampaignStateOuterClass.CampaignState.Builder newBuilder = CampaignStateOuterClass.CampaignState.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        CampaignStateKt.Dsl _create = companion._create(newBuilder);
        _create.addAllShownCampaigns(_create.getShownCampaigns(), (List) pair.b());
        _create.addAllLoadedCampaigns(_create.getLoadedCampaigns(), (List) pair.d());
        return _create._build();
    }

    @Override // com.unity3d.ads.core.data.repository.CampaignRepository
    public void removeState(@NotNull ByteString opportunityId) {
        Map<String, CampaignStateOuterClass.Campaign> value;
        String stringUtf8;
        Intrinsics.checkNotNullParameter(opportunityId, "opportunityId");
        e<Map<String, CampaignStateOuterClass.Campaign>> eVar = this.campaigns;
        do {
            value = eVar.getValue();
            stringUtf8 = opportunityId.toStringUtf8();
            Intrinsics.checkNotNullExpressionValue(stringUtf8, "opportunityId.toStringUtf8()");
        } while (!eVar.b(value, p0.n(value, stringUtf8)));
    }

    @Override // com.unity3d.ads.core.data.repository.CampaignRepository
    public void setCampaign(@NotNull ByteString opportunityId, @NotNull CampaignStateOuterClass.Campaign campaign) {
        Map<String, CampaignStateOuterClass.Campaign> value;
        Intrinsics.checkNotNullParameter(opportunityId, "opportunityId");
        Intrinsics.checkNotNullParameter(campaign, "campaign");
        e<Map<String, CampaignStateOuterClass.Campaign>> eVar = this.campaigns;
        do {
            value = eVar.getValue();
        } while (!eVar.b(value, p0.r(value, k.a(opportunityId.toStringUtf8(), campaign))));
    }

    @Override // com.unity3d.ads.core.data.repository.CampaignRepository
    public void setLoadTimestamp(@NotNull ByteString opportunityId) {
        Intrinsics.checkNotNullParameter(opportunityId, "opportunityId");
        CampaignStateOuterClass.Campaign campaign = getCampaign(opportunityId);
        if (campaign != null) {
            CampaignKt.Dsl.Companion companion = CampaignKt.Dsl.Companion;
            CampaignStateOuterClass.Campaign.Builder builder = campaign.toBuilder();
            Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
            CampaignKt.Dsl _create = companion._create(builder);
            _create.setLoadTimestamp(this.getSharedDataTimestamps.invoke());
            Unit unit = Unit.f60915a;
            setCampaign(opportunityId, _create._build());
        }
    }

    @Override // com.unity3d.ads.core.data.repository.CampaignRepository
    public void setShowTimestamp(@NotNull ByteString opportunityId) {
        Intrinsics.checkNotNullParameter(opportunityId, "opportunityId");
        CampaignStateOuterClass.Campaign campaign = getCampaign(opportunityId);
        if (campaign != null) {
            CampaignKt.Dsl.Companion companion = CampaignKt.Dsl.Companion;
            CampaignStateOuterClass.Campaign.Builder builder = campaign.toBuilder();
            Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
            CampaignKt.Dsl _create = companion._create(builder);
            _create.setShowTimestamp(this.getSharedDataTimestamps.invoke());
            Unit unit = Unit.f60915a;
            setCampaign(opportunityId, _create._build());
        }
    }
}
