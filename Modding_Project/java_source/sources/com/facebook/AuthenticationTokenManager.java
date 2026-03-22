package com.facebook;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.facebook.internal.u0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AuthenticationTokenManager.kt */
@Metadata
/* loaded from: classes3.dex */
public final class AuthenticationTokenManager {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final a f14778d = new a(null);
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private static AuthenticationTokenManager f14779e;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final LocalBroadcastManager f14780a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final h f14781b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private AuthenticationToken f14782c;

    /* compiled from: AuthenticationTokenManager.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class CurrentAuthenticationTokenChangedBroadcastReceiver extends BroadcastReceiver {
        @Override // android.content.BroadcastReceiver
        public void onReceive(@NotNull Context context, @NotNull Intent intent) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(intent, "intent");
        }
    }

    /* compiled from: AuthenticationTokenManager.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final AuthenticationTokenManager a() {
            AuthenticationTokenManager authenticationTokenManager;
            AuthenticationTokenManager authenticationTokenManager2 = AuthenticationTokenManager.f14779e;
            if (authenticationTokenManager2 == null) {
                synchronized (this) {
                    authenticationTokenManager = AuthenticationTokenManager.f14779e;
                    if (authenticationTokenManager == null) {
                        LocalBroadcastManager localBroadcastManager = LocalBroadcastManager.getInstance(v.l());
                        Intrinsics.checkNotNullExpressionValue(localBroadcastManager, "getInstance(applicationContext)");
                        AuthenticationTokenManager authenticationTokenManager3 = new AuthenticationTokenManager(localBroadcastManager, new h());
                        AuthenticationTokenManager.f14779e = authenticationTokenManager3;
                        authenticationTokenManager = authenticationTokenManager3;
                    }
                }
                return authenticationTokenManager;
            }
            return authenticationTokenManager2;
        }

        private a() {
        }
    }

    public AuthenticationTokenManager(@NotNull LocalBroadcastManager localBroadcastManager, @NotNull h authenticationTokenCache) {
        Intrinsics.checkNotNullParameter(localBroadcastManager, "localBroadcastManager");
        Intrinsics.checkNotNullParameter(authenticationTokenCache, "authenticationTokenCache");
        this.f14780a = localBroadcastManager;
        this.f14781b = authenticationTokenCache;
    }

    private final void d(AuthenticationToken authenticationToken, AuthenticationToken authenticationToken2) {
        Intent intent = new Intent(v.l(), CurrentAuthenticationTokenChangedBroadcastReceiver.class);
        intent.setAction("com.facebook.sdk.ACTION_CURRENT_AUTHENTICATION_TOKEN_CHANGED");
        intent.putExtra("com.facebook.sdk.EXTRA_OLD_AUTHENTICATION_TOKEN", authenticationToken);
        intent.putExtra("com.facebook.sdk.EXTRA_NEW_AUTHENTICATION_TOKEN", authenticationToken2);
        this.f14780a.sendBroadcast(intent);
    }

    private final void f(AuthenticationToken authenticationToken, boolean z10) {
        AuthenticationToken c10 = c();
        this.f14782c = authenticationToken;
        if (z10) {
            if (authenticationToken != null) {
                this.f14781b.b(authenticationToken);
            } else {
                this.f14781b.a();
                u0.i(v.l());
            }
        }
        if (!u0.e(c10, authenticationToken)) {
            d(c10, authenticationToken);
        }
    }

    @Nullable
    public final AuthenticationToken c() {
        return this.f14782c;
    }

    public final void e(@Nullable AuthenticationToken authenticationToken) {
        f(authenticationToken, true);
    }
}
