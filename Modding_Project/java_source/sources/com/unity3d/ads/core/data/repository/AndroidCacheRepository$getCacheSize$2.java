package com.unity3d.ads.core.data.repository;

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
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.j;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: AndroidCacheRepository.kt */
@Metadata
@d(c = "com.unity3d.ads.core.data.repository.AndroidCacheRepository$getCacheSize$2", f = "AndroidCacheRepository.kt", l = {}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nAndroidCacheRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidCacheRepository.kt\ncom/unity3d/ads/core/data/repository/AndroidCacheRepository$getCacheSize$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,132:1\n1#2:133\n*E\n"})
/* loaded from: classes7.dex */
final class AndroidCacheRepository$getCacheSize$2 extends SuspendLambda implements Function2<g0, c<? super Long>, Object> {
    int label;
    final /* synthetic */ AndroidCacheRepository this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AndroidCacheRepository.kt */
    @Metadata
    /* renamed from: com.unity3d.ads.core.data.repository.AndroidCacheRepository$getCacheSize$2$1  reason: invalid class name */
    /* loaded from: classes7.dex */
    public /* synthetic */ class AnonymousClass1 extends FunctionReferenceImpl implements Function1<File, Boolean> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        AnonymousClass1() {
            super(1, File.class, "isFile", "isFile()Z", 0);
        }

        @Override // kotlin.jvm.functions.Function1
        @NotNull
        public final Boolean invoke(@NotNull File p02) {
            Intrinsics.checkNotNullParameter(p02, "p0");
            return Boolean.valueOf(p02.isFile());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidCacheRepository$getCacheSize$2(AndroidCacheRepository androidCacheRepository, c<? super AndroidCacheRepository$getCacheSize$2> cVar) {
        super(2, cVar);
        this.this$0 = androidCacheRepository;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new AndroidCacheRepository$getCacheSize$2(this.this$0, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Long> cVar) {
        return ((AndroidCacheRepository$getCacheSize$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        File file;
        a.f();
        if (this.label == 0) {
            f.b(obj);
            file = this.this$0.cacheDir;
            long j10 = 0;
            for (File file2 : j.t(ws.f.s(file, null, 1, null), AnonymousClass1.INSTANCE)) {
                j10 += file2.length();
            }
            return kotlin.coroutines.jvm.internal.a.e(j10);
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
