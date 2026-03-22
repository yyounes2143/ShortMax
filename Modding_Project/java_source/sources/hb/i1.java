package hb;

import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import java.io.File;
import java.io.IOException;
/* loaded from: classes5.dex */
public class i1 {

    /* renamed from: a  reason: collision with root package name */
    private String f52701a = v0.q().getFilesDir().getPath();

    private String b(String str) {
        return this.f52701a + "/hms/component/".replace("component", str);
    }

    private void c(String str, String str2) {
        File file = new File(b(str));
        String b10 = b(str);
        File file2 = new File(b10, "hianalytics_" + str);
        if (!file.exists() && file.mkdirs()) {
            f1.h("hmsSdk", "file directory is mkdirs");
        }
        if (d(file2)) {
            g0.d(file2, str2);
        } else {
            f1.m("hmsSdk", "refreshComponent():file is not found,and file is create failed");
        }
    }

    private boolean d(File file) {
        if (file.exists()) {
            return true;
        }
        try {
            return file.createNewFile();
        } catch (IOException unused) {
            f1.m("hmsSdk", "create new file error!");
            return false;
        }
    }

    private char[] e(String str, String str2, String str3, String str4) {
        byte[] b10 = mb.b.b(str);
        byte[] b11 = mb.b.b(str2);
        byte[] b12 = mb.b.b(str3);
        byte[] b13 = mb.b.b(str4);
        int length = b10.length;
        if (length > b11.length) {
            length = b11.length;
        }
        if (length > b12.length) {
            length = b12.length;
        }
        if (length > b13.length) {
            length = b13.length;
        }
        char[] cArr = new char[length];
        for (int i10 = 0; i10 < length; i10++) {
            cArr[i10] = (char) (((b10[i10] ^ b11[i10]) ^ b12[i10]) ^ b13[i10]);
        }
        return cArr;
    }

    private String f(String str) {
        String b10 = b(str);
        File file = new File(b10, "hianalytics_" + str);
        if (d(file)) {
            return g0.a(file);
        }
        String d10 = mb.a.d(128);
        g0.d(file, d10);
        return d10;
    }

    private boolean g() {
        long a10 = l.a(v0.q(), "Privacy_MY", "assemblyFlash", -1L);
        if (-1 == a10) {
            f1.h("hmsSdk", "First init components");
            return true;
        } else if (System.currentTimeMillis() - a10 > 31536000000L) {
            return true;
        } else {
            return false;
        }
    }

    private static boolean h(File file) {
        File[] listFiles;
        if (file == null || !file.exists() || !file.isDirectory() || (listFiles = file.listFiles()) == null || listFiles.length == 0) {
            return false;
        }
        for (File file2 : listFiles) {
            if (file2.isFile()) {
                if (!file2.delete()) {
                    f1.h("hmsSdk", "delete file failed : " + file2.getName());
                }
            } else if (file2.isDirectory()) {
                h(file2);
            }
        }
        return file.delete();
    }

    public static boolean i() {
        return h(new File(v0.q().getFilesDir().getPath() + DomExceptionUtils.SEPARATOR + "hms"));
    }

    private String j() {
        return "f6040d0e807aaec325ecf44823765544e92905158169f694b282bf17388632cf95a83bae7d2d235c1f039b0df1dcca5fda619b6f7f459f2ff8d70ddb7b601592fe29fcae58c028f319b3b12495e67aa5390942a997a8cb572c8030b2df5c2b622608bea02b0c3e5d4dff3f72c9e3204049a45c0760cd3604af8d57f0e0c693cc";
    }

    public String a() {
        String f10;
        String f11;
        String f12;
        String f13;
        String j10 = j();
        if (g()) {
            f1.h("hmsSdk", "refresh components");
            f10 = mb.a.d(128);
            c("aprpap", f10);
            f11 = mb.a.d(128);
            c("febdoc", f11);
            f12 = mb.a.d(128);
            c("marfil", f12);
            f13 = mb.a.d(128);
            c("maywnj", f13);
            l.f(v0.q(), "Privacy_MY", "assemblyFlash", System.currentTimeMillis());
        } else {
            f10 = f("aprpap");
            f11 = f("febdoc");
            f12 = f("marfil");
            f13 = f("maywnj");
        }
        return mb.b.a(kb.a.b(e(f10, f11, f12, j10), mb.b.b(f13), 10000, 16));
    }
}
