package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: CoroutineStart.kt */
@Metadata
/* loaded from: classes8.dex */
public final class CoroutineStart {
    private static final /* synthetic */ ss.a $ENTRIES;
    private static final /* synthetic */ CoroutineStart[] $VALUES;
    public static final CoroutineStart DEFAULT = new CoroutineStart("DEFAULT", 0);
    public static final CoroutineStart LAZY = new CoroutineStart("LAZY", 1);
    public static final CoroutineStart ATOMIC = new CoroutineStart("ATOMIC", 2);
    public static final CoroutineStart UNDISPATCHED = new CoroutineStart("UNDISPATCHED", 3);

    /* compiled from: CoroutineStart.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[CoroutineStart.values().length];
            try {
                iArr[CoroutineStart.DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[CoroutineStart.ATOMIC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[CoroutineStart.UNDISPATCHED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[CoroutineStart.LAZY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private static final /* synthetic */ CoroutineStart[] $values() {
        return new CoroutineStart[]{DEFAULT, LAZY, ATOMIC, UNDISPATCHED};
    }

    static {
        CoroutineStart[] $values = $values();
        $VALUES = $values;
        $ENTRIES = kotlin.enums.a.a($values);
    }

    private CoroutineStart(String str, int i10) {
    }

    @NotNull
    public static ss.a<CoroutineStart> getEntries() {
        return $ENTRIES;
    }

    public static CoroutineStart valueOf(String str) {
        return (CoroutineStart) Enum.valueOf(CoroutineStart.class, str);
    }

    public static CoroutineStart[] values() {
        return (CoroutineStart[]) $VALUES.clone();
    }

    public final <R, T> void invoke(@NotNull Function2<? super R, ? super rs.c<? super T>, ? extends Object> function2, R r10, @NotNull rs.c<? super T> cVar) {
        int i10 = a.$EnumSwitchMapping$0[ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 != 4) {
                        throw new NoWhenBranchMatchedException();
                    }
                    return;
                }
                nt.b.c(function2, r10, cVar);
                return;
            }
            rs.d.b(function2, r10, cVar);
            return;
        }
        nt.a.b(function2, r10, cVar);
    }

    public final boolean isLazy() {
        if (this == LAZY) {
            return true;
        }
        return false;
    }

    public static /* synthetic */ void isLazy$annotations() {
    }
}
