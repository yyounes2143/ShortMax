package com.unity3d.ads.core.data.repository;

import com.unity3d.ads.core.data.datasource.CacheDataSource;
import com.unity3d.ads.core.data.model.CacheResult;
import gt.g0;
import java.io.File;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kt.e;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AndroidCacheRepository.kt */
@Metadata
@d(c = "com.unity3d.ads.core.data.repository.AndroidCacheRepository$getFileInternal$2", f = "AndroidCacheRepository.kt", l = {70, 77, 89}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class AndroidCacheRepository$getFileInternal$2 extends SuspendLambda implements Function2<g0, c<? super CacheResult>, Object> {
    final /* synthetic */ File $cacheDirectory;
    final /* synthetic */ int $priority;
    final /* synthetic */ String $url;
    Object L$0;
    int label;
    final /* synthetic */ AndroidCacheRepository this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AndroidCacheRepository.kt */
    @Metadata
    @d(c = "com.unity3d.ads.core.data.repository.AndroidCacheRepository$getFileInternal$2$1", f = "AndroidCacheRepository.kt", l = {79, 85}, m = "invokeSuspend")
    @SourceDebugExtension({"SMAP\nAndroidCacheRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidCacheRepository.kt\ncom/unity3d/ads/core/data/repository/AndroidCacheRepository$getFileInternal$2$1\n+ 2 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowKt\n*L\n1#1,132:1\n230#2,5:133\n230#2,5:138\n*S KotlinDebug\n*F\n+ 1 AndroidCacheRepository.kt\ncom/unity3d/ads/core/data/repository/AndroidCacheRepository$getFileInternal$2$1\n*L\n81#1:133,5\n86#1:138,5\n*E\n"})
    /* renamed from: com.unity3d.ads.core.data.repository.AndroidCacheRepository$getFileInternal$2$1  reason: invalid class name */
    /* loaded from: classes7.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function1<c<? super Unit>, Object> {
        final /* synthetic */ File $cacheDirectory;
        final /* synthetic */ e<CacheResult> $fileResult;
        final /* synthetic */ String $filename;
        final /* synthetic */ int $priority;
        final /* synthetic */ String $url;
        int label;
        final /* synthetic */ AndroidCacheRepository this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(AndroidCacheRepository androidCacheRepository, File file, String str, String str2, int i10, e<CacheResult> eVar, c<? super AnonymousClass1> cVar) {
            super(1, cVar);
            this.this$0 = androidCacheRepository;
            this.$cacheDirectory = file;
            this.$filename = str;
            this.$url = str2;
            this.$priority = i10;
            this.$fileResult = eVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final c<Unit> create(@NotNull c<?> cVar) {
            return new AnonymousClass1(this.this$0, this.$cacheDirectory, this.$filename, this.$url, this.$priority, this.$fileResult, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            CacheDataSource cacheDataSource;
            CacheDataSource cacheDataSource2;
            CacheResult cacheResult;
            e<CacheResult> eVar;
            Object f10 = a.f();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 == 2) {
                        f.b(obj);
                        cacheResult = (CacheResult) obj;
                        eVar = this.$fileResult;
                        do {
                        } while (!eVar.b(eVar.getValue(), cacheResult));
                        return Unit.f60915a;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                f.b(obj);
            } else {
                f.b(obj);
                cacheDataSource = this.this$0.localCacheDataSource;
                File file = this.$cacheDirectory;
                String str = this.$filename;
                String str2 = this.$url;
                Integer d10 = kotlin.coroutines.jvm.internal.a.d(this.$priority);
                this.label = 1;
                obj = cacheDataSource.getFile(file, str, str2, d10, this);
                if (obj == f10) {
                    return f10;
                }
            }
            CacheResult cacheResult2 = (CacheResult) obj;
            if (!(cacheResult2 instanceof CacheResult.Success)) {
                cacheDataSource2 = this.this$0.remoteCacheDataSource;
                File file2 = this.$cacheDirectory;
                String str3 = this.$filename;
                String str4 = this.$url;
                Integer d11 = kotlin.coroutines.jvm.internal.a.d(this.$priority);
                this.label = 2;
                obj = cacheDataSource2.getFile(file2, str3, str4, d11, this);
                if (obj == f10) {
                    return f10;
                }
                cacheResult = (CacheResult) obj;
                eVar = this.$fileResult;
                do {
                } while (!eVar.b(eVar.getValue(), cacheResult));
                return Unit.f60915a;
            }
            e<CacheResult> eVar2 = this.$fileResult;
            do {
            } while (!eVar2.b(eVar2.getValue(), cacheResult2));
            return Unit.f60915a;
        }

        @Override // kotlin.jvm.functions.Function1
        @Nullable
        public final Object invoke(@Nullable c<? super Unit> cVar) {
            return ((AnonymousClass1) create(cVar)).invokeSuspend(Unit.f60915a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidCacheRepository$getFileInternal$2(AndroidCacheRepository androidCacheRepository, String str, File file, int i10, c<? super AndroidCacheRepository$getFileInternal$2> cVar) {
        super(2, cVar);
        this.this$0 = androidCacheRepository;
        this.$url = str;
        this.$cacheDirectory = file;
        this.$priority = i10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new AndroidCacheRepository$getFileInternal$2(this.this$0, this.$url, this.$cacheDirectory, this.$priority, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super CacheResult> cVar) {
        return ((AndroidCacheRepository$getFileInternal$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x009f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:26:? A[RETURN, SYNTHETIC] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r20) {
        /*
            r19 = this;
            r6 = r19
            java.lang.Object r7 = kotlin.coroutines.intrinsics.a.f()
            int r0 = r6.label
            r8 = 0
            r9 = 3
            r10 = 2
            r1 = 1
            if (r0 == 0) goto L36
            if (r0 == r1) goto L2b
            if (r0 == r10) goto L23
            if (r0 != r9) goto L1b
            kotlin.f.b(r20)
            r0 = r20
            goto La0
        L1b:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "call to 'resume' before 'invoke' with coroutine"
            r0.<init>(r1)
            throw r0
        L23:
            java.lang.Object r0 = r6.L$0
            kt.e r0 = (kt.e) r0
            kotlin.f.b(r20)
            goto L91
        L2b:
            java.lang.Object r0 = r6.L$0
            java.lang.String r0 = (java.lang.String) r0
            kotlin.f.b(r20)
            r14 = r0
            r0 = r20
            goto L61
        L36:
            kotlin.f.b(r20)
            com.unity3d.ads.core.data.repository.AndroidCacheRepository r0 = r6.this$0
            java.lang.String r2 = r6.$url
            java.lang.String r11 = r0.getFilename(r2)
            com.unity3d.ads.core.data.repository.AndroidCacheRepository r0 = r6.this$0
            com.unity3d.ads.core.data.datasource.CacheDataSource r0 = com.unity3d.ads.core.data.repository.AndroidCacheRepository.access$getLocalCacheDataSource$p(r0)
            java.io.File r2 = r6.$cacheDirectory
            java.lang.String r3 = r6.$url
            int r4 = r6.$priority
            java.lang.Integer r4 = kotlin.coroutines.jvm.internal.a.d(r4)
            r6.L$0 = r11
            r6.label = r1
            r1 = r2
            r2 = r11
            r5 = r19
            java.lang.Object r0 = r0.getFile(r1, r2, r3, r4, r5)
            if (r0 != r7) goto L60
            return r7
        L60:
            r14 = r11
        L61:
            com.unity3d.ads.core.data.model.CacheResult r0 = (com.unity3d.ads.core.data.model.CacheResult) r0
            boolean r1 = r0 instanceof com.unity3d.ads.core.data.model.CacheResult.Success
            if (r1 == 0) goto L68
            return r0
        L68:
            kt.e r0 = kotlinx.coroutines.flow.o.a(r8)
            com.unity3d.ads.core.data.repository.AndroidCacheRepository r1 = r6.this$0
            com.unity3d.ads.core.domain.work.DownloadPriorityQueue r1 = com.unity3d.ads.core.data.repository.AndroidCacheRepository.access$getDownloadPriorityQueue$p(r1)
            int r2 = r6.$priority
            com.unity3d.ads.core.data.repository.AndroidCacheRepository$getFileInternal$2$1 r3 = new com.unity3d.ads.core.data.repository.AndroidCacheRepository$getFileInternal$2$1
            com.unity3d.ads.core.data.repository.AndroidCacheRepository r12 = r6.this$0
            java.io.File r13 = r6.$cacheDirectory
            java.lang.String r15 = r6.$url
            r18 = 0
            r11 = r3
            r16 = r2
            r17 = r0
            r11.<init>(r12, r13, r14, r15, r16, r17, r18)
            r6.L$0 = r0
            r6.label = r10
            java.lang.Object r1 = r1.invoke(r2, r3, r6)
            if (r1 != r7) goto L91
            return r7
        L91:
            kt.b r0 = kotlinx.coroutines.flow.c.w(r0)
            r6.L$0 = r8
            r6.label = r9
            java.lang.Object r0 = kotlinx.coroutines.flow.c.y(r0, r6)
            if (r0 != r7) goto La0
            return r7
        La0:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.data.repository.AndroidCacheRepository$getFileInternal$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
