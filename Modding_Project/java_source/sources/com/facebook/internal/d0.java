package com.facebook.internal;

import android.net.Uri;
import android.os.Bundle;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: InstagramCustomTab.kt */
@Metadata
/* loaded from: classes3.dex */
public final class d0 extends d {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final a f16185c = new a(null);

    /* compiled from: InstagramCustomTab.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final Uri a(@NotNull String action, @Nullable Bundle bundle) {
            Intrinsics.checkNotNullParameter(action, "action");
            if (Intrinsics.areEqual(action, "oauth")) {
                return u0.g(o0.k(), "oauth/authorize", bundle);
            }
            String k10 = o0.k();
            return u0.g(k10, com.facebook.v.x() + "/dialog/" + action, bundle);
        }

        private a() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d0(@NotNull String action, @Nullable Bundle bundle) {
        super(action, bundle);
        Intrinsics.checkNotNullParameter(action, "action");
        b(f16185c.a(action, bundle == null ? new Bundle() : bundle));
    }
}
