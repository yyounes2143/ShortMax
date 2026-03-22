package kotlin.time;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: TimeSource.kt */
@Metadata
/* loaded from: classes8.dex */
public interface a extends TimeMark, Comparable<a> {

    /* compiled from: TimeSource.kt */
    @Metadata
    /* renamed from: kotlin.time.a$a  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public static final class C0854a {
        public static int a(@NotNull a aVar, @NotNull a other) {
            Intrinsics.checkNotNullParameter(other, "other");
            return b.i(aVar.d(other), b.f61250b.c());
        }
    }

    long d(@NotNull a aVar);
}
