package a2;

import android.os.AsyncTask;
import androidx.annotation.VisibleForTesting;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.net.URL;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: FileDownloadTask.kt */
@Metadata
/* loaded from: classes3.dex */
public final class k extends AsyncTask<String, Void, Boolean> {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f86a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final File f87b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final a f88c;

    /* compiled from: FileDownloadTask.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public interface a {
        void a(@NotNull File file);
    }

    public k(@NotNull String uriStr, @NotNull File destFile, @NotNull a onSuccess) {
        Intrinsics.checkNotNullParameter(uriStr, "uriStr");
        Intrinsics.checkNotNullParameter(destFile, "destFile");
        Intrinsics.checkNotNullParameter(onSuccess, "onSuccess");
        this.f86a = uriStr;
        this.f87b = destFile;
        this.f88c = onSuccess;
    }

    @VisibleForTesting(otherwise = 4)
    @NotNull
    public Boolean a(@NotNull String... args) {
        if (o4.a.d(this)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(args, "args");
            try {
                URL url = new URL(this.f86a);
                int contentLength = url.openConnection().getContentLength();
                DataInputStream dataInputStream = new DataInputStream(url.openStream());
                byte[] bArr = new byte[contentLength];
                dataInputStream.readFully(bArr);
                dataInputStream.close();
                DataOutputStream dataOutputStream = new DataOutputStream(new FileOutputStream(this.f87b));
                dataOutputStream.write(bArr);
                dataOutputStream.flush();
                dataOutputStream.close();
                return Boolean.TRUE;
            } catch (Exception unused) {
                return Boolean.FALSE;
            }
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return null;
        }
    }

    protected void b(boolean z10) {
        if (!o4.a.d(this) && z10) {
            try {
                this.f88c.a(this.f87b);
            } catch (Throwable th2) {
                o4.a.b(th2, this);
            }
        }
    }

    @Override // android.os.AsyncTask
    public /* bridge */ /* synthetic */ Boolean doInBackground(String[] strArr) {
        if (o4.a.d(this)) {
            return null;
        }
        try {
            return a(strArr);
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return null;
        }
    }

    @Override // android.os.AsyncTask
    public /* bridge */ /* synthetic */ void onPostExecute(Boolean bool) {
        if (o4.a.d(this)) {
            return;
        }
        try {
            b(bool.booleanValue());
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }
}
