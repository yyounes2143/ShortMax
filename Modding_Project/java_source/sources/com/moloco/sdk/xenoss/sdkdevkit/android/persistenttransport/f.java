package com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes6.dex */
public interface f {

    /* loaded from: classes6.dex */
    public static final class a {
        public static /* synthetic */ void a(f fVar, String str, byte[] bArr, io.ktor.http.a aVar, String str2, int i10, Object obj) {
            if (obj == null) {
                if ((i10 & 8) != 0) {
                    str2 = null;
                }
                fVar.a(str, bArr, aVar, str2);
                return;
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: sendPost");
        }
    }

    void a(@NotNull String str);

    void a(@NotNull String str, @NotNull byte[] bArr, @NotNull io.ktor.http.a aVar, @Nullable String str2);
}
