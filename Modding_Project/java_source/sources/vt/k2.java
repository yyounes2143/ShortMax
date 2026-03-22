package vt;

import kotlin.Metadata;
/* compiled from: CollectionSerializers.kt */
@Metadata
/* loaded from: classes8.dex */
public abstract class k2<Array> {
    public static /* synthetic */ void c(k2 k2Var, int i10, int i11, Object obj) {
        if (obj == null) {
            if ((i11 & 1) != 0) {
                i10 = k2Var.d() + 1;
            }
            k2Var.b(i10);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: ensureCapacity");
    }

    public abstract Array a();

    public abstract void b(int i10);

    public abstract int d();
}
