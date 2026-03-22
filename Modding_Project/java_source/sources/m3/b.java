package m3;

import com.facebook.fresco.animation.factory.AnimatedFactoryV2Impl;
import i2.g;
import java.util.concurrent.ExecutorService;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import r3.m;
import t3.o;
/* compiled from: AnimatedFactoryProvider.kt */
@Metadata
/* loaded from: classes3.dex */
public final class b {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final b f62451a = new b();

    /* renamed from: b  reason: collision with root package name */
    private static boolean f62452b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private static a f62453c;

    private b() {
    }

    @Nullable
    public static final a a(@Nullable q3.d dVar, @Nullable o oVar, @Nullable m<f2.a, y3.e> mVar, boolean z10, boolean z11, int i10, int i11, @Nullable ExecutorService executorService) {
        if (!f62452b) {
            try {
                Class cls = Boolean.TYPE;
                Class cls2 = Integer.TYPE;
                Object newInstance = AnimatedFactoryV2Impl.class.getConstructor(q3.d.class, o.class, m.class, cls, cls, cls2, cls2, g.class).newInstance(dVar, oVar, mVar, Boolean.valueOf(z10), Boolean.valueOf(z11), Integer.valueOf(i10), Integer.valueOf(i11), executorService);
                Intrinsics.checkNotNull(newInstance, "null cannot be cast to non-null type com.facebook.imagepipeline.animated.factory.AnimatedFactory");
                f62453c = (a) newInstance;
            } catch (Throwable unused) {
            }
            if (f62453c != null) {
                f62452b = true;
            }
        }
        return f62453c;
    }
}
