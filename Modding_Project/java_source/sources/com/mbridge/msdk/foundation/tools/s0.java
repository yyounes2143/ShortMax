package com.mbridge.msdk.foundation.tools;

import android.content.Context;
import android.os.Environment;
import android.os.StatFs;
import android.text.TextUtils;
import java.io.File;
/* compiled from: SameSDCardTool.java */
/* loaded from: classes5.dex */
public class s0 {

    /* renamed from: a  reason: collision with root package name */
    static String f27503a = "";

    /* renamed from: b  reason: collision with root package name */
    private static volatile boolean f27504b = false;

    /* renamed from: c  reason: collision with root package name */
    private static int f27505c = -1;

    /* renamed from: d  reason: collision with root package name */
    private static int f27506d = -1;

    /* renamed from: e  reason: collision with root package name */
    private static long f27507e;

    /* compiled from: SameSDCardTool.java */
    /* loaded from: classes5.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            s0.b();
        }
    }

    public static void a(Context context) {
        if (context == null) {
            return;
        }
        try {
            if (f27504b) {
                return;
            }
            f27504b = true;
            File externalFilesDir = context.getExternalFilesDir(null);
            if (externalFilesDir != null) {
                f27503a = externalFilesDir.getAbsolutePath();
            }
            try {
                b(context);
            } catch (Exception unused) {
                b(context);
            }
        } catch (Exception e10) {
            p0.b("SameSDCardTool", e10.getMessage());
        }
    }

    private static void b(Context context) {
        File externalFilesDir;
        if (TextUtils.isEmpty(f27503a) && (externalFilesDir = context.getExternalFilesDir(null)) != null) {
            f27503a = externalFilesDir.getAbsolutePath();
        }
        if (!TextUtils.isEmpty(f27503a)) {
            com.mbridge.msdk.foundation.same.directory.e.a(new com.mbridge.msdk.foundation.same.directory.d(f27503a));
            com.mbridge.msdk.foundation.same.directory.e.b().a();
        }
        b();
    }

    public static int c() {
        return f27506d;
    }

    public static int a() {
        if (System.currentTimeMillis() - f27507e > 1800000) {
            com.mbridge.msdk.foundation.same.threadpool.a.e().execute(new a());
        }
        return f27505c;
    }

    public static void b() {
        try {
            StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
            long blockSize = statFs.getBlockSize();
            long availableBlocks = statFs.getAvailableBlocks();
            f27506d = Long.valueOf(((statFs.getBlockCount() * blockSize) / 1000) / 1000).intValue();
            f27505c = Long.valueOf(((availableBlocks * blockSize) / 1000) / 1000).intValue();
            f27507e = System.currentTimeMillis();
        } catch (Exception e10) {
            p0.b("SameSDCardTool", e10.getMessage());
        }
    }
}
