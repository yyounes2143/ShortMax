package d8;

import androidx.annotation.Nullable;
import java.io.File;
/* compiled from: LogFileManager.java */
/* loaded from: classes5.dex */
public class f {

    /* renamed from: c  reason: collision with root package name */
    private static final b f50218c = new b();

    /* renamed from: a  reason: collision with root package name */
    private final h8.g f50219a;

    /* renamed from: b  reason: collision with root package name */
    private d f50220b;

    public f(h8.g gVar) {
        this.f50219a = gVar;
        this.f50220b = f50218c;
    }

    private File d(String str) {
        return this.f50219a.q(str, "userlog");
    }

    public void a() {
        this.f50220b.b();
    }

    public byte[] b() {
        return this.f50220b.a();
    }

    @Nullable
    public String c() {
        return this.f50220b.e();
    }

    public final void e(String str) {
        this.f50220b.d();
        this.f50220b = f50218c;
        if (str == null) {
            return;
        }
        f(d(str), 65536);
    }

    void f(File file, int i10) {
        this.f50220b = new i(file, i10);
    }

    public void g(long j10, String str) {
        this.f50220b.c(j10, str);
    }

    public f(h8.g gVar, String str) {
        this(gVar);
        e(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: LogFileManager.java */
    /* loaded from: classes5.dex */
    public static final class b implements d {
        private b() {
        }

        @Override // d8.d
        public byte[] a() {
            return null;
        }

        @Override // d8.d
        public String e() {
            return null;
        }

        @Override // d8.d
        public void b() {
        }

        @Override // d8.d
        public void d() {
        }

        @Override // d8.d
        public void c(long j10, String str) {
        }
    }
}
