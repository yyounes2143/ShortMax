package h7;

import java.util.Arrays;
/* compiled from: Objects.java */
/* loaded from: classes5.dex */
public final class h extends d {
    public static boolean a(Object obj, Object obj2) {
        if (obj != obj2 && (obj == null || !obj.equals(obj2))) {
            return false;
        }
        return true;
    }

    public static int b(Object... objArr) {
        return Arrays.hashCode(objArr);
    }
}
