package r3;

import androidx.collection.SieveCacheKt;
import java.util.concurrent.TimeUnit;
/* compiled from: DefaultEncodedMemoryCacheParamsSupplier.java */
/* loaded from: classes3.dex */
public class p implements k2.k<x> {

    /* renamed from: a  reason: collision with root package name */
    private static final long f65532a = TimeUnit.MINUTES.toMillis(5);

    private int b() {
        int min = (int) Math.min(Runtime.getRuntime().maxMemory(), (long) SieveCacheKt.NodeLinkMask);
        if (min < 16777216) {
            return 1048576;
        }
        if (min < 33554432) {
            return 2097152;
        }
        return 4194304;
    }

    @Override // k2.k
    /* renamed from: a */
    public x get() {
        int b10 = b();
        return new x(b10, Integer.MAX_VALUE, b10, Integer.MAX_VALUE, b10 / 8, f65532a);
    }
}
