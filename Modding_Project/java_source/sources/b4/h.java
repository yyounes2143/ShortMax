package b4;

import androidx.collection.SieveCacheKt;
import com.ss.ttm.player.MediaPlayer;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BitmapCounterProvider.kt */
@Metadata
/* loaded from: classes3.dex */
public final class h {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final h f2227a;

    /* renamed from: b  reason: collision with root package name */
    public static final int f2228b;

    /* renamed from: c  reason: collision with root package name */
    private static int f2229c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private static volatile g f2230d;

    static {
        h hVar = new h();
        f2227a = hVar;
        f2228b = hVar.b();
        f2229c = MediaPlayer.MEDIA_PLAYER_OPTION_RENDER_STALL_500;
    }

    private h() {
    }

    @NotNull
    public static final g a() {
        if (f2230d == null) {
            synchronized (h.class) {
                try {
                    if (f2230d == null) {
                        f2230d = new g(f2229c, f2228b);
                    }
                    Unit unit = Unit.f60915a;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        g gVar = f2230d;
        Intrinsics.checkNotNull(gVar);
        return gVar;
    }

    private final int b() {
        int min = (int) Math.min(Runtime.getRuntime().maxMemory(), (long) SieveCacheKt.NodeLinkMask);
        if (min > 16777216) {
            return (min / 4) * 3;
        }
        return min / 2;
    }
}
