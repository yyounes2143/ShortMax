package com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport;

import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.f;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class b implements a {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final f f36632b;

    public b(@NotNull f delegate) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        this.f36632b = delegate;
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.f
    public void a(@NotNull String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        this.f36632b.a(url);
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.f
    public void a(@NotNull String url, @NotNull byte[] body, @NotNull io.ktor.http.a contentType, @Nullable String str) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(body, "body");
        Intrinsics.checkNotNullParameter(contentType, "contentType");
        f.a.a(this.f36632b, url, body, contentType, null, 8, null);
    }
}
