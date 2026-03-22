package com.moloco.sdk.acm.recorder;

import androidx.annotation.VisibleForTesting;
import com.moloco.sdk.acm.AndroidClientMetrics;
import com.moloco.sdk.acm.e;
import com.moloco.sdk.acm.recorder.a;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@VisibleForTesting
/* loaded from: classes6.dex */
public final class b implements a {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public final String f31969a;

    public b(@Nullable String str) {
        this.f31969a = str;
    }

    @Override // com.moloco.sdk.acm.recorder.a
    public void a(@NotNull e event) {
        Intrinsics.checkNotNullParameter(event, "event");
        String str = this.f31969a;
        if (str != null && str.length() != 0) {
            AndroidClientMetrics.f31800a.u(event.f("mediator", this.f31969a));
            return;
        }
        AndroidClientMetrics.f31800a.u(event);
    }

    @Override // com.moloco.sdk.acm.recorder.a
    public void b(@NotNull com.moloco.sdk.acm.b event) {
        Intrinsics.checkNotNullParameter(event, "event");
        String str = this.f31969a;
        if (str != null && str.length() != 0) {
            AndroidClientMetrics.f31800a.t(event.e("mediator", this.f31969a));
            return;
        }
        AndroidClientMetrics.f31800a.t(event);
    }

    @Override // com.moloco.sdk.acm.recorder.a
    @NotNull
    public e c(@NotNull String str) {
        return a.b.a(this, str);
    }

    public /* synthetic */ b(String str, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : str);
    }
}
