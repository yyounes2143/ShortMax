package com.facebook;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.facebook.internal.u0;
import com.facebook.internal.v0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AccessTokenTracker.kt */
@Metadata
/* loaded from: classes3.dex */
public abstract class g {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final a f15557d = new a(null);

    /* renamed from: e  reason: collision with root package name */
    private static final String f15558e = g.class.getSimpleName();
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final BroadcastReceiver f15559a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final LocalBroadcastManager f15560b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f15561c;

    /* compiled from: AccessTokenTracker.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: AccessTokenTracker.kt */
    @Metadata
    /* loaded from: classes3.dex */
    private final class b extends BroadcastReceiver {
        public b() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(@NotNull Context context, @NotNull Intent intent) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(intent, "intent");
            if (Intrinsics.areEqual("com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED", intent.getAction())) {
                u0.k0(g.f15558e, "AccessTokenChanged");
                g.this.d((AccessToken) intent.getParcelableExtra("com.facebook.sdk.EXTRA_OLD_ACCESS_TOKEN"), (AccessToken) intent.getParcelableExtra("com.facebook.sdk.EXTRA_NEW_ACCESS_TOKEN"));
            }
        }
    }

    public g() {
        v0.l();
        this.f15559a = new b();
        LocalBroadcastManager localBroadcastManager = LocalBroadcastManager.getInstance(v.l());
        Intrinsics.checkNotNullExpressionValue(localBroadcastManager, "getInstance(FacebookSdk.getApplicationContext())");
        this.f15560b = localBroadcastManager;
        e();
    }

    private final void b() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED");
        this.f15560b.registerReceiver(this.f15559a, intentFilter);
    }

    public final boolean c() {
        return this.f15561c;
    }

    protected abstract void d(@Nullable AccessToken accessToken, @Nullable AccessToken accessToken2);

    public final void e() {
        if (this.f15561c) {
            return;
        }
        b();
        this.f15561c = true;
    }

    public final void f() {
        if (!this.f15561c) {
            return;
        }
        this.f15560b.unregisterReceiver(this.f15559a);
        this.f15561c = false;
    }
}
