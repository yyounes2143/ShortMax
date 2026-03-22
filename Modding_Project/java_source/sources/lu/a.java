package lu;

import java.util.HashSet;
import java.util.List;
import ku.d;
import rx.exceptions.CompositeException;
import rx.exceptions.OnCompletedFailedException;
import rx.exceptions.OnErrorFailedException;
import rx.exceptions.OnErrorNotImplementedException;
import rx.exceptions.OnErrorThrowable;
/* compiled from: Exceptions.java */
/* loaded from: classes8.dex */
public final class a {
    public static void a(Throwable th2, Throwable th3) {
        HashSet hashSet = new HashSet();
        int i10 = 0;
        while (th2.getCause() != null) {
            int i11 = i10 + 1;
            if (i10 >= 25) {
                return;
            }
            th2 = th2.getCause();
            if (!hashSet.contains(th2.getCause())) {
                hashSet.add(th2.getCause());
                i10 = i11;
            }
        }
        try {
            th2.initCause(th3);
        } catch (Throwable unused) {
        }
    }

    public static Throwable b(Throwable th2) {
        int i10 = 0;
        while (th2.getCause() != null) {
            int i11 = i10 + 1;
            if (i10 >= 25) {
                return new RuntimeException("Stack too deep to get final cause");
            }
            th2 = th2.getCause();
            i10 = i11;
        }
        return th2;
    }

    public static void c(List<? extends Throwable> list) {
        if (list != null && !list.isEmpty()) {
            if (list.size() == 1) {
                Throwable th2 = list.get(0);
                if (!(th2 instanceof RuntimeException)) {
                    if (th2 instanceof Error) {
                        throw ((Error) th2);
                    }
                    throw new RuntimeException(th2);
                }
                throw ((RuntimeException) th2);
            }
            throw new CompositeException(list);
        }
    }

    public static void d(Throwable th2) {
        if (!(th2 instanceof OnErrorNotImplementedException)) {
            if (!(th2 instanceof OnErrorFailedException)) {
                if (!(th2 instanceof OnCompletedFailedException)) {
                    if (!(th2 instanceof VirtualMachineError)) {
                        if (!(th2 instanceof ThreadDeath)) {
                            if (!(th2 instanceof LinkageError)) {
                                return;
                            }
                            throw ((LinkageError) th2);
                        }
                        throw ((ThreadDeath) th2);
                    }
                    throw ((VirtualMachineError) th2);
                }
                throw ((OnCompletedFailedException) th2);
            }
            throw ((OnErrorFailedException) th2);
        }
        throw ((OnErrorNotImplementedException) th2);
    }

    public static void e(Throwable th2, d<?> dVar, Object obj) {
        d(th2);
        dVar.onError(OnErrorThrowable.b(th2, obj));
    }
}
