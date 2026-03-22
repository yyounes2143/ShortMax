package com.facebook.internal;

import android.os.RemoteException;
import com.android.installreferrer.api.InstallReferrerClient;
import com.android.installreferrer.api.InstallReferrerStateListener;
import com.android.installreferrer.api.ReferrerDetails;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: InstallReferrerUtil.kt */
@Metadata
/* loaded from: classes3.dex */
public final class e0 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final e0 f16188a = new e0();

    /* compiled from: InstallReferrerUtil.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public interface a {
        void a(@Nullable String str);
    }

    private e0() {
    }

    private final boolean b() {
        return com.facebook.v.l().getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).getBoolean("is_referrer_updated", false);
    }

    private final void c(a aVar) {
        InstallReferrerClient build = InstallReferrerClient.newBuilder(com.facebook.v.l()).build();
        try {
            build.startConnection(new b(build, aVar));
        } catch (Exception unused) {
        }
    }

    public static final void d(@NotNull a callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        e0 e0Var = f16188a;
        if (!e0Var.b()) {
            e0Var.c(callback);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void e() {
        com.facebook.v.l().getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).edit().putBoolean("is_referrer_updated", true).apply();
    }

    /* compiled from: InstallReferrerUtil.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class b implements InstallReferrerStateListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ InstallReferrerClient f16189a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ a f16190b;

        b(InstallReferrerClient installReferrerClient, a aVar) {
            this.f16189a = installReferrerClient;
            this.f16190b = aVar;
        }

        @Override // com.android.installreferrer.api.InstallReferrerStateListener
        public void onInstallReferrerSetupFinished(int i10) {
            if (o4.a.d(this)) {
                return;
            }
            try {
                if (i10 != 0) {
                    if (i10 == 2) {
                        e0.f16188a.e();
                    }
                } else {
                    try {
                        ReferrerDetails installReferrer = this.f16189a.getInstallReferrer();
                        Intrinsics.checkNotNullExpressionValue(installReferrer, "{\n                      …rer\n                    }");
                        String installReferrer2 = installReferrer.getInstallReferrer();
                        if (installReferrer2 != null && (StringsKt.b0(installReferrer2, "fb", false, 2, null) || StringsKt.b0(installReferrer2, "facebook", false, 2, null))) {
                            this.f16190b.a(installReferrer2);
                        }
                        e0.f16188a.e();
                    } catch (RemoteException unused) {
                        return;
                    }
                }
                try {
                    this.f16189a.endConnection();
                } catch (Exception unused2) {
                }
            } catch (Throwable th2) {
                o4.a.b(th2, this);
            }
        }

        @Override // com.android.installreferrer.api.InstallReferrerStateListener
        public void onInstallReferrerServiceDisconnected() {
        }
    }
}
