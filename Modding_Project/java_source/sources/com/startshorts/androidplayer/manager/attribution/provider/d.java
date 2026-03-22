package com.startshorts.androidplayer.manager.attribution.provider;

import android.content.Context;
import com.android.installreferrer.api.InstallReferrerClient;
import com.android.installreferrer.api.InstallReferrerStateListener;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.attribution.CampaignReporter;
import com.startshorts.androidplayer.manager.attribution.CampaignType;
import fk.g;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: GPInstallReferrerProvider.kt */
@Metadata
/* loaded from: classes6.dex */
public final class d extends BaseCampaignProvider {
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    public static final a f42053h = new a(null);

    /* renamed from: g  reason: collision with root package name */
    private boolean f42054g;

    /* compiled from: GPInstallReferrerProvider.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: GPInstallReferrerProvider.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class b implements InstallReferrerStateListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ InstallReferrerClient f42055a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ d f42056b;

        b(InstallReferrerClient installReferrerClient, d dVar) {
            this.f42055a = installReferrerClient;
            this.f42056b = dVar;
        }

        @Override // com.android.installreferrer.api.InstallReferrerStateListener
        public void onInstallReferrerServiceDisconnected() {
            g.f51731a.c(25);
            Logger.f41511a.e("CampaignNewTag", "onInstallReferrerServiceDisconnected");
        }

        @Override // com.android.installreferrer.api.InstallReferrerStateListener
        public void onInstallReferrerSetupFinished(int i10) {
            Logger logger = Logger.f41511a;
            logger.e("CampaignNewTag", "onInstallReferrerSetupFinished -> responseCode(" + i10 + ')');
            if (i10 == 0) {
                try {
                    this.f42056b.t(this.f42055a.getInstallReferrer().getInstallReferrer());
                } catch (Exception e10) {
                    this.f42056b.s(e10.getMessage());
                }
                try {
                    this.f42055a.endConnection();
                } catch (Exception unused) {
                }
            } else {
                d dVar = this.f42056b;
                dVar.s("responseCode -> " + i10);
            }
        }
    }

    private final void r(Context context) {
        InstallReferrerClient build = InstallReferrerClient.newBuilder(context).build();
        build.startConnection(new b(build, this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void s(String str) {
        Logger logger = Logger.f41511a;
        logger.e("CampaignNewTag", "handleQueryFailed -> " + str);
        this.f42054g = false;
        g(str);
        o();
        n("");
        BaseCampaignProvider.f42007e.f(CampaignType.FB_INSTALL_REFERRER);
        CampaignReporter.K(CampaignReporter.f41888a, "", false, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0032  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void t(java.lang.String r8) {
        /*
            r7 = this;
            com.startshorts.androidplayer.log.Logger r0 = com.startshorts.androidplayer.log.Logger.f41511a
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "GPInstallReferrerProvider handleQuerySuccess -> "
            r1.append(r2)
            r1.append(r8)
            java.lang.String r1 = r1.toString()
            java.lang.String r2 = "CampaignNewTag"
            r0.e(r2, r1)
            r0 = 0
            r7.f42054g = r0
            r1 = 1
            r3 = 0
            com.startshorts.androidplayer.manager.attribution.provider.BaseCampaignProvider.i(r7, r0, r1, r3)
            java.lang.String r1 = ""
            if (r8 == 0) goto L2b
            gk.a r4 = gk.a.f52405a     // Catch: java.lang.Exception -> L2b
            java.lang.String r4 = r4.c(r8)     // Catch: java.lang.Exception -> L2b
            goto L2c
        L2b:
            r4 = r1
        L2c:
            boolean r5 = android.text.TextUtils.isEmpty(r4)
            if (r5 == 0) goto L37
            if (r8 != 0) goto L35
            goto L36
        L35:
            r1 = r8
        L36:
            r4 = r1
        L37:
            r7.o()
            r7.n(r4)
            com.startshorts.androidplayer.manager.attribution.provider.BaseCampaignProvider$a r1 = com.startshorts.androidplayer.manager.attribution.provider.BaseCampaignProvider.f42007e
            com.startshorts.androidplayer.manager.attribution.CampaignType r5 = com.startshorts.androidplayer.manager.attribution.CampaignType.FB_INSTALL_REFERRER
            r1.f(r5)
            r1.e(r5, r8)
            com.startshorts.androidplayer.log.Logger r1 = com.startshorts.androidplayer.log.Logger.f41511a
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = "GPInstallReferrerProvider handleQuerySuccess finalReportData->"
            r5.append(r6)
            r5.append(r4)
            java.lang.String r6 = " -> installReferrer->"
            r5.append(r6)
            r5.append(r8)
            java.lang.String r8 = r5.toString()
            r1.e(r2, r8)
            com.startshorts.androidplayer.manager.attribution.CampaignReporter r8 = com.startshorts.androidplayer.manager.attribution.CampaignReporter.f41888a
            r1 = 2
            com.startshorts.androidplayer.manager.attribution.CampaignReporter.K(r8, r4, r0, r1, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.attribution.provider.d.t(java.lang.String):void");
    }

    @Override // ie.j
    @NotNull
    public CampaignType a() {
        return CampaignType.GP_INSTALL_REFERRER;
    }

    @Override // com.startshorts.androidplayer.manager.attribution.provider.BaseCampaignProvider
    @Nullable
    protected Object l(@NotNull Context context, @NotNull rs.c<? super Unit> cVar) {
        Logger.f41511a.e("CampaignNewTag", "queryInternal GPInstallReferrerProvider");
        if (e()) {
            CampaignReporter.K(CampaignReporter.f41888a, c(), false, 2, null);
            return Unit.f60915a;
        } else if (this.f42054g) {
            return Unit.f60915a;
        } else {
            this.f42054g = true;
            f();
            r(context);
            return Unit.f60915a;
        }
    }

    @Override // ie.j
    @NotNull
    public String name() {
        return "GPInstallReferrerProvider";
    }
}
