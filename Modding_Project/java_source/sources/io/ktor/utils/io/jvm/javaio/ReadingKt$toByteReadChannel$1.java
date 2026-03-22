package io.ktor.utils.io.jvm.javaio;

import io.ktor.utils.io.o;
import java.io.InputStream;
import java.nio.ByteBuffer;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Reading.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "io.ktor.utils.io.jvm.javaio.ReadingKt$toByteReadChannel$1", f = "Reading.kt", l = {61}, m = "invokeSuspend")
/* loaded from: classes8.dex */
final class ReadingKt$toByteReadChannel$1 extends SuspendLambda implements Function2<o, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    Object f59606h;

    /* renamed from: i  reason: collision with root package name */
    int f59607i;

    /* renamed from: j  reason: collision with root package name */
    private /* synthetic */ Object f59608j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ io.ktor.utils.io.pool.b<ByteBuffer> f59609k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ InputStream f59610l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReadingKt$toByteReadChannel$1(io.ktor.utils.io.pool.b<ByteBuffer> bVar, InputStream inputStream, rs.c<? super ReadingKt$toByteReadChannel$1> cVar) {
        super(2, cVar);
        this.f59609k = bVar;
        this.f59610l = inputStream;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final rs.c<Unit> create(@Nullable Object obj, @NotNull rs.c<?> cVar) {
        ReadingKt$toByteReadChannel$1 readingKt$toByteReadChannel$1 = new ReadingKt$toByteReadChannel$1(this.f59609k, this.f59610l, cVar);
        readingKt$toByteReadChannel$1.f59608j = obj;
        return readingKt$toByteReadChannel$1;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: i */
    public final Object invoke(@NotNull o oVar, @Nullable rs.c<? super Unit> cVar) {
        return ((ReadingKt$toByteReadChannel$1) create(oVar, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        ByteBuffer p02;
        o oVar;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f59607i;
        if (i10 != 0) {
            if (i10 == 1) {
                p02 = (ByteBuffer) this.f59606h;
                oVar = (o) this.f59608j;
                try {
                    f.b(obj);
                } catch (Throwable th2) {
                    try {
                        oVar.mo4948getChannel().a(th2);
                    } finally {
                        this.f59609k.y(p02);
                        this.f59610l.close();
                    }
                }
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            p02 = this.f59609k.p0();
            oVar = (o) this.f59608j;
        }
        while (true) {
            p02.clear();
            int read = this.f59610l.read(p02.array(), p02.arrayOffset() + p02.position(), p02.remaining());
            if (read < 0) {
                break;
            } else if (read != 0) {
                p02.position(p02.position() + read);
                p02.flip();
                io.ktor.utils.io.e mo4948getChannel = oVar.mo4948getChannel();
                this.f59608j = oVar;
                this.f59606h = p02;
                this.f59607i = 1;
                if (mo4948getChannel.i(p02, this) == f10) {
                    return f10;
                }
            }
        }
        return Unit.f60915a;
    }
}
