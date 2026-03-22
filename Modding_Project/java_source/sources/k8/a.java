package k8;
/* compiled from: MiddleOutFallbackStrategy.java */
/* loaded from: classes5.dex */
public class a implements d {

    /* renamed from: a  reason: collision with root package name */
    private final int f60676a;

    /* renamed from: b  reason: collision with root package name */
    private final d[] f60677b;

    /* renamed from: c  reason: collision with root package name */
    private final b f60678c;

    public a(int i10, d... dVarArr) {
        this.f60676a = i10;
        this.f60677b = dVarArr;
        this.f60678c = new b(i10);
    }

    @Override // k8.d
    public StackTraceElement[] a(StackTraceElement[] stackTraceElementArr) {
        d[] dVarArr;
        if (stackTraceElementArr.length <= this.f60676a) {
            return stackTraceElementArr;
        }
        StackTraceElement[] stackTraceElementArr2 = stackTraceElementArr;
        for (d dVar : this.f60677b) {
            if (stackTraceElementArr2.length <= this.f60676a) {
                break;
            }
            stackTraceElementArr2 = dVar.a(stackTraceElementArr);
        }
        if (stackTraceElementArr2.length > this.f60676a) {
            return this.f60678c.a(stackTraceElementArr2);
        }
        return stackTraceElementArr2;
    }
}
