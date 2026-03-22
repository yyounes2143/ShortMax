package io.ktor.utils.io.jvm.javaio;

import io.ktor.utils.io.o;
import java.io.InputStream;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Reading.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "io.ktor.utils.io.jvm.javaio.ReadingKt$toByteReadChannel$2", f = "Reading.kt", l = {90}, m = "invokeSuspend")
/* loaded from: classes8.dex */
final class ReadingKt$toByteReadChannel$2 extends SuspendLambda implements Function2<o, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    Object f59611h;

    /* renamed from: i  reason: collision with root package name */
    int f59612i;

    /* renamed from: j  reason: collision with root package name */
    private /* synthetic */ Object f59613j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ io.ktor.utils.io.pool.b<byte[]> f59614k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ InputStream f59615l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReadingKt$toByteReadChannel$2(io.ktor.utils.io.pool.b<byte[]> bVar, InputStream inputStream, rs.c<? super ReadingKt$toByteReadChannel$2> cVar) {
        super(2, cVar);
        this.f59614k = bVar;
        this.f59615l = inputStream;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final rs.c<Unit> create(@Nullable Object obj, @NotNull rs.c<?> cVar) {
        ReadingKt$toByteReadChannel$2 readingKt$toByteReadChannel$2 = new ReadingKt$toByteReadChannel$2(this.f59614k, this.f59615l, cVar);
        readingKt$toByteReadChannel$2.f59613j = obj;
        return readingKt$toByteReadChannel$2;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    /* renamed from: i */
    public final Object invoke(@NotNull o oVar, @Nullable rs.c<? super Unit> cVar) {
        return ((ReadingKt$toByteReadChannel$2) create(oVar, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        byte[] p02;
        o oVar;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f59612i;
        if (i10 != 0) {
            if (i10 == 1) {
                p02 = (byte[]) this.f59611h;
                oVar = (o) this.f59613j;
                try {
                    f.b(obj);
                } catch (Throwable th2) {
                    try {
                        oVar.mo4948getChannel().a(th2);
                        this.f59614k.y(p02);
                        this.f59615l.close();
                        return Unit.f60915a;
                    } catch (Throwable th3) {
                        this.f59614k.y(p02);
                        this.f59615l.close();
                        throw th3;
                    }
                }
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            p02 = this.f59614k.p0();
            oVar = (o) this.f59613j;
        }
        while (true) {
            int read = this.f59615l.read(p02, 0, p02.length);
            if (read >= 0) {
                if (read != 0) {
                    io.ktor.utils.io.e mo4948getChannel = oVar.mo4948getChannel();
                    this.f59613j = oVar;
                    this.f59611h = p02;
                    this.f59612i = 1;
                    if (mo4948getChannel.b(p02, 0, read, this) == f10) {
                        return f10;
                    }
                }
            } else {
                this.f59614k.y(p02);
                break;
            }
        }
    }
}
