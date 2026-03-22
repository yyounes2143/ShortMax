package com.moloco.sdk.internal.services.bidtoken;

import com.moloco.sdk.BidToken$ClientBidTokenComponents;
import com.moloco.sdk.service_locator.b;
import org.jetbrains.annotations.NotNull;
/* loaded from: classes6.dex */
public interface s {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f33282a = a.f33283a;

    /* loaded from: classes6.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ a f33283a = new a();

        @NotNull
        public final s a() {
            b.e eVar = b.e.f33636a;
            return new t(eVar.l(), eVar.m());
        }
    }

    @NotNull
    BidToken$ClientBidTokenComponents a(@NotNull com.moloco.sdk.internal.services.bidtoken.providers.k kVar, @NotNull h hVar);

    @NotNull
    byte[] b(@NotNull byte[] bArr, @NotNull byte[] bArr2);
}
