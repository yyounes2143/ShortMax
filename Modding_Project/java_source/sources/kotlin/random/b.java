package kotlin.random;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: PlatformRandom.kt */
@Metadata
/* loaded from: classes8.dex */
public final class b extends kotlin.random.a {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final a f61075c = new a();

    /* compiled from: PlatformRandom.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a extends ThreadLocal<java.util.Random> {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* renamed from: a */
        public java.util.Random initialValue() {
            return new java.util.Random();
        }
    }

    @Override // kotlin.random.a
    @NotNull
    public java.util.Random n() {
        java.util.Random random = this.f61075c.get();
        Intrinsics.checkNotNullExpressionValue(random, "get(...)");
        return random;
    }
}
