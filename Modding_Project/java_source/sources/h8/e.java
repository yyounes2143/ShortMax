package h8;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;
import com.google.firebase.crashlytics.internal.common.b0;
import com.google.firebase.crashlytics.internal.common.l;
import d8.p;
import e8.f0;
import f8.j;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;
import java.util.SortedSet;
import java.util.TreeSet;
import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: CrashlyticsReportPersistence.java */
/* loaded from: classes5.dex */
public class e {

    /* renamed from: e  reason: collision with root package name */
    private static final Charset f52609e = Charset.forName("UTF-8");

    /* renamed from: f  reason: collision with root package name */
    private static final int f52610f = 15;

    /* renamed from: g  reason: collision with root package name */
    private static final j f52611g = new j();

    /* renamed from: h  reason: collision with root package name */
    private static final Comparator<? super File> f52612h = new Comparator() { // from class: h8.a
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            int u10;
            u10 = e.u((File) obj, (File) obj2);
            return u10;
        }
    };

    /* renamed from: i  reason: collision with root package name */
    private static final FilenameFilter f52613i = new FilenameFilter() { // from class: h8.b
        @Override // java.io.FilenameFilter
        public final boolean accept(File file, String str) {
            boolean v10;
            v10 = e.v(file, str);
            return v10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final AtomicInteger f52614a = new AtomicInteger(0);

    /* renamed from: b  reason: collision with root package name */
    private final g f52615b;

    /* renamed from: c  reason: collision with root package name */
    private final j8.b f52616c;

    /* renamed from: d  reason: collision with root package name */
    private final l f52617d;

    public e(g gVar, j8.b bVar, l lVar) {
        this.f52615b = gVar;
        this.f52616c = bVar;
        this.f52617d = lVar;
    }

    @NonNull
    private static String A(@NonNull File file) throws IOException {
        byte[] bArr = new byte[8192];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        FileInputStream fileInputStream = new FileInputStream(file);
        while (true) {
            try {
                int read = fileInputStream.read(bArr);
                if (read > 0) {
                    byteArrayOutputStream.write(bArr, 0, read);
                } else {
                    String str = new String(byteArrayOutputStream.toByteArray(), f52609e);
                    fileInputStream.close();
                    return str;
                }
            } catch (Throwable th2) {
                try {
                    fileInputStream.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    private void B(@NonNull File file, @NonNull f0.d dVar, @NonNull String str, f0.a aVar) {
        String d10 = this.f52617d.d(str);
        try {
            j jVar = f52611g;
            F(this.f52615b.i(str), jVar.M(jVar.L(A(file)).u(dVar).q(aVar).p(d10)));
        } catch (IOException e10) {
            z7.g f10 = z7.g.f();
            f10.l("Could not synthesize final native report file for " + file, e10);
        }
    }

    private void C(String str, long j10) {
        boolean z10;
        List<File> r10 = this.f52615b.r(str, f52613i);
        if (r10.isEmpty()) {
            z7.g.f().i("Session " + str + " has no events.");
            return;
        }
        Collections.sort(r10);
        ArrayList arrayList = new ArrayList();
        loop0: while (true) {
            z10 = false;
            for (File file : r10) {
                try {
                    arrayList.add(f52611g.j(A(file)));
                } catch (IOException e10) {
                    z7.g.f().l("Could not add event to report for " + file, e10);
                }
                if (z10 || s(file.getName())) {
                    z10 = true;
                }
            }
        }
        if (arrayList.isEmpty()) {
            z7.g.f().k("Could not parse event files for session " + str);
            return;
        }
        D(this.f52615b.q(str, "report"), arrayList, j10, z10, p.n(str, this.f52615b), this.f52617d.d(str));
    }

    private void D(@NonNull File file, @NonNull List<f0.e.d> list, long j10, boolean z10, @Nullable String str, @Nullable String str2) {
        File n10;
        try {
            j jVar = f52611g;
            f0 r10 = jVar.L(A(file)).v(j10, z10, str).p(str2).r(list);
            f0.e n11 = r10.n();
            if (n11 == null) {
                return;
            }
            z7.g f10 = z7.g.f();
            f10.b("appQualitySessionId: " + str2);
            if (z10) {
                n10 = this.f52615b.l(n11.i());
            } else {
                n10 = this.f52615b.n(n11.i());
            }
            F(n10, jVar.M(r10));
        } catch (IOException e10) {
            z7.g f11 = z7.g.f();
            f11.l("Could not synthesize final report file for " + file, e10);
        }
    }

    private int E(String str, int i10) {
        List<File> r10 = this.f52615b.r(str, new FilenameFilter() { // from class: h8.c
            @Override // java.io.FilenameFilter
            public final boolean accept(File file, String str2) {
                boolean t10;
                t10 = e.t(file, str2);
                return t10;
            }
        });
        Collections.sort(r10, new Comparator() { // from class: h8.d
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int x10;
                x10 = e.x((File) obj, (File) obj2);
                return x10;
            }
        });
        return f(r10, i10);
    }

    private static void F(File file, String str) throws IOException {
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(new FileOutputStream(file), f52609e);
        try {
            outputStreamWriter.write(str);
            outputStreamWriter.close();
        } catch (Throwable th2) {
            try {
                outputStreamWriter.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    private static void G(File file, String str, long j10) throws IOException {
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(new FileOutputStream(file), f52609e);
        try {
            outputStreamWriter.write(str);
            file.setLastModified(h(j10));
            outputStreamWriter.close();
        } catch (Throwable th2) {
            try {
                outputStreamWriter.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    private SortedSet<String> e(@Nullable String str) {
        this.f52615b.d();
        SortedSet<String> p10 = p();
        if (str != null) {
            p10.remove(str);
        }
        if (p10.size() <= 8) {
            return p10;
        }
        while (p10.size() > 8) {
            String last = p10.last();
            z7.g f10 = z7.g.f();
            f10.b("Removing session over cap: " + last);
            this.f52615b.e(last);
            p10.remove(last);
        }
        return p10;
    }

    private static int f(List<File> list, int i10) {
        int size = list.size();
        for (File file : list) {
            if (size <= i10) {
                return size;
            }
            g.v(file);
            size--;
        }
        return size;
    }

    private void g() {
        int i10 = this.f52616c.a().f20854a.f20866b;
        List<File> n10 = n();
        int size = n10.size();
        if (size <= i10) {
            return;
        }
        for (File file : n10.subList(i10, size)) {
            file.delete();
        }
    }

    private static long h(long j10) {
        return j10 * 1000;
    }

    private void j(List<File> list) {
        for (File file : list) {
            file.delete();
        }
    }

    @NonNull
    private static String m(int i10, boolean z10) {
        String str;
        String format = String.format(Locale.US, "%010d", Integer.valueOf(i10));
        if (z10) {
            str = "_";
        } else {
            str = "";
        }
        return NotificationCompat.CATEGORY_EVENT + format + str;
    }

    private List<File> n() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.f52615b.m());
        arrayList.addAll(this.f52615b.j());
        Comparator<? super File> comparator = f52612h;
        Collections.sort(arrayList, comparator);
        List<File> o10 = this.f52615b.o();
        Collections.sort(o10, comparator);
        arrayList.addAll(o10);
        return arrayList;
    }

    @NonNull
    private static String o(@NonNull String str) {
        return str.substring(0, f52610f);
    }

    private static boolean s(@NonNull String str) {
        if (str.startsWith(NotificationCompat.CATEGORY_EVENT) && str.endsWith("_")) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean t(@NonNull File file, @NonNull String str) {
        if (str.startsWith(NotificationCompat.CATEGORY_EVENT) && !str.endsWith("_")) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int u(File file, File file2) {
        return file2.getName().compareTo(file.getName());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean v(File file, String str) {
        return str.startsWith(NotificationCompat.CATEGORY_EVENT);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int x(@NonNull File file, @NonNull File file2) {
        return o(file.getName()).compareTo(o(file2.getName()));
    }

    public void i() {
        j(this.f52615b.o());
        j(this.f52615b.m());
        j(this.f52615b.j());
    }

    public void k(@Nullable String str, long j10) {
        for (String str2 : e(str)) {
            z7.g f10 = z7.g.f();
            f10.i("Finalizing report for session " + str2);
            C(str2, j10);
            this.f52615b.e(str2);
        }
        g();
    }

    public void l(String str, f0.d dVar, f0.a aVar) {
        File q10 = this.f52615b.q(str, "report");
        z7.g f10 = z7.g.f();
        f10.b("Writing native session report for " + str + " to file: " + q10);
        B(q10, dVar, str, aVar);
    }

    public SortedSet<String> p() {
        return new TreeSet(this.f52615b.f()).descendingSet();
    }

    public long q(String str) {
        return this.f52615b.q(str, "start-time").lastModified();
    }

    public boolean r() {
        if (this.f52615b.o().isEmpty() && this.f52615b.m().isEmpty() && this.f52615b.j().isEmpty()) {
            return false;
        }
        return true;
    }

    @NonNull
    public List<b0> w() {
        List<File> n10 = n();
        ArrayList arrayList = new ArrayList();
        for (File file : n10) {
            try {
                arrayList.add(b0.a(f52611g.L(A(file)), file.getName(), file));
            } catch (IOException e10) {
                z7.g f10 = z7.g.f();
                f10.l("Could not load report file " + file + "; deleting", e10);
                file.delete();
            }
        }
        return arrayList;
    }

    public void y(@NonNull f0.e.d dVar, @NonNull String str, boolean z10) {
        int i10 = this.f52616c.a().f20854a.f20865a;
        try {
            F(this.f52615b.q(str, m(this.f52614a.getAndIncrement(), z10)), f52611g.k(dVar));
        } catch (IOException e10) {
            z7.g f10 = z7.g.f();
            f10.l("Could not persist event for session " + str, e10);
        }
        E(str, i10);
    }

    public void z(@NonNull f0 f0Var) {
        f0.e n10 = f0Var.n();
        if (n10 == null) {
            z7.g.f().b("Could not get session for report");
            return;
        }
        String i10 = n10.i();
        try {
            F(this.f52615b.q(i10, "report"), f52611g.M(f0Var));
            G(this.f52615b.q(i10, "start-time"), "", n10.l());
        } catch (IOException e10) {
            z7.g f10 = z7.g.f();
            f10.c("Could not persist report for session " + i10, e10);
        }
    }
}
