package com.inmobi.media;

import android.graphics.Canvas;
import android.graphics.Movie;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import com.inmobi.media.J4;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class J4 implements I4 {

    /* renamed from: a  reason: collision with root package name */
    public final Movie f23751a;

    /* renamed from: b  reason: collision with root package name */
    public int f23752b;

    /* renamed from: c  reason: collision with root package name */
    public long f23753c;

    /* renamed from: d  reason: collision with root package name */
    public volatile boolean f23754d;

    /* renamed from: e  reason: collision with root package name */
    public K4 f23755e;

    public J4(String filePath) {
        Intrinsics.checkNotNullParameter(filePath, "filePath");
        File file = new File(filePath);
        byte[] bArr = new byte[(int) file.length()];
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            int read = fileInputStream.read(bArr);
            T9.a((Closeable) fileInputStream);
            Movie decodeByteArray = Movie.decodeByteArray(bArr, 0, read);
            this.f23751a = decodeByteArray;
            if (decodeByteArray != null) {
                return;
            }
            throw new IllegalStateException("Cannot decode gif byte array");
        } catch (Throwable th2) {
            T9.a((Closeable) fileInputStream);
            throw th2;
        }
    }

    @Override // com.inmobi.media.I4
    public final void a(boolean z10) {
        this.f23754d = z10;
        if (!this.f23754d) {
            this.f23753c = SystemClock.uptimeMillis() - this.f23752b;
        }
        K4 k42 = this.f23755e;
        if (k42 != null) {
            Intrinsics.checkNotNull(k42);
            k42.invalidate();
        }
    }

    @Override // com.inmobi.media.I4
    public final boolean b() {
        return !this.f23754d;
    }

    @Override // com.inmobi.media.I4
    public final int c() {
        Movie movie = this.f23751a;
        if (movie != null) {
            return movie.width();
        }
        return 0;
    }

    @Override // com.inmobi.media.I4
    public final void d() {
        int i10;
        long uptimeMillis = SystemClock.uptimeMillis();
        if (this.f23753c == 0) {
            this.f23753c = uptimeMillis;
        }
        Movie movie = this.f23751a;
        if (movie != null) {
            i10 = movie.duration();
        } else {
            i10 = 0;
        }
        if (i10 == 0) {
            i10 = 1000;
        }
        int i11 = (int) ((uptimeMillis - this.f23753c) % i10);
        this.f23752b = i11;
        Movie movie2 = this.f23751a;
        if (movie2 != null) {
            movie2.setTime(i11);
        }
    }

    public final void e() {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: ub.n0
            @Override // java.lang.Runnable
            public final void run() {
                J4.a(J4.this);
            }
        });
    }

    @Override // com.inmobi.media.I4
    public final int a() {
        Movie movie = this.f23751a;
        if (movie != null) {
            return movie.height();
        }
        return 0;
    }

    @Override // com.inmobi.media.I4
    public final void a(Canvas canvas, float f10, float f11) {
        Movie movie = this.f23751a;
        if (movie != null) {
            movie.draw(canvas, f10, f11);
        }
        Movie movie2 = this.f23751a;
        if (this.f23752b + 20 >= (movie2 != null ? movie2.duration() : 0)) {
            e();
        }
    }

    public static final void a(J4 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.f23752b = 0;
        this$0.a(false);
    }

    @Override // com.inmobi.media.I4
    public final void a(K4 k42) {
        this.f23755e = k42;
    }

    @Override // com.inmobi.media.I4
    public final void start() {
    }
}
