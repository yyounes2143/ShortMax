package com.ss.ttm.utils;

import android.content.Context;
import android.os.Environment;
import android.os.Process;
import android.os.StatFs;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
/* loaded from: classes6.dex */
public class HardWareInfo {
    private static final int ATOM = 1;
    public static final int CPU_FAMILY_ARM = 1;
    public static final int CPU_FAMILY_MIPS = 3;
    public static final int CPU_FAMILY_UNKNOWN = 0;
    public static final int CPU_FAMILY_X86 = 2;
    private static final int NEON = 0;
    private static int[] mArmArchitecture = new int[3];
    private static int mCpuType;

    private static long getAvailableStorageSize(Context context) {
        if (context == null || Environment.getDataDirectory() == null) {
            return -1L;
        }
        return getDirectoryAvailableSize(context.getFilesDir().getParent());
    }

    public static int[] getCpuArchitecture() {
        try {
            FileInputStream fileInputStream = new FileInputStream("/proc/cpuinfo");
            InputStreamReader inputStreamReader = new InputStreamReader(fileInputStream);
            BufferedReader bufferedReader = new BufferedReader(inputStreamReader);
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
                String[] split = readLine.replace("\t", "").split(":");
                if (split.length == 2) {
                    String trim = split[0].trim();
                    String trim2 = split[1].trim();
                    if (trim.compareTo("Processor") == 0) {
                        StringBuilder sb2 = new StringBuilder();
                        for (int indexOf = trim2.indexOf("ARMv") + 4; indexOf < trim2.length(); indexOf++) {
                            String str = trim2.charAt(indexOf) + "";
                            if (!str.matches("\\d")) {
                                break;
                            }
                            sb2.append(str);
                        }
                        int[] iArr = mArmArchitecture;
                        iArr[0] = 1;
                        iArr[1] = Integer.parseInt(sb2.toString());
                    } else if (trim.compareToIgnoreCase("Features") == 0) {
                        if (trim2.contains("neon")) {
                            mArmArchitecture[2] = 0;
                        }
                    } else if (trim.compareToIgnoreCase("model name") == 0) {
                        if (trim2.contains("Intel")) {
                            int[] iArr2 = mArmArchitecture;
                            iArr2[0] = 2;
                            iArr2[2] = 1;
                        }
                    } else if (trim.compareToIgnoreCase("cpu family") == 0) {
                        mArmArchitecture[1] = Integer.parseInt(trim2);
                    }
                }
            }
            bufferedReader.close();
            inputStreamReader.close();
            fileInputStream.close();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return mArmArchitecture;
    }

    public static int getCpuFamily() {
        if (mCpuType == 0) {
            getCpuInfo();
            mCpuType = mArmArchitecture[0];
        }
        return mCpuType;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0071, code lost:
        com.ss.ttm.utils.HardWareInfo.mArmArchitecture[0] = 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int[] getCpuInfo() {
        /*
            java.io.FileInputStream r0 = new java.io.FileInputStream     // Catch: java.lang.Exception -> Ld4
            java.lang.String r1 = "/proc/cpuinfo"
            r0.<init>(r1)     // Catch: java.lang.Exception -> Ld4
            java.io.InputStreamReader r1 = new java.io.InputStreamReader     // Catch: java.lang.Exception -> Ld4
            r1.<init>(r0)     // Catch: java.lang.Exception -> Ld4
            java.io.BufferedReader r2 = new java.io.BufferedReader     // Catch: java.lang.Exception -> Ld4
            r2.<init>(r1)     // Catch: java.lang.Exception -> Ld4
            java.lang.String r3 = "processor"
            java.lang.String r4 = "features"
            java.lang.String r5 = "model name"
        L17:
            java.lang.String r6 = r2.readLine()     // Catch: java.lang.Throwable -> L6f
            if (r6 != 0) goto L1f
            goto Lca
        L1f:
            java.lang.String r7 = "\t"
            java.lang.String r8 = ""
            java.lang.String r6 = r6.replaceAll(r7, r8)     // Catch: java.lang.Throwable -> L6f
            java.util.Locale r7 = java.util.Locale.US     // Catch: java.lang.Throwable -> L6f
            java.lang.String r6 = r6.toLowerCase(r7)     // Catch: java.lang.Throwable -> L6f
            java.lang.String r7 = ":"
            java.lang.String[] r6 = r6.split(r7)     // Catch: java.lang.Throwable -> L6f
            int r7 = r6.length     // Catch: java.lang.Throwable -> L6f
            r8 = 2
            if (r7 == r8) goto L38
            goto L17
        L38:
            r7 = 0
            r9 = r6[r7]     // Catch: java.lang.Throwable -> L6f
            java.lang.String r9 = r9.trim()     // Catch: java.lang.Throwable -> L6f
            r10 = 1
            r6 = r6[r10]     // Catch: java.lang.Throwable -> L6f
            java.lang.String r6 = r6.trim()     // Catch: java.lang.Throwable -> L6f
            if (r6 == 0) goto L17
            if (r9 != 0) goto L4b
            goto L17
        L4b:
            int r11 = r9.compareTo(r3)     // Catch: java.lang.Throwable -> L6f
            java.lang.String r12 = "intel"
            if (r11 != 0) goto L76
            java.lang.String r9 = "armv"
            boolean r9 = r6.contains(r9)     // Catch: java.lang.Throwable -> L6f
            if (r9 != 0) goto L71
            java.lang.String r9 = "aarch64"
            boolean r9 = r6.contains(r9)     // Catch: java.lang.Throwable -> L6f
            if (r9 == 0) goto L64
            goto L71
        L64:
            boolean r6 = r6.contains(r12)     // Catch: java.lang.Throwable -> L6f
            if (r6 == 0) goto L17
            int[] r3 = com.ss.ttm.utils.HardWareInfo.mArmArchitecture     // Catch: java.lang.Throwable -> L6f
            r3[r7] = r8     // Catch: java.lang.Throwable -> L6f
            goto Lca
        L6f:
            r3 = move-exception
            goto Ld6
        L71:
            int[] r3 = com.ss.ttm.utils.HardWareInfo.mArmArchitecture     // Catch: java.lang.Throwable -> L6f
            r3[r7] = r10     // Catch: java.lang.Throwable -> L6f
            goto Lca
        L76:
            int r11 = r9.compareToIgnoreCase(r4)     // Catch: java.lang.Throwable -> L6f
            if (r11 != 0) goto Lad
            java.lang.String r8 = "neon"
            boolean r8 = r6.contains(r8)     // Catch: java.lang.Throwable -> L6f
            if (r8 != 0) goto La7
            java.lang.String r8 = "thumb"
            boolean r8 = r6.contains(r8)     // Catch: java.lang.Throwable -> L6f
            if (r8 != 0) goto La7
            java.lang.String r8 = "vfpv"
            boolean r8 = r6.contains(r8)     // Catch: java.lang.Throwable -> L6f
            if (r8 != 0) goto La7
            java.lang.String r8 = "asimd"
            boolean r8 = r6.contains(r8)     // Catch: java.lang.Throwable -> L6f
            if (r8 != 0) goto La7
            java.lang.String r8 = "simd"
            boolean r6 = r6.contains(r8)     // Catch: java.lang.Throwable -> L6f
            if (r6 == 0) goto L17
        La7:
            int[] r6 = com.ss.ttm.utils.HardWareInfo.mArmArchitecture     // Catch: java.lang.Throwable -> L6f
            r6[r7] = r10     // Catch: java.lang.Throwable -> L6f
            goto L17
        Lad:
            int r9 = r9.compareToIgnoreCase(r5)     // Catch: java.lang.Throwable -> L6f
            if (r9 != 0) goto L17
            boolean r9 = r6.contains(r12)     // Catch: java.lang.Throwable -> L6f
            if (r9 == 0) goto Lbe
            int[] r3 = com.ss.ttm.utils.HardWareInfo.mArmArchitecture     // Catch: java.lang.Throwable -> L6f
            r3[r7] = r8     // Catch: java.lang.Throwable -> L6f
            goto Lca
        Lbe:
            java.lang.String r8 = "arm"
            boolean r6 = r6.contains(r8)     // Catch: java.lang.Throwable -> L6f
            if (r6 == 0) goto L17
            int[] r3 = com.ss.ttm.utils.HardWareInfo.mArmArchitecture     // Catch: java.lang.Throwable -> L6f
            r3[r7] = r10     // Catch: java.lang.Throwable -> L6f
        Lca:
            r2.close()     // Catch: java.lang.Exception -> Ld4
            r1.close()     // Catch: java.lang.Exception -> Ld4
            r0.close()     // Catch: java.lang.Exception -> Ld4
            goto Le3
        Ld4:
            r0 = move-exception
            goto Le0
        Ld6:
            r2.close()     // Catch: java.lang.Exception -> Ld4
            r1.close()     // Catch: java.lang.Exception -> Ld4
            r0.close()     // Catch: java.lang.Exception -> Ld4
            throw r3     // Catch: java.lang.Exception -> Ld4
        Le0:
            r0.printStackTrace()
        Le3:
            int[] r0 = com.ss.ttm.utils.HardWareInfo.mArmArchitecture
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.ttm.utils.HardWareInfo.getCpuInfo():int[]");
    }

    private static long getDirectoryAvailableSize(String str) {
        long blockSize;
        long availableBlocks;
        try {
            StatFs statFs = new StatFs(str);
            if (isAndroidJB2()) {
                blockSize = statFs.getBlockSizeLong();
                availableBlocks = statFs.getAvailableBlocksLong();
            } else {
                blockSize = statFs.getBlockSize();
                availableBlocks = statFs.getAvailableBlocks();
            }
            return blockSize * availableBlocks;
        } catch (IllegalArgumentException unused) {
            return -1L;
        }
    }

    private static long getDirectoryTotalSize(String str) {
        long blockSize;
        long blockCount;
        try {
            StatFs statFs = new StatFs(str);
            if (isAndroidJB2()) {
                blockSize = statFs.getBlockSizeLong();
                blockCount = statFs.getBlockCountLong();
            } else {
                blockSize = statFs.getBlockSize();
                blockCount = statFs.getBlockCount();
            }
            return blockSize * blockCount;
        } catch (IllegalArgumentException unused) {
            return -1L;
        }
    }

    public static long getProcessCpuInfo() {
        BufferedReader bufferedReader;
        BufferedReader bufferedReader2 = null;
        try {
            int myPid = Process.myPid();
            bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream("/proc/" + myPid + "/stat")), 1000);
        } catch (IOException unused) {
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            String readLine = bufferedReader.readLine();
            bufferedReader.close();
            String[] split = readLine.split(" ");
            try {
                bufferedReader.close();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            try {
                return Long.parseLong(split[13]) + Long.parseLong(split[14]) + Long.parseLong(split[15]) + Long.parseLong(split[16]);
            } catch (ArrayIndexOutOfBoundsException unused2) {
                return 0L;
            }
        } catch (IOException unused3) {
            bufferedReader2 = bufferedReader;
            if (bufferedReader2 != null) {
                try {
                    bufferedReader2.close();
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
            }
            return 0L;
        } catch (Throwable th3) {
            th = th3;
            bufferedReader2 = bufferedReader;
            if (bufferedReader2 != null) {
                try {
                    bufferedReader2.close();
                } catch (Exception e12) {
                    e12.printStackTrace();
                }
            }
            throw th;
        }
    }

    public static long[] getSDCardSize(Context context) {
        long[] jArr = new long[2];
        if ("mounted".equals(Environment.getExternalStorageState())) {
            long availableStorageSize = getAvailableStorageSize(context);
            jArr[0] = getTotalStorageSize(context);
            jArr[1] = availableStorageSize;
        }
        return jArr;
    }

    private static long getTotalStorageSize(Context context) {
        if (context == null || Environment.getDataDirectory() == null) {
            return -1L;
        }
        return getDirectoryTotalSize(context.getFilesDir().getParent());
    }

    private static boolean isAndroidJB2() {
        return true;
    }
}
