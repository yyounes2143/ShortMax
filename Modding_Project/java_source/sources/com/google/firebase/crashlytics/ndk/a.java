package com.google.firebase.crashlytics.ndk;

import android.app.ActivityManager;
import android.app.ApplicationExitInfo;
import android.content.Context;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import com.google.firebase.crashlytics.internal.common.CommonUtils;
import com.google.firebase.crashlytics.ndk.f;
import e8.f0;
import e8.g0;
import java.io.BufferedWriter;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;
import java.util.zip.GZIPOutputStream;
/* compiled from: CrashpadController.java */
/* loaded from: classes5.dex */
public class a {

    /* renamed from: d  reason: collision with root package name */
    private static final Charset f20892d = Charset.forName("UTF-8");

    /* renamed from: a  reason: collision with root package name */
    private final Context f20893a;

    /* renamed from: b  reason: collision with root package name */
    private final e f20894b;

    /* renamed from: c  reason: collision with root package name */
    private final h8.g f20895c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(Context context, e eVar, h8.g gVar) {
        this.f20893a = context;
        this.f20894b = eVar;
        this.f20895c = gVar;
    }

    @RequiresApi(api = 31)
    private static f0.a a(ApplicationExitInfo applicationExitInfo) {
        int importance;
        String processName;
        int reason;
        long timestamp;
        int pid;
        long pss;
        long rss;
        f0.a.b a10 = f0.a.a();
        importance = applicationExitInfo.getImportance();
        f0.a.b c10 = a10.c(importance);
        processName = applicationExitInfo.getProcessName();
        f0.a.b e10 = c10.e(processName);
        reason = applicationExitInfo.getReason();
        f0.a.b g10 = e10.g(reason);
        timestamp = applicationExitInfo.getTimestamp();
        f0.a.b i10 = g10.i(timestamp);
        pid = applicationExitInfo.getPid();
        f0.a.b d10 = i10.d(pid);
        pss = applicationExitInfo.getPss();
        f0.a.b f10 = d10.f(pss);
        rss = applicationExitInfo.getRss();
        return f10.h(rss).j(i(applicationExitInfo)).a();
    }

    @RequiresApi(api = 31)
    @VisibleForTesting
    public static String b(InputStream inputStream) throws IOException {
        if (inputStream == null) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[8192];
        while (true) {
            int read = inputStream.read(bArr);
            if (read != -1) {
                byteArrayOutputStream.write(bArr, 0, read);
            } else {
                return r(byteArrayOutputStream.toByteArray());
            }
        }
    }

    private f0.a c(String str) {
        if (Build.VERSION.SDK_INT >= 31) {
            return f(str);
        }
        return null;
    }

    private f.c e(String str, File file) {
        return new f.c(h(file, ".dmp"), c(str));
    }

    @RequiresApi(api = 31)
    private f0.a f(String str) {
        List<ApplicationExitInfo> historicalProcessExitReasons;
        long lastModified;
        historicalProcessExitReasons = ((ActivityManager) this.f20893a.getSystemService("activity")).getHistoricalProcessExitReasons(null, 0, 0);
        File q10 = this.f20895c.q(str, "start-time");
        if (q10 == null) {
            lastModified = System.currentTimeMillis();
        } else {
            lastModified = q10.lastModified();
        }
        return g(lastModified, historicalProcessExitReasons);
    }

    @RequiresApi(api = 31)
    private f0.a g(long j10, List<ApplicationExitInfo> list) {
        int reason;
        long timestamp;
        ArrayList arrayList = new ArrayList();
        for (ApplicationExitInfo applicationExitInfo : list) {
            ApplicationExitInfo a10 = androidx.work.impl.utils.b.a(applicationExitInfo);
            reason = a10.getReason();
            if (reason == 5) {
                timestamp = a10.getTimestamp();
                if (timestamp >= j10) {
                    arrayList.add(a10);
                }
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return a(androidx.work.impl.utils.b.a(arrayList.get(0)));
    }

    @Nullable
    private static File h(File file, String str) {
        File[] listFiles = file.listFiles();
        if (listFiles == null) {
            return null;
        }
        for (File file2 : listFiles) {
            if (file2.getName().endsWith(str)) {
                return file2;
            }
        }
        return null;
    }

    @RequiresApi(api = 31)
    private static String i(ApplicationExitInfo applicationExitInfo) {
        InputStream traceInputStream;
        try {
            traceInputStream = applicationExitInfo.getTraceInputStream();
            return b(traceInputStream);
        } catch (IOException unused) {
            z7.g.f().k("Failed to get input stream from ApplicationExitInfo");
            return null;
        }
    }

    private static void o(h8.g gVar, String str, String str2, String str3) {
        q(new File(gVar.k(str), str3), str2);
    }

    private static void q(File file, String str) {
        BufferedWriter bufferedWriter;
        BufferedWriter bufferedWriter2 = null;
        try {
            bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file), f20892d));
        } catch (IOException unused) {
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            bufferedWriter.write(str);
            CommonUtils.f(bufferedWriter, "Failed to close " + file);
        } catch (IOException unused2) {
            bufferedWriter2 = bufferedWriter;
            CommonUtils.f(bufferedWriter2, "Failed to close " + file);
        } catch (Throwable th3) {
            th = th3;
            bufferedWriter2 = bufferedWriter;
            CommonUtils.f(bufferedWriter2, "Failed to close " + file);
            throw th;
        }
    }

    @RequiresApi(api = 31)
    private static String r(byte[] bArr) throws IOException {
        Base64.Encoder encoder;
        String encodeToString;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            gZIPOutputStream.write(bArr);
            gZIPOutputStream.finish();
            encoder = Base64.getEncoder();
            encodeToString = encoder.encodeToString(byteArrayOutputStream.toByteArray());
            gZIPOutputStream.close();
            byteArrayOutputStream.close();
            return encodeToString;
        } catch (Throwable th2) {
            try {
                byteArrayOutputStream.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    @NonNull
    public f d(String str) {
        String str2;
        File k10 = this.f20895c.k(str);
        File file = new File(k10, "pending");
        z7.g f10 = z7.g.f();
        f10.i("Minidump directory: " + file.getAbsolutePath());
        File h10 = h(file, ".dmp");
        z7.g f11 = z7.g.f();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Minidump file ");
        if (h10 != null && h10.exists()) {
            str2 = "exists";
        } else {
            str2 = "does not exist";
        }
        sb2.append(str2);
        f11.i(sb2.toString());
        f.b bVar = new f.b();
        if (k10 != null && k10.exists() && file.exists()) {
            bVar.l(e(str, file)).k(h(k10, ".device_info")).n(new File(k10, "session.json")).h(new File(k10, "app.json")).j(new File(k10, "device.json")).m(new File(k10, "os.json"));
        }
        return bVar.i();
    }

    public boolean j(String str) {
        f.c cVar = d(str).f20906a;
        if (cVar != null && cVar.a()) {
            return true;
        }
        return false;
    }

    public boolean k(String str, String str2, long j10, g0 g0Var) {
        File k10 = this.f20895c.k(str);
        if (k10 != null) {
            try {
                if (this.f20894b.a(k10.getCanonicalPath(), this.f20893a.getAssets())) {
                    l(str, str2, j10);
                    m(str, g0Var.a());
                    p(str, g0Var.d());
                    n(str, g0Var.c());
                    return true;
                }
                return false;
            } catch (IOException e10) {
                z7.g.f().e("Error initializing Crashlytics NDK", e10);
                return false;
            }
        }
        return false;
    }

    public void l(String str, String str2, long j10) {
        o(this.f20895c, str, h.b(str, str2, j10), "session.json");
    }

    public void m(String str, g0.a aVar) {
        o(this.f20895c, str, h.c(aVar.a(), aVar.f(), aVar.g(), aVar.e(), aVar.c(), aVar.d().d(), aVar.d().e()), "app.json");
    }

    public void n(String str, g0.b bVar) {
        o(this.f20895c, str, h.d(bVar.a(), bVar.g(), bVar.b(), bVar.j(), bVar.d(), bVar.e(), bVar.i(), bVar.f(), bVar.h()), "device.json");
    }

    public void p(String str, g0.c cVar) {
        o(this.f20895c, str, h.e(cVar.d(), cVar.c(), cVar.b()), "os.json");
    }
}
