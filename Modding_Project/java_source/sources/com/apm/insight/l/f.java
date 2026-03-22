package com.apm.insight.l;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import androidx.room.FtsOptions;
import com.apm.insight.CrashType;
import com.apm.insight.entity.Header;
import com.apm.insight.nativecrash.NativeImpl;
import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.Set;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: FileUtils.java */
/* loaded from: classes2.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    private final int f7061a;

    /* renamed from: b  reason: collision with root package name */
    private String f7062b;

    /* renamed from: c  reason: collision with root package name */
    private JSONObject f7063c;

    /* renamed from: d  reason: collision with root package name */
    private byte[] f7064d;

    public f(int i10) {
        this.f7061a = i10;
    }

    public static void a(@NonNull File file, @NonNull String str, boolean z10) throws IOException {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        file.getParentFile().mkdirs();
        FileOutputStream fileOutputStream = null;
        try {
            FileOutputStream fileOutputStream2 = new FileOutputStream(file, z10);
            try {
                fileOutputStream2.write(str.getBytes());
                fileOutputStream2.flush();
                com.apm.insight.a.a((Closeable) fileOutputStream2);
            } catch (Throwable th2) {
                th = th2;
                fileOutputStream = fileOutputStream2;
                com.apm.insight.a.a((Closeable) fileOutputStream);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    private static String b(File file, String str) throws IOException {
        StringBuilder sb2 = new StringBuilder();
        BufferedReader bufferedReader = null;
        try {
            BufferedReader bufferedReader2 = new BufferedReader(new FileReader(file));
            while (true) {
                try {
                    String readLine = bufferedReader2.readLine();
                    if (readLine != null) {
                        if (sb2.length() != 0 && str != null) {
                            sb2.append(str);
                        }
                        sb2.append(readLine);
                    } else {
                        com.apm.insight.a.a((Closeable) bufferedReader2);
                        return sb2.toString();
                    }
                } catch (Throwable th2) {
                    th = th2;
                    bufferedReader = bufferedReader2;
                    com.apm.insight.a.a((Closeable) bufferedReader);
                    throw th;
                }
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    @Nullable
    public static Map<String, String> c(File file) {
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2 = null;
        try {
            Properties properties = new Properties();
            fileInputStream = new FileInputStream(file);
            try {
                try {
                    properties.load(fileInputStream);
                    Set<String> stringPropertyNames = properties.stringPropertyNames();
                    HashMap hashMap = new HashMap();
                    for (String str : stringPropertyNames) {
                        hashMap.put(str, properties.getProperty(str));
                    }
                    com.apm.insight.a.a((Closeable) fileInputStream);
                    return hashMap;
                } catch (IOException e10) {
                    e = e10;
                    com.apm.insight.a.b((Throwable) e);
                    com.apm.insight.a.a((Closeable) fileInputStream);
                    return null;
                }
            } catch (Throwable th2) {
                th = th2;
                fileInputStream2 = fileInputStream;
                com.apm.insight.a.a((Closeable) fileInputStream2);
                throw th;
            }
        } catch (IOException e11) {
            e = e11;
            fileInputStream = null;
        } catch (Throwable th3) {
            th = th3;
            com.apm.insight.a.a((Closeable) fileInputStream2);
            throw th;
        }
    }

    public static void d(File file) {
        File file2 = new File(file, "lock");
        try {
            file2.createNewFile();
            NativeImpl.c(file2.getAbsolutePath());
        } catch (Throwable th2) {
            com.apm.insight.c.a();
            com.apm.insight.runtime.j.a(th2, "NPTH_CATCH");
        }
    }

    public static boolean e(File file) {
        int c10;
        if (!file.isFile()) {
            file = new File(file, "lock");
        }
        if (!file.exists()) {
            return false;
        }
        try {
            c10 = NativeImpl.c(file.getAbsolutePath());
        } catch (Throwable th2) {
            com.apm.insight.c.a();
            com.apm.insight.runtime.j.a(th2, "NPTH_CATCH");
        }
        if (c10 > 0) {
            NativeImpl.a(c10);
            return false;
        } else if (c10 >= 0) {
            return false;
        } else {
            return true;
        }
    }

    private static com.apm.insight.entity.a f(File file) {
        String str;
        com.apm.insight.entity.a a10 = a(new File(file, "logEventStack"), file.getName().contains("oom"));
        boolean z10 = false;
        for (int i10 = 0; i10 < 6; i10++) {
            File a11 = j.a(file, ".".concat(String.valueOf(i10)));
            if (a11.exists()) {
                try {
                    a10.c(new JSONObject(a(a11.getAbsolutePath(), "\n")));
                    z10 = true;
                } catch (Throwable unused) {
                }
            }
        }
        if (z10) {
            str = "step";
        } else {
            str = FtsOptions.TOKENIZER_SIMPLE;
        }
        a10.a(CrashHianalyticsData.CRASH_TYPE, str);
        JSONObject optJSONObject = a10.c().optJSONObject("header");
        com.apm.insight.e.g();
        JSONObject f10 = Header.a(a10.c().optLong("crash_time", 0L)).f();
        if (optJSONObject == null) {
            a10.a(f10);
        } else {
            com.apm.insight.a.a(optJSONObject, f10);
        }
        return a10;
    }

    public f(byte[] bArr) {
        this.f7061a = 204;
        this.f7064d = bArr;
    }

    public f(int i10, Throwable th2) {
        this.f7061a = i10;
        this.f7062b = th2.getMessage();
    }

    public static void a(@NonNull File file, @NonNull JSONObject jSONObject) throws IOException {
        BufferedWriter bufferedWriter;
        if (jSONObject == null) {
            return;
        }
        file.getParentFile().mkdirs();
        try {
            bufferedWriter = new BufferedWriter(new FileWriter(file));
        } catch (Throwable unused) {
            bufferedWriter = null;
        }
        try {
            h.a(jSONObject, bufferedWriter);
            com.apm.insight.a.a((Closeable) bufferedWriter);
        } catch (Throwable unused2) {
            com.apm.insight.a.a((Closeable) bufferedWriter);
        }
    }

    public f(String str) {
        this.f7061a = 206;
        this.f7062b = str;
    }

    public static boolean b(File file) {
        String[] list = file.list();
        return list == null || list.length == 0;
    }

    public static void a(@NonNull File file, @NonNull JSONArray jSONArray) throws IOException {
        BufferedWriter bufferedWriter;
        if (jSONArray == null) {
            return;
        }
        file.getParentFile().mkdirs();
        try {
            bufferedWriter = new BufferedWriter(new FileWriter(file));
        } catch (Throwable unused) {
            bufferedWriter = null;
        }
        try {
            h.a(jSONArray, bufferedWriter);
            com.apm.insight.a.a((Closeable) bufferedWriter);
        } catch (Throwable unused2) {
            com.apm.insight.a.a((Closeable) bufferedWriter);
        }
    }

    public static com.apm.insight.f.b c(String str) {
        try {
            JSONObject jSONObject = new JSONObject(a(str, "\n"));
            com.apm.insight.f.b bVar = new com.apm.insight.f.b();
            bVar.d(jSONObject.optString(TTVideoEngineInterface.PLAY_API_KEY_APPID));
            bVar.c(jSONObject.optString("did"));
            bVar.e(jSONObject.optString("processName"));
            ArrayList arrayList = new ArrayList();
            JSONArray optJSONArray = jSONObject.optJSONArray("alogFiles");
            if (optJSONArray != null) {
                for (int i10 = 0; i10 < optJSONArray.length(); i10++) {
                    arrayList.add(optJSONArray.getString(i10));
                }
                bVar.a(arrayList);
            }
            return bVar;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        } catch (JSONException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public f(JSONObject jSONObject) {
        this.f7061a = 0;
        this.f7063c = jSONObject;
    }

    private static String b(File file, String str, String str2, JSONObject jSONObject, boolean z10) {
        if (!file.exists()) {
            file.mkdirs();
        }
        File file2 = new File(file, str);
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("url", str2);
            jSONObject2.put("body", jSONObject);
            jSONObject2.put("dump_file", "");
            jSONObject2.put("encrypt", z10);
            a(file2, jSONObject2);
        } catch (IOException e10) {
            e10.printStackTrace();
        } catch (JSONException e11) {
            e11.printStackTrace();
        }
        return file2.getAbsolutePath();
    }

    public static boolean a(@NonNull File file) {
        boolean a10;
        boolean z10 = true;
        if (file.exists()) {
            if (file.canWrite()) {
                if (file.isFile()) {
                    return file.delete();
                }
                if (file.isDirectory()) {
                    File[] listFiles = file.listFiles();
                    for (int i10 = 0; listFiles != null && i10 < listFiles.length; i10++) {
                        if (listFiles[i10].isFile()) {
                            if (listFiles[i10].canWrite()) {
                                a10 = listFiles[i10].delete();
                            } else {
                                z10 = false;
                            }
                        } else {
                            a10 = a(listFiles[i10]);
                        }
                        z10 &= a10;
                    }
                    return z10 & file.delete();
                }
                return true;
            }
            return false;
        }
        return true;
    }

    public static void b(String str, String str2) throws Exception {
        ZipOutputStream zipOutputStream;
        Throwable th2;
        File file = new File(str);
        try {
            new File(str2).getParentFile().mkdirs();
            zipOutputStream = new ZipOutputStream(new FileOutputStream(str2));
            try {
                a(zipOutputStream, file, "");
                com.apm.insight.a.a((Closeable) zipOutputStream);
            } catch (Throwable th3) {
                th2 = th3;
                com.apm.insight.a.a((Closeable) zipOutputStream);
                throw th2;
            }
        } catch (Throwable th4) {
            zipOutputStream = null;
            th2 = th4;
        }
    }

    public static String a(String str, String str2) throws IOException {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return b(new File(str), str2);
    }

    public static com.apm.insight.f.b b(String str) {
        try {
            String a10 = a(str, "\n");
            if (a10 == null) {
                return null;
            }
            JSONObject jSONObject = new JSONObject(a10);
            com.apm.insight.f.b bVar = new com.apm.insight.f.b();
            bVar.a(jSONObject.optString("url"));
            bVar.a(jSONObject.optJSONObject("body"));
            bVar.b(jSONObject.optString("dump_file"));
            bVar.a(jSONObject.optBoolean("encrypt", false));
            return bVar;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String a(File file, String str) throws IOException {
        return b(file, str);
    }

    public static JSONArray a(String str) throws IOException {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return a(new File(str), -1L);
    }

    public static JSONArray a(@NonNull File file, long j10) throws IOException {
        JSONArray jSONArray = new JSONArray();
        BufferedReader bufferedReader = null;
        try {
            BufferedReader bufferedReader2 = new BufferedReader(new FileReader(file));
            if (j10 > 0) {
                try {
                    bufferedReader2.skip(j10);
                    bufferedReader2.readLine();
                } catch (Throwable th2) {
                    th = th2;
                    bufferedReader = bufferedReader2;
                    com.apm.insight.a.a((Closeable) bufferedReader);
                    throw th;
                }
            }
            while (true) {
                String readLine = bufferedReader2.readLine();
                if (readLine != null) {
                    jSONArray.put(readLine);
                } else {
                    com.apm.insight.a.a((Closeable) bufferedReader2);
                    return jSONArray;
                }
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    @Nullable
    public final byte[] b() {
        return this.f7064d;
    }

    public static com.apm.insight.f.b a(File file, CrashType crashType) {
        String c10;
        com.apm.insight.entity.a f10 = f(file);
        String name = file.getName();
        String substring = name.substring(name.lastIndexOf(95) + 1);
        JSONObject optJSONObject = f10.c().optJSONObject("header");
        if (optJSONObject.optString("unique_key", null) == null) {
            try {
                optJSONObject.put("unique_key", "android_" + com.apm.insight.e.c().a() + "_" + substring + "_" + CrashType.LAUNCH);
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
        }
        com.apm.insight.f.b bVar = new com.apm.insight.f.b();
        if (crashType == CrashType.LAUNCH) {
            c10 = com.apm.insight.k.e.e();
        } else {
            c10 = com.apm.insight.k.e.c();
        }
        bVar.a(c10);
        bVar.a(f10.c());
        bVar.a(com.apm.insight.k.e.a());
        return bVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0023, code lost:
        r3 = "InvalidStack.NoStackAvailable: Catch a OOM Exception without stack.\n";
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0024, code lost:
        r0 = null;
        r5 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0116, code lost:
        if (r18 != false) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0021, code lost:
        if (r18 != false) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.apm.insight.entity.a a(java.io.File r17, boolean r18) {
        /*
            Method dump skipped, instructions count: 307
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apm.insight.l.f.a(java.io.File, boolean):com.apm.insight.entity.a");
    }

    @Nullable
    public static void a(File file, Map<String, String> map) {
        Properties properties;
        FileOutputStream fileOutputStream;
        if (map == null || map.isEmpty()) {
            return;
        }
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                properties = new Properties();
                fileOutputStream = new FileOutputStream(file);
            } catch (IOException e10) {
                e = e10;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                properties.setProperty(entry.getKey(), entry.getValue());
            }
            properties.store(fileOutputStream, "no");
            com.apm.insight.a.a((Closeable) fileOutputStream);
        } catch (IOException e11) {
            e = e11;
            fileOutputStream2 = fileOutputStream;
            com.apm.insight.a.b((Throwable) e);
            com.apm.insight.a.a((Closeable) fileOutputStream2);
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream2 = fileOutputStream;
            com.apm.insight.a.a((Closeable) fileOutputStream2);
            throw th;
        }
    }

    public static String a(File file, String str, String str2, JSONObject jSONObject, boolean z10) {
        return b(file, str, str2, jSONObject, z10);
    }

    public static void a(File file, File file2) {
        FileOutputStream fileOutputStream;
        if (file2 == null) {
            return;
        }
        FileInputStream fileInputStream = null;
        try {
            file2.getParentFile().mkdirs();
            FileInputStream fileInputStream2 = new FileInputStream(file);
            try {
                fileOutputStream = new FileOutputStream(file2);
            } catch (Exception e10) {
                e = e10;
                fileOutputStream = null;
            } catch (Throwable th2) {
                th = th2;
                fileOutputStream = null;
            }
            try {
                byte[] bArr = new byte[8192];
                while (true) {
                    int read = fileInputStream2.read(bArr);
                    if (read <= 0) {
                        break;
                    }
                    fileOutputStream.write(bArr, 0, read);
                }
                com.apm.insight.a.a((Closeable) fileInputStream2);
            } catch (Exception e11) {
                e = e11;
                fileInputStream = fileInputStream2;
                try {
                    e.printStackTrace();
                    com.apm.insight.a.a((Closeable) fileInputStream);
                    com.apm.insight.a.a((Closeable) fileOutputStream);
                } catch (Throwable th3) {
                    th = th3;
                    com.apm.insight.a.a((Closeable) fileInputStream);
                    com.apm.insight.a.a((Closeable) fileOutputStream);
                    throw th;
                }
            } catch (Throwable th4) {
                th = th4;
                fileInputStream = fileInputStream2;
                com.apm.insight.a.a((Closeable) fileInputStream);
                com.apm.insight.a.a((Closeable) fileOutputStream);
                throw th;
            }
        } catch (Exception e12) {
            e = e12;
            fileOutputStream = null;
        } catch (Throwable th5) {
            th = th5;
            fileOutputStream = null;
        }
        com.apm.insight.a.a((Closeable) fileOutputStream);
    }

    public static void a(OutputStream outputStream, File... fileArr) throws IOException {
        ZipOutputStream zipOutputStream;
        ZipOutputStream zipOutputStream2 = null;
        try {
            zipOutputStream = new ZipOutputStream(outputStream);
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            zipOutputStream.putNextEntry(new ZipEntry(DomExceptionUtils.SEPARATOR));
            for (File file : fileArr) {
                a(zipOutputStream, file);
            }
            com.apm.insight.a.a((Closeable) zipOutputStream);
        } catch (Throwable th3) {
            th = th3;
            zipOutputStream2 = zipOutputStream;
            com.apm.insight.a.a((Closeable) zipOutputStream2);
            throw th;
        }
    }

    private static void a(ZipOutputStream zipOutputStream, File file) throws IOException {
        if (file == null || !file.exists()) {
            return;
        }
        File[] listFiles = file.isDirectory() ? file.listFiles() : new File[]{file};
        if (listFiles == null) {
            return;
        }
        for (File file2 : listFiles) {
            a(zipOutputStream, file2, file2.getName());
        }
    }

    private static void a(ZipOutputStream zipOutputStream, File file, String str) throws IOException {
        if (file == null || !file.exists()) {
            return;
        }
        if (file.isDirectory()) {
            File[] listFiles = file.listFiles();
            if (listFiles == null) {
                return;
            }
            zipOutputStream.putNextEntry(new ZipEntry(str + DomExceptionUtils.SEPARATOR));
            String str2 = str.length() == 0 ? "" : str + DomExceptionUtils.SEPARATOR;
            for (int i10 = 0; i10 < listFiles.length; i10++) {
                a(zipOutputStream, listFiles[i10], str2 + listFiles[i10].getName());
            }
            return;
        }
        zipOutputStream.putNextEntry(new ZipEntry(str));
        FileInputStream fileInputStream = null;
        try {
            FileInputStream fileInputStream2 = new FileInputStream(file);
            try {
                byte[] bArr = new byte[4096];
                while (true) {
                    int read = fileInputStream2.read(bArr);
                    if (-1 != read) {
                        zipOutputStream.write(bArr, 0, read);
                    } else {
                        com.apm.insight.a.a((Closeable) fileInputStream2);
                        return;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                fileInputStream = fileInputStream2;
                com.apm.insight.a.a((Closeable) fileInputStream);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public final boolean a() {
        return this.f7061a != 207;
    }
}
