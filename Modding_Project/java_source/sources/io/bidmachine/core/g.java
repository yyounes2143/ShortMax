package io.bidmachine.core;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Point;
import android.graphics.Rect;
import android.location.Location;
import android.media.MediaMetadataRetriever;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Environment;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Process;
import android.security.NetworkSecurityPolicy;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.inmobi.commons.core.configs.AdConfig;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import fr.k;
import io.bidmachine.Executable;
import io.bidmachine.Function;
import io.bidmachine.SimpleContextProvider;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.Flushable;
import java.io.InputStream;
import java.math.BigInteger;
import java.net.URL;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Calendar;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
import yq.r;
import yq.t;
/* compiled from: Utils.java */
/* loaded from: classes7.dex */
public class g {
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private static final Handler f54414b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private static final hr.a<Integer> f54415c;

    /* renamed from: f  reason: collision with root package name */
    private static String f54418f;

    /* renamed from: g  reason: collision with root package name */
    private static String f54419g;
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private static final Handler f54413a = new Handler(Looper.getMainLooper());
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    private static final char[] f54416d = "0123456789abcdef".toCharArray();
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    private static final char[] f54417e = "0123456789ABCDEF".toCharArray();

    static {
        HandlerThread handlerThread = new HandlerThread("BackgroundHandlerThread");
        handlerThread.start();
        f54414b = new Handler(handlerThread.getLooper());
        f54415c = new hr.a<>(new hr.b() { // from class: io.bidmachine.core.f
            @Override // hr.b
            public final Object get() {
                Integer W;
                W = g.W();
                return W;
            }
        });
    }

    public static float A(float f10, float f11, float f12) {
        if (f10 == f11) {
            return f12;
        }
        return f10;
    }

    public static long B(long j10, long j11, long j12) {
        if (j10 == j11) {
            return j12;
        }
        return j10;
    }

    public static float C(@NonNull Context context) {
        return fr.c.d(context).density;
    }

    @NonNull
    public static Point D(@NonNull Context context) {
        DisplayMetrics d10 = fr.c.d(context);
        return new Point(d10.widthPixels, d10.heightPixels);
    }

    public static int E() {
        return (int) TimeUnit.MILLISECONDS.toMinutes(TimeZone.getDefault().getOffset(System.currentTimeMillis()));
    }

    @NonNull
    public static Rect F(@NonNull View view) {
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        return new Rect(iArr[0], iArr[1], view.getWidth() + iArr[0], view.getHeight() + iArr[1]);
    }

    public static void G(@Nullable String str, @NonNull Executable<String> executable) {
        if (!TextUtils.isEmpty(str)) {
            executable.execute(str);
        }
    }

    public static <T> void H(@Nullable T t10, @NonNull Executable<T> executable) {
        if (t10 != null) {
            executable.execute(t10);
        }
    }

    public static boolean I(@Nullable Collection<?> collection) {
        if (collection != null && !collection.isEmpty()) {
            return false;
        }
        return true;
    }

    public static boolean J() {
        return Environment.getExternalStorageState().equals("mounted");
    }

    public static boolean K(@NonNull String str) {
        if (!str.startsWith("http://") && !str.startsWith("https://")) {
            return false;
        }
        return true;
    }

    @SuppressLint({"MissingPermission"})
    public static boolean L(@NonNull Context context) {
        NetworkInfo s10 = s(context);
        if (s10 != null && s10.isConnected()) {
            return true;
        }
        return false;
    }

    public static boolean M(@NonNull Context context, @Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            if (context.checkPermission(str, Process.myPid(), Process.myUid()) != 0) {
                return false;
            }
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean N() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            return true;
        }
        return false;
    }

    public static boolean O(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            new URL(str);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean P(@NonNull View view) {
        if (view.getAlpha() == 0.0f) {
            return true;
        }
        return false;
    }

    public static boolean Q(int i10) {
        if (i10 >= 1900 && i10 <= f54415c.get().intValue()) {
            return true;
        }
        return false;
    }

    @Nullable
    public static <T> String R(@Nullable List<T> list) {
        return S(list, ", ");
    }

    @Nullable
    public static <T> String S(@Nullable List<T> list, @NonNull CharSequence charSequence) {
        return T(list, charSequence, new Function() { // from class: io.bidmachine.core.d
            @Override // io.bidmachine.Function
            public final Object apply(Object obj) {
                return obj.toString();
            }
        });
    }

    @Nullable
    public static <T> String T(@Nullable List<T> list, @NonNull CharSequence charSequence, @NonNull Function<T, String> function) {
        String apply;
        if (I(list)) {
            return null;
        }
        try {
            StringBuilder sb2 = new StringBuilder(list.size());
            for (T t10 : list) {
                if (t10 != null && (apply = function.apply(t10)) != null) {
                    if (sb2.length() > 0) {
                        sb2.append(charSequence);
                    }
                    sb2.append(apply);
                }
            }
            return sb2.toString();
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String U() {
        return String.format("Manifest permission not found: %s. Check the integration.", "android.permission.ACCESS_NETWORK_STATE");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0063 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v5, types: [java.net.HttpURLConnection, java.net.URLConnection] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void V(java.lang.String r3) {
        /*
            r0 = 0
            java.net.URL r1 = new java.net.URL     // Catch: java.lang.Throwable -> L48 java.lang.Exception -> L4d
            r1.<init>(r3)     // Catch: java.lang.Throwable -> L48 java.lang.Exception -> L4d
            java.net.URLConnection r3 = r1.openConnection()     // Catch: java.lang.Throwable -> L48 java.lang.Exception -> L4d
            java.net.HttpURLConnection r3 = (java.net.HttpURLConnection) r3     // Catch: java.lang.Throwable -> L48 java.lang.Exception -> L4d
            r0 = 1
            r3.setInstanceFollowRedirects(r0)     // Catch: java.lang.Throwable -> L31 java.lang.Exception -> L33
            r0 = 5000(0x1388, float:7.006E-42)
            r3.setConnectTimeout(r0)     // Catch: java.lang.Throwable -> L31 java.lang.Exception -> L33
            java.lang.String r0 = "Connection"
            java.lang.String r1 = "close"
            r3.setRequestProperty(r0, r1)     // Catch: java.lang.Throwable -> L31 java.lang.Exception -> L33
            java.lang.String r0 = "GET"
            r3.setRequestMethod(r0)     // Catch: java.lang.Throwable -> L31 java.lang.Exception -> L33
            java.lang.String r0 = io.bidmachine.UserAgentManager.getUserAgent()     // Catch: java.lang.Throwable -> L31 java.lang.Exception -> L33
            boolean r1 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Throwable -> L31 java.lang.Exception -> L33
            if (r1 != 0) goto L35
            java.lang.String r1 = "User-Agent"
            r3.setRequestProperty(r1, r0)     // Catch: java.lang.Throwable -> L31 java.lang.Exception -> L33
            goto L35
        L31:
            r0 = move-exception
            goto L61
        L33:
            r0 = move-exception
            goto L51
        L35:
            r3.getResponseCode()     // Catch: java.lang.Throwable -> L31 java.lang.Exception -> L33
            java.io.InputStream r0 = r3.getInputStream()     // Catch: java.lang.Exception -> L40
            j(r0)     // Catch: java.lang.Exception -> L40
            goto L44
        L40:
            r0 = move-exception
        L41:
            io.bidmachine.core.a.m(r0)
        L44:
            br.a.a(r3)
            goto L60
        L48:
            r3 = move-exception
            r2 = r0
            r0 = r3
            r3 = r2
            goto L61
        L4d:
            r3 = move-exception
            r2 = r0
            r0 = r3
            r3 = r2
        L51:
            io.bidmachine.core.a.m(r0)     // Catch: java.lang.Throwable -> L31
            if (r3 == 0) goto L44
            java.io.InputStream r0 = r3.getInputStream()     // Catch: java.lang.Exception -> L5e
            j(r0)     // Catch: java.lang.Exception -> L5e
            goto L44
        L5e:
            r0 = move-exception
            goto L41
        L60:
            return
        L61:
            if (r3 == 0) goto L6f
            java.io.InputStream r1 = r3.getInputStream()     // Catch: java.lang.Exception -> L6b
            j(r1)     // Catch: java.lang.Exception -> L6b
            goto L6f
        L6b:
            r1 = move-exception
            io.bidmachine.core.a.m(r1)
        L6f:
            br.a.a(r3)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.core.g.V(java.lang.String):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Integer W() {
        return Integer.valueOf(l0().get(1));
    }

    public static void X(@NonNull Runnable runnable) {
        Looper myLooper = Looper.myLooper();
        Handler handler = f54414b;
        if (myLooper == handler.getLooper()) {
            runnable.run();
        } else {
            handler.post(runnable);
        }
    }

    public static void Y(@NonNull Runnable runnable, long j10) {
        f54414b.postDelayed(runnable, j10);
    }

    public static void Z(@NonNull Runnable runnable) {
        if (N()) {
            runnable.run();
        } else {
            f54413a.post(runnable);
        }
    }

    public static void a0(@NonNull Runnable runnable, long j10) {
        f54413a.postDelayed(runnable, j10);
    }

    @Nullable
    public static <T> T b0(@Nullable T t10, @Nullable T t11) {
        return (T) c0(t10, t11, null);
    }

    @Nullable
    public static <T> T c0(@Nullable T t10, @Nullable T t11, @Nullable T t12) {
        if (t10 == null) {
            if (t11 != null) {
                return t11;
            }
            return t12;
        }
        return t10;
    }

    public static boolean d(@Nullable Activity activity) {
        if (activity != null && activity.getWindow() != null && activity.getWindow().isActive() && activity.getWindow().getDecorView().getWindowToken() != null) {
            return true;
        }
        return false;
    }

    @Nullable
    public static Float d0(@Nullable String str, @Nullable Float f10) {
        if (!TextUtils.isEmpty(str)) {
            try {
                return Float.valueOf(Float.parseFloat(str));
            } catch (Throwable unused) {
            }
        }
        return f10;
    }

    public static boolean e() {
        return NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted();
    }

    @Nullable
    @SuppressLint({"RtlHardcoded"})
    public static Integer e0(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1364013995:
                if (str.equals(TtmlNode.CENTER)) {
                    c10 = 0;
                    break;
                }
                break;
            case 3317767:
                if (str.equals(TtmlNode.LEFT)) {
                    c10 = 1;
                    break;
                }
                break;
            case 108511772:
                if (str.equals(TtmlNode.RIGHT)) {
                    c10 = 2;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return 1;
            case 1:
                return 3;
            case 2:
                return 5;
            default:
                return null;
        }
    }

    public static boolean f() {
        return J();
    }

    public static int f0(@Nullable String str, int i10) {
        if (!TextUtils.isEmpty(str)) {
            try {
                return Integer.parseInt(str);
            } catch (Throwable unused) {
            }
        }
        return i10;
    }

    public static void g(@NonNull Runnable runnable) {
        f54414b.removeCallbacks(runnable);
    }

    @Nullable
    public static Integer g0(@Nullable String str, @Nullable Integer num) {
        if (!TextUtils.isEmpty(str)) {
            try {
                return Integer.valueOf(Integer.parseInt(str));
            } catch (Throwable unused) {
            }
        }
        return num;
    }

    public static void h(@NonNull Runnable runnable) {
        f54413a.removeCallbacks(runnable);
    }

    @Nullable
    public static Integer h0(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1383228885:
                if (str.equals("bottom")) {
                    c10 = 0;
                    break;
                }
                break;
            case -1364013995:
                if (str.equals(TtmlNode.CENTER)) {
                    c10 = 1;
                    break;
                }
                break;
            case 115029:
                if (str.equals("top")) {
                    c10 = 2;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return 80;
            case 1:
                return 16;
            case 2:
                return 48;
            default:
                return null;
        }
    }

    @NonNull
    public static String i(@Nullable String str, @NonNull String str2) {
        if (TextUtils.isEmpty(str)) {
            return str2;
        }
        return str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <K, V> void i0(@Nullable Map<K, V> map, @Nullable Map<K, V> map2) {
        if (map != null && map2 != 0) {
            map.putAll(map2);
        }
    }

    public static void j(@Nullable Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Exception e10) {
                a.m(e10);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.io.Closeable, java.io.Flushable] */
    @Nullable
    public static String j0(@NonNull Context context, @NonNull Uri uri, @NonNull String str) {
        FileOutputStream fileOutputStream;
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        mediaMetadataRetriever.setDataSource(context, uri);
        String extractMetadata = mediaMetadataRetriever.extractMetadata(9);
        ?? r22 = 0;
        if (extractMetadata == null) {
            return null;
        }
        Bitmap frameAtTime = mediaMetadataRetriever.getFrameAtTime(Long.parseLong(extractMetadata), 2);
        try {
            if (frameAtTime != null) {
                try {
                    File file = new File(w(context, str), q(uri.toString()));
                    fileOutputStream = new FileOutputStream(file);
                    try {
                        frameAtTime.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
                        String absolutePath = file.getAbsolutePath();
                        p(fileOutputStream);
                        j(fileOutputStream);
                        return absolutePath;
                    } catch (Exception e10) {
                        e = e10;
                        a.m(e);
                        p(fileOutputStream);
                        j(fileOutputStream);
                        return null;
                    }
                } catch (Exception e11) {
                    e = e11;
                    fileOutputStream = null;
                } catch (Throwable th2) {
                    th = th2;
                    p(r22);
                    j(r22);
                    throw th;
                }
            }
            return null;
        } catch (Throwable th3) {
            th = th3;
            r22 = context;
        }
    }

    @Nullable
    public static Float k(@Nullable Object obj, @Nullable Float f10) {
        if (obj == null) {
            return f10;
        }
        if (obj instanceof Number) {
            return Float.valueOf(((Number) obj).floatValue());
        }
        return d0(obj.toString(), f10);
    }

    public static void k0(@NonNull k kVar) {
        try {
            kVar.run();
        } catch (Throwable unused) {
        }
    }

    @Nullable
    public static Integer l(@Nullable Object obj, @Nullable Integer num) {
        if (obj == null) {
            return num;
        }
        if (obj instanceof Number) {
            return Integer.valueOf(((Number) obj).intValue());
        }
        return g0(obj.toString(), num);
    }

    @NonNull
    private static Calendar l0() {
        try {
            try {
                return Calendar.getInstance();
            } catch (Throwable unused) {
                return Calendar.getInstance(Locale.US);
            }
        } catch (Throwable unused2) {
            return Calendar.getInstance(TimeZone.getTimeZone("GMT"), Locale.US);
        }
    }

    public static Handler m() {
        Looper myLooper = Looper.myLooper();
        if (myLooper == null) {
            myLooper = Looper.getMainLooper();
        }
        return new Handler(myLooper);
    }

    @Nullable
    public static Integer m0(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return Integer.valueOf(Color.parseColor(str));
        } catch (Exception unused) {
            return null;
        }
    }

    @NonNull
    public static Context n(@NonNull Context context) {
        return o(context, null);
    }

    public static void n0(@Nullable final String str, @Nullable Executor executor) {
        if (!TextUtils.isEmpty(str) && executor != null) {
            try {
                executor.execute(new Runnable() { // from class: io.bidmachine.core.c
                    @Override // java.lang.Runnable
                    public final void run() {
                        g.V(str);
                    }
                });
            } catch (Exception e10) {
                a.m(e10);
            }
        }
    }

    @NonNull
    public static Context o(@NonNull Context context, @Nullable View view) {
        Activity activity = new SimpleContextProvider(context).getActivity();
        if (activity != null) {
            return activity;
        }
        if (view == null) {
            return context;
        }
        View c10 = t.c(view);
        if (c10 != null) {
            return c10.getContext();
        }
        return view.getContext();
    }

    public static void o0(@NonNull Context context, @NonNull Intent intent) {
        try {
            if (!(context instanceof Activity)) {
                intent.addFlags(268435456);
            }
            context.startActivity(intent);
        } catch (Throwable th2) {
            a.m(th2);
        }
    }

    public static void p(@Nullable Flushable flushable) {
        if (flushable != null) {
            try {
                flushable.flush();
            } catch (Exception e10) {
                a.m(e10);
            }
        }
    }

    @Nullable
    public static String p0(@NonNull InputStream inputStream) {
        ByteArrayOutputStream byteArrayOutputStream;
        String str = null;
        try {
            byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                byte[] bArr = new byte[1024];
                while (true) {
                    int read = inputStream.read(bArr);
                    if (read == -1) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, read);
                }
                str = byteArrayOutputStream.toString("UTF-8");
            } catch (Throwable unused) {
            }
        } catch (Throwable unused2) {
            byteArrayOutputStream = null;
        }
        p(byteArrayOutputStream);
        j(byteArrayOutputStream);
        j(inputStream);
        return str;
    }

    @NonNull
    public static String q(@NonNull String str) {
        return new BigInteger(z(str.getBytes())).abs().toString(36);
    }

    @NonNull
    public static Map<String, String> q0(@NonNull JSONObject jSONObject) throws Exception {
        HashMap hashMap = new HashMap();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            Object opt = jSONObject.opt(next);
            if (opt != null) {
                hashMap.put(next, opt.toString());
            }
        }
        return hashMap;
    }

    @Nullable
    @RequiresApi(api = 23)
    public static NetworkCapabilities r(@NonNull Context context) {
        ConnectivityManager x10 = x(context);
        if (x10 == null) {
            return null;
        }
        try {
            Network activeNetwork = x10.getActiveNetwork();
            if (activeNetwork == null) {
                return null;
            }
            return x10.getNetworkCapabilities(activeNetwork);
        } catch (Throwable th2) {
            a.m(th2);
            return null;
        }
    }

    @Nullable
    public static String r0(@Nullable byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        if (bArr.length == 0) {
            return "";
        }
        char[] cArr = new char[(bArr.length * 3) - 1];
        int i10 = 0;
        for (int i11 = 0; i11 < bArr.length; i11++) {
            byte b10 = bArr[i11];
            int i12 = b10 & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
            char[] cArr2 = f54417e;
            cArr[i10] = cArr2[i12 >>> 4];
            int i13 = i10 + 2;
            cArr[i10 + 1] = cArr2[b10 & 15];
            if (i11 < bArr.length - 1) {
                i10 += 3;
                cArr[i13] = ':';
            } else {
                i10 = i13;
            }
        }
        return new String(cArr);
    }

    @Nullable
    public static NetworkInfo s(@NonNull Context context) {
        try {
            ConnectivityManager x10 = x(context);
            if (x10 == null) {
                return null;
            }
            return x10.getActiveNetworkInfo();
        } catch (Throwable th2) {
            a.m(th2);
            return null;
        }
    }

    public static String t(@NonNull Context context) {
        if (f54418f == null) {
            f54418f = (String) context.getPackageManager().getApplicationLabel(context.getApplicationInfo());
        }
        return f54418f;
    }

    @Nullable
    public static String u(@NonNull Context context) {
        if (f54419g == null) {
            try {
                String str = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
                if (str != null) {
                    f54419g = str;
                }
            } catch (Exception e10) {
                a.m(e10);
            }
        }
        return f54419g;
    }

    @Nullable
    public static Location v(@NonNull Context context, @Nullable Location location, @Nullable Location location2) {
        Location location3 = (Location) b0(location, location2);
        Location i10 = r.i(context);
        if (i10 != null) {
            if (location3 == null || i10.getTime() >= location3.getTime()) {
                return i10;
            }
            return location3;
        }
        return location3;
    }

    @Nullable
    public static File w(@NonNull Context context, @NonNull String str) {
        File y10 = y(context);
        if (y10 != null) {
            File file = new File(y10.getPath() + DomExceptionUtils.SEPARATOR + str + DomExceptionUtils.SEPARATOR);
            if (file.exists() || file.mkdirs()) {
                return file;
            }
            return null;
        }
        return null;
    }

    @Nullable
    @SuppressLint({"MissingPermission"})
    public static ConnectivityManager x(@NonNull Context context) {
        if (!M(context, "android.permission.ACCESS_NETWORK_STATE")) {
            a.e(new hr.b() { // from class: io.bidmachine.core.e
                @Override // hr.b
                public final Object get() {
                    String U;
                    U = g.U();
                    return U;
                }
            });
            return null;
        }
        try {
            return (ConnectivityManager) context.getSystemService("connectivity");
        } catch (Throwable th2) {
            a.m(th2);
            return null;
        }
    }

    @Nullable
    public static File y(@NonNull Context context) {
        return context.getExternalFilesDir(null);
    }

    public static byte[] z(byte[] bArr) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(SameMD5.TAG);
            messageDigest.update(bArr);
            return messageDigest.digest();
        } catch (NoSuchAlgorithmException e10) {
            a.m(e10);
            return null;
        }
    }
}
