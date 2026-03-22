package com.startshorts.androidplayer.manager.attribution.provider;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.adjust.sdk.Constants;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.attribution.CampaignReporter;
import com.startshorts.androidplayer.manager.attribution.CampaignType;
import com.startshorts.androidplayer.manager.attribution.provider.GADeeplinkProvider;
import com.startshorts.androidplayer.utils.CoroutineUtil;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: GADeeplinkProvider.kt */
@Metadata
@SourceDebugExtension({"SMAP\nGADeeplinkProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GADeeplinkProvider.kt\ncom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,165:1\n116#2,11:166\n*S KotlinDebug\n*F\n+ 1 GADeeplinkProvider.kt\ncom/startshorts/androidplayer/manager/attribution/provider/GADeeplinkProvider\n*L\n45#1:166,11\n*E\n"})
/* loaded from: classes6.dex */
public final class GADeeplinkProvider extends BaseCampaignProvider {
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    public static final a f42025l = new a(null);
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private final qt.a f42026g = qt.d.b(false, 1, null);
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private SharedPreferences f42027h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private SharedPreferences.OnSharedPreferenceChangeListener f42028i;

    /* renamed from: j  reason: collision with root package name */
    private int f42029j;

    /* renamed from: k  reason: collision with root package name */
    private volatile boolean f42030k;

    /* compiled from: GADeeplinkProvider.kt */
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
    public final void A(String str) {
        Logger logger = Logger.f41511a;
        logger.e("CampaignNewTag", "handleQueryFailed -> " + str);
        E();
        g(str);
        o();
        n("");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void B(String str) {
        Logger logger = Logger.f41511a;
        logger.e("CampaignNewTag", "GADeeplinkProvider handleQuerySuccess -> " + str);
        E();
        h(this.f42029j);
        o();
        n(str);
        if (str != null && !TextUtils.isEmpty(str)) {
            CampaignReporter.f41888a.H(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void C() {
        SharedPreferences sharedPreferences;
        Logger.f41511a.e("CampaignNewTag", "release");
        E();
        try {
            SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener = this.f42028i;
            if (onSharedPreferenceChangeListener != null && (sharedPreferences = this.f42027h) != null) {
                sharedPreferences.unregisterOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
            }
        } catch (Exception e10) {
            Logger logger = Logger.f41511a;
            logger.e("CampaignNewTag", "release exception -> " + e10.getMessage());
        }
        this.f42028i = null;
    }

    private final void D() {
        E();
        this.f42029j = 0;
        this.f42030k = true;
        Logger.f41511a.e("CampaignNewTag", "startPolling");
        CoroutineUtil.l(CoroutineUtil.f48072a, "GADeeplinkProvider:polling", false, new GADeeplinkProvider$startPolling$1(this, null), 2, null);
    }

    private final void E() {
        this.f42030k = false;
    }

    private final void x(Context context) {
        if (this.f42027h == null) {
            Logger.f41511a.e("CampaignNewTag", "createPreferences");
            this.f42027h = context.getSharedPreferences("google.analytics.deferred.deeplink.prefs", 0);
        }
    }

    private final void y() {
        if (this.f42028i == null) {
            SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: ie.i
                @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
                public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
                    GADeeplinkProvider.z(GADeeplinkProvider.this, sharedPreferences, str);
                }
            };
            SharedPreferences sharedPreferences = this.f42027h;
            if (sharedPreferences != null) {
                sharedPreferences.registerOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
            }
            this.f42028i = onSharedPreferenceChangeListener;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z(GADeeplinkProvider gADeeplinkProvider, SharedPreferences sharedPreferences, String str) {
        Logger logger = Logger.f41511a;
        logger.e("CampaignNewTag", "onSharedPreferenceChanged -> key(" + str + ')');
        if (str != null && str.hashCode() == 629233382 && str.equals(Constants.DEEPLINK)) {
            String str2 = null;
            if (sharedPreferences != null) {
                str2 = sharedPreferences.getString(str, null);
            }
            if (str2 != null && str2.length() != 0) {
                gADeeplinkProvider.B(str2);
            } else {
                gADeeplinkProvider.A("OnSharedPreferenceChangeListener:deeplink is null");
            }
            gADeeplinkProvider.C();
        }
    }

    @Override // ie.j
    @NotNull
    public CampaignType a() {
        return CampaignType.GA_DEEPLINK;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0040  */
    @Override // com.startshorts.androidplayer.manager.attribution.provider.BaseCampaignProvider
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object l(@org.jetbrains.annotations.NotNull android.content.Context r7, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r8) {
        /*
            r6 = this;
            boolean r0 = r8 instanceof com.startshorts.androidplayer.manager.attribution.provider.GADeeplinkProvider$queryInternal$1
            if (r0 == 0) goto L13
            r0 = r8
            com.startshorts.androidplayer.manager.attribution.provider.GADeeplinkProvider$queryInternal$1 r0 = (com.startshorts.androidplayer.manager.attribution.provider.GADeeplinkProvider$queryInternal$1) r0
            int r1 = r0.f42036m
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f42036m = r1
            goto L18
        L13:
            com.startshorts.androidplayer.manager.attribution.provider.GADeeplinkProvider$queryInternal$1 r0 = new com.startshorts.androidplayer.manager.attribution.provider.GADeeplinkProvider$queryInternal$1
            r0.<init>(r6, r8)
        L18:
            java.lang.Object r8 = r0.f42034k
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f42036m
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L40
            if (r2 != r3) goto L38
            java.lang.Object r7 = r0.f42033j
            qt.a r7 = (qt.a) r7
            java.lang.Object r1 = r0.f42032i
            android.content.Context r1 = (android.content.Context) r1
            java.lang.Object r0 = r0.f42031h
            com.startshorts.androidplayer.manager.attribution.provider.GADeeplinkProvider r0 = (com.startshorts.androidplayer.manager.attribution.provider.GADeeplinkProvider) r0
            kotlin.f.b(r8)
            r8 = r7
            r7 = r1
            goto L5e
        L38:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L40:
            kotlin.f.b(r8)
            com.startshorts.androidplayer.log.Logger r8 = com.startshorts.androidplayer.log.Logger.f41511a
            java.lang.String r2 = "CampaignNewTag"
            java.lang.String r5 = "queryInternal GADeeplinkProvider"
            r8.e(r2, r5)
            qt.a r8 = r6.f42026g
            r0.f42031h = r6
            r0.f42032i = r7
            r0.f42033j = r8
            r0.f42036m = r3
            java.lang.Object r0 = r8.lock(r4, r0)
            if (r0 != r1) goto L5d
            return r1
        L5d:
            r0 = r6
        L5e:
            r0.f()     // Catch: java.lang.Throwable -> L75
            r0.m()     // Catch: java.lang.Throwable -> L75
            r0.x(r7)     // Catch: java.lang.Throwable -> L75
            r0.y()     // Catch: java.lang.Throwable -> L75
            r0.D()     // Catch: java.lang.Throwable -> L75
            kotlin.Unit r7 = kotlin.Unit.f60915a     // Catch: java.lang.Throwable -> L75
            r8.unlock(r4)
            kotlin.Unit r7 = kotlin.Unit.f60915a
            return r7
        L75:
            r7 = move-exception
            r8.unlock(r4)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.attribution.provider.GADeeplinkProvider.l(android.content.Context, rs.c):java.lang.Object");
    }

    @Override // ie.j
    @NotNull
    public String name() {
        return "GADeeplinkProvider";
    }
}
