package androidx.annotation;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Dimension.jvm.kt */
@Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.ANNOTATION_TYPE})
@Metadata
@Documented
@Retention(RetentionPolicy.CLASS)
/* loaded from: classes.dex */
public @interface Dimension {
    @NotNull
    public static final Companion Companion = Companion.$$INSTANCE;
    public static final int DP = 0;
    public static final int PX = 1;
    public static final int SP = 2;

    /* compiled from: Dimension.jvm.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        public static final int DP = 0;
        public static final int PX = 1;
        public static final int SP = 2;

        private Companion() {
        }
    }

    int unit() default 1;
}
