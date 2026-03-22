package au;

import java.util.ArrayList;
import java.util.List;
/* compiled from: PendingPost.java */
/* loaded from: classes8.dex */
final class i {

    /* renamed from: d  reason: collision with root package name */
    private static final List<i> f2098d = new ArrayList();

    /* renamed from: a  reason: collision with root package name */
    Object f2099a;

    /* renamed from: b  reason: collision with root package name */
    p f2100b;

    /* renamed from: c  reason: collision with root package name */
    i f2101c;

    private i(Object obj, p pVar) {
        this.f2099a = obj;
        this.f2100b = pVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static i a(p pVar, Object obj) {
        List<i> list = f2098d;
        synchronized (list) {
            try {
                int size = list.size();
                if (size > 0) {
                    i remove = list.remove(size - 1);
                    remove.f2099a = obj;
                    remove.f2100b = pVar;
                    remove.f2101c = null;
                    return remove;
                }
                return new i(obj, pVar);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(i iVar) {
        iVar.f2099a = null;
        iVar.f2100b = null;
        iVar.f2101c = null;
        List<i> list = f2098d;
        synchronized (list) {
            try {
                if (list.size() < 10000) {
                    list.add(iVar);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
