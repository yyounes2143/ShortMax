package com.unity3d.ads.core.domain;

import com.unity3d.ads.core.data.repository.CacheRepository;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: CommonGetIsFileCache.kt */
@Metadata
/* loaded from: classes7.dex */
public final class CommonGetIsFileCache implements GetIsFileCache {
    @NotNull
    private final CacheRepository cacheRepository;
    @NotNull
    private final SendDiagnosticEvent sendDiagnosticEvent;

    public CommonGetIsFileCache(@NotNull CacheRepository cacheRepository, @NotNull SendDiagnosticEvent sendDiagnosticEvent) {
        Intrinsics.checkNotNullParameter(cacheRepository, "cacheRepository");
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        this.cacheRepository = cacheRepository;
        this.sendDiagnosticEvent = sendDiagnosticEvent;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0067  */
    @Override // com.unity3d.ads.core.domain.GetIsFileCache
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object invoke(@org.jetbrains.annotations.NotNull java.lang.String r13, @org.jetbrains.annotations.NotNull rs.c<? super java.lang.Boolean> r14) {
        /*
            r12 = this;
            boolean r0 = r14 instanceof com.unity3d.ads.core.domain.CommonGetIsFileCache$invoke$1
            if (r0 == 0) goto L13
            r0 = r14
            com.unity3d.ads.core.domain.CommonGetIsFileCache$invoke$1 r0 = (com.unity3d.ads.core.domain.CommonGetIsFileCache$invoke$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.unity3d.ads.core.domain.CommonGetIsFileCache$invoke$1 r0 = new com.unity3d.ads.core.domain.CommonGetIsFileCache$invoke$1
            r0.<init>(r12, r14)
        L18:
            java.lang.Object r14 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            long r1 = r0.J$0
            java.lang.Object r13 = r0.L$0
            com.unity3d.ads.core.domain.CommonGetIsFileCache r13 = (com.unity3d.ads.core.domain.CommonGetIsFileCache) r13
            kotlin.f.b(r14)
            goto L59
        L2f:
            java.lang.IllegalStateException r13 = new java.lang.IllegalStateException
            java.lang.String r14 = "call to 'resume' before 'invoke' with coroutine"
            r13.<init>(r14)
            throw r13
        L37:
            kotlin.f.b(r14)
            kotlin.time.h r14 = kotlin.time.h.f61257a
            long r4 = r14.b()
            java.lang.String r14 = "/"
            r2 = 2
            r6 = 0
            java.lang.String r13 = kotlin.text.StringsKt.l1(r13, r14, r6, r2, r6)
            com.unity3d.ads.core.data.repository.CacheRepository r14 = r12.cacheRepository
            r0.L$0 = r12
            r0.J$0 = r4
            r0.label = r3
            java.lang.Object r14 = r14.doesFileExist(r13, r0)
            if (r14 != r1) goto L57
            return r1
        L57:
            r13 = r12
            r1 = r4
        L59:
            java.lang.Boolean r14 = (java.lang.Boolean) r14
            boolean r14 = r14.booleanValue()
            com.unity3d.ads.core.domain.SendDiagnosticEvent r3 = r13.sendDiagnosticEvent
            if (r14 == 0) goto L67
            java.lang.String r13 = "native_show_is_file_cached_success_time"
        L65:
            r4 = r13
            goto L6a
        L67:
            java.lang.String r13 = "native_show_is_file_cached_failure_time"
            goto L65
        L6a:
            kotlin.time.h$a r13 = kotlin.time.h.a.b(r1)
            double r0 = com.unity3d.ads.core.extensions.TimeExtensionsKt.elapsedMillis(r13)
            java.lang.Double r5 = kotlin.coroutines.jvm.internal.a.b(r0)
            r10 = 60
            r11 = 0
            r6 = 0
            r7 = 0
            r8 = 0
            r9 = 0
            com.unity3d.ads.core.domain.SendDiagnosticEvent.DefaultImpls.invoke$default(r3, r4, r5, r6, r7, r8, r9, r10, r11)
            java.lang.Boolean r13 = kotlin.coroutines.jvm.internal.a.a(r14)
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.CommonGetIsFileCache.invoke(java.lang.String, rs.c):java.lang.Object");
    }
}
