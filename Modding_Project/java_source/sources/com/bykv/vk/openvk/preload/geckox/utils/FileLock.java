package com.bykv.vk.openvk.preload.geckox.utils;

import android.os.Process;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public class FileLock {

    /* renamed from: a  reason: collision with root package name */
    private static final Map<String, Integer> f11469a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private final int f11470b;

    /* renamed from: c  reason: collision with root package name */
    private final String f11471c;

    static {
        System.loadLibrary("file_lock_pgl");
    }

    private FileLock(String str, int i10) {
        this.f11471c = str;
        this.f11470b = i10;
    }

    public static FileLock a(String str) {
        try {
            int d10 = d(str);
            nLockFile(d10);
            return new FileLock(str, d10);
        } catch (Exception e10) {
            throw new RuntimeException("lock failed, file:" + str + ", pid:" + Process.myPid() + " caused by:" + e10.getMessage());
        }
    }

    public static FileLock b(String str) {
        try {
            int d10 = d(str);
            if (nTryLock(d10)) {
                return new FileLock(str, d10);
            }
            return null;
        } catch (Exception e10) {
            throw new RuntimeException("try lock failed, file:" + str + " caused by:" + e10.getMessage());
        }
    }

    public static FileLock c(String str) throws Exception {
        try {
            int d10 = d(str);
            if (!nTryLock(d10)) {
                new FileLock(str, d10).b();
                return null;
            }
            return new FileLock(str, d10);
        } catch (Exception e10) {
            throw new RuntimeException("try lock failed, file:" + str + " caused by:" + e10.getMessage());
        }
    }

    private static int d(String str) throws Exception {
        Integer num;
        Map<String, Integer> map = f11469a;
        synchronized (map) {
            try {
                num = map.get(str);
                if (num == null) {
                    new File(str).getParentFile().mkdirs();
                    num = Integer.valueOf(nGetFD(str));
                    map.put(str, num);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return num.intValue();
    }

    private static native int nGetFD(String str) throws Exception;

    private static native void nLockFile(int i10) throws Exception;

    private static native void nLockFileSegment(int i10, int i11) throws Exception;

    private static native void nRelease(int i10) throws Exception;

    private static native boolean nTryLock(int i10) throws Exception;

    private static native void nUnlockFile(int i10) throws Exception;

    public static FileLock a(String str, int i10) {
        try {
            int d10 = d(str);
            nLockFileSegment(d10, i10);
            return new FileLock(str, d10);
        } catch (Exception e10) {
            throw new RuntimeException("lock segment failed, file:" + str + " caused by:" + e10.getMessage());
        }
    }

    public final void b() {
        Integer remove;
        Map<String, Integer> map = f11469a;
        synchronized (map) {
            remove = map.remove(this.f11471c);
        }
        try {
            nRelease(remove.intValue());
        } catch (Exception e10) {
            throw new RuntimeException("release lock failed, file:" + this.f11471c + " caused by:" + e10.getMessage());
        }
    }

    public final void a() {
        try {
            nUnlockFile(this.f11470b);
        } catch (Exception unused) {
            throw new RuntimeException("release lock failed，path:" + this.f11471c);
        }
    }
}
