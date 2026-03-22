package com.moloco.sdk.internal.error;

import org.jetbrains.annotations.NotNull;
/* loaded from: classes6.dex */
public interface b {

    /* loaded from: classes6.dex */
    public static final class a {
        public static /* synthetic */ void a(b bVar, String str, com.moloco.sdk.internal.error.a aVar, int i10, Object obj) {
            if (obj == null) {
                if ((i10 & 2) != 0) {
                    aVar = new com.moloco.sdk.internal.error.a(null, 1, null);
                }
                bVar.a(str, aVar);
                return;
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: reportError");
        }
    }

    void a(@NotNull String str, @NotNull com.moloco.sdk.internal.error.a aVar);
}
