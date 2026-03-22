package androidx.room;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: BuiltInTypeConverters.kt */
@Target({})
@Metadata
@Retention(RetentionPolicy.CLASS)
/* loaded from: classes2.dex */
public @interface BuiltInTypeConverters {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: BuiltInTypeConverters.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class State {
        private static final /* synthetic */ ss.a $ENTRIES;
        private static final /* synthetic */ State[] $VALUES;
        public static final State ENABLED = new State("ENABLED", 0);
        public static final State DISABLED = new State("DISABLED", 1);
        public static final State INHERITED = new State("INHERITED", 2);

        private static final /* synthetic */ State[] $values() {
            return new State[]{ENABLED, DISABLED, INHERITED};
        }

        static {
            State[] $values = $values();
            $VALUES = $values;
            $ENTRIES = kotlin.enums.a.a($values);
        }

        private State(String str, int i10) {
        }

        @NotNull
        public static ss.a<State> getEntries() {
            return $ENTRIES;
        }

        public static State valueOf(String str) {
            return (State) Enum.valueOf(State.class, str);
        }

        public static State[] values() {
            return (State[]) $VALUES.clone();
        }
    }

    State byteBuffer() default State.INHERITED;

    State enums() default State.INHERITED;

    State uuid() default State.INHERITED;
}
