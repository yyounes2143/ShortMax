package hs;

import java.io.EOFException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: Buffer.kt */
@Metadata
@SourceDebugExtension({"SMAP\nBuffer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Buffer.kt\nio/ktor/utils/io/core/BufferKt\n+ 2 Buffer.kt\nio/ktor/utils/io/core/Buffer\n*L\n1#1,472:1\n59#2:473\n69#2:474\n69#2:475\n*S KotlinDebug\n*F\n+ 1 Buffer.kt\nio/ktor/utils/io/core/BufferKt\n*L\n418#1:473\n426#1:474\n446#1:475\n*E\n"})
/* loaded from: classes8.dex */
public final class d {
    @NotNull
    public static final Void a(int i10, int i11) {
        throw new EOFException("Unable to discard " + i10 + " bytes: only " + i11 + " available for writing");
    }

    @NotNull
    public static final Void b(int i10, int i11) {
        throw new EOFException("Unable to discard " + i10 + " bytes: only " + i11 + " available for reading");
    }

    public static final void c(@NotNull a aVar, int i10) {
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        throw new IllegalArgumentException("End gap " + i10 + " is too big: capacity is " + aVar.e());
    }

    public static final void d(@NotNull a aVar, int i10) {
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        throw new IllegalArgumentException("Unable to reserve end gap " + i10 + ": there are already " + (aVar.j() - aVar.h()) + " content bytes at offset " + aVar.h());
    }

    public static final void e(@NotNull a aVar, int i10) {
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        throw new IllegalArgumentException("End gap " + i10 + " is too big: there are already " + aVar.i() + " bytes reserved in the beginning");
    }

    public static final void f(@NotNull a aVar, int i10) {
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        aVar.n(aVar.h() - i10);
    }

    @NotNull
    public static final Void g(@NotNull a aVar, int i10) {
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        throw new IllegalStateException("Unable to reserve " + i10 + " start gap: there are already " + (aVar.j() - aVar.h()) + " content bytes starting at offset " + aVar.h());
    }

    @NotNull
    public static final Void h(@NotNull a aVar, int i10) {
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        if (i10 > aVar.e()) {
            throw new IllegalArgumentException("Start gap " + i10 + " is bigger than the capacity " + aVar.e());
        }
        throw new IllegalStateException("Unable to reserve " + i10 + " start gap: there are already " + (aVar.e() - aVar.f()) + " bytes reserved in the end");
    }
}
