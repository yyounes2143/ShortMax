package r2;
/* compiled from: HashCodeUtil.java */
/* loaded from: classes3.dex */
public class a {
    public static int a(int i10, int i11) {
        return ((i10 + 31) * 31) + i11;
    }

    public static int b(Object obj, Object obj2) {
        int hashCode;
        int i10 = 0;
        if (obj == null) {
            hashCode = 0;
        } else {
            hashCode = obj.hashCode();
        }
        if (obj2 != null) {
            i10 = obj2.hashCode();
        }
        return a(hashCode, i10);
    }
}
