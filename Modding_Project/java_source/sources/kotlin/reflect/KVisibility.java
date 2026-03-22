package kotlin.reflect;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import ss.a;
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: KVisibility.kt */
@Metadata
/* loaded from: classes8.dex */
public final class KVisibility {
    private static final /* synthetic */ a $ENTRIES;
    private static final /* synthetic */ KVisibility[] $VALUES;
    public static final KVisibility PUBLIC = new KVisibility("PUBLIC", 0);
    public static final KVisibility PROTECTED = new KVisibility("PROTECTED", 1);
    public static final KVisibility INTERNAL = new KVisibility("INTERNAL", 2);
    public static final KVisibility PRIVATE = new KVisibility("PRIVATE", 3);

    private static final /* synthetic */ KVisibility[] $values() {
        return new KVisibility[]{PUBLIC, PROTECTED, INTERNAL, PRIVATE};
    }

    static {
        KVisibility[] $values = $values();
        $VALUES = $values;
        $ENTRIES = kotlin.enums.a.a($values);
    }

    private KVisibility(String str, int i10) {
    }

    @NotNull
    public static a<KVisibility> getEntries() {
        return $ENTRIES;
    }

    public static KVisibility valueOf(String str) {
        return (KVisibility) Enum.valueOf(KVisibility.class, str);
    }

    public static KVisibility[] values() {
        return (KVisibility[]) $VALUES.clone();
    }
}
