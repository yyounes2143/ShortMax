package aa;

import com.hades.aar.activity.IDActivity;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Stack;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
@Metadata
/* loaded from: classes5.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final a f321a = new a();

    /* renamed from: b  reason: collision with root package name */
    private static final Stack<WeakReference<IDActivity>> f322b = new Stack<>();

    /* renamed from: c  reason: collision with root package name */
    private static final List<b> f323c = new CopyOnWriteArrayList();

    private a() {
    }

    public final void a(WeakReference<IDActivity> ref) {
        Intrinsics.checkNotNullParameter(ref, "ref");
        if (ref.get() == null) {
            return;
        }
        Stack<WeakReference<IDActivity>> stack = f322b;
        synchronized (stack) {
            stack.push(ref);
        }
        f();
    }

    public final void b(b listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        List<b> list = f323c;
        if (!list.contains(listener)) {
            list.add(listener);
        }
    }

    public final List<WeakReference<IDActivity>> c() {
        ArrayList arrayList;
        Stack<WeakReference<IDActivity>> stack = f322b;
        if (!stack.empty()) {
            synchronized (stack) {
                arrayList = new ArrayList();
                ListIterator<WeakReference<IDActivity>> listIterator = stack.listIterator();
                Intrinsics.checkNotNullExpressionValue(listIterator, "listIterator(...)");
                while (listIterator.hasNext()) {
                    WeakReference<IDActivity> next = listIterator.next();
                    Intrinsics.checkNotNullExpressionValue(next, "next(...)");
                    arrayList.add(next);
                }
            }
            return arrayList;
        }
        return null;
    }

    public final WeakReference<IDActivity> d() {
        Stack<WeakReference<IDActivity>> stack = f322b;
        if (!stack.empty()) {
            return stack.peek();
        }
        return null;
    }

    public final void e(String str) {
        for (b bVar : f323c) {
            bVar.onError(str);
        }
    }

    public final void f() {
        for (b bVar : f323c) {
            bVar.a(f322b.size());
        }
    }

    public final void g(WeakReference<IDActivity> ref) {
        Intrinsics.checkNotNullParameter(ref, "ref");
        Stack<WeakReference<IDActivity>> stack = f322b;
        if (stack.empty()) {
            return;
        }
        synchronized (stack) {
            stack.remove(ref);
        }
        f();
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [T, java.util.Collection, java.util.ArrayList] */
    public final void h() {
        Stack<WeakReference<IDActivity>> stack = f322b;
        if (stack.isEmpty()) {
            return;
        }
        try {
            Ref.ObjectRef objectRef = new Ref.ObjectRef();
            synchronized (stack) {
                ?? arrayList = new ArrayList();
                Iterator<T> it = stack.iterator();
                while (it.hasNext()) {
                    IDActivity iDActivity = (IDActivity) ((WeakReference) it.next()).get();
                    if (iDActivity != null) {
                        arrayList.add(iDActivity);
                    }
                }
                objectRef.element = arrayList;
                f322b.clear();
                Unit unit = Unit.f60915a;
            }
            for (IDActivity iDActivity2 : (Iterable) objectRef.element) {
                if (iDActivity2 != null) {
                    iDActivity2.finish();
                }
            }
            f();
        } catch (Exception e10) {
            e("removeAll failed -> " + e10.getMessage());
        }
    }

    public final void i(String className) {
        IDActivity iDActivity;
        Intrinsics.checkNotNullParameter(className, "className");
        Stack<WeakReference<IDActivity>> stack = f322b;
        if (stack.isEmpty() || className.length() == 0) {
            return;
        }
        try {
            ArrayList<IDActivity> arrayList = new ArrayList();
            synchronized (stack) {
                ListIterator<WeakReference<IDActivity>> listIterator = stack.listIterator();
                Intrinsics.checkNotNullExpressionValue(listIterator, "listIterator(...)");
                while (listIterator.hasNext()) {
                    WeakReference<IDActivity> next = listIterator.next();
                    if (next != null && (iDActivity = next.get()) != null && !Intrinsics.areEqual(iDActivity.getClass().getName(), className)) {
                        arrayList.add(iDActivity);
                        listIterator.remove();
                    }
                }
                Unit unit = Unit.f60915a;
            }
            for (IDActivity iDActivity2 : arrayList) {
                iDActivity2.finish();
            }
            f();
        } catch (Exception e10) {
            e("removeAllExcept(" + className + ") failed -> " + e10.getMessage());
        }
    }
}
