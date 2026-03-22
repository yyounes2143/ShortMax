package com.startshorts.androidplayer.manager.attribution.pullup;

import android.content.Context;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MetaInstallReferrerPullUp.kt */
@Metadata
/* loaded from: classes6.dex */
public final class MetaInstallReferrerPullUp extends BaseCampaignPullUp {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final a f42096c = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private int f42097a;

    /* renamed from: b  reason: collision with root package name */
    private volatile boolean f42098b;

    /* compiled from: MetaInstallReferrerPullUp.kt */
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
    public final void i(String str, String str2, int i10, String str3) {
        Logger logger = Logger.f41511a;
        logger.e("MetaInstallReferrerPullUp", "MetaInstall PullUp handleQuerySuccess -> " + str2);
        CoroutineUtil.l(CoroutineUtil.f48072a, "reportMetaInstallReferrerPullUp", false, new MetaInstallReferrerPullUp$handleQuerySuccess$1(str2, str, i10, null), 2, null);
    }

    private final void j(String str, String str2) {
        k();
        this.f42097a = 0;
        this.f42098b = true;
        Logger.f41511a.e("MetaInstallReferrerPullUp", "startPolling");
        CoroutineUtil.l(CoroutineUtil.f48072a, "MetaInstallReferrerPullUp:polling", false, new MetaInstallReferrerPullUp$startPolling$1(this, str, str2, null), 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void k() {
        this.f42098b = false;
    }

    @Override // com.startshorts.androidplayer.manager.attribution.pullup.BaseCampaignPullUp
    @Nullable
    protected Object c(@NotNull Context context, @NotNull String str, @NotNull String str2, @NotNull rs.c<? super Unit> cVar) {
        j(str, str2);
        return Unit.f60915a;
    }

    @Override // je.b
    @NotNull
    public String name() {
        return "MetaInstallReferrerPullUp";
    }
}
