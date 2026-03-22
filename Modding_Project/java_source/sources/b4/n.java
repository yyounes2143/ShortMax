package b4;

import android.util.SparseIntArray;
import androidx.collection.SieveCacheKt;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: DefaultBitmapPoolParams.kt */
@Metadata
/* loaded from: classes3.dex */
public final class n {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final n f2242a = new n();
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final SparseIntArray f2243b = new SparseIntArray(0);

    private n() {
    }

    @NotNull
    public static final e0 a() {
        return new e0(0, f2242a.b(), f2243b);
    }

    private final int b() {
        int min = (int) Math.min(Runtime.getRuntime().maxMemory(), (long) SieveCacheKt.NodeLinkMask);
        if (min > 16777216) {
            return (min / 4) * 3;
        }
        return min / 2;
    }
}
