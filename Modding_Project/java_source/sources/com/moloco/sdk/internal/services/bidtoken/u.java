package com.moloco.sdk.internal.services.bidtoken;

import com.moloco.sdk.service_locator.b;
import kotlin.Result;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes6.dex */
public interface u {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f33288a = a.f33289a;

    /* loaded from: classes6.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ a f33289a = new a();

        @NotNull
        public final u a() {
            return new r(b.h.f33655a.h(), s.f33282a.a(), com.moloco.sdk.internal.services.encryption.a.f33349a.a(), com.moloco.sdk.internal.services.bidtoken.providers.m.f33219a.a());
        }
    }

    @Nullable
    Object a(@NotNull com.moloco.sdk.acm.recorder.a aVar, @NotNull String str, @NotNull h hVar, @NotNull rs.c<? super Result<String>> cVar);
}
