package com.startshorts.androidplayer.manager.immersion.feature;

import com.adjust.sdk.Constants;
import com.startshorts.androidplayer.bean.immersion.ImmersionParams;
import com.startshorts.androidplayer.bean.purchase.RecommendCoinSku;
import com.startshorts.androidplayer.bean.shorts.QueryCampaignRecommendShortsResult;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature;
import com.startshorts.androidplayer.repo.campaign.CampaignRepo;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: RecommendShortsFeature.kt */
@Metadata
/* loaded from: classes6.dex */
public final class q implements IImmersionFeature {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f42658a = new a(null);

    /* compiled from: RecommendShortsFeature.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean a(@NotNull ImmersionParams params) {
            Intrinsics.checkNotNullParameter(params, "params");
            if ((Intrinsics.areEqual(params.getFrom(), Constants.DEEPLINK) || Intrinsics.areEqual(params.getFrom(), "backup_drama")) && !ud.b.f68412a.a0()) {
                return true;
            }
            return false;
        }

        private a() {
        }
    }

    /* compiled from: RecommendShortsFeature.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public /* synthetic */ class b {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[IImmersionFeature.MessageType.values().length];
            try {
                iArr[IImmersionFeature.MessageType.ACTIVITY_ON_RELEASE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @Override // com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature
    public void a(@NotNull k message) {
        Object obj;
        boolean z10;
        Intrinsics.checkNotNullParameter(message, "message");
        if (b.$EnumSwitchMapping$0[message.b().ordinal()] == 1) {
            HashMap<String, Object> a10 = message.a();
            ImmersionParams immersionParams = null;
            if (a10 != null) {
                obj = a10.get("immersion_params");
            } else {
                obj = null;
            }
            if (obj instanceof ImmersionParams) {
                immersionParams = (ImmersionParams) obj;
            }
            if (immersionParams != null && f42658a.a(immersionParams)) {
                QueryCampaignRecommendShortsResult v10 = CampaignRepo.f43678a.v();
                if (v10 != null) {
                    Logger logger = Logger.f41511a;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("existSkuInfo(");
                    List<RecommendCoinSku> skuInfos = v10.getSkuInfos();
                    if (skuInfos != null && !skuInfos.isEmpty()) {
                        z10 = false;
                    } else {
                        z10 = true;
                    }
                    sb2.append(!z10);
                    sb2.append(')');
                    logger.h("RecommendShortsFeature", sb2.toString());
                    List<RecommendCoinSku> skuInfos2 = v10.getSkuInfos();
                    if (skuInfos2 != null && !skuInfos2.isEmpty()) {
                        ud.b.f68412a.s4(-1L);
                    } else {
                        ud.b.f68412a.s4(0L);
                    }
                }
                com.startshorts.androidplayer.manager.dialog.home.h.f42434a.b(true);
            }
        }
    }

    @Override // com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature
    @NotNull
    public IImmersionFeature.FeatureType type() {
        return IImmersionFeature.FeatureType.RECOMMEND_SHORTS;
    }

    @Override // com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature
    public void release() {
    }
}
