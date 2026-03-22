package com.unity3d.ads.core.data.datasource;

import gt.g0;
import java.io.File;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: AndroidRemoteCacheDataSource.kt */
@Metadata
@d(c = "com.unity3d.ads.core.data.datasource.AndroidRemoteCacheDataSource$saveToCache$2", f = "AndroidRemoteCacheDataSource.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class AndroidRemoteCacheDataSource$saveToCache$2 extends SuspendLambda implements Function2<g0, c<? super Object>, Object> {
    final /* synthetic */ Object $body;
    final /* synthetic */ File $dest;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidRemoteCacheDataSource$saveToCache$2(Object obj, File file, c<? super AndroidRemoteCacheDataSource$saveToCache$2> cVar) {
        super(2, cVar);
        this.$body = obj;
        this.$dest = file;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new AndroidRemoteCacheDataSource$saveToCache$2(this.$body, this.$dest, cVar);
    }

    @Nullable
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object invoke2(@NotNull g0 g0Var, @Nullable c<Object> cVar) {
        return ((AndroidRemoteCacheDataSource$saveToCache$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        kotlin.coroutines.intrinsics.a.f();
        if (this.label == 0) {
            f.b(obj);
            Object obj2 = this.$body;
            if (obj2 instanceof File) {
                ws.f.v((File) obj2, this.$dest, true, 0, 4, null);
                return kotlin.coroutines.jvm.internal.a.a(((File) this.$body).delete());
            } else if (obj2 instanceof byte[]) {
                this.$dest.createNewFile();
                ws.f.n(this.$dest, (byte[]) this.$body);
                return Unit.f60915a;
            } else {
                String str = null;
                if (obj2 instanceof String) {
                    this.$dest.createNewFile();
                    ws.f.p(this.$dest, (String) this.$body, null, 2, null);
                    return Unit.f60915a;
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Unknown body type ");
                Object obj3 = this.$body;
                if (obj3 != null) {
                    str = obj3.getClass().getSimpleName();
                }
                sb2.append(str);
                throw new IllegalStateException(sb2.toString().toString());
            }
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(g0 g0Var, c<? super Object> cVar) {
        return invoke2(g0Var, (c<Object>) cVar);
    }
}
