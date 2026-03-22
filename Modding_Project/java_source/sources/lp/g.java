package lp;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import lp.g;
/* compiled from: RequestParams.java */
/* loaded from: classes8.dex */
public abstract class g<SelfType extends g<SelfType>> {
    public static <T extends g<T>> T resolveParams(@Nullable T t10, @Nullable T t11) {
        if (t10 == null) {
            return t11;
        }
        if (t11 != null) {
            t10.merge(t11);
        }
        return t10;
    }

    public abstract void merge(@NonNull SelfType selftype);
}
