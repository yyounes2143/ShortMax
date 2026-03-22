package com.startshorts.androidplayer.repo.ad;

import com.startshorts.androidplayer.repo.ad.AdConfigRemoteDS;
import com.startshorts.androidplayer.repo.ad.AdConfigRepo;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import kotlin.Metadata;
import kotlin.c;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.r;
import ms.i;
import org.jetbrains.annotations.NotNull;
/* compiled from: AdConfigRepo.kt */
@Metadata
/* loaded from: classes7.dex */
public final class AdConfigRepo {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final AdConfigRepo f43114a = new AdConfigRepo();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final i f43115b = c.b(new Function0() { // from class: dg.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            AdConfigRemoteDS d10;
            d10 = AdConfigRepo.d();
            return d10;
        }
    });

    private AdConfigRepo() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final AdConfigRemoteDS c() {
        return (AdConfigRemoteDS) f43115b.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AdConfigRemoteDS d() {
        return new AdConfigRemoteDS();
    }

    @NotNull
    public final r e() {
        return CoroutineUtil.l(CoroutineUtil.f48072a, "queryAdConfig", false, new AdConfigRepo$queryAdConfig$1(null), 2, null);
    }
}
