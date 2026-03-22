package k8;

import androidx.annotation.Nullable;
import java.util.Stack;
/* compiled from: TrimmedThrowableData.java */
/* loaded from: classes5.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    public final String f60681a;

    /* renamed from: b  reason: collision with root package name */
    public final String f60682b;

    /* renamed from: c  reason: collision with root package name */
    public final StackTraceElement[] f60683c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public final e f60684d;

    private e(String str, String str2, StackTraceElement[] stackTraceElementArr, @Nullable e eVar) {
        this.f60681a = str;
        this.f60682b = str2;
        this.f60683c = stackTraceElementArr;
        this.f60684d = eVar;
    }

    public static e a(Throwable th2, d dVar) {
        Stack stack = new Stack();
        while (th2 != null) {
            stack.push(th2);
            th2 = th2.getCause();
        }
        e eVar = null;
        while (!stack.isEmpty()) {
            Throwable th3 = (Throwable) stack.pop();
            eVar = new e(th3.getLocalizedMessage(), th3.getClass().getName(), dVar.a(th3.getStackTrace()), eVar);
        }
        return eVar;
    }
}
