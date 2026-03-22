package t3;

import android.util.Log;
import com.facebook.common.references.SharedReference;
import java.io.Closeable;
import o2.a;
/* compiled from: CloseableReferenceFactory.java */
/* loaded from: classes3.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private final a.c f66821a;

    /* compiled from: CloseableReferenceFactory.java */
    /* renamed from: t3.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    class C0927a implements a.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ v3.a f66822a;

        C0927a(v3.a aVar) {
            this.f66822a = aVar;
        }

        @Override // o2.a.c
        public boolean a() {
            return this.f66822a.b();
        }

        @Override // o2.a.c
        public void b(SharedReference<Object> sharedReference, Throwable th2) {
            String str;
            this.f66822a.a(sharedReference, th2);
            Object f10 = sharedReference.f();
            if (f10 != null) {
                str = f10.getClass().getName();
            } else {
                str = "<value is null>";
            }
            l2.a.z("Fresco", "Finalized without closing: %x %x (type = %s).\nStack:\n%s", Integer.valueOf(System.identityHashCode(this)), Integer.valueOf(System.identityHashCode(sharedReference)), str, a.d(th2));
        }
    }

    public a(v3.a aVar) {
        this.f66821a = new C0927a(aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String d(Throwable th2) {
        if (th2 == null) {
            return "";
        }
        return Log.getStackTraceString(th2);
    }

    public <U extends Closeable> o2.a<U> b(U u10) {
        return o2.a.x(u10, this.f66821a);
    }

    public <T> o2.a<T> c(T t10, o2.h<T> hVar) {
        return o2.a.P(t10, hVar, this.f66821a);
    }
}
