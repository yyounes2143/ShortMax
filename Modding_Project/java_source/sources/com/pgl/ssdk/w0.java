package com.pgl.ssdk;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class w0 {

    /* renamed from: a  reason: collision with root package name */
    private static List<String> f36840a = new ArrayList();

    /* loaded from: classes6.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public int f36841a;

        /* renamed from: b  reason: collision with root package name */
        public String f36842b;

        public a(int i10, String... strArr) {
            this.f36841a = i10;
            JSONArray jSONArray = new JSONArray();
            for (String str : strArr) {
                jSONArray.put(str);
            }
            this.f36842b = jSONArray.toString();
        }
    }

    private static File a(Context context) {
        if (context == null || context.getFilesDir() == null) {
            return null;
        }
        File file = new File(context.getFilesDir(), "libso");
        if (!file.exists()) {
            s0.a(file.getAbsolutePath());
        }
        return file;
    }

    public static synchronized a b(Context context, String str) {
        synchronized (w0.class) {
            if (f36840a.contains(str)) {
                return null;
            }
            try {
                System.loadLibrary(str);
                f36840a.add(str);
            } catch (UnsatisfiedLinkError e10) {
                File a10 = a(context, str);
                if (a10 == null) {
                    return new a(3, e10.getMessage(), "output null");
                }
                if (a10.exists()) {
                    a10.delete();
                }
                a a11 = a(context, str, a10);
                if (a11 != null) {
                    return a11;
                }
                System.load(a10.getAbsolutePath());
                f36840a.add(str);
            } catch (Throwable th2) {
                return new a(3, th2.getMessage());
            }
            return null;
        }
    }

    private static File a(Context context, String str) {
        String mapLibraryName = System.mapLibraryName(str);
        File a10 = a(context);
        if (a10 != null) {
            return new File(a10, mapLibraryName);
        }
        return null;
    }

    private static a a(Context context, String str, File file) {
        InputStream inputStream;
        FileOutputStream fileOutputStream;
        ZipFile zipFile = null;
        try {
            ZipFile zipFile2 = new ZipFile(new File(context.getApplicationInfo().sourceDir), 1);
            try {
                ZipEntry a10 = a(zipFile2, Build.CPU_ABI, str);
                if (a10 == null) {
                    try {
                        a10 = a(zipFile2, Build.CPU_ABI2, str);
                    } catch (Throwable th2) {
                        th = th2;
                        inputStream = null;
                        fileOutputStream = null;
                        zipFile = zipFile2;
                        try {
                            return new a(3, th.getMessage());
                        } finally {
                            s0.a(fileOutputStream);
                            s0.a(inputStream);
                            s0.a(zipFile);
                        }
                    }
                }
                if (a10 != null) {
                    file.createNewFile();
                    InputStream inputStream2 = zipFile2.getInputStream(a10);
                    try {
                        FileOutputStream fileOutputStream2 = new FileOutputStream(file);
                        try {
                            byte[] bArr = new byte[16384];
                            while (true) {
                                int read = inputStream2.read(bArr);
                                if (read > 0) {
                                    fileOutputStream2.write(bArr, 0, read);
                                } else {
                                    s0.a(file.getAbsolutePath(), TTVideoEngineInterface.PLAYER_OPTION_ENABLE_DIRECT_URL_BASH);
                                    s0.a(fileOutputStream2);
                                    s0.a(inputStream2);
                                    s0.a(zipFile2);
                                    return null;
                                }
                            }
                        } catch (Throwable th3) {
                            zipFile = zipFile2;
                            inputStream = inputStream2;
                            th = th3;
                            fileOutputStream = fileOutputStream2;
                            return new a(3, th.getMessage());
                        }
                    } catch (Throwable th4) {
                        inputStream = inputStream2;
                        th = th4;
                        fileOutputStream = null;
                        zipFile = zipFile2;
                        return new a(3, th.getMessage());
                    }
                } else {
                    a aVar = new a(2, a(zipFile2, str));
                    s0.a((Closeable) null);
                    s0.a((Closeable) null);
                    s0.a(zipFile2);
                    return aVar;
                }
            } catch (Throwable th5) {
                th = th5;
                inputStream = null;
            }
        } catch (Throwable th6) {
            th = th6;
            inputStream = null;
            fileOutputStream = null;
        }
    }

    private static String a(ZipFile zipFile, String str) {
        ArrayList arrayList = new ArrayList();
        String[] strArr = {"armeabi-v7a", "arm64-v8a", "x86", "x86_64", "armeabi"};
        for (int i10 = 0; i10 < 5; i10++) {
            String str2 = strArr[i10];
            if (a(zipFile, str2, str) != null) {
                arrayList.add(str2);
            }
        }
        List asList = Arrays.asList(Build.SUPPORTED_ABIS);
        ArrayList arrayList2 = new ArrayList();
        String str3 = Build.CPU_ABI;
        if (!TextUtils.isEmpty(str3)) {
            arrayList2.add(str3);
        }
        String str4 = Build.CPU_ABI2;
        if (!TextUtils.isEmpty(str4)) {
            arrayList2.add(str4);
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("supportedABIS", asList);
            jSONObject.put("curABIs", arrayList2);
            jSONObject.put("apkABIS", arrayList);
            return jSONObject.toString();
        } catch (JSONException unused) {
            return "";
        }
    }

    private static ZipEntry a(ZipFile zipFile, String str, String str2) {
        ZipEntry entry = zipFile.getEntry("lib/" + str + DomExceptionUtils.SEPARATOR + System.mapLibraryName(str2));
        if (entry != null) {
            return entry;
        }
        int indexOf = str.indexOf(45);
        StringBuilder sb2 = new StringBuilder("lib/");
        if (indexOf <= 0) {
            indexOf = str.length();
        }
        sb2.append(str.substring(0, indexOf));
        sb2.append(DomExceptionUtils.SEPARATOR);
        sb2.append(System.mapLibraryName(str2));
        return zipFile.getEntry(sb2.toString());
    }
}
