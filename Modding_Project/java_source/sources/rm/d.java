package rm;

import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Pair;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import io.bidmachine.iab.mraid.MraidWebView;
import io.bidmachine.iab.mraid.h;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.net.URLDecoder;
import sm.q;
/* loaded from: classes7.dex */
final class d {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private static final sm.b f65908a = new sm.b();

    /* renamed from: b  reason: collision with root package name */
    static final /* synthetic */ boolean f65909b = true;

    @NonNull
    private static Pair<String, String> a(@NonNull String str) {
        String[] split = str.split(DomExceptionUtils.SEPARATOR);
        return new Pair<>(split[0], split[1]);
    }

    private static void b(@Nullable MraidWebView mraidWebView) {
        if (mraidWebView != null) {
            mraidWebView.i("nativeStorage.fireErrorEvent('internal error');");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void c(@Nullable MraidWebView mraidWebView, @Nullable String str) {
        if (f(mraidWebView, str)) {
            return;
        }
        try {
            Pair<String, String> a10 = a(f65908a.g(URLDecoder.decode(str, "UTF-8")));
            if (f(mraidWebView, (String) a10.first, (String) a10.second)) {
                return;
            }
            boolean z10 = f65909b;
            if (!z10 && mraidWebView == null) {
                throw new AssertionError();
            }
            Object obj = mraidWebView.getContext().getApplicationContext().getSharedPreferences((String) a10.first, 0).getAll().get(a10.second);
            if (obj == null) {
                b(mraidWebView);
                return;
            }
            String valueOf = String.valueOf(obj);
            if (!f(mraidWebView, valueOf)) {
                if (!z10 && str == null) {
                    throw new AssertionError();
                }
                e(mraidWebView, "fireReadDefaultsSuccessEvent", str, Base64.encodeToString(valueOf.getBytes(), 2));
            }
        } catch (Throwable th2) {
            b(mraidWebView);
            h.e("NativeStorage", th2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void d(@Nullable MraidWebView mraidWebView, @Nullable String str, @Nullable String str2) {
        if (f(mraidWebView, str, str2)) {
            return;
        }
        try {
            String g10 = f65908a.g(URLDecoder.decode(str, "UTF-8"));
            byte[] decode = Base64.decode(URLDecoder.decode(str2, "UTF-8"), 2);
            Pair<String, String> a10 = a(g10);
            if (f(mraidWebView, (String) a10.first, (String) a10.second)) {
                return;
            }
            if (!f65909b && mraidWebView == null) {
                throw new AssertionError();
            }
            mraidWebView.getContext().getApplicationContext().getSharedPreferences((String) a10.first, 0).edit().putString((String) a10.second, new String(decode)).apply();
        } catch (Throwable th2) {
            b(mraidWebView);
            h.e("NativeStorage", th2);
        }
    }

    private static void e(@Nullable MraidWebView mraidWebView, @NonNull String str, @NonNull String str2, @NonNull String str3) {
        if (mraidWebView != null) {
            mraidWebView.i(String.format("nativeStorage.%s(\"%s\", \"%s\");", str, str2, str3));
        }
    }

    private static boolean f(@Nullable MraidWebView mraidWebView, @Nullable String... strArr) {
        if (mraidWebView != null && !mraidWebView.j() && mraidWebView.getContext() != null) {
            if (strArr != null) {
                for (String str : strArr) {
                    if (TextUtils.isEmpty(str)) {
                        b(mraidWebView);
                        return true;
                    }
                }
            }
            return false;
        }
        b(mraidWebView);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void g(@Nullable MraidWebView mraidWebView, @Nullable String str) {
        FileInputStream fileInputStream;
        File fileStreamPath;
        ByteArrayOutputStream byteArrayOutputStream;
        if (f(mraidWebView, str)) {
            return;
        }
        ByteArrayOutputStream byteArrayOutputStream2 = null;
        try {
            String g10 = f65908a.g(URLDecoder.decode(str, "UTF-8"));
            if (!f65909b && mraidWebView == null) {
                throw new AssertionError();
            }
            Context applicationContext = mraidWebView.getContext().getApplicationContext();
            if (g10.contains(DomExceptionUtils.SEPARATOR)) {
                fileStreamPath = new File(g10);
            } else {
                fileStreamPath = applicationContext.getFileStreamPath(g10);
            }
            if (fileStreamPath != null && fileStreamPath.exists()) {
                fileInputStream = applicationContext.openFileInput(g10);
                try {
                    byteArrayOutputStream = new ByteArrayOutputStream();
                } catch (Throwable th2) {
                    th = th2;
                }
                try {
                    byte[] bArr = new byte[8192];
                    if (fileInputStream != null) {
                        while (true) {
                            int read = fileInputStream.read(bArr);
                            if (-1 == read) {
                                break;
                            }
                            byteArrayOutputStream.write(bArr, 0, read);
                        }
                    }
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    if (byteArray.length > 0) {
                        if (!f65909b && str == null) {
                            throw new AssertionError();
                        }
                        e(mraidWebView, "fireReadFileSuccessEvent", str, Base64.encodeToString(byteArray, 2));
                    } else {
                        b(mraidWebView);
                    }
                    q.o(fileInputStream);
                    q.o(byteArrayOutputStream);
                    return;
                } catch (Throwable th3) {
                    th = th3;
                    byteArrayOutputStream2 = byteArrayOutputStream;
                    try {
                        b(mraidWebView);
                        h.e("NativeStorage", th);
                        return;
                    } finally {
                        q.o(fileInputStream);
                        q.o(byteArrayOutputStream2);
                    }
                }
            }
            b(mraidWebView);
            q.o(null);
            q.o(null);
        } catch (Throwable th4) {
            th = th4;
            fileInputStream = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void h(@Nullable MraidWebView mraidWebView, @Nullable String str, @Nullable String str2) {
        if (f(mraidWebView, str, str2)) {
            return;
        }
        FileOutputStream fileOutputStream = null;
        try {
            String g10 = f65908a.g(URLDecoder.decode(str, "UTF-8"));
            byte[] decode = Base64.decode(URLDecoder.decode(str2, "UTF-8"), 2);
            if (!f(mraidWebView, g10, new String(decode))) {
                if (!f65909b && mraidWebView == null) {
                    throw new AssertionError();
                }
                Context applicationContext = mraidWebView.getContext().getApplicationContext();
                if (g10.contains(DomExceptionUtils.SEPARATOR)) {
                    fileOutputStream = new FileOutputStream(g10);
                } else {
                    fileOutputStream = applicationContext.openFileOutput(g10, 0);
                }
                fileOutputStream.write(decode);
            }
        } catch (Throwable th2) {
            try {
                b(mraidWebView);
                h.e("NativeStorage", th2);
            } finally {
                q.r(null);
                q.o(null);
            }
        }
    }
}
