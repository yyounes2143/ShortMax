package com.pgl.ssdk;

import android.content.SharedPreferences;
import android.text.TextUtils;
import com.applovin.shadow.okhttp3.internal.ws.RealWebSocket;
import com.bytedance.vodsetting.Module;
import com.inmobi.commons.core.configs.AdConfig;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.tools.SameMD5;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Locale;
import java.util.zip.ZipEntry;
import java.util.zip.ZipException;
import java.util.zip.ZipFile;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes6.dex */
public class v {

    /* renamed from: a  reason: collision with root package name */
    private static volatile String f36824a = null;

    /* renamed from: b  reason: collision with root package name */
    private static volatile String f36825b = null;

    /* renamed from: c  reason: collision with root package name */
    private static volatile boolean f36826c = false;

    /* renamed from: d  reason: collision with root package name */
    private static String f36827d = null;

    /* renamed from: e  reason: collision with root package name */
    private static String f36828e = null;

    /* renamed from: f  reason: collision with root package name */
    private static String f36829f = null;

    /* renamed from: g  reason: collision with root package name */
    private static int f36830g = -1;

    /* renamed from: h  reason: collision with root package name */
    private static long f36831h = 0;

    /* renamed from: i  reason: collision with root package name */
    private static long f36832i = 0;

    /* renamed from: j  reason: collision with root package name */
    private static volatile long f36833j = -1;

    public static void a(File file, boolean z10) {
        RandomAccessFile randomAccessFile;
        e a10;
        RandomAccessFile randomAccessFile2 = null;
        try {
            try {
                randomAccessFile = new RandomAccessFile(file, "r");
            } catch (IOException unused) {
                return;
            }
        } catch (FileNotFoundException unused2) {
        } catch (IOException unused3) {
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            if (TextUtils.isEmpty(f36824a) && (a10 = a(file)) != null) {
                f36824a = a(a10.a());
                f36827d = a10.b();
                if (z10) {
                    a();
                    try {
                        randomAccessFile.close();
                        return;
                    } catch (IOException unused4) {
                        return;
                    }
                }
            }
            if (TextUtils.isEmpty(f36828e)) {
                f36828e = a(randomAccessFile);
            }
            if (f36831h == 0) {
                f36831h = randomAccessFile.length() / RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE;
            }
            if (f36832i == 0) {
                f36832i = b(file);
            }
            randomAccessFile.close();
        } catch (FileNotFoundException unused5) {
            randomAccessFile2 = randomAccessFile;
            if (randomAccessFile2 != null) {
                randomAccessFile2.close();
            }
        } catch (IOException unused6) {
            randomAccessFile2 = randomAccessFile;
            if (randomAccessFile2 != null) {
                randomAccessFile2.close();
            }
        } catch (Throwable th3) {
            th = th3;
            randomAccessFile2 = randomAccessFile;
            if (randomAccessFile2 != null) {
                try {
                    randomAccessFile2.close();
                } catch (IOException unused7) {
                }
            }
            throw th;
        }
    }

    public static String b() {
        String str;
        String str2;
        String str3;
        String str4;
        int i10;
        long j10;
        long j11;
        if (TextUtils.isEmpty(f36824a) || TextUtils.isEmpty(f36828e) || f36830g == -1) {
            SharedPreferences a10 = x0.a(z.b());
            long j12 = -1;
            if (a10 != null) {
                j12 = a10.getLong("mt", -1L);
                str2 = a10.getString("sa", null);
                str3 = a10.getString("sj", null);
                str4 = a10.getString("md5", null);
                j10 = a10.getLong("as", 0L);
                j11 = a10.getLong("ds", 0L);
                i10 = a10.getInt("cpc", -1);
                str = a10.getString("ap", null);
            } else {
                str = null;
                str2 = null;
                str3 = null;
                str4 = null;
                i10 = 0;
                j10 = 0;
                j11 = 0;
            }
            String c10 = c();
            if (c10 == null) {
                return null;
            }
            File file = new File(c10);
            Object[] objArr = (Object[]) com.pgl.ssdk.ces.a.meta(158, z.b(), c10);
            Integer num = (Integer) objArr[0];
            String str5 = (String) objArr[1];
            long lastModified = file.lastModified();
            if (lastModified == j12 && str2 != null && i10 != -1) {
                f36824a = str2;
                f36827d = str3;
                f36831h = j10;
                f36832i = j11;
                f36828e = str4;
                f36830g = i10;
                f36829f = str;
            } else {
                f36833j = lastModified;
                if (str5 != null) {
                    f36829f = str5;
                }
                if (num != null) {
                    f36830g = num.intValue();
                }
                a(file, false);
                a();
            }
        }
        JSONObject jSONObject = new JSONObject();
        try {
            if (!TextUtils.isEmpty(f36824a)) {
                jSONObject.put("sign", f36824a);
            }
            if (!TextUtils.isEmpty(f36827d)) {
                jSONObject.put("subject", f36827d);
            }
            if (!TextUtils.isEmpty(f36828e)) {
                jSONObject.put("md5", f36828e);
            }
            if (!TextUtils.isEmpty(f36829f)) {
                jSONObject.put(MBridgeConstans.DYNAMIC_VIEW_WX_PATH, f36829f);
            }
            long j13 = f36831h;
            if (j13 != 0) {
                jSONObject.put("apkSize", j13);
            }
            long j14 = f36832i;
            if (j14 != 0) {
                jSONObject.put("dexSize", j14);
            }
            int i11 = f36830g;
            if (i11 != -1) {
                jSONObject.put(Module.ResponseKey.Code, i11);
            }
            f();
            jSONObject.put("signpm", f36825b);
            if (!TextUtils.isEmpty(f36825b) && !TextUtils.isEmpty(f36824a)) {
                if (!f36825b.equals(f36824a)) {
                    f36826c = true;
                }
                jSONObject.put("rebud", f36826c);
            }
            return jSONObject.toString();
        } catch (JSONException unused) {
            return null;
        }
    }

    public static String c() {
        if (z.b() == null) {
            return null;
        }
        String packageCodePath = z.b().getPackageCodePath();
        if (TextUtils.isEmpty(packageCodePath)) {
            return null;
        }
        File file = new File(packageCodePath);
        if (!file.exists() || !file.canRead()) {
            return null;
        }
        return packageCodePath;
    }

    public static void d() {
        if (TextUtils.isEmpty(f36824a)) {
            SharedPreferences a10 = x0.a(z.b());
            String str = null;
            long j10 = -1;
            if (a10 != null) {
                j10 = a10.getLong("mt", -1L);
                str = a10.getString("sa", null);
            }
            String c10 = c();
            if (TextUtils.isEmpty(c10)) {
                return;
            }
            File file = new File(c10);
            long lastModified = file.lastModified();
            if (lastModified == j10 && str != null) {
                f36824a = str;
            } else {
                f36833j = lastModified;
                a(file, true);
                a();
            }
        }
        f();
        if (!TextUtils.isEmpty(f36825b) && !TextUtils.isEmpty(f36824a) && !f36825b.equals(f36824a)) {
            f36826c = true;
        }
    }

    public static String e() {
        d();
        return f36824a;
    }

    public static String f() {
        if (!TextUtils.isEmpty(f36825b)) {
            return f36825b;
        }
        try {
            String a10 = a(z.b().getPackageManager().getPackageInfo(z.b().getPackageName(), 64).signatures[0].toByteArray());
            f36825b = a10;
            return a10;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static boolean g() {
        d();
        return f36826c;
    }

    public static void a() {
        SharedPreferences a10 = x0.a(z.b());
        if (a10 != null) {
            if (!TextUtils.isEmpty(f36824a)) {
                a10.edit().putString("sa", f36824a).apply();
            }
            if (!TextUtils.isEmpty(f36828e)) {
                a10.edit().putString("md5", f36828e).apply();
            }
            if (!TextUtils.isEmpty(f36827d)) {
                a10.edit().putString("sj", f36827d).apply();
            }
            if (f36831h != 0) {
                a10.edit().putLong("as", f36831h).apply();
            }
            if (f36832i != 0) {
                a10.edit().putLong("ds", f36832i).apply();
            }
            if (f36833j != -1) {
                a10.edit().putLong("mt", f36833j).apply();
            }
            if (f36830g != -1) {
                a10.edit().putInt("cpc", f36830g).apply();
            }
            if (TextUtils.isEmpty(f36829f)) {
                return;
            }
            a10.edit().putString("ap", f36829f).apply();
        }
    }

    public static String a(byte[] bArr) {
        try {
            byte[] digest = MessageDigest.getInstance("SHA1").digest(bArr);
            StringBuilder sb2 = new StringBuilder();
            for (byte b10 : digest) {
                sb2.append(Integer.toHexString((b10 & AdConfig.NETWORK_LOAD_LIMIT_DISABLED) | 256).substring(1, 3).toUpperCase());
                sb2.append(":");
            }
            return sb2.substring(0, sb2.length() - 1);
        } catch (NoSuchAlgorithmException unused) {
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x003a  */
    @com.pgl.ssdk.ces.out.DungeonFlag
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.pgl.ssdk.e a(java.io.File r6) {
        /*
            r0 = 0
            java.io.RandomAccessFile r1 = new java.io.RandomAccessFile     // Catch: java.lang.Throwable -> L1e com.pgl.ssdk.g.a -> L25
            java.lang.String r2 = "r"
            r1.<init>(r6, r2)     // Catch: java.lang.Throwable -> L1e com.pgl.ssdk.g.a -> L25
            long r2 = r1.length()     // Catch: java.lang.Throwable -> L1f com.pgl.ssdk.g.a -> L26
            r4 = 0
            com.pgl.ssdk.q r2 = com.pgl.ssdk.r.a(r1, r4, r2)     // Catch: java.lang.Throwable -> L1f com.pgl.ssdk.g.a -> L26
            com.pgl.ssdk.c$a r3 = com.pgl.ssdk.c.a(r2)     // Catch: java.lang.Throwable -> L1f com.pgl.ssdk.g.a -> L26
            java.util.List r2 = com.pgl.ssdk.l.a(r2, r3)     // Catch: java.lang.Throwable -> L1f com.pgl.ssdk.g.a -> L26
            r1.close()     // Catch: java.io.IOException -> L2c
            goto L2c
        L1e:
            r1 = r0
        L1f:
            if (r1 == 0) goto L2b
            r1.close()     // Catch: java.io.IOException -> L2b
            goto L2b
        L25:
            r1 = r0
        L26:
            if (r1 == 0) goto L2b
            r1.close()     // Catch: java.io.IOException -> L2b
        L2b:
            r2 = r0
        L2c:
            if (r2 == 0) goto L34
            boolean r1 = r2.isEmpty()
            if (r1 == 0) goto L38
        L34:
            java.util.List r2 = com.pgl.ssdk.k.a(r6)
        L38:
            if (r2 == 0) goto L48
            boolean r6 = r2.isEmpty()
            if (r6 != 0) goto L48
            r6 = 0
            java.lang.Object r6 = r2.get(r6)
            com.pgl.ssdk.e r6 = (com.pgl.ssdk.e) r6
            return r6
        L48:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.pgl.ssdk.v.a(java.io.File):com.pgl.ssdk.e");
    }

    public static long b(File file) {
        String format;
        ZipFile zipFile = null;
        try {
            try {
                ZipFile zipFile2 = new ZipFile(file);
                int i10 = 0;
                int i11 = 0;
                while (true) {
                    if (i10 == 0) {
                        format = "classes.dex";
                    } else {
                        format = String.format(Locale.getDefault(), "classes%d.dex", Integer.valueOf(i10));
                    }
                    ZipEntry entry = zipFile2.getEntry(format);
                    if (entry == null) {
                        break;
                    }
                    try {
                        i11 = (int) (i11 + entry.getSize());
                        i10++;
                    } catch (ZipException unused) {
                        zipFile = zipFile2;
                        if (zipFile != null) {
                            zipFile.close();
                            return 0L;
                        }
                        return 0L;
                    } catch (IOException unused2) {
                        zipFile = zipFile2;
                        if (zipFile != null) {
                            zipFile.close();
                            return 0L;
                        }
                        return 0L;
                    } catch (Throwable th2) {
                        th = th2;
                        zipFile = zipFile2;
                        if (zipFile != null) {
                            try {
                                zipFile.close();
                            } catch (IOException unused3) {
                            }
                        }
                        throw th;
                    }
                }
                long j10 = i11 / 1000;
                try {
                    zipFile2.close();
                } catch (IOException unused4) {
                }
                return j10;
            } catch (IOException unused5) {
                return 0L;
            }
        } catch (ZipException unused6) {
        } catch (IOException unused7) {
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static String a(RandomAccessFile randomAccessFile) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(SameMD5.TAG);
            byte[] bArr = new byte[1048576];
            while (true) {
                int read = randomAccessFile.read(bArr);
                if (read == -1) {
                    break;
                }
                messageDigest.update(bArr, 0, read);
            }
            String bigInteger = new BigInteger(1, messageDigest.digest()).toString(16);
            while (bigInteger.length() < 32) {
                bigInteger = MBridgeConstans.ENDCARD_URL_TYPE_PL.concat(bigInteger);
            }
            return bigInteger;
        } catch (FileNotFoundException | IOException | NoSuchAlgorithmException unused) {
            return "";
        }
    }
}
