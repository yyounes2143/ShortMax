package androidx.savedstate.serialization;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: ClassDiscriminatorMode.kt */
@Metadata
/* loaded from: classes2.dex */
public final class ClassDiscriminatorMode {
    public static final int ALL_OBJECTS = 1;
    @NotNull
    public static final ClassDiscriminatorMode INSTANCE = new ClassDiscriminatorMode();
    public static final int POLYMORPHIC = 2;

    /* compiled from: ClassDiscriminatorMode.kt */
    @Retention(RetentionPolicy.SOURCE)
    @Metadata
    /* loaded from: classes2.dex */
    public @interface Definition {
    }

    private ClassDiscriminatorMode() {
    }
}
