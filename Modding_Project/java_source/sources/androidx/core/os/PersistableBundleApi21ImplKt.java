package androidx.core.os;

import android.os.PersistableBundle;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PersistableBundle.kt */
@RequiresApi(21)
@Metadata
/* loaded from: classes.dex */
final class PersistableBundleApi21ImplKt {
    @NotNull
    public static final PersistableBundleApi21ImplKt INSTANCE = new PersistableBundleApi21ImplKt();

    private PersistableBundleApi21ImplKt() {
    }

    @DoNotInline
    @NotNull
    public static final PersistableBundle createPersistableBundle(int i10) {
        return new PersistableBundle(i10);
    }

    @DoNotInline
    public static final void putValue(@NotNull PersistableBundle persistableBundle, @Nullable String str, @Nullable Object obj) {
        if (obj == null) {
            persistableBundle.putString(str, null);
        } else if (obj instanceof Boolean) {
            PersistableBundleApi22ImplKt.putBoolean(persistableBundle, str, ((Boolean) obj).booleanValue());
        } else if (obj instanceof Double) {
            persistableBundle.putDouble(str, ((Number) obj).doubleValue());
        } else if (obj instanceof Integer) {
            persistableBundle.putInt(str, ((Number) obj).intValue());
        } else if (obj instanceof Long) {
            persistableBundle.putLong(str, ((Number) obj).longValue());
        } else if (obj instanceof String) {
            persistableBundle.putString(str, (String) obj);
        } else if (obj instanceof boolean[]) {
            PersistableBundleApi22ImplKt.putBooleanArray(persistableBundle, str, (boolean[]) obj);
        } else if (obj instanceof double[]) {
            persistableBundle.putDoubleArray(str, (double[]) obj);
        } else if (obj instanceof int[]) {
            persistableBundle.putIntArray(str, (int[]) obj);
        } else if (obj instanceof long[]) {
            persistableBundle.putLongArray(str, (long[]) obj);
        } else if (obj instanceof Object[]) {
            Class<?> componentType = obj.getClass().getComponentType();
            Intrinsics.checkNotNull(componentType);
            if (String.class.isAssignableFrom(componentType)) {
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Array<kotlin.String>");
                persistableBundle.putStringArray(str, (String[]) obj);
                return;
            }
            String canonicalName = componentType.getCanonicalName();
            throw new IllegalArgumentException("Illegal value array type " + canonicalName + " for key \"" + str + '\"');
        } else {
            String canonicalName2 = obj.getClass().getCanonicalName();
            throw new IllegalArgumentException("Illegal value type " + canonicalName2 + " for key \"" + str + '\"');
        }
    }
}
