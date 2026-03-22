package b1;

import android.content.Context;
import android.util.Pair;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.WorkerThread;
import com.airbnb.lottie.i;
import com.airbnb.lottie.network.FileExtension;
import com.airbnb.lottie.r0;
import com.airbnb.lottie.s;
import java.io.Closeable;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.GZIPInputStream;
import java.util.zip.ZipInputStream;
/* compiled from: NetworkFetcher.java */
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes2.dex */
public class g {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final f f2161a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final e f2162b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NetworkFetcher.java */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f2163a;

        static {
            int[] iArr = new int[FileExtension.values().length];
            f2163a = iArr;
            try {
                iArr[FileExtension.ZIP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2163a[FileExtension.GZIP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public g(@Nullable f fVar, @NonNull e eVar) {
        this.f2161a = fVar;
        this.f2162b = eVar;
    }

    @Nullable
    @WorkerThread
    private i a(Context context, @NonNull String str, @Nullable String str2) {
        f fVar;
        Pair<FileExtension, InputStream> a10;
        r0<i> F;
        if (str2 == null || (fVar = this.f2161a) == null || (a10 = fVar.a(str)) == null) {
            return null;
        }
        InputStream inputStream = (InputStream) a10.second;
        int i10 = a.f2163a[((FileExtension) a10.first).ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                F = s.r(inputStream, str2);
            } else {
                try {
                    F = s.r(new GZIPInputStream(inputStream), str2);
                } catch (IOException e10) {
                    F = new r0<>(e10);
                }
            }
        } else {
            F = s.F(context, new ZipInputStream(inputStream), str2);
        }
        if (F.b() != null) {
            return F.b();
        }
        return null;
    }

    @NonNull
    @WorkerThread
    private r0<i> b(Context context, @NonNull String str, @Nullable String str2) {
        boolean z10;
        d1.f.a("Fetching " + str);
        Closeable closeable = null;
        try {
            try {
                c a10 = this.f2162b.a(str);
                if (a10.isSuccessful()) {
                    r0<i> e10 = e(context, str, a10.V(), a10.S(), str2);
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("Completed fetch from network. Success: ");
                    if (e10.b() != null) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    sb2.append(z10);
                    d1.f.a(sb2.toString());
                    try {
                        a10.close();
                    } catch (IOException e11) {
                        d1.f.d("LottieFetchResult close failed ", e11);
                    }
                    return e10;
                }
                r0<i> r0Var = new r0<>(new IllegalArgumentException(a10.K()));
                try {
                    a10.close();
                } catch (IOException e12) {
                    d1.f.d("LottieFetchResult close failed ", e12);
                }
                return r0Var;
            } catch (Exception e13) {
                r0<i> r0Var2 = new r0<>(e13);
                if (0 != 0) {
                    try {
                        closeable.close();
                    } catch (IOException e14) {
                        d1.f.d("LottieFetchResult close failed ", e14);
                    }
                }
                return r0Var2;
            }
        } catch (Throwable th2) {
            if (0 != 0) {
                try {
                    closeable.close();
                } catch (IOException e15) {
                    d1.f.d("LottieFetchResult close failed ", e15);
                }
            }
            throw th2;
        }
    }

    @NonNull
    private r0<i> d(@NonNull String str, @NonNull InputStream inputStream, @Nullable String str2) throws IOException {
        f fVar;
        if (str2 != null && (fVar = this.f2161a) != null) {
            return s.r(new GZIPInputStream(new FileInputStream(fVar.g(str, inputStream, FileExtension.GZIP))), str);
        }
        return s.r(new GZIPInputStream(inputStream), null);
    }

    @NonNull
    private r0<i> e(Context context, @NonNull String str, @NonNull InputStream inputStream, @Nullable String str2, @Nullable String str3) throws IOException {
        r0<i> g10;
        FileExtension fileExtension;
        f fVar;
        if (str2 == null) {
            str2 = "application/json";
        }
        if (!str2.contains("application/zip") && !str2.contains("application/x-zip") && !str2.contains("application/x-zip-compressed") && !str.split("\\?")[0].endsWith(".lottie")) {
            if (!str2.contains("application/gzip") && !str2.contains("application/x-gzip") && !str.split("\\?")[0].endsWith(".tgs")) {
                d1.f.a("Received json response.");
                fileExtension = FileExtension.JSON;
                g10 = f(str, inputStream, str3);
            } else {
                d1.f.a("Handling gzip response.");
                fileExtension = FileExtension.GZIP;
                g10 = d(str, inputStream, str3);
            }
        } else {
            d1.f.a("Handling zip response.");
            FileExtension fileExtension2 = FileExtension.ZIP;
            g10 = g(context, str, inputStream, str3);
            fileExtension = fileExtension2;
        }
        if (str3 != null && g10.b() != null && (fVar = this.f2161a) != null) {
            fVar.f(str, fileExtension);
        }
        return g10;
    }

    @NonNull
    private r0<i> f(@NonNull String str, @NonNull InputStream inputStream, @Nullable String str2) throws IOException {
        f fVar;
        if (str2 != null && (fVar = this.f2161a) != null) {
            return s.r(new FileInputStream(fVar.g(str, inputStream, FileExtension.JSON).getAbsolutePath()), str);
        }
        return s.r(inputStream, null);
    }

    @NonNull
    private r0<i> g(Context context, @NonNull String str, @NonNull InputStream inputStream, @Nullable String str2) throws IOException {
        f fVar;
        if (str2 != null && (fVar = this.f2161a) != null) {
            return s.F(context, new ZipInputStream(new FileInputStream(fVar.g(str, inputStream, FileExtension.ZIP))), str);
        }
        return s.F(context, new ZipInputStream(inputStream), null);
    }

    @NonNull
    @WorkerThread
    public r0<i> c(Context context, @NonNull String str, @Nullable String str2) {
        i a10 = a(context, str, str2);
        if (a10 != null) {
            return new r0<>(a10);
        }
        d1.f.a("Animation for " + str + " not found in cache. Fetching from network.");
        return b(context, str, str2);
    }
}
