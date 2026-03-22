package androidx.compose.runtime;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Composer.kt */
@Metadata
/* loaded from: classes.dex */
public final class GroupKind {
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int Group = m1322constructorimpl(0);
    private static final int Node = m1322constructorimpl(1);
    private static final int ReusableNode = m1322constructorimpl(2);
    private final int value;

    /* compiled from: Composer.kt */
    @Metadata
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: getGroup-ULZAiWs  reason: not valid java name */
        public final int m1330getGroupULZAiWs() {
            return GroupKind.Group;
        }

        /* renamed from: getNode-ULZAiWs  reason: not valid java name */
        public final int m1331getNodeULZAiWs() {
            return GroupKind.Node;
        }

        /* renamed from: getReusableNode-ULZAiWs  reason: not valid java name */
        public final int m1332getReusableNodeULZAiWs() {
            return GroupKind.ReusableNode;
        }

        private Companion() {
        }
    }

    private /* synthetic */ GroupKind(int i10) {
        this.value = i10;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ GroupKind m1321boximpl(int i10) {
        return new GroupKind(i10);
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m1323equalsimpl(int i10, Object obj) {
        if (!(obj instanceof GroupKind) || i10 != ((GroupKind) obj).m1329unboximpl()) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m1324equalsimpl0(int i10, int i11) {
        if (i10 == i11) {
            return true;
        }
        return false;
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m1325hashCodeimpl(int i10) {
        return Integer.hashCode(i10);
    }

    /* renamed from: isNode-impl  reason: not valid java name */
    public static final boolean m1326isNodeimpl(int i10) {
        if (i10 != Companion.m1330getGroupULZAiWs()) {
            return true;
        }
        return false;
    }

    /* renamed from: isReusable-impl  reason: not valid java name */
    public static final boolean m1327isReusableimpl(int i10) {
        if (i10 != Companion.m1331getNodeULZAiWs()) {
            return true;
        }
        return false;
    }

    /* renamed from: toString-impl  reason: not valid java name */
    public static String m1328toStringimpl(int i10) {
        return "GroupKind(value=" + i10 + ')';
    }

    public boolean equals(Object obj) {
        return m1323equalsimpl(this.value, obj);
    }

    public final int getValue() {
        return this.value;
    }

    public int hashCode() {
        return m1325hashCodeimpl(this.value);
    }

    public String toString() {
        return m1328toStringimpl(this.value);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ int m1329unboximpl() {
        return this.value;
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    private static int m1322constructorimpl(int i10) {
        return i10;
    }
}
