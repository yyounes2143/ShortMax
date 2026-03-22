package kotlin.jvm.internal;

import java.lang.reflect.Type;
import kotlin.Metadata;
import kotlin.reflect.KType;
import org.jetbrains.annotations.Nullable;
/* compiled from: KTypeBase.kt */
@Metadata
/* loaded from: classes8.dex */
public interface KTypeBase extends KType {
    @Nullable
    Type getJavaType();
}
