package com.bytedance.adsdk.ZYk;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Typeface;
import android.util.Base64;
import android.util.JsonReader;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.bytedance.adsdk.ZYk.Pfn.cY;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
/* loaded from: classes3.dex */
public class so {
    private static final Map<String, PiB<cFZ>> oJ = new HashMap();
    private static final Set<Object> ZYk = new HashSet();
    private static final byte[] tB = {80, 75, 3, 4};

    public static PiB<cFZ> ZYk(Context context, String str) {
        return ZYk(context, str, "asset_".concat(String.valueOf(str)));
    }

    public static BTZ<cFZ> tB(Context context, String str) {
        return tB(context, str, "asset_".concat(String.valueOf(str)));
    }

    public static PiB<cFZ> ZYk(Context context, final String str, final String str2) {
        final Context applicationContext = context.getApplicationContext();
        return oJ(str2, new Callable<BTZ<cFZ>>() { // from class: com.bytedance.adsdk.ZYk.so.4
            @Override // java.util.concurrent.Callable
            /* renamed from: oJ */
            public BTZ<cFZ> call() throws Exception {
                return so.tB(applicationContext, str, str2);
            }
        });
    }

    public static PiB<cFZ> oJ(Context context, String str) {
        return oJ(context, str, "url_".concat(String.valueOf(str)));
    }

    public static BTZ<cFZ> tB(Context context, String str, String str2) {
        try {
            if (!str.endsWith(".zip") && !str.endsWith(".lottie")) {
                return ZYk(context.getAssets().open(str), str2);
            }
            return oJ(context, new ZipInputStream(context.getAssets().open(str)), str2);
        } catch (IOException e10) {
            return new BTZ<>(e10);
        }
    }

    public static PiB<cFZ> oJ(final Context context, final String str, final String str2) {
        return oJ(str2, new Callable<BTZ<cFZ>>() { // from class: com.bytedance.adsdk.ZYk.so.1
            @Override // java.util.concurrent.Callable
            /* renamed from: oJ */
            public BTZ<cFZ> call() throws Exception {
                BTZ<cFZ> oJ2 = Pfn.oJ(context).oJ(context, str, str2);
                if (str2 != null && oJ2.oJ() != null) {
                    com.bytedance.adsdk.ZYk.tB.Pfn.oJ().oJ(str2, oJ2.oJ());
                }
                return oJ2;
            }
        });
    }

    public static BTZ<cFZ> ZYk(Context context, int i10) {
        return ZYk(context, i10, tB(context, i10));
    }

    public static PiB<cFZ> oJ(Context context, int i10) {
        return oJ(context, i10, tB(context, i10));
    }

    public static BTZ<cFZ> ZYk(Context context, int i10, String str) {
        try {
            return ZYk(context.getResources().openRawResource(i10), tB(context, i10));
        } catch (Resources.NotFoundException e10) {
            return new BTZ<>(e10);
        }
    }

    public static PiB<cFZ> oJ(Context context, final int i10, final String str) {
        final WeakReference weakReference = new WeakReference(context);
        final Context applicationContext = context.getApplicationContext();
        return oJ(str, new Callable<BTZ<cFZ>>() { // from class: com.bytedance.adsdk.ZYk.so.5
            @Override // java.util.concurrent.Callable
            /* renamed from: oJ */
            public BTZ<cFZ> call() throws Exception {
                Context context2 = (Context) weakReference.get();
                if (context2 == null) {
                    context2 = applicationContext;
                }
                return so.ZYk(context2, i10, str);
            }
        });
    }

    private static String tB(Context context, int i10) {
        StringBuilder sb2 = new StringBuilder("rawRes");
        sb2.append(oJ(context) ? "_night_" : "_day_");
        sb2.append(i10);
        return sb2.toString();
    }

    public static BTZ<cFZ> ZYk(InputStream inputStream, String str) {
        return oJ(inputStream, str, true);
    }

    private static BTZ<cFZ> ZYk(Context context, ZipInputStream zipInputStream, String str) {
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        try {
            ZipEntry nextEntry = zipInputStream.getNextEntry();
            cFZ cfz = null;
            while (nextEntry != null) {
                String name = nextEntry.getName();
                if (name.contains("__MACOSX")) {
                    zipInputStream.closeEntry();
                } else if (nextEntry.getName().equalsIgnoreCase("manifest.json")) {
                    zipInputStream.closeEntry();
                } else if (nextEntry.getName().endsWith(".json")) {
                    cfz = oJ(new JsonReader(new InputStreamReader(zipInputStream)), (String) null, false).oJ();
                } else {
                    if (!name.endsWith(".png") && !name.endsWith(".webp") && !name.endsWith(".jpg") && !name.endsWith(".jpeg")) {
                        if (!name.endsWith(".ttf") && !name.endsWith(".otf")) {
                            zipInputStream.closeEntry();
                        }
                        if (name.contains("../")) {
                            zipInputStream.closeEntry();
                            nextEntry = zipInputStream.getNextEntry();
                        } else {
                            String[] split = name.split(DomExceptionUtils.SEPARATOR);
                            String str2 = split[split.length - 1];
                            String str3 = str2.split("\\.")[0];
                            File file = new File(context.getCacheDir(), str2);
                            new FileOutputStream(file);
                            try {
                                FileOutputStream fileOutputStream = new FileOutputStream(file);
                                byte[] bArr = new byte[4096];
                                while (true) {
                                    int read = zipInputStream.read(bArr);
                                    if (read == -1) {
                                        break;
                                    }
                                    fileOutputStream.write(bArr, 0, read);
                                }
                                fileOutputStream.flush();
                                fileOutputStream.close();
                            } catch (Throwable unused) {
                            }
                            Typeface createFromFile = Typeface.createFromFile(file);
                            if (!file.delete()) {
                                file.getAbsolutePath();
                            }
                            hashMap2.put(str3, createFromFile);
                        }
                    }
                    if (name.contains("../")) {
                        zipInputStream.closeEntry();
                        nextEntry = zipInputStream.getNextEntry();
                    } else {
                        String[] split2 = name.split(DomExceptionUtils.SEPARATOR);
                        hashMap.put(split2[split2.length - 1], BitmapFactory.decodeStream(zipInputStream));
                    }
                }
                nextEntry = zipInputStream.getNextEntry();
            }
            if (cfz == null) {
                return new BTZ<>(new IllegalArgumentException("Unable to parse composition"));
            }
            for (Map.Entry entry : hashMap.entrySet()) {
                kkU oJ2 = oJ(cfz, (String) entry.getKey());
                if (oJ2 != null) {
                    oJ2.oJ(com.bytedance.adsdk.ZYk.ba.ba.oJ((Bitmap) entry.getValue(), oJ2.oJ(), oJ2.ZYk()));
                }
            }
            for (Map.Entry entry2 : hashMap2.entrySet()) {
                boolean z10 = false;
                for (com.bytedance.adsdk.ZYk.tB.tB tBVar : cfz.awB().values()) {
                    if (tBVar.oJ().equals(entry2.getKey())) {
                        tBVar.oJ((Typeface) entry2.getValue());
                        z10 = true;
                    }
                }
                if (!z10) {
                    String str4 = (String) entry2.getKey();
                }
            }
            if (hashMap.isEmpty()) {
                for (Map.Entry<String, kkU> entry3 : cfz.eZI().entrySet()) {
                    kkU value = entry3.getValue();
                    if (value == null) {
                        return null;
                    }
                    String jFA = value.jFA();
                    BitmapFactory.Options options = new BitmapFactory.Options();
                    options.inScaled = true;
                    options.inDensity = 160;
                    if (jFA.startsWith("data:") && jFA.indexOf("base64,") > 0) {
                        try {
                            byte[] decode = Base64.decode(jFA.substring(jFA.indexOf(44) + 1), 0);
                            value.oJ(BitmapFactory.decodeByteArray(decode, 0, decode.length, options));
                        } catch (IllegalArgumentException unused2) {
                            return null;
                        }
                    }
                }
            }
            for (Map.Entry<String, kkU> entry4 : cfz.eZI().entrySet()) {
                if (entry4.getValue().dLZ() == null) {
                    return new BTZ<>(new IllegalStateException("There is no image for " + entry4.getValue().jFA()));
                }
            }
            if (str != null) {
                com.bytedance.adsdk.ZYk.tB.Pfn.oJ().oJ(str, cfz);
            }
            return new BTZ<>(cfz);
        } catch (IOException e10) {
            return new BTZ<>(e10);
        }
    }

    private static boolean oJ(Context context) {
        return (context.getResources().getConfiguration().uiMode & 48) == 32;
    }

    public static PiB<cFZ> oJ(final InputStream inputStream, final String str) {
        return oJ(str, new Callable<BTZ<cFZ>>() { // from class: com.bytedance.adsdk.ZYk.so.6
            @Override // java.util.concurrent.Callable
            /* renamed from: oJ */
            public BTZ<cFZ> call() throws Exception {
                return so.ZYk(inputStream, str);
            }
        });
    }

    private static BTZ<cFZ> oJ(InputStream inputStream, String str, boolean z10) {
        try {
            return oJ(new JsonReader(new InputStreamReader(inputStream)), str);
        } finally {
            if (z10) {
                com.bytedance.adsdk.ZYk.ba.ba.oJ(inputStream);
            }
        }
    }

    public static BTZ<cFZ> oJ(JsonReader jsonReader, String str) {
        return oJ(jsonReader, str, true);
    }

    private static BTZ<cFZ> oJ(JsonReader jsonReader, String str, boolean z10) {
        try {
            try {
                cFZ oJ2 = cY.oJ(jsonReader);
                com.bytedance.adsdk.ZYk.tB.Pfn.oJ().oJ(str, oJ2);
                BTZ<cFZ> btz = new BTZ<>(oJ2);
                if (z10) {
                    oJ(jsonReader);
                }
                return btz;
            } catch (Exception e10) {
                BTZ<cFZ> btz2 = new BTZ<>(e10);
                if (z10) {
                    oJ(jsonReader);
                }
                return btz2;
            }
        } catch (Throwable th2) {
            if (z10) {
                oJ(jsonReader);
            }
            throw th2;
        }
    }

    public static void oJ(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e10) {
                throw e10;
            } catch (Exception unused) {
            }
        }
    }

    public static BTZ<cFZ> oJ(Context context, ZipInputStream zipInputStream, String str) {
        try {
            return ZYk(context, zipInputStream, str);
        } finally {
            com.bytedance.adsdk.ZYk.ba.ba.oJ(zipInputStream);
        }
    }

    private static kkU oJ(cFZ cfz, String str) {
        for (kkU kku : cfz.eZI().values()) {
            if (kku.jFA().equals(str)) {
                return kku;
            }
        }
        return null;
    }

    private static PiB<cFZ> oJ(final String str, Callable<BTZ<cFZ>> callable) {
        final cFZ oJ2 = str == null ? null : com.bytedance.adsdk.ZYk.tB.Pfn.oJ().oJ(str);
        if (oJ2 != null) {
            return new PiB<>(new Callable<BTZ<cFZ>>() { // from class: com.bytedance.adsdk.ZYk.so.7
                @Override // java.util.concurrent.Callable
                /* renamed from: oJ */
                public BTZ<cFZ> call() throws Exception {
                    return new BTZ<>(cFZ.this);
                }
            });
        }
        if (str != null) {
            Map<String, PiB<cFZ>> map = oJ;
            if (map.containsKey(str)) {
                return map.get(str);
            }
        }
        PiB<cFZ> piB = new PiB<>(callable);
        if (str != null) {
            final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
            piB.oJ(new dLZ<cFZ>() { // from class: com.bytedance.adsdk.ZYk.so.2
                @Override // com.bytedance.adsdk.ZYk.dLZ
                public void oJ(cFZ cfz) {
                    so.oJ.remove(str);
                    atomicBoolean.set(true);
                    if (so.oJ.size() == 0) {
                        so.ZYk(true);
                    }
                }
            });
            piB.tB(new dLZ<Throwable>() { // from class: com.bytedance.adsdk.ZYk.so.3
                @Override // com.bytedance.adsdk.ZYk.dLZ
                public void oJ(Throwable th2) {
                    so.oJ.remove(str);
                    atomicBoolean.set(true);
                    if (so.oJ.size() == 0) {
                        so.ZYk(true);
                    }
                }
            });
            if (!atomicBoolean.get()) {
                Map<String, PiB<cFZ>> map2 = oJ;
                map2.put(str, piB);
                if (map2.size() == 1) {
                    ZYk(false);
                }
            }
        }
        return piB;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void ZYk(boolean z10) {
        ArrayList arrayList = new ArrayList(ZYk);
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            arrayList.get(i10);
        }
    }
}
