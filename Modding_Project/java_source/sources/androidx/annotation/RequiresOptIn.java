package androidx.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import ss.a;
/* compiled from: RequiresOptIn.kt */
@Target({ElementType.ANNOTATION_TYPE})
@Metadata
@Retention(RetentionPolicy.CLASS)
/* loaded from: classes.dex */
public @interface RequiresOptIn {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: RequiresOptIn.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Level {
        private static final /* synthetic */ a $ENTRIES;
        private static final /* synthetic */ Level[] $VALUES;
        public static final Level WARNING = new Level("WARNING", 0);
        public static final Level ERROR = new Level("ERROR", 1);

        private static final /* synthetic */ Level[] $values() {
            return new Level[]{WARNING, ERROR};
        }

        static {
            Level[] $values = $values();
            $VALUES = $values;
            $ENTRIES = kotlin.enums.a.a($values);
        }

        private Level(String str, int i10) {
        }

        @NotNull
        public static a<Level> getEntries() {
            return $ENTRIES;
        }

        public static Level valueOf(String str) {
            return (Level) Enum.valueOf(Level.class, str);
        }

        public static Level[] values() {
            return (Level[]) $VALUES.clone();
        }
    }

    Level level() default Level.ERROR;

    String message() default "";
}
