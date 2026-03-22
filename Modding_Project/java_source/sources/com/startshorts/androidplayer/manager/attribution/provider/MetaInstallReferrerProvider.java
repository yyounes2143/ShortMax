package com.startshorts.androidplayer.manager.attribution.provider;

import android.content.Context;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.attribution.CampaignType;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MetaInstallReferrerProvider.kt */
@Metadata
/* loaded from: classes6.dex */
public final class MetaInstallReferrerProvider extends BaseCampaignProvider {
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    public static final a f42040i = new a(null);

    /* renamed from: g  reason: collision with root package name */
    private int f42041g;

    /* renamed from: h  reason: collision with root package name */
    private volatile boolean f42042h;

    /* compiled from: MetaInstallReferrerProvider.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final r v(String str) {
        CoroutineUtil coroutineUtil = CoroutineUtil.f48072a;
        return CoroutineUtil.l(coroutineUtil, a() + ":handleQueryFailed", false, new MetaInstallReferrerProvider$handleQueryFailed$1(str, this, null), 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final r w(String str) {
        CoroutineUtil coroutineUtil = CoroutineUtil.f48072a;
        return CoroutineUtil.l(coroutineUtil, a() + ":handleQuerySuccess", false, new MetaInstallReferrerProvider$handleQuerySuccess$1(str, this, null), 2, null);
    }

    private final void x() {
        y();
        this.f42041g = 0;
        this.f42042h = true;
        Logger.f41511a.e("CampaignNewTag", "startPolling");
        CoroutineUtil.l(CoroutineUtil.f48072a, "MetaInstallReferrerProvider:polling", false, new MetaInstallReferrerProvider$startPolling$1(this, null), 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void y() {
        this.f42042h = false;
    }

    @Override // ie.j
    @NotNull
    public CampaignType a() {
        return CampaignType.META_INSTALL_REFERRER;
    }

    @Override // com.startshorts.androidplayer.manager.attribution.provider.BaseCampaignProvider
    @Nullable
    protected Object l(@NotNull Context context, @NotNull rs.c<? super Unit> cVar) {
        Logger.f41511a.e("CampaignNewTag", "queryInternal MetaInstallReferrerProvider");
        f();
        m();
        x();
        return Unit.f60915a;
    }

    @Override // ie.j
    @NotNull
    public String name() {
        return "MetaInstallReferrerProvider";
    }
}
