package zq;

import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;
/* compiled from: TypeConversion.kt */
@Metadata
/* loaded from: classes8.dex */
public interface h<T> {
    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ Object b(h hVar, String str, Object obj, int i10, Object obj2) {
        if (obj2 == null) {
            if ((i10 & 2) != 0) {
                obj = null;
            }
            return hVar.a(str, obj);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: toOrDefault");
    }

    @Nullable
    T a(@Nullable String str, @Nullable T t10);
}
