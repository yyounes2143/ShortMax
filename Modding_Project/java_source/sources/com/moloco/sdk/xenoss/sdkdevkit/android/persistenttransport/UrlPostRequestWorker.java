package com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport;

import android.content.Context;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.work.CoroutineWorker;
import androidx.work.WorkerParameters;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.p0;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference0Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 1)
@Metadata
/* loaded from: classes6.dex */
public final class UrlPostRequestWorker extends CoroutineWorker {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ KProperty<Object>[] f36626a = {Reflection.property0(new PropertyReference0Impl(UrlPostRequestWorker.class, "url", "<v#0>", 0))};

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.UrlPostRequestWorker", f = "PersistentHttpRequest.kt", l = {105}, m = "doWork")
    /* loaded from: classes6.dex */
    public static final class a extends ContinuationImpl {

        /* renamed from: h  reason: collision with root package name */
        public Object f36627h;

        /* renamed from: i  reason: collision with root package name */
        public Object f36628i;

        /* renamed from: j  reason: collision with root package name */
        public /* synthetic */ Object f36629j;

        /* renamed from: l  reason: collision with root package name */
        public int f36631l;

        public a(rs.c<? super a> cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.f36629j = obj;
            this.f36631l |= Integer.MIN_VALUE;
            return UrlPostRequestWorker.this.doWork(this);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UrlPostRequestWorker(@NotNull Context context, @NotNull WorkerParameters params) {
        super(com.moloco.sdk.internal.android_context.b.a(context), params);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(params, "params");
    }

    public static final String b(Map<String, Object> map) {
        Intrinsics.checkNotNull(map);
        return (String) p0.a(map, f36626a[0].getName());
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00fb  */
    @Override // androidx.work.CoroutineWorker
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object doWork(@org.jetbrains.annotations.NotNull rs.c<? super androidx.work.ListenableWorker.Result> r18) {
        /*
            Method dump skipped, instructions count: 284
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.moloco.sdk.xenoss.sdkdevkit.android.persistenttransport.UrlPostRequestWorker.doWork(rs.c):java.lang.Object");
    }
}
