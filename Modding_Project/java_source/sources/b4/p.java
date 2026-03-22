package b4;

import android.util.SparseIntArray;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: DefaultFlexByteArrayPoolParams.kt */
@Metadata
/* loaded from: classes3.dex */
public final class p {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final p f2245a = new p();

    /* renamed from: b  reason: collision with root package name */
    private static final int f2246b = Runtime.getRuntime().availableProcessors();

    private p() {
    }

    @NotNull
    public static final SparseIntArray a(int i10, int i11, int i12) {
        SparseIntArray sparseIntArray = new SparseIntArray();
        while (i10 <= i11) {
            sparseIntArray.put(i10, i12);
            i10 *= 2;
        }
        return sparseIntArray;
    }

    @NotNull
    public static final e0 b() {
        int i10 = f2246b;
        return new e0(4194304, i10 * 4194304, a(131072, 4194304, i10), 131072, 4194304, i10);
    }
}
