package b1;

import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.browser.trusted.sharing.ShareTarget;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
/* compiled from: DefaultLottieNetworkFetcher.java */
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes2.dex */
public class b implements e {
    @Override // b1.e
    @NonNull
    public c a(@NonNull String str) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        httpURLConnection.setRequestMethod(ShareTarget.METHOD_GET);
        httpURLConnection.connect();
        return new a(httpURLConnection);
    }
}
