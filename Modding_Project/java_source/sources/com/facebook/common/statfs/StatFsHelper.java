package com.facebook.common.statfs;

import android.annotation.SuppressLint;
import android.os.Environment;
import android.os.StatFs;
import android.os.SystemClock;
import java.io.File;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import k2.m;
/* loaded from: classes3.dex */
public class StatFsHelper {

    /* renamed from: h  reason: collision with root package name */
    private static StatFsHelper f15320h;

    /* renamed from: i  reason: collision with root package name */
    private static final long f15321i = TimeUnit.MINUTES.toMillis(2);

    /* renamed from: b  reason: collision with root package name */
    private volatile File f15323b;

    /* renamed from: d  reason: collision with root package name */
    private volatile File f15325d;

    /* renamed from: e  reason: collision with root package name */
    private long f15326e;

    /* renamed from: a  reason: collision with root package name */
    private volatile StatFs f15322a = null;

    /* renamed from: c  reason: collision with root package name */
    private volatile StatFs f15324c = null;

    /* renamed from: g  reason: collision with root package name */
    private volatile boolean f15328g = false;

    /* renamed from: f  reason: collision with root package name */
    private final Lock f15327f = new ReentrantLock();

    /* loaded from: classes3.dex */
    public enum StorageType {
        INTERNAL,
        EXTERNAL
    }

    protected StatFsHelper() {
    }

    protected static StatFs a(String str) {
        return new StatFs(str);
    }

    private void b() {
        if (!this.f15328g) {
            this.f15327f.lock();
            try {
                if (!this.f15328g) {
                    this.f15323b = Environment.getDataDirectory();
                    this.f15325d = Environment.getExternalStorageDirectory();
                    g();
                    this.f15328g = true;
                }
            } finally {
                this.f15327f.unlock();
            }
        }
    }

    public static synchronized StatFsHelper d() {
        StatFsHelper statFsHelper;
        synchronized (StatFsHelper.class) {
            try {
                if (f15320h == null) {
                    f15320h = new StatFsHelper();
                }
                statFsHelper = f15320h;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return statFsHelper;
    }

    private void e() {
        if (this.f15327f.tryLock()) {
            try {
                if (SystemClock.uptimeMillis() - this.f15326e > f15321i) {
                    g();
                }
            } finally {
                this.f15327f.unlock();
            }
        }
    }

    private void g() {
        this.f15322a = h(this.f15322a, this.f15323b);
        this.f15324c = h(this.f15324c, this.f15325d);
        this.f15326e = SystemClock.uptimeMillis();
    }

    private StatFs h(StatFs statFs, File file) {
        StatFs statFs2 = null;
        if (file == null || !file.exists()) {
            return null;
        }
        try {
            if (statFs == null) {
                statFs = a(file.getAbsolutePath());
            } else {
                statFs.restat(file.getAbsolutePath());
            }
            statFs2 = statFs;
            return statFs2;
        } catch (IllegalArgumentException unused) {
            return statFs2;
        } catch (Throwable th2) {
            throw m.a(th2);
        }
    }

    @SuppressLint({"DeprecatedMethod"})
    public long c(StorageType storageType) {
        StatFs statFs;
        b();
        e();
        if (storageType == StorageType.INTERNAL) {
            statFs = this.f15322a;
        } else {
            statFs = this.f15324c;
        }
        if (statFs != null) {
            return statFs.getBlockSizeLong() * statFs.getAvailableBlocksLong();
        }
        return 0L;
    }

    public boolean f(StorageType storageType, long j10) {
        b();
        long c10 = c(storageType);
        if (c10 <= 0 || c10 < j10) {
            return true;
        }
        return false;
    }
}
