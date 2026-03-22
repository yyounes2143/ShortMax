package com.google.firebase.messaging;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
/* compiled from: ImageDownload.java */
/* loaded from: classes5.dex */
public class e0 implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    private final URL f21182a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private volatile Future<?> f21183b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private Task<Bitmap> f21184c;

    private e0(URL url) {
        this.f21182a = url;
    }

    private byte[] k() throws IOException {
        URLConnection openConnection = this.f21182a.openConnection();
        if (openConnection.getContentLength() <= 1048576) {
            InputStream inputStream = openConnection.getInputStream();
            try {
                byte[] d10 = b.d(b.b(inputStream, 1048577L));
                if (inputStream != null) {
                    inputStream.close();
                }
                if (Log.isLoggable("FirebaseMessaging", 2)) {
                    Log.v("FirebaseMessaging", "Downloaded " + d10.length + " bytes from " + this.f21182a);
                }
                if (d10.length <= 1048576) {
                    return d10;
                }
                throw new IOException("Image exceeds max size of 1048576");
            } catch (Throwable th2) {
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
        throw new IOException("Content-Length exceeds max size of 1048576");
    }

    @Nullable
    public static e0 l(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return new e0(new URL(str));
        } catch (MalformedURLException unused) {
            Log.w("FirebaseMessaging", "Not downloading image, bad URL: " + str);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void o(TaskCompletionSource taskCompletionSource) {
        try {
            taskCompletionSource.setResult(d());
        } catch (Exception e10) {
            taskCompletionSource.setException(e10);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f21183b.cancel(true);
    }

    public Bitmap d() throws IOException {
        if (Log.isLoggable("FirebaseMessaging", 4)) {
            Log.i("FirebaseMessaging", "Starting download of: " + this.f21182a);
        }
        byte[] k10 = k();
        Bitmap decodeByteArray = BitmapFactory.decodeByteArray(k10, 0, k10.length);
        if (decodeByteArray != null) {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                Log.d("FirebaseMessaging", "Successfully downloaded image: " + this.f21182a);
            }
            return decodeByteArray;
        }
        throw new IOException("Failed to decode image: " + this.f21182a);
    }

    public Task<Bitmap> m() {
        return (Task) Preconditions.checkNotNull(this.f21184c);
    }

    public void p(ExecutorService executorService) {
        final TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.f21183b = executorService.submit(new Runnable() { // from class: com.google.firebase.messaging.d0
            @Override // java.lang.Runnable
            public final void run() {
                e0.this.o(taskCompletionSource);
            }
        });
        this.f21184c = taskCompletionSource.getTask();
    }
}
