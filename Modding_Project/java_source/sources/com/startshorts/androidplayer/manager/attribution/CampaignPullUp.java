package com.startshorts.androidplayer.manager.attribution;

import com.startshorts.androidplayer.utils.CoroutineUtil;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
/* compiled from: CampaignPullUp.kt */
@Metadata
/* loaded from: classes6.dex */
public final class CampaignPullUp {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final CampaignPullUp f41878a = new CampaignPullUp();

    private CampaignPullUp() {
    }

    public static /* synthetic */ r b(CampaignPullUp campaignPullUp, String str, String str2, boolean z10, boolean z11, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str2 = "";
        }
        if ((i10 & 4) != 0) {
            z10 = true;
        }
        if ((i10 & 8) != 0) {
            z11 = true;
        }
        return campaignPullUp.a(str, str2, z10, z11);
    }

    @NotNull
    public final r a(@NotNull String webInfo, @NotNull String requestUUID, boolean z10, boolean z11) {
        Intrinsics.checkNotNullParameter(webInfo, "webInfo");
        Intrinsics.checkNotNullParameter(requestUUID, "requestUUID");
        return CoroutineUtil.l(CoroutineUtil.f48072a, "allPullUp", false, new CampaignPullUp$allPullUp$1(webInfo, requestUUID, z10, z11, null), 2, null);
    }
}
