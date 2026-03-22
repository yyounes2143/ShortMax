package com.facebook;

import android.content.Intent;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.facebook.internal.u0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ProfileManager.kt */
@Metadata
/* loaded from: classes3.dex */
public final class e0 {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final a f15524d = new a(null);

    /* renamed from: e  reason: collision with root package name */
    private static volatile e0 f15525e;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final LocalBroadcastManager f15526a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final d0 f15527b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private Profile f15528c;

    /* compiled from: ProfileManager.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final synchronized e0 a() {
            e0 e0Var;
            try {
                if (e0.f15525e == null) {
                    LocalBroadcastManager localBroadcastManager = LocalBroadcastManager.getInstance(v.l());
                    Intrinsics.checkNotNullExpressionValue(localBroadcastManager, "getInstance(applicationContext)");
                    e0.f15525e = new e0(localBroadcastManager, new d0());
                }
                e0Var = e0.f15525e;
                if (e0Var == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("instance");
                    e0Var = null;
                }
            } catch (Throwable th2) {
                throw th2;
            }
            return e0Var;
        }

        private a() {
        }
    }

    public e0(@NotNull LocalBroadcastManager localBroadcastManager, @NotNull d0 profileCache) {
        Intrinsics.checkNotNullParameter(localBroadcastManager, "localBroadcastManager");
        Intrinsics.checkNotNullParameter(profileCache, "profileCache");
        this.f15526a = localBroadcastManager;
        this.f15527b = profileCache;
    }

    private final void e(Profile profile, Profile profile2) {
        Intent intent = new Intent("com.facebook.sdk.ACTION_CURRENT_PROFILE_CHANGED");
        intent.putExtra("com.facebook.sdk.EXTRA_OLD_PROFILE", profile);
        intent.putExtra("com.facebook.sdk.EXTRA_NEW_PROFILE", profile2);
        this.f15526a.sendBroadcast(intent);
    }

    private final void g(Profile profile, boolean z10) {
        Profile profile2 = this.f15528c;
        this.f15528c = profile;
        if (z10) {
            if (profile != null) {
                this.f15527b.c(profile);
            } else {
                this.f15527b.a();
            }
        }
        if (!u0.e(profile2, profile)) {
            e(profile2, profile);
        }
    }

    @Nullable
    public final Profile c() {
        return this.f15528c;
    }

    public final boolean d() {
        Profile b10 = this.f15527b.b();
        if (b10 == null) {
            return false;
        }
        g(b10, false);
        return true;
    }

    public final void f(@Nullable Profile profile) {
        g(profile, true);
    }
}
