package kotlinx.coroutines.flow;

import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.SourceDebugExtension;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SharingStarted.kt */
@Metadata
@SourceDebugExtension({"SMAP\nSharingStarted.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SharingStarted.kt\nkotlinx/coroutines/flow/StartedWhileSubscribed\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,205:1\n1#2:206\n*E\n"})
/* loaded from: classes8.dex */
public final class StartedWhileSubscribed implements m {

    /* renamed from: b  reason: collision with root package name */
    private final long f61663b;

    /* renamed from: c  reason: collision with root package name */
    private final long f61664c;

    public StartedWhileSubscribed(long j10, long j11) {
        this.f61663b = j10;
        this.f61664c = j11;
        if (j10 >= 0) {
            if (j11 >= 0) {
                return;
            }
            throw new IllegalArgumentException(("replayExpiration(" + j11 + " ms) cannot be negative").toString());
        }
        throw new IllegalArgumentException(("stopTimeout(" + j10 + " ms) cannot be negative").toString());
    }

    @Override // kotlinx.coroutines.flow.m
    @NotNull
    public kt.b<SharingCommand> a(@NotNull kt.i<Integer> iVar) {
        return c.r(c.s(c.X(iVar, new StartedWhileSubscribed$command$1(this, null)), new StartedWhileSubscribed$command$2(null)));
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof StartedWhileSubscribed) {
            StartedWhileSubscribed startedWhileSubscribed = (StartedWhileSubscribed) obj;
            if (this.f61663b == startedWhileSubscribed.f61663b && this.f61664c == startedWhileSubscribed.f61664c) {
                return true;
            }
        }
        return false;
    }

    @IgnoreJRERequirement
    public int hashCode() {
        return (Long.hashCode(this.f61663b) * 31) + Long.hashCode(this.f61664c);
    }

    @NotNull
    public String toString() {
        List d10 = CollectionsKt.d(2);
        if (this.f61663b > 0) {
            d10.add("stopTimeout=" + this.f61663b + "ms");
        }
        if (this.f61664c < Long.MAX_VALUE) {
            d10.add("replayExpiration=" + this.f61664c + "ms");
        }
        List a10 = CollectionsKt.a(d10);
        return "SharingStarted.WhileSubscribed(" + CollectionsKt.A0(a10, null, null, null, 0, null, null, 63, null) + ')';
    }
}
