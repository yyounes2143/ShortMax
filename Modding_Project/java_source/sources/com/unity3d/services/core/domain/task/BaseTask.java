package com.unity3d.services.core.domain.task;

import com.unity3d.services.core.di.IServiceComponent;
import com.unity3d.services.core.di.IServiceProvider;
import com.unity3d.services.core.domain.task.BaseParams;
import kotlin.Metadata;
import kotlin.Result;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: BaseTask.kt */
@Metadata
/* loaded from: classes7.dex */
public interface BaseTask<P extends BaseParams, R> extends IServiceComponent {

    /* compiled from: BaseTask.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class DefaultImpls {
        @NotNull
        public static <P extends BaseParams, R> IServiceProvider getServiceProvider(@NotNull BaseTask<? super P, R> baseTask) {
            return IServiceComponent.DefaultImpls.getServiceProvider(baseTask);
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
        /* JADX WARN: Removed duplicated region for block: B:14:0x0037  */
        @org.jetbrains.annotations.Nullable
        /* renamed from: invoke-gIAlu-s  reason: not valid java name */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static <P extends com.unity3d.services.core.domain.task.BaseParams, R> java.lang.Object m4734invokegIAlus(@org.jetbrains.annotations.NotNull com.unity3d.services.core.domain.task.BaseTask<? super P, R> r4, @org.jetbrains.annotations.NotNull P r5, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<? extends R>> r6) {
            /*
                boolean r0 = r6 instanceof com.unity3d.services.core.domain.task.BaseTask$invoke$1
                if (r0 == 0) goto L13
                r0 = r6
                com.unity3d.services.core.domain.task.BaseTask$invoke$1 r0 = (com.unity3d.services.core.domain.task.BaseTask$invoke$1) r0
                int r1 = r0.label
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.label = r1
                goto L18
            L13:
                com.unity3d.services.core.domain.task.BaseTask$invoke$1 r0 = new com.unity3d.services.core.domain.task.BaseTask$invoke$1
                r0.<init>(r6)
            L18:
                java.lang.Object r6 = r0.result
                java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
                int r2 = r0.label
                r3 = 1
                if (r2 == 0) goto L37
                if (r2 != r3) goto L2f
                kotlin.f.b(r6)
                kotlin.Result r6 = (kotlin.Result) r6
                java.lang.Object r4 = r6.n()
                goto L43
            L2f:
                java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
                java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
                r4.<init>(r5)
                throw r4
            L37:
                kotlin.f.b(r6)
                r0.label = r3
                java.lang.Object r4 = r4.mo4732doWorkgIAlus(r5, r0)
                if (r4 != r1) goto L43
                return r1
            L43:
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: com.unity3d.services.core.domain.task.BaseTask.DefaultImpls.m4734invokegIAlus(com.unity3d.services.core.domain.task.BaseTask, com.unity3d.services.core.domain.task.BaseParams, rs.c):java.lang.Object");
        }
    }

    @Nullable
    /* renamed from: doWork-gIAlu-s  reason: not valid java name */
    Object mo4732doWorkgIAlus(@NotNull P p10, @NotNull c<? super Result<? extends R>> cVar);

    @Nullable
    /* renamed from: invoke-gIAlu-s  reason: not valid java name */
    Object mo4733invokegIAlus(@NotNull P p10, @NotNull c<? super Result<? extends R>> cVar);
}
