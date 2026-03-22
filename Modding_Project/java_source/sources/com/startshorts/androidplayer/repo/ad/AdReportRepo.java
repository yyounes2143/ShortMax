package com.startshorts.androidplayer.repo.ad;

import com.startshorts.androidplayer.repo.ad.AdReportRemoteDS;
import com.startshorts.androidplayer.repo.ad.AdReportRepo;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import kotlin.Metadata;
import kotlin.c;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.r;
import ms.i;
import org.jetbrains.annotations.NotNull;
/* compiled from: AdReportRepo.kt */
@Metadata
/* loaded from: classes7.dex */
public final class AdReportRepo {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final AdReportRepo f43128a = new AdReportRepo();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final i f43129b = c.b(new Function0() { // from class: dg.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            AdReportRemoteDS e10;
            e10 = AdReportRepo.e();
            return e10;
        }
    });

    private AdReportRepo() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final AdReportRemoteDS d() {
        return (AdReportRemoteDS) f43129b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AdReportRemoteDS e() {
        return new AdReportRemoteDS();
    }

    @NotNull
    public final r c(@NotNull String ecpm, @NotNull String adId, @NotNull String adScene, @NotNull String shortPlayCode, int i10, int i11, @NotNull String currency) {
        Intrinsics.checkNotNullParameter(ecpm, "ecpm");
        Intrinsics.checkNotNullParameter(adId, "adId");
        Intrinsics.checkNotNullParameter(adScene, "adScene");
        Intrinsics.checkNotNullParameter(shortPlayCode, "shortPlayCode");
        Intrinsics.checkNotNullParameter(currency, "currency");
        return CoroutineUtil.l(CoroutineUtil.f48072a, "adReport", false, new AdReportRepo$adReport$1(ecpm, adId, adScene, shortPlayCode, i10, i11, currency, null), 2, null);
    }
}
