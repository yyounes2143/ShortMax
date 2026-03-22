package com.unity3d.ads.core.domain;

import com.unity3d.ads.core.data.model.CacheResult;
import com.unity3d.ads.core.data.repository.CacheRepository;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: GetCachedAsset.kt */
@Metadata
@d(c = "com.unity3d.ads.core.domain.GetCachedAsset$getCachedAsset$result$1", f = "GetCachedAsset.kt", l = {39}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class GetCachedAsset$getCachedAsset$result$1 extends SuspendLambda implements Function2<g0, c<? super CacheResult>, Object> {
    final /* synthetic */ String $fileName;
    int label;
    final /* synthetic */ GetCachedAsset this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetCachedAsset$getCachedAsset$result$1(GetCachedAsset getCachedAsset, String str, c<? super GetCachedAsset$getCachedAsset$result$1> cVar) {
        super(2, cVar);
        this.this$0 = getCachedAsset;
        this.$fileName = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new GetCachedAsset$getCachedAsset$result$1(this.this$0, this.$fileName, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super CacheResult> cVar) {
        return ((GetCachedAsset$getCachedAsset$result$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        CacheRepository cacheRepository;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            cacheRepository = this.this$0.cacheRepository;
            String str = this.$fileName;
            this.label = 1;
            obj = cacheRepository.retrieveFile(str, this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }
}
