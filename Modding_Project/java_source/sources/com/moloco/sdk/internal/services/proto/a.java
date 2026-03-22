package com.moloco.sdk.internal.services.proto;

import com.moloco.sdk.UserIntent$UserAdInteractionExt;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes6.dex */
public interface a {

    /* renamed from: com.moloco.sdk.internal.services.proto.a$a  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public static final class C0492a {
        public static /* synthetic */ String a(a aVar, UserIntent$UserAdInteractionExt userIntent$UserAdInteractionExt, int i10, int i11, Object obj) {
            if (obj == null) {
                if ((i11 & 2) != 0) {
                    i10 = 10;
                }
                return aVar.a(userIntent$UserAdInteractionExt, i10);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: encodeUserAdInteractionExt");
        }
    }

    @NotNull
    String a(@NotNull UserIntent$UserAdInteractionExt userIntent$UserAdInteractionExt, int i10);
}
