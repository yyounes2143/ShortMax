package e;

import java.util.Comparator;
/* loaded from: classes.dex */
public final class g implements Comparator {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return ps.a.a(Integer.valueOf(((ca.d) obj2).l().getValue()), Integer.valueOf(((ca.d) obj).l().getValue()));
    }
}
