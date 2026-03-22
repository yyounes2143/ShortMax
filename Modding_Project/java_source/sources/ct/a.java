package ct;

import java.util.Random;
import java.util.concurrent.ThreadLocalRandom;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: PlatformThreadLocalRandom.kt */
@Metadata
/* loaded from: classes8.dex */
public final class a extends kotlin.random.a {
    @Override // kotlin.random.Random
    public int h(int i10, int i11) {
        return ThreadLocalRandom.current().nextInt(i10, i11);
    }

    @Override // kotlin.random.Random
    public long j(long j10) {
        return ThreadLocalRandom.current().nextLong(j10);
    }

    @Override // kotlin.random.Random
    public long k(long j10, long j11) {
        return ThreadLocalRandom.current().nextLong(j10, j11);
    }

    @Override // kotlin.random.a
    @NotNull
    public Random n() {
        ThreadLocalRandom current = ThreadLocalRandom.current();
        Intrinsics.checkNotNullExpressionValue(current, "current(...)");
        return current;
    }
}
