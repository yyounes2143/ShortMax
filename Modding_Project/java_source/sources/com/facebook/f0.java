package com.facebook;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.facebook.internal.v0;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ProfileTracker.kt */
@Metadata
/* loaded from: classes3.dex */
public abstract class f0 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final BroadcastReceiver f15545a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final LocalBroadcastManager f15546b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f15547c;

    /* compiled from: ProfileTracker.kt */
    @Metadata
    /* loaded from: classes3.dex */
    private final class a extends BroadcastReceiver {
        public a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(@NotNull Context context, @NotNull Intent intent) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(intent, "intent");
            if (Intrinsics.areEqual("com.facebook.sdk.ACTION_CURRENT_PROFILE_CHANGED", intent.getAction())) {
                f0.this.c((Profile) intent.getParcelableExtra("com.facebook.sdk.EXTRA_OLD_PROFILE"), (Profile) intent.getParcelableExtra("com.facebook.sdk.EXTRA_NEW_PROFILE"));
            }
        }
    }

    public f0() {
        v0.l();
        this.f15545a = new a();
        LocalBroadcastManager localBroadcastManager = LocalBroadcastManager.getInstance(v.l());
        Intrinsics.checkNotNullExpressionValue(localBroadcastManager, "getInstance(FacebookSdk.getApplicationContext())");
        this.f15546b = localBroadcastManager;
        d();
    }

    private final void a() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.facebook.sdk.ACTION_CURRENT_PROFILE_CHANGED");
        this.f15546b.registerReceiver(this.f15545a, intentFilter);
    }

    public final boolean b() {
        return this.f15547c;
    }

    protected abstract void c(@Nullable Profile profile, @Nullable Profile profile2);

    public final void d() {
        if (this.f15547c) {
            return;
        }
        a();
        this.f15547c = true;
    }

    public final void e() {
        if (!this.f15547c) {
            return;
        }
        this.f15546b.unregisterReceiver(this.f15545a);
        this.f15547c = false;
    }
}
