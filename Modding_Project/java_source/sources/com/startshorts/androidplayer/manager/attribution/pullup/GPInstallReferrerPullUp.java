package com.startshorts.androidplayer.manager.attribution.pullup;

import android.content.Context;
import com.android.installreferrer.api.InstallReferrerClient;
import com.android.installreferrer.api.InstallReferrerStateListener;
import com.startshorts.androidplayer.bean.eventbus.CampaignRefreshSuccessEvent;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.repo.account.AccountRepo;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: GPInstallReferrerPullUp.kt */
@Metadata
/* loaded from: classes6.dex */
public final class GPInstallReferrerPullUp extends BaseCampaignPullUp {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f42082a = new a(null);

    /* compiled from: GPInstallReferrerPullUp.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: GPInstallReferrerPullUp.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class b implements InstallReferrerStateListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ InstallReferrerClient f42083a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ GPInstallReferrerPullUp f42084b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f42085c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ String f42086d;

        b(InstallReferrerClient installReferrerClient, GPInstallReferrerPullUp gPInstallReferrerPullUp, String str, String str2) {
            this.f42083a = installReferrerClient;
            this.f42084b = gPInstallReferrerPullUp;
            this.f42085c = str;
            this.f42086d = str2;
        }

        @Override // com.android.installreferrer.api.InstallReferrerStateListener
        public void onInstallReferrerServiceDisconnected() {
            Logger.f41511a.e("CampaignNewTag", "onInstallReferrerServiceDisconnected");
        }

        @Override // com.android.installreferrer.api.InstallReferrerStateListener
        public void onInstallReferrerSetupFinished(int i10) {
            Logger logger = Logger.f41511a;
            logger.e("CampaignNewTag", "onInstallReferrerSetupFinished -> responseCode(" + i10 + ')');
            if (i10 == 0) {
                try {
                    this.f42084b.h(this.f42083a.getInstallReferrer().getInstallReferrer(), this.f42085c, this.f42086d, "");
                } catch (Exception e10) {
                    this.f42084b.h("", this.f42085c, "", e10.getMessage());
                }
                try {
                    this.f42083a.endConnection();
                } catch (Exception unused) {
                }
            } else {
                GPInstallReferrerPullUp gPInstallReferrerPullUp = this.f42084b;
                String str = this.f42085c;
                gPInstallReferrerPullUp.h("", str, "", "responseCode -> " + i10);
            }
        }
    }

    private final void g(Context context, String str, String str2) {
        InstallReferrerClient build = InstallReferrerClient.newBuilder(context).build();
        build.startConnection(new b(build, this, str, str2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void h(String str, String str2, String str3, String str4) {
        Logger logger = Logger.f41511a;
        logger.e("CampaignNewTag", "GPInstallReferrer PullUp handleQueryResult installReferrer -> " + str + ", data -> " + str3);
        CoroutineUtil.l(CoroutineUtil.f48072a, "reportGPInstallReferrerPullUp", false, new GPInstallReferrerPullUp$handleQueryResult$1(this, str, str2, str3, null), 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00d6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object i(java.lang.String r10, java.lang.String r11, java.lang.String r12, java.lang.String r13, rs.c<? super kotlin.Unit> r14) {
        /*
            Method dump skipped, instructions count: 243
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.attribution.pullup.GPInstallReferrerPullUp.i(java.lang.String, java.lang.String, java.lang.String, java.lang.String, rs.c):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit j() {
        AccountRepo.c1(AccountRepo.f43052a, false, null, 3, null);
        au.c.d().l(new CampaignRefreshSuccessEvent());
        Logger.f41511a.e("CampaignNewTag", "reportLPActive success CampaignRefreshSuccessEvent");
        return Unit.f60915a;
    }

    @Override // com.startshorts.androidplayer.manager.attribution.pullup.BaseCampaignPullUp
    @Nullable
    protected Object c(@NotNull Context context, @NotNull String str, @NotNull String str2, @NotNull rs.c<? super Unit> cVar) {
        g(context, str, str2);
        return Unit.f60915a;
    }

    @Override // je.b
    @NotNull
    public String name() {
        return "GPInstallReferrerPullUp";
    }
}
