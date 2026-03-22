package rx.exceptions;

import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
/* loaded from: classes8.dex */
public final class CompositeException extends RuntimeException {

    /* renamed from: a  reason: collision with root package name */
    private final List<Throwable> f66158a;

    /* renamed from: b  reason: collision with root package name */
    private final String f66159b;

    /* renamed from: c  reason: collision with root package name */
    private Throwable f66160c;

    /* loaded from: classes8.dex */
    static final class CompositeExceptionCausalChain extends RuntimeException {
        CompositeExceptionCausalChain() {
        }

        @Override // java.lang.Throwable
        public String getMessage() {
            return "Chain of Causes for CompositeException In Order Received =>";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes8.dex */
    public static abstract class a {
        a() {
        }

        abstract Object a();

        abstract void b(Object obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes8.dex */
    public static final class b extends a {

        /* renamed from: a  reason: collision with root package name */
        private final PrintStream f66161a;

        b(PrintStream printStream) {
            this.f66161a = printStream;
        }

        @Override // rx.exceptions.CompositeException.a
        Object a() {
            return this.f66161a;
        }

        @Override // rx.exceptions.CompositeException.a
        void b(Object obj) {
            this.f66161a.println(obj);
        }
    }

    /* loaded from: classes8.dex */
    static final class c extends a {

        /* renamed from: a  reason: collision with root package name */
        private final PrintWriter f66162a;

        c(PrintWriter printWriter) {
            this.f66162a = printWriter;
        }

        @Override // rx.exceptions.CompositeException.a
        Object a() {
            return this.f66162a;
        }

        @Override // rx.exceptions.CompositeException.a
        void b(Object obj) {
            this.f66162a.println(obj);
        }
    }

    @Deprecated
    public CompositeException(String str, Collection<? extends Throwable> collection) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        ArrayList arrayList = new ArrayList();
        if (collection != null) {
            for (Throwable th2 : collection) {
                if (th2 instanceof CompositeException) {
                    linkedHashSet.addAll(((CompositeException) th2).d());
                } else if (th2 != null) {
                    linkedHashSet.add(th2);
                } else {
                    linkedHashSet.add(new NullPointerException());
                }
            }
        } else {
            linkedHashSet.add(new NullPointerException());
        }
        arrayList.addAll(linkedHashSet);
        List<Throwable> unmodifiableList = Collections.unmodifiableList(arrayList);
        this.f66158a = unmodifiableList;
        this.f66159b = unmodifiableList.size() + " exceptions occurred. ";
    }

    private void b(StringBuilder sb2, Throwable th2, String str) {
        StackTraceElement[] stackTrace;
        sb2.append(str);
        sb2.append(th2);
        sb2.append('\n');
        for (StackTraceElement stackTraceElement : th2.getStackTrace()) {
            sb2.append("\t\tat ");
            sb2.append(stackTraceElement);
            sb2.append('\n');
        }
        if (th2.getCause() != null) {
            sb2.append("\tCaused by: ");
            b(sb2, th2.getCause(), "");
        }
    }

    private List<Throwable> e(Throwable th2) {
        ArrayList arrayList = new ArrayList();
        Throwable cause = th2.getCause();
        if (cause != null && cause != th2) {
            while (true) {
                arrayList.add(cause);
                Throwable cause2 = cause.getCause();
                if (cause2 == null || cause2 == cause) {
                    break;
                }
                cause = cause.getCause();
            }
        }
        return arrayList;
    }

    private Throwable f(Throwable th2) {
        Throwable cause = th2.getCause();
        if (cause != null && cause != th2) {
            while (true) {
                Throwable cause2 = cause.getCause();
                if (cause2 == null || cause2 == cause) {
                    break;
                }
                cause = cause.getCause();
            }
            return cause;
        }
        return th2;
    }

    private void g(a aVar) {
        StackTraceElement[] stackTrace;
        StringBuilder sb2 = new StringBuilder(128);
        sb2.append(this);
        sb2.append('\n');
        for (StackTraceElement stackTraceElement : getStackTrace()) {
            sb2.append("\tat ");
            sb2.append(stackTraceElement);
            sb2.append('\n');
        }
        int i10 = 1;
        for (Throwable th2 : this.f66158a) {
            sb2.append("  ComposedException ");
            sb2.append(i10);
            sb2.append(" :\n");
            b(sb2, th2, "\t");
            i10++;
        }
        synchronized (aVar.a()) {
            aVar.b(sb2.toString());
        }
    }

    public List<Throwable> d() {
        return this.f66158a;
    }

    @Override // java.lang.Throwable
    public synchronized Throwable getCause() {
        try {
            if (this.f66160c == null) {
                CompositeExceptionCausalChain compositeExceptionCausalChain = new CompositeExceptionCausalChain();
                HashSet hashSet = new HashSet();
                Iterator<Throwable> it = this.f66158a.iterator();
                CompositeExceptionCausalChain compositeExceptionCausalChain2 = compositeExceptionCausalChain;
                while (it.hasNext()) {
                    Throwable next = it.next();
                    if (!hashSet.contains(next)) {
                        hashSet.add(next);
                        for (Throwable th2 : e(next)) {
                            if (hashSet.contains(th2)) {
                                next = new RuntimeException("Duplicate found in causal chain so cropping to prevent loop ...");
                            } else {
                                hashSet.add(th2);
                            }
                        }
                        try {
                            compositeExceptionCausalChain2.initCause(next);
                        } catch (Throwable unused) {
                        }
                        compositeExceptionCausalChain2 = f(compositeExceptionCausalChain2);
                    }
                }
                this.f66160c = compositeExceptionCausalChain;
            }
        } catch (Throwable th3) {
            throw th3;
        }
        return this.f66160c;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return this.f66159b;
    }

    @Override // java.lang.Throwable
    public void printStackTrace() {
        printStackTrace(System.err);
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintStream printStream) {
        g(new b(printStream));
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintWriter printWriter) {
        g(new c(printWriter));
    }

    public CompositeException(Collection<? extends Throwable> collection) {
        this(null, collection);
    }

    public CompositeException(Throwable... thArr) {
        List<Throwable> unmodifiableList;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        ArrayList arrayList = new ArrayList();
        if (thArr != null) {
            for (Throwable th2 : thArr) {
                if (th2 instanceof CompositeException) {
                    linkedHashSet.addAll(((CompositeException) th2).d());
                } else if (th2 != null) {
                    linkedHashSet.add(th2);
                } else {
                    linkedHashSet.add(new NullPointerException());
                }
            }
        } else {
            linkedHashSet.add(new NullPointerException());
        }
        arrayList.addAll(linkedHashSet);
        this.f66158a = Collections.unmodifiableList(arrayList);
        this.f66159b = unmodifiableList.size() + " exceptions occurred. ";
    }
}
