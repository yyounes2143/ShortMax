package androidx.annotation;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import kotlin.Metadata;
import ms.c;
import org.jetbrains.annotations.NotNull;
import ss.a;
/* compiled from: RestrictTo.jvm.kt */
@Target({ElementType.ANNOTATION_TYPE, ElementType.TYPE, ElementType.METHOD, ElementType.CONSTRUCTOR, ElementType.FIELD, ElementType.PACKAGE})
@Metadata
@Documented
@Retention(RetentionPolicy.CLASS)
/* loaded from: classes.dex */
public @interface RestrictTo {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: RestrictTo.jvm.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Scope {
        private static final /* synthetic */ a $ENTRIES;
        private static final /* synthetic */ Scope[] $VALUES;
        public static final Scope LIBRARY = new Scope("LIBRARY", 0);
        public static final Scope LIBRARY_GROUP = new Scope("LIBRARY_GROUP", 1);
        public static final Scope LIBRARY_GROUP_PREFIX = new Scope("LIBRARY_GROUP_PREFIX", 2);
        @c
        public static final Scope GROUP_ID = new Scope("GROUP_ID", 3);
        public static final Scope TESTS = new Scope("TESTS", 4);
        public static final Scope SUBCLASSES = new Scope("SUBCLASSES", 5);

        private static final /* synthetic */ Scope[] $values() {
            return new Scope[]{LIBRARY, LIBRARY_GROUP, LIBRARY_GROUP_PREFIX, GROUP_ID, TESTS, SUBCLASSES};
        }

        static {
            Scope[] $values = $values();
            $VALUES = $values;
            $ENTRIES = kotlin.enums.a.a($values);
        }

        private Scope(String str, int i10) {
        }

        @NotNull
        public static a<Scope> getEntries() {
            return $ENTRIES;
        }

        public static Scope valueOf(String str) {
            return (Scope) Enum.valueOf(Scope.class, str);
        }

        public static Scope[] values() {
            return (Scope[]) $VALUES.clone();
        }
    }

    Scope[] value();
}
