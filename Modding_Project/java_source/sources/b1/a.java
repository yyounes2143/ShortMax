package b1;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
/* compiled from: DefaultLottieFetchResult.java */
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes2.dex */
public class a implements c {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final HttpURLConnection f2159a;

    public a(@NonNull HttpURLConnection httpURLConnection) {
        this.f2159a = httpURLConnection;
    }

    private String a(HttpURLConnection httpURLConnection) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getErrorStream()));
        StringBuilder sb2 = new StringBuilder();
        while (true) {
            try {
                String readLine = bufferedReader.readLine();
                if (readLine != null) {
                    sb2.append(readLine);
                    sb2.append('\n');
                } else {
                    try {
                        break;
                    } catch (Exception unused) {
                    }
                }
            } catch (Throwable th2) {
                try {
                    bufferedReader.close();
                } catch (Exception unused2) {
                }
                throw th2;
            }
        }
        bufferedReader.close();
        return sb2.toString();
    }

    @Override // b1.c
    @Nullable
    public String K() {
        try {
            if (isSuccessful()) {
                return null;
            }
            return "Unable to fetch " + this.f2159a.getURL() + ". Failed with " + this.f2159a.getResponseCode() + "\n" + a(this.f2159a);
        } catch (IOException | NullPointerException e10) {
            d1.f.d("get error failed ", e10);
            return e10.getMessage();
        }
    }

    @Override // b1.c
    @Nullable
    public String S() {
        return this.f2159a.getContentType();
    }

    @Override // b1.c
    @NonNull
    public InputStream V() throws IOException {
        return this.f2159a.getInputStream();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f2159a.disconnect();
    }

    @Override // b1.c
    public boolean isSuccessful() {
        try {
            if (this.f2159a.getResponseCode() / 100 != 2) {
                return false;
            }
            return true;
        } catch (IOException unused) {
            return false;
        }
    }
}
