package b4;

import android.util.SparseIntArray;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: DefaultByteArrayPoolParams.kt */
@Metadata
/* loaded from: classes3.dex */
public final class o {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final o f2244a = new o();

    private o() {
    }

    @NotNull
    public static final e0 a() {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sparseIntArray.put(16384, 5);
        return new e0(81920, 1048576, sparseIntArray);
    }
}
