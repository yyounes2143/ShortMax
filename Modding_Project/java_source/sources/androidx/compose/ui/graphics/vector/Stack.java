package androidx.compose.ui.graphics.vector;

import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ImageVector.kt */
@Metadata
/* loaded from: classes.dex */
final class Stack<T> {
    @NotNull
    private final ArrayList<T> backing;

    private /* synthetic */ Stack(ArrayList arrayList) {
        this.backing = arrayList;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ Stack m2427boximpl(ArrayList arrayList) {
        return new Stack(arrayList);
    }

    @NotNull
    /* renamed from: constructor-impl  reason: not valid java name */
    public static <T> ArrayList<T> m2428constructorimpl(@NotNull ArrayList<T> backing) {
        Intrinsics.checkNotNullParameter(backing, "backing");
        return backing;
    }

    /* renamed from: constructor-impl$default  reason: not valid java name */
    public static /* synthetic */ ArrayList m2429constructorimpl$default(ArrayList arrayList, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i10 & 1) != 0) {
            arrayList = new ArrayList();
        }
        return m2428constructorimpl(arrayList);
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m2430equalsimpl(ArrayList<T> arrayList, Object obj) {
        if (!(obj instanceof Stack) || !Intrinsics.areEqual(arrayList, ((Stack) obj).m2438unboximpl())) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m2431equalsimpl0(ArrayList<?> arrayList, ArrayList<?> arrayList2) {
        return Intrinsics.areEqual(arrayList, arrayList2);
    }

    /* renamed from: getSize-impl  reason: not valid java name */
    public static final int m2432getSizeimpl(ArrayList<T> arrayList) {
        return arrayList.size();
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m2433hashCodeimpl(ArrayList<T> arrayList) {
        return arrayList.hashCode();
    }

    /* renamed from: peek-impl  reason: not valid java name */
    public static final T m2434peekimpl(ArrayList<T> arrayList) {
        return arrayList.get(m2432getSizeimpl(arrayList) - 1);
    }

    /* renamed from: pop-impl  reason: not valid java name */
    public static final T m2435popimpl(ArrayList<T> arrayList) {
        return arrayList.remove(m2432getSizeimpl(arrayList) - 1);
    }

    /* renamed from: push-impl  reason: not valid java name */
    public static final boolean m2436pushimpl(ArrayList<T> arrayList, T t10) {
        return arrayList.add(t10);
    }

    /* renamed from: toString-impl  reason: not valid java name */
    public static String m2437toStringimpl(ArrayList<T> arrayList) {
        return "Stack(backing=" + arrayList + ')';
    }

    public boolean equals(Object obj) {
        return m2430equalsimpl(this.backing, obj);
    }

    public int hashCode() {
        return m2433hashCodeimpl(this.backing);
    }

    public String toString() {
        return m2437toStringimpl(this.backing);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ ArrayList m2438unboximpl() {
        return this.backing;
    }
}
