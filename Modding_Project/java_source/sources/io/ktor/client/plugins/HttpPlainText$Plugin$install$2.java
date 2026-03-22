package io.ktor.client.plugins;

import at.n;
import hs.j;
import io.ktor.client.call.HttpClientCall;
import io.ktor.utils.io.ByteReadChannel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: HttpPlainText.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "io.ktor.client.plugins.HttpPlainText$Plugin$install$2", f = "HttpPlainText.kt", l = {136, 138}, m = "invokeSuspend")
/* loaded from: classes8.dex */
public final class HttpPlainText$Plugin$install$2 extends SuspendLambda implements n<ds.c<tr.d, HttpClientCall>, tr.d, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f58975h;

    /* renamed from: i  reason: collision with root package name */
    private /* synthetic */ Object f58976i;

    /* renamed from: j  reason: collision with root package name */
    /* synthetic */ Object f58977j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ HttpPlainText f58978k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HttpPlainText$Plugin$install$2(HttpPlainText httpPlainText, rs.c<? super HttpPlainText$Plugin$install$2> cVar) {
        super(3, cVar);
        this.f58978k = httpPlainText;
    }

    @Override // at.n
    @Nullable
    /* renamed from: i */
    public final Object invoke(@NotNull ds.c<tr.d, HttpClientCall> cVar, @NotNull tr.d dVar, @Nullable rs.c<? super Unit> cVar2) {
        HttpPlainText$Plugin$install$2 httpPlainText$Plugin$install$2 = new HttpPlainText$Plugin$install$2(this.f58978k, cVar2);
        httpPlainText$Plugin$install$2.f58976i = cVar;
        httpPlainText$Plugin$install$2.f58977j = dVar;
        return httpPlainText$Plugin$install$2.invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        ds.c cVar;
        es.a aVar;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f58975h;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    f.b(obj);
                    return Unit.f60915a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            aVar = (es.a) this.f58977j;
            cVar = (ds.c) this.f58976i;
            f.b(obj);
        } else {
            f.b(obj);
            ds.c cVar2 = (ds.c) this.f58976i;
            tr.d dVar = (tr.d) this.f58977j;
            es.a a10 = dVar.a();
            Object b10 = dVar.b();
            if (Intrinsics.areEqual(a10.a(), Reflection.getOrCreateKotlinClass(String.class)) && (b10 instanceof ByteReadChannel)) {
                this.f58976i = cVar2;
                this.f58977j = a10;
                this.f58975h = 1;
                Object a11 = ByteReadChannel.a.a((ByteReadChannel) b10, 0L, this, 1, null);
                if (a11 == f10) {
                    return f10;
                }
                cVar = cVar2;
                obj = a11;
                aVar = a10;
            } else {
                return Unit.f60915a;
            }
        }
        tr.d dVar2 = new tr.d(aVar, this.f58978k.d((HttpClientCall) cVar.b(), (j) obj));
        this.f58976i = null;
        this.f58977j = null;
        this.f58975h = 2;
        if (cVar.d(dVar2, this) == f10) {
            return f10;
        }
        return Unit.f60915a;
    }
}
