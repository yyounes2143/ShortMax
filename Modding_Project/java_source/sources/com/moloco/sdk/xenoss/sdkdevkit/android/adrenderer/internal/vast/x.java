package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast;

import com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes6.dex */
public interface x {

    /* loaded from: classes6.dex */
    public static final class a {
        public static /* synthetic */ void a(x xVar, List list, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.x xVar2, Integer num, String str, int i10, Object obj) {
            if (obj == null) {
                if ((i10 & 2) != 0) {
                    xVar2 = null;
                }
                if ((i10 & 4) != 0) {
                    num = null;
                }
                if ((i10 & 8) != 0) {
                    str = null;
                }
                xVar.a(list, xVar2, num, str);
                return;
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: track");
        }

        public static /* synthetic */ void b(x xVar, List list, com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.x xVar2, Integer num, String str, List list2, com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a aVar, a.AbstractC0597a.f fVar, int i10, Object obj) {
            com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.x xVar3;
            Integer num2;
            String str2;
            if (obj == null) {
                if ((i10 & 2) != 0) {
                    xVar3 = null;
                } else {
                    xVar3 = xVar2;
                }
                if ((i10 & 4) != 0) {
                    num2 = null;
                } else {
                    num2 = num;
                }
                if ((i10 & 8) != 0) {
                    str2 = null;
                } else {
                    str2 = str;
                }
                xVar.b(list, xVar3, num2, str2, list2, aVar, fVar);
                return;
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: trackClick");
        }
    }

    void a(@NotNull List<String> list, @Nullable com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.x xVar, @Nullable Integer num, @Nullable String str);

    void b(@NotNull List<String> list, @Nullable com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.model.x xVar, @Nullable Integer num, @Nullable String str, @NotNull List<a.AbstractC0597a.c> list2, @NotNull com.moloco.sdk.xenoss.sdkdevkit.android.core.services.a aVar, @NotNull a.AbstractC0597a.f fVar);
}
