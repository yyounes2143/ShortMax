package io.ktor.client.plugins;

import at.n;
import io.ktor.client.call.HttpClientCall;
import io.ktor.client.statement.HttpResponseKt;
import io.ktor.utils.io.ByteReadChannel;
import io.ktor.utils.io.jvm.javaio.BlockingKt;
import java.io.InputStream;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DefaultTransformersJvm.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "io.ktor.client.plugins.DefaultTransformersJvmKt$platformResponseDefaultTransformers$1", f = "DefaultTransformersJvm.kt", l = {36}, m = "invokeSuspend")
/* loaded from: classes8.dex */
final class DefaultTransformersJvmKt$platformResponseDefaultTransformers$1 extends SuspendLambda implements n<ds.c<tr.d, HttpClientCall>, tr.d, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f58929h;

    /* renamed from: i  reason: collision with root package name */
    private /* synthetic */ Object f58930i;

    /* renamed from: j  reason: collision with root package name */
    /* synthetic */ Object f58931j;

    /* compiled from: DefaultTransformersJvm.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a extends InputStream {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ InputStream f58932a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ds.c<tr.d, HttpClientCall> f58933b;

        a(InputStream inputStream, ds.c<tr.d, HttpClientCall> cVar) {
            this.f58932a = inputStream;
            this.f58933b = cVar;
        }

        @Override // java.io.InputStream
        public int available() {
            return this.f58932a.available();
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            super.close();
            this.f58932a.close();
            HttpResponseKt.d(this.f58933b.b().e());
        }

        @Override // java.io.InputStream
        public int read() {
            return this.f58932a.read();
        }

        @Override // java.io.InputStream
        public int read(@NotNull byte[] b10, int i10, int i11) {
            Intrinsics.checkNotNullParameter(b10, "b");
            return this.f58932a.read(b10, i10, i11);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DefaultTransformersJvmKt$platformResponseDefaultTransformers$1(rs.c<? super DefaultTransformersJvmKt$platformResponseDefaultTransformers$1> cVar) {
        super(3, cVar);
    }

    @Override // at.n
    @Nullable
    /* renamed from: i */
    public final Object invoke(@NotNull ds.c<tr.d, HttpClientCall> cVar, @NotNull tr.d dVar, @Nullable rs.c<? super Unit> cVar2) {
        DefaultTransformersJvmKt$platformResponseDefaultTransformers$1 defaultTransformersJvmKt$platformResponseDefaultTransformers$1 = new DefaultTransformersJvmKt$platformResponseDefaultTransformers$1(cVar2);
        defaultTransformersJvmKt$platformResponseDefaultTransformers$1.f58930i = cVar;
        defaultTransformersJvmKt$platformResponseDefaultTransformers$1.f58931j = dVar;
        return defaultTransformersJvmKt$platformResponseDefaultTransformers$1.invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f58929h;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            ds.c cVar = (ds.c) this.f58930i;
            tr.d dVar = (tr.d) this.f58931j;
            es.a a10 = dVar.a();
            Object b10 = dVar.b();
            if (!(b10 instanceof ByteReadChannel)) {
                return Unit.f60915a;
            }
            if (Intrinsics.areEqual(a10.a(), Reflection.getOrCreateKotlinClass(InputStream.class))) {
                tr.d dVar2 = new tr.d(a10, new a(BlockingKt.c((ByteReadChannel) b10, (r) ((HttpClientCall) cVar.b()).getCoroutineContext().get(r.G8)), cVar));
                this.f58930i = null;
                this.f58929h = 1;
                if (cVar.d(dVar2, this) == f10) {
                    return f10;
                }
            }
        }
        return Unit.f60915a;
    }
}
