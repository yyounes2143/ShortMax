package coil.disk;

import gt.g0;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import okio.Okio;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DiskLruCache.kt */
@Metadata
@d(c = "coil.disk.DiskLruCache$launchCleanup$1", f = "DiskLruCache.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class DiskLruCache$launchCleanup$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f3935h;

    /* renamed from: i  reason: collision with root package name */
    final /* synthetic */ DiskLruCache f3936i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiskLruCache$launchCleanup$1(DiskLruCache diskLruCache, c<? super DiskLruCache$launchCleanup$1> cVar) {
        super(2, cVar);
        this.f3936i = diskLruCache;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new DiskLruCache$launchCleanup$1(this.f3936i, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((DiskLruCache$launchCleanup$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        boolean z10;
        boolean z11;
        boolean P;
        a.f();
        if (this.f3935h == 0) {
            f.b(obj);
            DiskLruCache diskLruCache = this.f3936i;
            synchronized (diskLruCache) {
                z10 = diskLruCache.f3914n;
                if (z10) {
                    z11 = diskLruCache.f3915o;
                    if (!z11) {
                        try {
                            diskLruCache.c0();
                        } catch (IOException unused) {
                            diskLruCache.f3916p = true;
                        }
                        try {
                            P = diskLruCache.P();
                            if (P) {
                                diskLruCache.e0();
                            }
                        } catch (IOException unused2) {
                            diskLruCache.f3917q = true;
                            diskLruCache.f3912l = Okio.buffer(Okio.blackhole());
                        }
                        return Unit.f60915a;
                    }
                }
                return Unit.f60915a;
            }
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
