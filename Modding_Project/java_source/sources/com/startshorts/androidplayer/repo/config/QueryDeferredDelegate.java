package com.startshorts.androidplayer.repo.config;

import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.utils.ext.CompletableDeferredExtKt;
import gt.p;
import gt.r;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: QueryDeferredDelegate.kt */
@Metadata
/* loaded from: classes7.dex */
public final class QueryDeferredDelegate {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f43779a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private p<Boolean> f43780b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private Function0<Unit> f43781c;

    public QueryDeferredDelegate(@NotNull String tag) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        this.f43779a = tag;
    }

    public static /* synthetic */ void f(QueryDeferredDelegate queryDeferredDelegate, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = null;
        }
        queryDeferredDelegate.e(str);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00f3  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(@org.jetbrains.annotations.NotNull java.lang.String r12, @org.jetbrains.annotations.Nullable java.lang.Long r13, @org.jetbrains.annotations.NotNull rs.c<? super java.lang.Boolean> r14) {
        /*
            Method dump skipped, instructions count: 305
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.repo.config.QueryDeferredDelegate.a(java.lang.String, java.lang.Long, rs.c):java.lang.Object");
    }

    public final boolean b() {
        p<Boolean> pVar = this.f43780b;
        if (pVar == null || !pVar.isActive()) {
            return false;
        }
        return true;
    }

    public final void c(@Nullable String str) {
        Logger logger = Logger.f41511a;
        String str2 = this.f43779a;
        logger.e(str2, this.f43779a + " onQueryFailed -> errMsg=" + str);
        p<Boolean> pVar = this.f43780b;
        if (pVar != null) {
            CompletableDeferredExtKt.d(pVar, Boolean.FALSE);
        }
    }

    public final synchronized void d() {
        try {
            p<Boolean> pVar = this.f43780b;
            if (pVar != null && pVar.isActive()) {
                Logger logger = Logger.f41511a;
                String str = this.f43779a;
                logger.e(str, this.f43779a + " onQueryRunningStart-> query running now, should not call onQueryRunningStart");
            } else {
                Logger logger2 = Logger.f41511a;
                String str2 = this.f43779a;
                logger2.e(str2, this.f43779a + " onQueryRunningStart-> start now");
                this.f43780b = r.b(null, 1, null);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final void e(@Nullable String str) {
        String str2;
        Logger logger = Logger.f41511a;
        String str3 = this.f43779a;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.f43779a);
        sb2.append(" onQuerySucceed");
        if (str == null) {
            str2 = "";
        } else {
            str2 = " -> " + str;
        }
        sb2.append(str2);
        logger.e(str3, sb2.toString());
        p<Boolean> pVar = this.f43780b;
        if (pVar != null) {
            CompletableDeferredExtKt.d(pVar, Boolean.TRUE);
        }
        Function0<Unit> function0 = this.f43781c;
        if (function0 != null) {
            function0.invoke();
        }
    }

    public final void g(@Nullable Function0<Unit> function0) {
        this.f43781c = function0;
    }
}
