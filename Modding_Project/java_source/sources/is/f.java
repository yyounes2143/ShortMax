package is;

import hs.i;
import hs.j;
import hs.l;
import hs.n;
import hs.p;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Unsafe.kt */
@Metadata
@SourceDebugExtension({"SMAP\nUnsafe.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Unsafe.kt\nio/ktor/utils/io/core/internal/UnsafeKt\n+ 2 Buffer.kt\nio/ktor/utils/io/core/BufferKt\n+ 3 Buffer.kt\nio/ktor/utils/io/core/Buffer\n*L\n1#1,64:1\n355#2:65\n59#3:66\n*S KotlinDebug\n*F\n+ 1 Unsafe.kt\nio/ktor/utils/io/core/internal/UnsafeKt\n*L\n38#1:65\n39#1:66\n*E\n"})
/* loaded from: classes8.dex */
public final class f {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final byte[] f60081a = new byte[0];

    public static final void a(@NotNull l lVar, @NotNull a current) {
        Intrinsics.checkNotNullParameter(lVar, "<this>");
        Intrinsics.checkNotNullParameter(current, "current");
        if (current == lVar) {
            return;
        }
        if (current.j() > current.h()) {
            if (current.e() - current.f() < 8) {
                lVar.w(current);
                return;
            } else {
                lVar.o0(current.h());
                return;
            }
        }
        lVar.r(current);
    }

    @Nullable
    public static final a b(@NotNull l lVar, int i10) {
        Intrinsics.checkNotNullParameter(lVar, "<this>");
        return lVar.g0(i10);
    }

    @Nullable
    public static final a c(@NotNull l lVar, @NotNull a current) {
        Intrinsics.checkNotNullParameter(lVar, "<this>");
        Intrinsics.checkNotNullParameter(current, "current");
        if (current == lVar) {
            if (lVar.k()) {
                return (a) lVar;
            }
            return null;
        }
        return lVar.t(current);
    }

    @NotNull
    public static final a d(@NotNull n nVar, int i10, @Nullable a aVar) {
        Intrinsics.checkNotNullParameter(nVar, "<this>");
        if (aVar != null) {
            nVar.k();
        }
        return nVar.W(i10);
    }

    public static final int e(@NotNull j jVar, @NotNull i builder) {
        Intrinsics.checkNotNullParameter(jVar, "<this>");
        Intrinsics.checkNotNullParameter(builder, "builder");
        int i02 = builder.i0();
        a Y = builder.Y();
        if (Y == null) {
            return 0;
        }
        if (i02 <= p.a() && Y.x() == null && jVar.z0(Y)) {
            builder.d();
            return i02;
        }
        jVar.b(Y);
        return i02;
    }
}
