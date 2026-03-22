package lk;

import com.google.gson.ExclusionStrategy;
import com.google.gson.FieldAttributes;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: IgnoreAnnotationStrategy.kt */
@Metadata
/* loaded from: classes7.dex */
public final class d implements ExclusionStrategy {
    @Override // com.google.gson.ExclusionStrategy
    public boolean shouldSkipClass(@NotNull Class<?> clazz) {
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        if (clazz.getAnnotation(c.class) != null) {
            return true;
        }
        return false;
    }

    @Override // com.google.gson.ExclusionStrategy
    public boolean shouldSkipField(@NotNull FieldAttributes f10) {
        Intrinsics.checkNotNullParameter(f10, "f");
        if (f10.getAnnotation(c.class) != null) {
            return true;
        }
        return false;
    }
}
