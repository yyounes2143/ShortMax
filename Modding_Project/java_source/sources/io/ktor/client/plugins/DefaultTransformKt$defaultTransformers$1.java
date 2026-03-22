package io.ktor.client.plugins;

import at.n;
import io.ktor.client.request.HttpRequestBuilder;
import io.ktor.http.a;
import io.ktor.utils.io.ByteReadChannel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.internal.Reflection;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import wr.g;
import wr.i;
import wr.l;
import xr.b;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DefaultTransform.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "io.ktor.client.plugins.DefaultTransformKt$defaultTransformers$1", f = "DefaultTransform.kt", l = {57}, m = "invokeSuspend")
/* loaded from: classes8.dex */
public final class DefaultTransformKt$defaultTransformers$1 extends SuspendLambda implements n<ds.c<Object, HttpRequestBuilder>, Object, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f58907h;

    /* renamed from: i  reason: collision with root package name */
    private /* synthetic */ Object f58908i;

    /* renamed from: j  reason: collision with root package name */
    /* synthetic */ Object f58909j;

    /* compiled from: DefaultTransform.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a extends b.a {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final io.ktor.http.a f58910a;

        /* renamed from: b  reason: collision with root package name */
        private final long f58911b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Object f58912c;

        a(io.ktor.http.a aVar, Object obj) {
            this.f58912c = obj;
            this.f58910a = aVar == null ? a.C0827a.f59224a.a() : aVar;
            this.f58911b = ((byte[]) obj).length;
        }

        @Override // xr.b
        @NotNull
        public Long a() {
            return Long.valueOf(this.f58911b);
        }

        @Override // xr.b
        @NotNull
        public io.ktor.http.a b() {
            return this.f58910a;
        }

        @Override // xr.b.a
        @NotNull
        public byte[] d() {
            return (byte[]) this.f58912c;
        }
    }

    /* compiled from: DefaultTransform.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class b extends b.c {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final Long f58913a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final io.ktor.http.a f58914b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Object f58915c;

        b(ds.c<Object, HttpRequestBuilder> cVar, io.ktor.http.a aVar, Object obj) {
            Long l10;
            this.f58915c = obj;
            String h10 = cVar.b().a().h(i.f70141a.g());
            if (h10 != null) {
                l10 = Long.valueOf(Long.parseLong(h10));
            } else {
                l10 = null;
            }
            this.f58913a = l10;
            this.f58914b = aVar == null ? a.C0827a.f59224a.a() : aVar;
        }

        @Override // xr.b
        @Nullable
        public Long a() {
            return this.f58913a;
        }

        @Override // xr.b
        @NotNull
        public io.ktor.http.a b() {
            return this.f58914b;
        }

        @Override // xr.b.c
        @NotNull
        public ByteReadChannel d() {
            return (ByteReadChannel) this.f58915c;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DefaultTransformKt$defaultTransformers$1(rs.c<? super DefaultTransformKt$defaultTransformers$1> cVar) {
        super(3, cVar);
    }

    @Override // at.n
    @Nullable
    /* renamed from: i */
    public final Object invoke(@NotNull ds.c<Object, HttpRequestBuilder> cVar, @NotNull Object obj, @Nullable rs.c<? super Unit> cVar2) {
        DefaultTransformKt$defaultTransformers$1 defaultTransformKt$defaultTransformers$1 = new DefaultTransformKt$defaultTransformers$1(cVar2);
        defaultTransformKt$defaultTransformers$1.f58908i = cVar;
        defaultTransformKt$defaultTransformers$1.f58909j = obj;
        return defaultTransformKt$defaultTransformers$1.invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        xr.b a10;
        io.ktor.http.a aVar;
        du.a aVar2;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f58907h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            ds.c cVar = (ds.c) this.f58908i;
            Object obj2 = this.f58909j;
            g a11 = ((HttpRequestBuilder) cVar.b()).a();
            i iVar = i.f70141a;
            if (a11.h(iVar.c()) == null) {
                ((HttpRequestBuilder) cVar.b()).a().f(iVar.c(), "*/*");
            }
            io.ktor.http.a d10 = io.ktor.http.d.d((l) cVar.b());
            if (obj2 instanceof String) {
                String str = (String) obj2;
                if (d10 == null) {
                    d10 = a.c.f59246a.a();
                }
                a10 = new xr.c(str, d10, null, 4, null);
            } else if (obj2 instanceof byte[]) {
                a10 = new a(d10, obj2);
            } else if (obj2 instanceof ByteReadChannel) {
                a10 = new b(cVar, d10, obj2);
            } else if (obj2 instanceof xr.b) {
                a10 = (xr.b) obj2;
            } else {
                a10 = DefaultTransformersJvmKt.a(d10, (HttpRequestBuilder) cVar.b(), obj2);
            }
            if (a10 != null) {
                aVar = a10.b();
            } else {
                aVar = null;
            }
            if (aVar != null) {
                ((HttpRequestBuilder) cVar.b()).a().j(iVar.i());
                aVar2 = DefaultTransformKt.f58906a;
                aVar2.b("Transformed with default transformers request body for " + ((HttpRequestBuilder) cVar.b()).i() + " from " + Reflection.getOrCreateKotlinClass(obj2.getClass()));
                this.f58908i = null;
                this.f58907h = 1;
                if (cVar.d(a10, this) == f10) {
                    return f10;
                }
            }
        }
        return Unit.f60915a;
    }
}
