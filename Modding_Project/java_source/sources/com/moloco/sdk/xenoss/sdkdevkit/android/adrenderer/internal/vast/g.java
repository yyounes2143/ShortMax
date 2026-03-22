package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast;

import com.moloco.sdk.internal.g0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes6.dex */
public interface g {

    /* loaded from: classes6.dex */
    public static final class a {
        public static /* synthetic */ Object a(g gVar, String str, String str2, boolean z10, rs.c cVar, int i10, Object obj) {
            if (obj == null) {
                if ((i10 & 2) != 0) {
                    str2 = "UNKNOWN_MTID";
                }
                return gVar.b(str, str2, z10, cVar);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: invoke");
        }
    }

    @Nullable
    Object a(@NotNull com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.a aVar, long j10, @NotNull rs.c<? super g0<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.a, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.k>> cVar);

    @Nullable
    Object b(@NotNull String str, @NotNull String str2, boolean z10, @NotNull rs.c<? super g0<com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.a, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.errors.k>> cVar);
}
