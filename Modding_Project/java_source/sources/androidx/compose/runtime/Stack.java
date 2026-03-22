package androidx.compose.runtime;

import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: Stack.kt */
@Metadata
/* loaded from: classes.dex */
public final class Stack<T> {
    @NotNull
    private final ArrayList<T> backing;

    private /* synthetic */ Stack(ArrayList arrayList) {
        this.backing = arrayList;
    }

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ Stack m1358boximpl(ArrayList arrayList) {
        return new Stack(arrayList);
    }

    /* renamed from: clear-impl  reason: not valid java name */
    public static final void m1359clearimpl(ArrayList<T> arrayList) {
        arrayList.clear();
    }

    /* renamed from: constructor-impl$default  reason: not valid java name */
    public static /* synthetic */ ArrayList m1361constructorimpl$default(ArrayList arrayList, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i10 & 1) != 0) {
            arrayList = new ArrayList();
        }
        return m1360constructorimpl(arrayList);
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m1362equalsimpl(ArrayList<T> arrayList, Object obj) {
        if (!(obj instanceof Stack) || !Intrinsics.areEqual(arrayList, ((Stack) obj).m1374unboximpl())) {
            return false;
        }
        return true;
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m1363equalsimpl0(ArrayList<T> arrayList, ArrayList<T> arrayList2) {
        return Intrinsics.areEqual(arrayList, arrayList2);
    }

    /* renamed from: getSize-impl  reason: not valid java name */
    public static final int m1364getSizeimpl(ArrayList<T> arrayList) {
        return arrayList.size();
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m1365hashCodeimpl(ArrayList<T> arrayList) {
        return arrayList.hashCode();
    }

    /* renamed from: isEmpty-impl  reason: not valid java name */
    public static final boolean m1366isEmptyimpl(ArrayList<T> arrayList) {
        return arrayList.isEmpty();
    }

    /* renamed from: isNotEmpty-impl  reason: not valid java name */
    public static final boolean m1367isNotEmptyimpl(ArrayList<T> arrayList) {
        return !m1366isEmptyimpl(arrayList);
    }

    /* renamed from: peek-impl  reason: not valid java name */
    public static final T m1368peekimpl(ArrayList<T> arrayList) {
        return arrayList.get(m1364getSizeimpl(arrayList) - 1);
    }

    /* renamed from: pop-impl  reason: not valid java name */
    public static final T m1370popimpl(ArrayList<T> arrayList) {
        return arrayList.remove(m1364getSizeimpl(arrayList) - 1);
    }

    /* renamed from: push-impl  reason: not valid java name */
    public static final boolean m1371pushimpl(ArrayList<T> arrayList, T t10) {
        return arrayList.add(t10);
    }

    @NotNull
    /* renamed from: toArray-impl  reason: not valid java name */
    public static final T[] m1372toArrayimpl(ArrayList<T> arrayList) {
        int size = arrayList.size();
        T[] tArr = (T[]) new Object[size];
        for (int i10 = 0; i10 < size; i10++) {
            tArr[i10] = arrayList.get(i10);
        }
        return tArr;
    }

    /* renamed from: toString-impl  reason: not valid java name */
    public static String m1373toStringimpl(ArrayList<T> arrayList) {
        return "Stack(backing=" + arrayList + ')';
    }

    public boolean equals(Object obj) {
        return m1362equalsimpl(this.backing, obj);
    }

    public int hashCode() {
        return m1365hashCodeimpl(this.backing);
    }

    public String toString() {
        return m1373toStringimpl(this.backing);
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ ArrayList m1374unboximpl() {
        return this.backing;
    }

    /* renamed from: peek-impl  reason: not valid java name */
    public static final T m1369peekimpl(ArrayList<T> arrayList, int i10) {
        return arrayList.get(i10);
    }

    @NotNull
    /* renamed from: constructor-impl  reason: not valid java name */
    public static <T> ArrayList<T> m1360constructorimpl(@NotNull ArrayList<T> arrayList) {
        return arrayList;
    }
}
