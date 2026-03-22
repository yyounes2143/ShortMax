package io.ktor.utils.io;

import java.nio.ByteBuffer;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ByteReadChannelJVM.kt */
@Metadata
/* loaded from: classes8.dex */
public interface ByteReadChannel {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final Companion f59475a = Companion.f59476a;

    /* compiled from: ByteReadChannelJVM.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class Companion {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ Companion f59476a = new Companion();
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private static final ms.i<b> f59477b = kotlin.c.b(new Function0<b>() { // from class: io.ktor.utils.io.ByteReadChannel$Companion$Empty$2
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            /* renamed from: b */
            public final b invoke() {
                b c10 = d.c(false, 1, null);
                f.a(c10);
                return c10;
            }
        });

        private Companion() {
        }

        @NotNull
        public final ByteReadChannel a() {
            return f59477b.getValue();
        }
    }

    /* compiled from: ByteReadChannelJVM.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        public static /* synthetic */ Object a(ByteReadChannel byteReadChannel, long j10, rs.c cVar, int i10, Object obj) {
            if (obj == null) {
                if ((i10 & 1) != 0) {
                    j10 = Long.MAX_VALUE;
                }
                return byteReadChannel.k(j10, cVar);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: readRemaining");
        }
    }

    int c();

    boolean cancel(@Nullable Throwable th2);

    @Nullable
    Object d(int i10, @NotNull Function1<? super ByteBuffer, Unit> function1, @NotNull rs.c<? super Unit> cVar);

    @Nullable
    Object e(@NotNull byte[] bArr, int i10, int i11, @NotNull rs.c<? super Integer> cVar);

    @Nullable
    Object f(@NotNull is.a aVar, @NotNull rs.c<? super Integer> cVar);

    @Nullable
    Throwable h();

    @Nullable
    Object k(long j10, @NotNull rs.c<? super hs.j> cVar);

    boolean l();
}
