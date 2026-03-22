package com.moloco.sdk.internal.services.bidtoken;

import com.moloco.sdk.BidToken$BidTokenResponseV3;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes6.dex */
public final class g {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final h f33141a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final n f33142b;

    static {
        h hVar = new h(false);
        f33141a = hVar;
        f33142b = new n("", "", hVar);
    }

    @NotNull
    public static final h a() {
        return f33141a;
    }

    @NotNull
    public static final h b(@NotNull BidToken$BidTokenResponseV3 bidToken$BidTokenResponseV3) {
        Intrinsics.checkNotNullParameter(bidToken$BidTokenResponseV3, "<this>");
        if (bidToken$BidTokenResponseV3.hasClientTokenConfigs()) {
            return new h(bidToken$BidTokenResponseV3.getClientTokenConfigs().getEnableDbt());
        }
        return f33141a;
    }

    @NotNull
    public static final n c() {
        return f33142b;
    }
}
