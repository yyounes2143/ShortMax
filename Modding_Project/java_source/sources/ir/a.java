package ir;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
/* compiled from: DefaultLoggerInstance.java */
/* loaded from: classes8.dex */
public class a implements c {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final String f60071a;

    public a(@NonNull String str) {
        this.f60071a = str;
    }

    @NonNull
    private static String b(@NonNull Throwable th2) {
        StringWriter stringWriter = new StringWriter(256);
        PrintWriter printWriter = new PrintWriter((Writer) stringWriter, false);
        th2.printStackTrace(printWriter);
        printWriter.flush();
        return stringWriter.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @NonNull
    public String a(@Nullable Object obj, @Nullable String str, @Nullable hr.b<String> bVar, @Nullable Throwable th2) {
        StringBuilder sb2 = new StringBuilder();
        if (obj != null) {
            sb2.append("[");
            sb2.append(obj);
            sb2.append("] ");
        }
        if (str != null) {
            sb2.append(str);
        } else if (bVar != null) {
            sb2.append(bVar.get());
        }
        if (th2 != null) {
            if (sb2.length() != 0) {
                sb2.append("\n");
            }
            sb2.append(b(th2));
        }
        return sb2.toString();
    }

    protected boolean c(int i10) {
        return true;
    }

    @Override // ir.c
    public void d(@NonNull Object obj, @NonNull String str) {
        n(3, obj, str, null, null);
    }

    @Override // ir.c
    public void e(@NonNull String str) {
        n(3, null, str, null, null);
    }

    @Override // ir.c
    public void f(@NonNull Object obj, @NonNull hr.b<String> bVar) {
        n(3, obj, null, bVar, null);
    }

    @Override // ir.c
    public void g(@NonNull Object obj, @NonNull hr.b<String> bVar) {
        n(6, obj, null, bVar, null);
    }

    @Override // ir.c
    public void h(@NonNull Throwable th2) {
        n(5, null, null, null, th2);
    }

    @Override // ir.c
    public void i(@NonNull hr.b<String> bVar) {
        n(6, null, null, bVar, null);
    }

    @Override // ir.c
    public void j(@NonNull hr.b<String> bVar) {
        n(3, null, null, bVar, null);
    }

    @Override // ir.c
    public void k(@NonNull String str) {
        n(5, null, str, null, null);
    }

    @Override // ir.c
    public void l(@NonNull Object obj, @NonNull String str) {
        n(5, obj, str, null, null);
    }

    protected void m(int i10, @NonNull String str) {
        if (str.length() > 1000) {
            int length = (str.length() + 999) / 1000;
            int i11 = 0;
            int i12 = 0;
            while (i11 < length) {
                int i13 = i12 + 1000;
                o(i10, this.f60071a, str.substring(i12, Math.min(str.length(), i13)));
                i11++;
                i12 = i13;
            }
            return;
        }
        o(i10, this.f60071a, str);
    }

    protected void n(int i10, @Nullable Object obj, @Nullable String str, @Nullable hr.b<String> bVar, @Nullable Throwable th2) {
        if (c(i10)) {
            m(i10, a(obj, str, bVar, th2));
        }
    }

    protected void o(int i10, @NonNull String str, @NonNull String str2) {
        Log.println(i10, str, str2);
    }

    @Override // ir.c
    public void d(@NonNull String str) {
        n(6, null, str, null, null);
    }
}
