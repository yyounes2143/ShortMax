package c5;

import c5.c;
import com.google.auto.value.AutoValue;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SendRequest.java */
@AutoValue
/* loaded from: classes4.dex */
public abstract class o {

    /* compiled from: SendRequest.java */
    @AutoValue.Builder
    /* loaded from: classes4.dex */
    public static abstract class a {
        public abstract o a();

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract a b(a5.c cVar);

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract a c(a5.d<?> dVar);

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract a d(a5.g<?, byte[]> gVar);

        public abstract a e(p pVar);

        public abstract a f(String str);
    }

    public static a a() {
        return new c.b();
    }

    public abstract a5.c b();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract a5.d<?> c();

    public byte[] d() {
        return e().apply(c().c());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract a5.g<?, byte[]> e();

    public abstract p f();

    public abstract String g();
}
