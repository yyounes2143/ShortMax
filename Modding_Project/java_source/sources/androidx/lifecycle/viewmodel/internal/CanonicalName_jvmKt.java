package androidx.lifecycle.viewmodel.internal;

import kotlin.Metadata;
import kotlin.reflect.KClass;
import org.jetbrains.annotations.Nullable;
/* compiled from: CanonicalName.jvm.kt */
@Metadata
/* loaded from: classes2.dex */
public final class CanonicalName_jvmKt {
    @Nullable
    public static final String getCanonicalName(@Nullable KClass<?> kClass) {
        if (kClass != null) {
            return kClass.getQualifiedName();
        }
        return null;
    }
}
