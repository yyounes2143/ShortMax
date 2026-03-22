package j9;

import java.util.UUID;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: UuidGenerator.kt */
@Metadata
/* loaded from: classes5.dex */
public final class p0 implements o0 {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final p0 f60331a = new p0();

    private p0() {
    }

    @Override // j9.o0
    @NotNull
    public UUID next() {
        UUID randomUUID = UUID.randomUUID();
        Intrinsics.checkNotNullExpressionValue(randomUUID, "randomUUID(...)");
        return randomUUID;
    }
}
