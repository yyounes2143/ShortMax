package h8;

import android.content.Context;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.firebase.crashlytics.internal.common.CommonUtils;
import java.io.File;
import java.io.FilenameFilter;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import z7.j;
/* compiled from: FileStore.java */
/* loaded from: classes5.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    final String f52619a;

    /* renamed from: b  reason: collision with root package name */
    private final File f52620b;

    /* renamed from: c  reason: collision with root package name */
    private final File f52621c;

    /* renamed from: d  reason: collision with root package name */
    private final File f52622d;

    /* renamed from: e  reason: collision with root package name */
    private final File f52623e;

    /* renamed from: f  reason: collision with root package name */
    private final File f52624f;

    /* renamed from: g  reason: collision with root package name */
    private final File f52625g;

    public g(Context context) {
        String d10;
        String str;
        this.f52619a = j.f71520a.e(context).d();
        File filesDir = context.getFilesDir();
        this.f52620b = filesDir;
        if (y()) {
            str = ".crashlytics.v3" + File.separator + x(d10);
        } else {
            str = ".com.google.firebase.crashlytics.files.v1";
        }
        File t10 = t(new File(filesDir, str));
        this.f52621c = t10;
        this.f52622d = t(new File(t10, "open-sessions"));
        this.f52623e = t(new File(t10, "reports"));
        this.f52624f = t(new File(t10, "priority-reports"));
        this.f52625g = t(new File(t10, "native-reports"));
    }

    private void b(String str) {
        File file = new File(this.f52620b, str);
        if (file.exists() && v(file)) {
            z7.g f10 = z7.g.f();
            f10.b("Deleted previous Crashlytics file system: " + file.getPath());
        }
    }

    private void c(final String str) {
        String[] list;
        if (this.f52620b.exists() && (list = this.f52620b.list(new FilenameFilter() { // from class: h8.f
            @Override // java.io.FilenameFilter
            public final boolean accept(File file, String str2) {
                boolean s10;
                s10 = g.s(str, file, str2);
                return s10;
            }
        })) != null) {
            for (String str2 : list) {
                b(str2);
            }
        }
    }

    private File p(String str) {
        return u(new File(this.f52622d, str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean s(String str, File file, String str2) {
        return str2.startsWith(str);
    }

    private static synchronized File t(File file) {
        synchronized (g.class) {
            try {
                if (file.exists()) {
                    if (file.isDirectory()) {
                        return file;
                    }
                    z7.g f10 = z7.g.f();
                    f10.b("Unexpected non-directory file: " + file + "; deleting file and creating new directory.");
                    file.delete();
                }
                if (!file.mkdirs()) {
                    z7.g f11 = z7.g.f();
                    f11.d("Could not create Crashlytics-specific directory: " + file);
                }
                return file;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private static File u(File file) {
        file.mkdirs();
        return file;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean v(File file) {
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            for (File file2 : listFiles) {
                v(file2);
            }
        }
        return file.delete();
    }

    private static <T> List<T> w(@Nullable T[] tArr) {
        if (tArr == null) {
            return Collections.emptyList();
        }
        return Arrays.asList(tArr);
    }

    @VisibleForTesting
    static String x(String str) {
        if (str.length() > 40) {
            return CommonUtils.A(str);
        }
        return str.replaceAll("[^a-zA-Z0-9.]", "_");
    }

    private boolean y() {
        return !this.f52619a.isEmpty();
    }

    public void d() {
        b(".com.google.firebase.crashlytics");
        b(".com.google.firebase.crashlytics-ndk");
        if (y()) {
            b(".com.google.firebase.crashlytics.files.v1");
            c(".com.google.firebase.crashlytics.files.v2" + File.pathSeparator);
        }
    }

    public boolean e(String str) {
        return v(new File(this.f52622d, str));
    }

    public List<String> f() {
        return w(this.f52622d.list());
    }

    public File g(String str) {
        return new File(this.f52621c, str);
    }

    public List<File> h(FilenameFilter filenameFilter) {
        return w(this.f52621c.listFiles(filenameFilter));
    }

    public File i(String str) {
        return new File(this.f52625g, str);
    }

    public List<File> j() {
        return w(this.f52625g.listFiles());
    }

    public File k(String str) {
        return u(new File(p(str), "native"));
    }

    public File l(String str) {
        return new File(this.f52624f, str);
    }

    public List<File> m() {
        return w(this.f52624f.listFiles());
    }

    public File n(String str) {
        return new File(this.f52623e, str);
    }

    public List<File> o() {
        return w(this.f52623e.listFiles());
    }

    public File q(String str, String str2) {
        return new File(p(str), str2);
    }

    public List<File> r(String str, FilenameFilter filenameFilter) {
        return w(p(str).listFiles(filenameFilter));
    }
}
