package com.google.android.recaptcha.internal;

import android.webkit.WebView;
import gt.e;
import gt.g0;
import java.util.Arrays;
import org.jetbrains.annotations.NotNull;
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public final class zzfw {
    @NotNull
    private final WebView zza;
    @NotNull
    private final g0 zzb;

    public zzfw(@NotNull WebView webView, @NotNull g0 g0Var) {
        this.zza = webView;
        this.zzb = g0Var;
    }

    public final void zzb(@NotNull String str, @NotNull String... strArr) {
        e.d(this.zzb, null, null, new zzfv((String[]) Arrays.copyOf(strArr, strArr.length), this, str, null), 3, null);
    }
}
