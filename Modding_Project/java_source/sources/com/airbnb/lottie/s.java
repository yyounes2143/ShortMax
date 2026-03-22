package com.airbnb.lottie;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Typeface;
import android.util.Base64;
import androidx.annotation.Nullable;
import androidx.annotation.RawRes;
import androidx.annotation.WorkerThread;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.zip.GZIPInputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import okio.BufferedSource;
import okio.Okio;
import okio.Source;
/* compiled from: LottieCompositionFactory.java */
/* loaded from: classes2.dex */
public class s {

    /* renamed from: a  reason: collision with root package name */
    private static final Map<String, t0<i>> f4728a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private static final Set<u0> f4729b = new HashSet();

    /* renamed from: c  reason: collision with root package name */
    private static final byte[] f4730c = {80, 75, 3, 4};

    /* renamed from: d  reason: collision with root package name */
    private static final byte[] f4731d = {31, -117, 8};

    @WorkerThread
    public static r0<i> A(Context context, @RawRes int i10, @Nullable String str) {
        i a10;
        if (str == null) {
            a10 = null;
        } else {
            a10 = x0.f.b().a(str);
        }
        if (a10 != null) {
            return new r0<>(a10);
        }
        try {
            BufferedSource buffer = Okio.buffer(Okio.source(context.getResources().openRawResource(i10)));
            if (K(buffer).booleanValue()) {
                return F(context, new ZipInputStream(buffer.inputStream()), str);
            }
            if (I(buffer).booleanValue()) {
                try {
                    return r(new GZIPInputStream(buffer.inputStream()), str);
                } catch (IOException e10) {
                    return new r0<>(e10);
                }
            }
            return t(JsonReader.u(buffer), str);
        } catch (Resources.NotFoundException e11) {
            return new r0<>(e11);
        }
    }

    public static t0<i> B(Context context, String str) {
        return C(context, str, "url_" + str);
    }

    public static t0<i> C(final Context context, final String str, @Nullable final String str2) {
        return j(str2, new Callable() { // from class: com.airbnb.lottie.j
            @Override // java.util.concurrent.Callable
            public final Object call() {
                r0 R;
                R = s.R(context, str, str2);
                return R;
            }
        }, null);
    }

    public static t0<i> D(final Context context, final ZipInputStream zipInputStream, @Nullable final String str) {
        return j(str, new Callable() { // from class: com.airbnb.lottie.m
            @Override // java.util.concurrent.Callable
            public final Object call() {
                r0 F;
                F = s.F(context, zipInputStream, str);
                return F;
            }
        }, new Runnable() { // from class: com.airbnb.lottie.n
            @Override // java.lang.Runnable
            public final void run() {
                d1.p.c(zipInputStream);
            }
        });
    }

    public static t0<i> E(ZipInputStream zipInputStream, @Nullable String str) {
        return D(null, zipInputStream, str);
    }

    @WorkerThread
    public static r0<i> F(@Nullable Context context, ZipInputStream zipInputStream, @Nullable String str) {
        return G(context, zipInputStream, str, true);
    }

    @WorkerThread
    public static r0<i> G(@Nullable Context context, ZipInputStream zipInputStream, @Nullable String str, boolean z10) {
        try {
            return H(context, zipInputStream, str);
        } finally {
            if (z10) {
                d1.p.c(zipInputStream);
            }
        }
    }

    @WorkerThread
    private static r0<i> H(@Nullable Context context, ZipInputStream zipInputStream, @Nullable String str) {
        i a10;
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        if (str == null) {
            a10 = null;
        } else {
            try {
                a10 = x0.f.b().a(str);
            } catch (IOException e10) {
                return new r0<>(e10);
            }
        }
        if (a10 != null) {
            return new r0<>(a10);
        }
        ZipEntry nextEntry = zipInputStream.getNextEntry();
        i iVar = null;
        while (nextEntry != null) {
            String name = nextEntry.getName();
            if (name.contains("__MACOSX")) {
                zipInputStream.closeEntry();
            } else if (nextEntry.getName().equalsIgnoreCase("manifest.json")) {
                zipInputStream.closeEntry();
            } else if (nextEntry.getName().contains(".json")) {
                iVar = v(JsonReader.u(Okio.buffer(Okio.source(zipInputStream))), null, false).b();
            } else {
                if (!name.contains(".png") && !name.contains(".webp") && !name.contains(".jpg") && !name.contains(".jpeg")) {
                    if (!name.contains(".ttf") && !name.contains(".otf")) {
                        zipInputStream.closeEntry();
                    }
                    String[] split = name.split(DomExceptionUtils.SEPARATOR);
                    String str2 = split[split.length - 1];
                    String str3 = str2.split("\\.")[0];
                    if (context == null) {
                        return new r0<>(new IllegalStateException("Unable to extract font " + str3 + " please pass a non-null Context parameter"));
                    }
                    File file = new File(context.getCacheDir(), str2);
                    FileOutputStream fileOutputStream = new FileOutputStream(file);
                    try {
                        FileOutputStream fileOutputStream2 = new FileOutputStream(file);
                        byte[] bArr = new byte[4096];
                        while (true) {
                            int read = zipInputStream.read(bArr);
                            if (read == -1) {
                                break;
                            }
                            fileOutputStream2.write(bArr, 0, read);
                        }
                        fileOutputStream2.flush();
                        fileOutputStream2.close();
                        fileOutputStream.close();
                        Typeface createFromFile = Typeface.createFromFile(file);
                        if (!file.delete()) {
                            d1.f.c("Failed to delete temp font file " + file.getAbsolutePath() + ".");
                        }
                        hashMap2.put(str3, createFromFile);
                    } catch (Throwable th2) {
                        try {
                            fileOutputStream.close();
                        } catch (Throwable th3) {
                            th2.addSuppressed(th3);
                        }
                        throw th2;
                    }
                }
                String[] split2 = name.split(DomExceptionUtils.SEPARATOR);
                hashMap.put(split2[split2.length - 1], BitmapFactory.decodeStream(zipInputStream));
            }
            nextEntry = zipInputStream.getNextEntry();
        }
        if (iVar == null) {
            return new r0<>(new IllegalArgumentException("Unable to parse composition"));
        }
        for (Map.Entry entry : hashMap.entrySet()) {
            m0 k10 = k(iVar, (String) entry.getKey());
            if (k10 != null) {
                k10.g(d1.p.m((Bitmap) entry.getValue(), k10.f(), k10.d()));
            }
        }
        for (Map.Entry entry2 : hashMap2.entrySet()) {
            boolean z10 = false;
            for (x0.b bVar : iVar.g().values()) {
                if (bVar.a().equals(entry2.getKey())) {
                    bVar.e((Typeface) entry2.getValue());
                    z10 = true;
                }
            }
            if (!z10) {
                d1.f.c("Parsed font for " + ((String) entry2.getKey()) + " however it was not found in the animation.");
            }
        }
        if (hashMap.isEmpty()) {
            for (Map.Entry<String, m0> entry3 : iVar.j().entrySet()) {
                m0 value = entry3.getValue();
                if (value == null) {
                    return null;
                }
                String c10 = value.c();
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inScaled = true;
                options.inDensity = 160;
                if (c10.startsWith("data:") && c10.indexOf("base64,") > 0) {
                    try {
                        byte[] decode = Base64.decode(c10.substring(c10.indexOf(44) + 1), 0);
                        Bitmap decodeByteArray = BitmapFactory.decodeByteArray(decode, 0, decode.length, options);
                        if (decodeByteArray != null) {
                            value.g(d1.p.m(decodeByteArray, value.f(), value.d()));
                        }
                    } catch (IllegalArgumentException e11) {
                        d1.f.d("data URL did not have correct base64 format.", e11);
                        return null;
                    }
                }
            }
        }
        if (str != null) {
            x0.f.b().c(str, iVar);
        }
        return new r0<>(iVar);
    }

    private static Boolean I(BufferedSource bufferedSource) {
        return U(bufferedSource, f4731d);
    }

    private static boolean J(Context context) {
        if ((context.getResources().getConfiguration().uiMode & 48) == 32) {
            return true;
        }
        return false;
    }

    private static Boolean K(BufferedSource bufferedSource) {
        return U(bufferedSource, f4730c);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void L(String str, AtomicBoolean atomicBoolean, i iVar) {
        Map<String, t0<i>> map = f4728a;
        map.remove(str);
        atomicBoolean.set(true);
        if (map.size() == 0) {
            V(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void M(String str, AtomicBoolean atomicBoolean, Throwable th2) {
        Map<String, t0<i>> map = f4728a;
        map.remove(str);
        atomicBoolean.set(true);
        if (map.size() == 0) {
            V(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ r0 Q(WeakReference weakReference, Context context, int i10, String str) throws Exception {
        Context context2 = (Context) weakReference.get();
        if (context2 != null) {
            context = context2;
        }
        return A(context, i10, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ r0 R(Context context, String str, String str2) throws Exception {
        r0<i> c10 = d.k(context).c(context, str, str2);
        if (str2 != null && c10.b() != null) {
            x0.f.b().c(str2, c10.b());
        }
        return c10;
    }

    private static Boolean U(BufferedSource bufferedSource, byte[] bArr) {
        try {
            BufferedSource peek = bufferedSource.peek();
            for (byte b10 : bArr) {
                if (peek.readByte() != b10) {
                    return Boolean.FALSE;
                }
            }
            peek.close();
            return Boolean.TRUE;
        } catch (Exception e10) {
            d1.f.b("Failed to check zip file header", e10);
            return Boolean.FALSE;
        } catch (NoSuchMethodError unused) {
            return Boolean.FALSE;
        }
    }

    private static void V(boolean z10) {
        ArrayList arrayList = new ArrayList(f4729b);
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            ((u0) arrayList.get(i10)).a(z10);
        }
    }

    private static String W(Context context, @RawRes int i10) {
        String str;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("rawRes");
        if (J(context)) {
            str = "_night_";
        } else {
            str = "_day_";
        }
        sb2.append(str);
        sb2.append(i10);
        return sb2.toString();
    }

    private static t0<i> j(@Nullable final String str, Callable<r0<i>> callable, @Nullable Runnable runnable) {
        i a10;
        t0<i> t0Var = null;
        if (str == null) {
            a10 = null;
        } else {
            a10 = x0.f.b().a(str);
        }
        if (a10 != null) {
            t0Var = new t0<>(a10);
        }
        if (str != null) {
            Map<String, t0<i>> map = f4728a;
            if (map.containsKey(str)) {
                t0Var = map.get(str);
            }
        }
        if (t0Var != null) {
            if (runnable != null) {
                runnable.run();
            }
            return t0Var;
        }
        t0<i> t0Var2 = new t0<>(callable);
        if (str != null) {
            final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
            t0Var2.d(new n0() { // from class: com.airbnb.lottie.p
                @Override // com.airbnb.lottie.n0
                public final void onResult(Object obj) {
                    s.L(str, atomicBoolean, (i) obj);
                }
            });
            t0Var2.c(new n0() { // from class: com.airbnb.lottie.q
                @Override // com.airbnb.lottie.n0
                public final void onResult(Object obj) {
                    s.M(str, atomicBoolean, (Throwable) obj);
                }
            });
            if (!atomicBoolean.get()) {
                Map<String, t0<i>> map2 = f4728a;
                map2.put(str, t0Var2);
                if (map2.size() == 1) {
                    V(false);
                }
            }
        }
        return t0Var2;
    }

    @Nullable
    private static m0 k(i iVar, String str) {
        for (m0 m0Var : iVar.j().values()) {
            if (m0Var.c().equals(str)) {
                return m0Var;
            }
        }
        return null;
    }

    public static t0<i> l(Context context, String str) {
        return m(context, str, "asset_" + str);
    }

    public static t0<i> m(Context context, final String str, @Nullable final String str2) {
        final Context applicationContext = context.getApplicationContext();
        return j(str2, new Callable() { // from class: com.airbnb.lottie.o
            @Override // java.util.concurrent.Callable
            public final Object call() {
                r0 o10;
                o10 = s.o(applicationContext, str, str2);
                return o10;
            }
        }, null);
    }

    @WorkerThread
    public static r0<i> n(Context context, String str) {
        return o(context, str, "asset_" + str);
    }

    @WorkerThread
    public static r0<i> o(Context context, String str, @Nullable String str2) {
        i a10;
        if (str2 == null) {
            a10 = null;
        } else {
            a10 = x0.f.b().a(str2);
        }
        if (a10 != null) {
            return new r0<>(a10);
        }
        try {
            return p(context, context.getAssets().open(str), str2);
        } catch (IOException e10) {
            return new r0<>(e10);
        }
    }

    @WorkerThread
    public static r0<i> p(@Nullable Context context, InputStream inputStream, @Nullable String str) {
        i a10;
        if (str == null) {
            a10 = null;
        } else {
            a10 = x0.f.b().a(str);
        }
        if (a10 != null) {
            return new r0<>(a10);
        }
        try {
            BufferedSource buffer = Okio.buffer(Okio.source(inputStream));
            if (K(buffer).booleanValue()) {
                return F(context, new ZipInputStream(buffer.inputStream()), str);
            }
            if (I(buffer).booleanValue()) {
                return r(new GZIPInputStream(buffer.inputStream()), str);
            }
            return t(JsonReader.u(buffer), str);
        } catch (IOException e10) {
            return new r0<>(e10);
        }
    }

    public static t0<i> q(final InputStream inputStream, @Nullable final String str) {
        return j(str, new Callable() { // from class: com.airbnb.lottie.k
            @Override // java.util.concurrent.Callable
            public final Object call() {
                r0 r10;
                r10 = s.r(inputStream, str);
                return r10;
            }
        }, new Runnable() { // from class: com.airbnb.lottie.l
            @Override // java.lang.Runnable
            public final void run() {
                d1.p.c(inputStream);
            }
        });
    }

    @WorkerThread
    public static r0<i> r(InputStream inputStream, @Nullable String str) {
        return s(inputStream, str, true);
    }

    @WorkerThread
    public static r0<i> s(InputStream inputStream, @Nullable String str, boolean z10) {
        return w(Okio.source(inputStream), str, z10);
    }

    @WorkerThread
    public static r0<i> t(JsonReader jsonReader, @Nullable String str) {
        return u(jsonReader, str, true);
    }

    @WorkerThread
    public static r0<i> u(JsonReader jsonReader, @Nullable String str, boolean z10) {
        return v(jsonReader, str, z10);
    }

    private static r0<i> v(JsonReader jsonReader, @Nullable String str, boolean z10) {
        i a10;
        try {
            if (str == null) {
                a10 = null;
            } else {
                try {
                    a10 = x0.f.b().a(str);
                } catch (Exception e10) {
                    r0<i> r0Var = new r0<>(e10);
                    if (z10) {
                        d1.p.c(jsonReader);
                    }
                    return r0Var;
                }
            }
            if (a10 != null) {
                r0<i> r0Var2 = new r0<>(a10);
                if (z10) {
                    d1.p.c(jsonReader);
                }
                return r0Var2;
            }
            i a11 = c1.w.a(jsonReader);
            if (str != null) {
                x0.f.b().c(str, a11);
            }
            r0<i> r0Var3 = new r0<>(a11);
            if (z10) {
                d1.p.c(jsonReader);
            }
            return r0Var3;
        } catch (Throwable th2) {
            if (z10) {
                d1.p.c(jsonReader);
            }
            throw th2;
        }
    }

    @WorkerThread
    public static r0<i> w(Source source, @Nullable String str, boolean z10) {
        return v(JsonReader.u(Okio.buffer(source)), str, z10);
    }

    public static t0<i> x(Context context, @RawRes int i10) {
        return y(context, i10, W(context, i10));
    }

    public static t0<i> y(Context context, @RawRes final int i10, @Nullable final String str) {
        final WeakReference weakReference = new WeakReference(context);
        final Context applicationContext = context.getApplicationContext();
        return j(str, new Callable() { // from class: com.airbnb.lottie.r
            @Override // java.util.concurrent.Callable
            public final Object call() {
                r0 Q;
                Q = s.Q(weakReference, applicationContext, i10, str);
                return Q;
            }
        }, null);
    }

    @WorkerThread
    public static r0<i> z(Context context, @RawRes int i10) {
        return A(context, i10, W(context, i10));
    }
}
