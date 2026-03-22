package com.applovin.impl.sdk;

import android.content.Context;
import android.net.Uri;
import android.os.SystemClock;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.applovin.impl.a4;
import com.applovin.impl.b6;
import com.applovin.impl.g2;
import com.applovin.impl.g5;
import com.applovin.impl.k7;
import com.applovin.impl.p6;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.v4;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public class m {

    /* renamed from: b  reason: collision with root package name */
    private final k f9787b;

    /* renamed from: c  reason: collision with root package name */
    private final o f9788c;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f9791f;

    /* renamed from: a  reason: collision with root package name */
    private final String f9786a = "FileManager";

    /* renamed from: d  reason: collision with root package name */
    private final Object f9789d = new Object();

    /* renamed from: e  reason: collision with root package name */
    private final Set f9790e = new HashSet();

    /* renamed from: g  reason: collision with root package name */
    private final com.applovin.impl.f2 f9792g = a();

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(k kVar) {
        this.f9787b = kVar;
        this.f9788c = kVar.O();
        this.f9791f = ((Boolean) kVar.a(v4.U0)).booleanValue();
    }

    private boolean e(File file) {
        if (file == null) {
            return false;
        }
        String absolutePath = file.getAbsolutePath();
        synchronized (this.f9789d) {
            try {
                if (this.f9790e.contains(absolutePath)) {
                    return false;
                }
                d(file);
                return true;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private boolean g(File file) {
        if (o.a()) {
            o oVar = this.f9788c;
            oVar.a("FileManager", "Removing file " + file.getName() + " from filesystem...");
        }
        try {
            d(file);
            boolean delete = file.delete();
            if (!delete) {
                HashMap<String, String> hashMap = CollectionUtils.hashMap(MBridgeConstans.DYNAMIC_VIEW_WX_PATH, file.getAbsolutePath());
                hashMap.put("details", b(file));
                this.f9787b.E().a(com.applovin.impl.c2.D0, "removeFile", hashMap);
            }
            h(file);
            return delete;
        } catch (Throwable th2) {
            try {
                if (o.a()) {
                    o oVar2 = this.f9788c;
                    oVar2.a("FileManager", "Failed to remove file " + file.getName() + " from filesystem!", th2);
                }
                this.f9787b.E().a("FileManager", "removeFile", th2);
                h(file);
                return false;
            } catch (Throwable th3) {
                h(file);
                throw th3;
            }
        }
    }

    private void h(File file) {
        String absolutePath = file.getAbsolutePath();
        synchronized (this.f9789d) {
            try {
                if (!this.f9790e.remove(absolutePath)) {
                    this.f9787b.E().a(com.applovin.impl.c2.D0, "unlockFile", CollectionUtils.hashMap(MBridgeConstans.DYNAMIC_VIEW_WX_PATH, absolutePath));
                }
                this.f9789d.notifyAll();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void c(final com.applovin.impl.sdk.ad.b bVar, final Context context) {
        this.f9787b.r0().a((g5) new p6(this.f9787b, false, "removeCachedResourcesForAd", new Runnable() { // from class: com.applovin.impl.sdk.x1
            @Override // java.lang.Runnable
            public final void run() {
                m.this.a(bVar, context);
            }
        }), b6.b.CACHING);
    }

    public void d(final com.applovin.impl.sdk.ad.b bVar, final Context context) {
        this.f9787b.r0().a((g5) new p6(this.f9787b, false, "removeCachedVideoResourceForAd", new Runnable() { // from class: com.applovin.impl.sdk.y1
            @Override // java.lang.Runnable
            public final void run() {
                m.this.b(bVar, context);
            }
        }), b6.b.CACHING);
    }

    public String f(File file) {
        if (file == null) {
            return null;
        }
        if (o.a()) {
            this.f9788c.a("FileManager", "Reading resource from filesystem: " + file.getName());
        }
        boolean z10 = true;
        boolean z11 = false;
        try {
            try {
                try {
                    try {
                        FileInputStream fileInputStream = new FileInputStream(file);
                        try {
                            d(file);
                            String a10 = a(fileInputStream);
                            if (a10 == null) {
                                z11 = true;
                            }
                            fileInputStream.close();
                            if (z11 && ((Boolean) this.f9787b.a(v4.M0)).booleanValue()) {
                                a(file, "removeFileAfterReadFail");
                            }
                            h(file);
                            return a10;
                        } catch (Throwable th2) {
                            try {
                                fileInputStream.close();
                            } catch (Throwable th3) {
                                th2.addSuppressed(th3);
                            }
                            throw th2;
                        }
                    } catch (FileNotFoundException e10) {
                        if (o.a()) {
                            this.f9788c.d("FileManager", "File not found. " + e10);
                        }
                        this.f9788c.a("FileManager", e10);
                        this.f9787b.E().a("FileManager", "readFileNotFound", e10);
                        if (0 != 0 && ((Boolean) this.f9787b.a(v4.M0)).booleanValue()) {
                            a(file, "removeFileAfterReadFail");
                        }
                        h(file);
                        return null;
                    }
                } catch (IOException e11) {
                    if (o.a()) {
                        this.f9788c.a("FileManager", "Failed to read file: " + file.getName() + e11);
                    }
                    this.f9788c.a("FileManager", e11);
                    this.f9787b.E().a("FileManager", "readFileIO", e11);
                    if (((Boolean) this.f9787b.a(v4.M0)).booleanValue()) {
                        a(file, "removeFileAfterReadFail");
                    }
                    h(file);
                    return null;
                } catch (Throwable th4) {
                    if (o.a()) {
                        this.f9788c.a("FileManager", "Unknown failure to read file.", th4);
                    }
                    this.f9788c.a("FileManager", th4);
                    this.f9787b.E().a("FileManager", "readFile", th4);
                    if (((Boolean) this.f9787b.a(v4.M0)).booleanValue()) {
                        a(file, "removeFileAfterReadFail");
                    }
                    h(file);
                    return null;
                }
            } catch (Throwable th5) {
                th = th5;
                z10 = false;
                if (z10 && ((Boolean) this.f9787b.a(v4.M0)).booleanValue()) {
                    a(file, "removeFileAfterReadFail");
                }
                h(file);
                throw th;
            }
        } catch (Throwable th6) {
            th = th6;
        }
    }

    private com.applovin.impl.f2 a() {
        if (com.applovin.impl.o0.e() && ((Boolean) this.f9787b.a(v4.f10333q3)).booleanValue()) {
            try {
                return new a4(this.f9787b);
            } catch (Throwable th2) {
                if (o.a()) {
                    this.f9788c.a("FileManager", "Error instantiating OkHttpLoader, falling back to HttpUrlConnectionLoader", th2);
                }
                this.f9787b.E().a("FileManager", "instantiateOkHttpLoader", th2);
            }
        }
        return new g2(this.f9787b);
    }

    private boolean c(File file) {
        boolean contains;
        String absolutePath = file.getAbsolutePath();
        synchronized (this.f9789d) {
            contains = this.f9790e.contains(absolutePath);
        }
        return contains;
    }

    private void d(File file) {
        String absolutePath = file.getAbsolutePath();
        synchronized (this.f9789d) {
            boolean add = this.f9790e.add(absolutePath);
            while (!add) {
                try {
                    this.f9789d.wait();
                    add = this.f9790e.add(absolutePath);
                } catch (InterruptedException e10) {
                    if (o.a()) {
                        o oVar = this.f9788c;
                        oVar.a("FileManager", "Lock '" + absolutePath + "' interrupted", e10);
                    }
                    throw new RuntimeException(e10);
                }
            }
        }
    }

    public void b(Context context) {
        if (this.f9787b.F0()) {
            if (o.a()) {
                this.f9788c.a("FileManager", "Compacting cache...");
            }
            a(a(context), context);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(com.applovin.impl.sdk.ad.b bVar, Context context) {
        if (bVar.v0() == null) {
            return;
        }
        g(a(bVar.v0().getLastPathSegment(), context));
    }

    private List c(Context context) {
        File[] listFiles;
        File d10 = d(context);
        if (d10.isDirectory() && (listFiles = d10.listFiles()) != null) {
            return Arrays.asList(listFiles);
        }
        return Collections.emptyList();
    }

    public File a(String str, Context context) {
        return a(str, true, context);
    }

    public void e(Context context) {
        try {
            a(".nomedia", context);
            File file = new File(d(context), ".nomedia");
            if (a(file)) {
                return;
            }
            if (o.a()) {
                o oVar = this.f9788c;
                oVar.a("FileManager", "Creating .nomedia file at " + file.getAbsolutePath());
            }
            if (file.createNewFile()) {
                return;
            }
            if (o.a()) {
                this.f9788c.b("FileManager", "Failed to create .nomedia file");
            }
            this.f9787b.E().a(com.applovin.impl.c2.D0, "createNoMediaFile");
        } catch (IOException e10) {
            if (o.a()) {
                this.f9788c.a("FileManager", "Failed to create .nomedia file", e10);
            }
        }
    }

    private File a(String str, boolean z10, Context context) {
        if (!StringUtils.isValidString(str)) {
            if (o.a()) {
                this.f9788c.a("FileManager", "Nothing to look up, skipping...");
            }
            return null;
        }
        if (o.a()) {
            o oVar = this.f9788c;
            oVar.a("FileManager", "Looking up cached resource: " + str);
        }
        if (str.contains("icon")) {
            str = str.replace(DomExceptionUtils.SEPARATOR, "_").replace(".", "_");
        }
        File d10 = d(context);
        File file = new File(d10, str);
        if (z10) {
            try {
                d10.mkdirs();
            } catch (Throwable th2) {
                if (o.a()) {
                    o oVar2 = this.f9788c;
                    oVar2.a("FileManager", "Unable to make cache directory at " + d10, th2);
                }
                this.f9787b.E().a("FileManager", "createCacheDir", th2);
                return null;
            }
        }
        return file;
    }

    private String b(File file) {
        try {
            boolean exists = file.exists();
            boolean isDirectory = file.isDirectory();
            String[] list = file.list();
            boolean z10 = false;
            boolean z11 = isDirectory && list != null && list.length == 0;
            File parentFile = file.getParentFile();
            boolean z12 = parentFile != null && parentFile.exists();
            if (z12 && parentFile.canWrite()) {
                z10 = true;
            }
            return "fileExists: " + exists + "\nisDirectory: " + isDirectory + "\nisEmptyDirectory: " + z11 + "\nparentDirectoryExists: " + z12 + "\nisParentDirectoryWritable: " + z10;
        } catch (Throwable th2) {
            return "Error retrieving file deletion failure reason: " + th2;
        }
    }

    private File d(Context context) {
        return new File(context.getFilesDir(), CampaignEx.JSON_KEY_AD_AL);
    }

    public boolean c(String str, Context context) {
        if (this.f9791f) {
            return b(str, context);
        }
        boolean z10 = false;
        File a10 = a(str, false, context);
        if (e(a10)) {
            if (a10.exists() && !a10.isDirectory()) {
                z10 = true;
            }
            h(a10);
            return z10;
        }
        return false;
    }

    private long b() {
        long longValue = ((Long) this.f9787b.a(v4.B0)).longValue();
        if (longValue >= 0) {
            return longValue;
        }
        return -1L;
    }

    public String a(InputStream inputStream) {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr = new byte[8192];
            while (true) {
                int read = inputStream.read(bArr, 0, 8192);
                if (read >= 0) {
                    byteArrayOutputStream.write(bArr, 0, read);
                } else {
                    String byteArrayOutputStream2 = byteArrayOutputStream.toString("UTF-8");
                    byteArrayOutputStream.close();
                    return byteArrayOutputStream2;
                }
            }
        } catch (Throwable th2) {
            this.f9788c.a("FileManager", th2);
            this.f9787b.E().a("FileManager", "readInputStreamAsString", th2);
            return null;
        }
    }

    public boolean b(String str, Context context) {
        return a(a(str, false, context));
    }

    public boolean a(InputStream inputStream, File file, boolean z10) {
        return a(inputStream, file, z10, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:189:0x0317 A[Catch: all -> 0x031d, TRY_LEAVE, TryCatch #22 {all -> 0x031d, blocks: (B:187:0x0311, B:189:0x0317), top: B:250:0x0311 }] */
    /* JADX WARN: Removed duplicated region for block: B:195:0x032b  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x0330  */
    /* JADX WARN: Removed duplicated region for block: B:236:0x0343 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:269:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean a(java.io.InputStream r19, java.io.File r20, boolean r21, boolean r22) {
        /*
            Method dump skipped, instructions count: 926
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.sdk.m.a(java.io.InputStream, java.io.File, boolean, boolean):boolean");
    }

    public boolean a(File file, String str, List list, int i10, String str2, Map map) {
        return a(file, str, list, true, i10, str2, map);
    }

    private boolean a(File file, String str, List list, boolean z10, int i10, String str2, Map map) {
        HashMap<String, String> hashMap = CollectionUtils.hashMap("url", str);
        hashMap.putAll(map);
        this.f9787b.g().d(com.applovin.impl.c2.f7676x, hashMap);
        long elapsedRealtime = SystemClock.elapsedRealtime();
        for (int i11 = 1; i11 <= i10; i11++) {
            if (a(file, str, list, z10, str2, map)) {
                a(true, str, i11, elapsedRealtime, map);
                return true;
            }
        }
        a(false, str, i10, elapsedRealtime, map);
        return false;
    }

    private boolean a(File file, String str, List list, boolean z10, String str2, Map map) {
        Boolean bool = (Boolean) this.f9787b.a(v4.V0);
        if (bool.booleanValue()) {
            d(file);
        }
        if (a(file)) {
            if (o.a()) {
                o oVar = this.f9788c;
                oVar.a("FileManager", "File exists for " + str);
            }
            HashMap<String, String> hashMap = CollectionUtils.hashMap("url", str);
            hashMap.putAll(map);
            this.f9787b.g().d(com.applovin.impl.c2.f7678y, hashMap);
        }
        long elapsedRealtime = SystemClock.elapsedRealtime();
        try {
            InputStream a10 = a(str, list, z10, map);
            if (o.a()) {
                o oVar2 = this.f9788c;
                oVar2.a("FileManager", "Caching " + file.getAbsolutePath() + "...");
            }
            boolean a11 = a(a10, file, false, bool.booleanValue());
            long elapsedRealtime2 = SystemClock.elapsedRealtime() - elapsedRealtime;
            if (a11) {
                if (o.a()) {
                    o oVar3 = this.f9788c;
                    oVar3.a("FileManager", "Caching completed for " + file);
                }
                double d10 = k7.d(elapsedRealtime2);
                double c10 = k7.c(file.length());
                long j10 = (long) (c10 / d10);
                Map a12 = a(file, str, elapsedRealtime2, map);
                CollectionUtils.putObjectToStringIfValid("network_throughput_kbps", Long.valueOf(j10), a12);
                CollectionUtils.putObjectToStringIfValid("details", Double.valueOf(c10), a12);
                this.f9787b.g().d(com.applovin.impl.c2.D, a12);
                this.f9787b.d0().b(j10, str, str2);
            } else {
                if (o.a()) {
                    o oVar4 = this.f9788c;
                    oVar4.b("FileManager", "Unable to cache " + file.getAbsolutePath());
                }
                this.f9787b.g().d(com.applovin.impl.c2.E, a(file, str, elapsedRealtime2, map));
            }
            if (a10 != null) {
                a10.close();
            }
            if (bool.booleanValue()) {
                h(file);
            }
            return a11;
        } catch (Throwable th2) {
            try {
                this.f9788c.a("FileManager", th2);
                this.f9787b.E().a("FileManager", "loadAndCacheResource", th2);
                if (bool.booleanValue()) {
                    h(file);
                }
                return false;
            } finally {
                if (bool.booleanValue()) {
                    h(file);
                }
            }
        }
    }

    private Map a(File file, String str, long j10, Map map) {
        HashMap<String, String> hashMap = CollectionUtils.hashMap(MBridgeConstans.DYNAMIC_VIEW_WX_PATH, file.getAbsolutePath());
        CollectionUtils.putStringIfValid("url", str, hashMap);
        CollectionUtils.putObjectToStringIfValid("duration_ms", Long.valueOf(j10), hashMap);
        hashMap.putAll(map);
        return hashMap;
    }

    private void a(boolean z10, String str, int i10, long j10, Map map) {
        com.applovin.impl.c2 c2Var = z10 ? com.applovin.impl.c2.f7680z : com.applovin.impl.c2.A;
        long elapsedRealtime = SystemClock.elapsedRealtime() - j10;
        HashMap hashMap = new HashMap(3);
        hashMap.put("attempt_number", Integer.toString(i10));
        hashMap.put("url", str);
        hashMap.put("duration_ms", String.valueOf(elapsedRealtime));
        hashMap.putAll(map);
        this.f9787b.g().d(c2Var, hashMap);
    }

    public InputStream a(String str, List list, boolean z10, Map map) {
        if (z10 && !k7.a(str, list)) {
            if (o.a()) {
                o oVar = this.f9788c;
                oVar.a("FileManager", "Domain is not whitelisted, skipping precache for url: " + str);
            }
            return null;
        }
        String httpsString = StringUtils.toHttpsString(str);
        if (o.a()) {
            o oVar2 = this.f9788c;
            oVar2.a("FileManager", "Loading " + httpsString + "...");
        }
        HashMap<String, String> hashMap = CollectionUtils.hashMap("url", httpsString);
        hashMap.putAll(map);
        this.f9787b.g().d(com.applovin.impl.c2.B, hashMap);
        try {
            return this.f9792g.a(httpsString, map);
        } catch (Throwable th2) {
            if (o.a()) {
                o oVar3 = this.f9788c;
                oVar3.a("FileManager", "Error loading " + httpsString, th2);
            }
            this.f9787b.E().a("FileManager", "loadResource", th2, CollectionUtils.hashMap("url", httpsString));
            return null;
        }
    }

    public int a(String str, com.applovin.impl.sdk.ad.b bVar) {
        List d02 = bVar.d0();
        if (bVar.Z0() || d02.contains(str)) {
            return bVar.L();
        }
        return 1;
    }

    public String a(Context context, String str, String str2, List list, boolean z10, int i10, String str3, Map map) {
        return a(context, str, str2, list, z10, false, i10, str3, map);
    }

    public String a(Context context, String str, String str2, List list, boolean z10, boolean z11, int i10, String str3, Map map) {
        if (!StringUtils.isValidString(str)) {
            if (o.a()) {
                this.f9788c.a("FileManager", "Nothing to cache, skipping...");
            }
            this.f9787b.E().a(com.applovin.impl.c2.D0, "cacheResource");
            return null;
        }
        String a10 = k7.a(Uri.parse(str), str2, this.f9787b);
        File a11 = a(a10, context);
        if (a(a11, str, list, z10, i10, str3, map)) {
            if (o.a()) {
                o oVar = this.f9788c;
                oVar.a("FileManager", "Caching succeeded for file " + a10);
            }
            return z11 ? Uri.fromFile(a11).toString() : a10;
        }
        return null;
    }

    private long a(Context context) {
        boolean z10;
        long b10 = b();
        boolean z11 = b10 != -1;
        long seconds = TimeUnit.MILLISECONDS.toSeconds(System.currentTimeMillis());
        List c10 = this.f9787b.c(v4.G0);
        long j10 = 0;
        for (File file : c(context)) {
            if (!z11 || c10.contains(file.getName()) || c(file) || seconds - TimeUnit.MILLISECONDS.toSeconds(file.lastModified()) <= b10) {
                z10 = false;
            } else {
                if (o.a()) {
                    this.f9788c.a("FileManager", "File " + file.getName() + " has expired, removing...");
                }
                z10 = g(file);
            }
            if (!z10) {
                j10 += file.length();
            }
        }
        return j10;
    }

    private void a(long j10, Context context) {
        long intValue = ((Integer) this.f9787b.a(v4.C0)).intValue();
        if (intValue == -1) {
            if (o.a()) {
                this.f9788c.a("FileManager", "Cache has no maximum size set; skipping drop...");
            }
        } else if (a(j10) > intValue) {
            if (o.a()) {
                this.f9788c.a("FileManager", "Cache has exceeded maximum size; dropping...");
            }
            for (File file : c(context)) {
                g(file);
            }
        } else if (o.a()) {
            this.f9788c.a("FileManager", "Cache is present but under size limit; not dropping...");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(com.applovin.impl.sdk.ad.b bVar, Context context) {
        ArrayList<Uri> arrayList = new ArrayList(bVar.l());
        CollectionUtils.addObjectIfExists(bVar.v0(), arrayList);
        for (Uri uri : arrayList) {
            g(a(uri.getLastPathSegment(), context));
        }
    }

    public void a(File file, String str) {
        if (o.a()) {
            o oVar = this.f9788c;
            oVar.a("FileManager", "Removing file " + file.getName() + " for source " + str + ".");
        }
        try {
            if (file.delete()) {
                return;
            }
            HashMap<String, String> hashMap = CollectionUtils.hashMap(MBridgeConstans.DYNAMIC_VIEW_WX_PATH, file.getAbsolutePath());
            hashMap.put("details", b(file));
            this.f9787b.E().a(com.applovin.impl.c2.D0, str, hashMap);
        } catch (Throwable th2) {
            if (o.a()) {
                o oVar2 = this.f9788c;
                oVar2.a("FileManager", "Failed to remove file " + file.getName() + " from filesystem after failed operation.", th2);
            }
            this.f9787b.E().a("FileManager", str, th2);
        }
    }

    private long a(long j10) {
        return j10 / 1048576;
    }

    public boolean a(File file) {
        return (file == null || !file.exists() || file.isDirectory()) ? false : true;
    }
}
