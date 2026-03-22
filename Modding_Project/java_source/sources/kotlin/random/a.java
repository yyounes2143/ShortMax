package kotlin.random;

import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: PlatformRandom.kt */
@Metadata
@SourceDebugExtension({"SMAP\nPlatformRandom.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PlatformRandom.kt\nkotlin/random/AbstractPlatformRandom\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,93:1\n1#2:94\n*E\n"})
/* loaded from: classes8.dex */
public abstract class a extends Random {
    @Override // kotlin.random.Random
    public int d(int i10) {
        return d.g(n().nextInt(), i10);
    }

    @Override // kotlin.random.Random
    public double e() {
        return n().nextDouble();
    }

    @Override // kotlin.random.Random
    public int f() {
        return n().nextInt();
    }

    @Override // kotlin.random.Random
    public int g(int i10) {
        return n().nextInt(i10);
    }

    @Override // kotlin.random.Random
    public long i() {
        return n().nextLong();
    }

    @NotNull
    public abstract java.util.Random n();
}
