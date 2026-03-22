package au;

import java.lang.reflect.Method;
import org.greenrobot.eventbus.ThreadMode;
/* compiled from: SubscriberMethod.java */
/* loaded from: classes8.dex */
public class n {

    /* renamed from: a  reason: collision with root package name */
    final Method f2108a;

    /* renamed from: b  reason: collision with root package name */
    final ThreadMode f2109b;

    /* renamed from: c  reason: collision with root package name */
    final Class<?> f2110c;

    /* renamed from: d  reason: collision with root package name */
    final int f2111d;

    /* renamed from: e  reason: collision with root package name */
    final boolean f2112e;

    /* renamed from: f  reason: collision with root package name */
    String f2113f;

    public n(Method method, Class<?> cls, ThreadMode threadMode, int i10, boolean z10) {
        this.f2108a = method;
        this.f2109b = threadMode;
        this.f2110c = cls;
        this.f2111d = i10;
        this.f2112e = z10;
    }

    private synchronized void a() {
        if (this.f2113f == null) {
            StringBuilder sb2 = new StringBuilder(64);
            sb2.append(this.f2108a.getDeclaringClass().getName());
            sb2.append('#');
            sb2.append(this.f2108a.getName());
            sb2.append('(');
            sb2.append(this.f2110c.getName());
            this.f2113f = sb2.toString();
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof n) {
            a();
            n nVar = (n) obj;
            nVar.a();
            return this.f2113f.equals(nVar.f2113f);
        }
        return false;
    }

    public int hashCode() {
        return this.f2108a.hashCode();
    }
}
