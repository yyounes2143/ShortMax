package b4;

import android.util.SparseIntArray;
import androidx.collection.SieveCacheKt;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: DefaultNativeMemoryChunkPoolParams.kt */
@Metadata
/* loaded from: classes3.dex */
public final class q {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final q f2247a = new q();

    private q() {
    }

    @NotNull
    public static final e0 a() {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sparseIntArray.put(1024, 5);
        sparseIntArray.put(2048, 5);
        sparseIntArray.put(4096, 5);
        sparseIntArray.put(8192, 5);
        sparseIntArray.put(16384, 5);
        sparseIntArray.put(32768, 5);
        sparseIntArray.put(65536, 5);
        sparseIntArray.put(131072, 5);
        sparseIntArray.put(262144, 2);
        sparseIntArray.put(524288, 2);
        sparseIntArray.put(1048576, 2);
        q qVar = f2247a;
        return new e0(qVar.c(), qVar.b(), sparseIntArray);
    }

    private final int b() {
        int min = (int) Math.min(Runtime.getRuntime().maxMemory(), (long) SieveCacheKt.NodeLinkMask);
        if (min < 16777216) {
            return min / 2;
        }
        return (min / 4) * 3;
    }

    private final int c() {
        int min = (int) Math.min(Runtime.getRuntime().maxMemory(), (long) SieveCacheKt.NodeLinkMask);
        if (min < 16777216) {
            return 3145728;
        }
        if (min < 33554432) {
            return 6291456;
        }
        return 12582912;
    }
}
