package o3;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: AnimatedDrawableUtil.kt */
@Metadata
/* loaded from: classes3.dex */
public final class a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final C0885a f63087a = new C0885a(null);

    /* compiled from: AnimatedDrawableUtil.kt */
    @Metadata
    /* renamed from: o3.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static final class C0885a {
        public /* synthetic */ C0885a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C0885a() {
        }
    }

    public final void a(@NotNull int[] frameDurationMs) {
        Intrinsics.checkNotNullParameter(frameDurationMs, "frameDurationMs");
        int length = frameDurationMs.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (frameDurationMs[i10] < 11) {
                frameDurationMs[i10] = 100;
            }
        }
    }

    @NotNull
    public final int[] b(@NotNull int[] frameDurationsMs) {
        Intrinsics.checkNotNullParameter(frameDurationsMs, "frameDurationsMs");
        int[] iArr = new int[frameDurationsMs.length];
        int length = frameDurationsMs.length;
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            iArr[i11] = i10;
            i10 += frameDurationsMs[i11];
        }
        return iArr;
    }

    public final int c(@NotNull int[] frameDurationMs) {
        Intrinsics.checkNotNullParameter(frameDurationMs, "frameDurationMs");
        int i10 = 0;
        for (int i11 : frameDurationMs) {
            i10 += i11;
        }
        return i10;
    }
}
