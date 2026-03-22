package com.moloco.sdk.internal.services.bidtoken;

import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes6.dex */
public interface y {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f33306a = a.f33307a;

    /* loaded from: classes6.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ a f33307a = new a();

        @NotNull
        public final y a(@NotNull com.moloco.sdk.internal.bidtoken.b bidTokenParser, @NotNull com.moloco.sdk.internal.services.j timeProviderService) {
            Intrinsics.checkNotNullParameter(bidTokenParser, "bidTokenParser");
            Intrinsics.checkNotNullParameter(timeProviderService, "timeProviderService");
            return new w(bidTokenParser, timeProviderService);
        }
    }

    @NotNull
    n a();

    @Nullable
    Object a(@NotNull rs.c<? super B> cVar);

    @Nullable
    Object b(@NotNull n nVar, @NotNull rs.c<? super Unit> cVar);
}
