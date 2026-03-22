package com.moloco.sdk.acm.eventprocessing;

import com.moloco.sdk.acm.http.j;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes6.dex */
public final class k {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final j f31905a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final com.moloco.sdk.acm.db.d f31906b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public final e f31907c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public final Function1<wr.g, Unit> f31908d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    public final String f31909e;

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.acm.eventprocessing.RequestAndPurgeDBImpl", f = "RequestAndPurgeDB.kt", l = {38, 48}, m = "invoke-IoAF18A")
    /* loaded from: classes6.dex */
    public static final class a extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public Object f31910h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ Object f31911i;

        /* renamed from: k  reason: collision with root package name */
        public int f31913k;

        public a(rs.c<? super a> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f31911i = obj;
            this.f31913k |= Integer.MIN_VALUE;
            Object a10 = k.this.a(this);
            if (a10 == kotlin.coroutines.intrinsics.a.f()) {
                return a10;
            }
            return Result.b(a10);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public k(@NotNull j metricsRequest, @NotNull com.moloco.sdk.acm.db.d metricsDAO, @NotNull e dataAgeChecker, @NotNull Function1<? super wr.g, Unit> headers) {
        Intrinsics.checkNotNullParameter(metricsRequest, "metricsRequest");
        Intrinsics.checkNotNullParameter(metricsDAO, "metricsDAO");
        Intrinsics.checkNotNullParameter(dataAgeChecker, "dataAgeChecker");
        Intrinsics.checkNotNullParameter(headers, "headers");
        this.f31905a = metricsRequest;
        this.f31906b = metricsDAO;
        this.f31907c = dataAgeChecker;
        this.f31908d = headers;
        this.f31909e = "RequestAndPurgeDB";
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00ad A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00ca  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object a(@org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<java.lang.String>> r11) {
        /*
            Method dump skipped, instructions count: 236
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.acm.eventprocessing.k.a(rs.c):java.lang.Object");
    }
}
