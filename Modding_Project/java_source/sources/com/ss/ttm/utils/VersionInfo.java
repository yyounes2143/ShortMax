package com.ss.ttm.utils;

import android.os.Build;
import java.io.BufferedReader;
import java.io.FileReader;
/* loaded from: classes6.dex */
public class VersionInfo {
    private static String[] mVersion;

    public static String[] getVersion() {
        FileReader fileReader;
        BufferedReader bufferedReader;
        if (mVersion == null) {
            String[] strArr = {"null", "null", "null", "null"};
            BufferedReader bufferedReader2 = null;
            try {
                try {
                    fileReader = new FileReader("/proc/version");
                    try {
                        bufferedReader = new BufferedReader(fileReader, 8192);
                    } catch (Throwable unused) {
                    }
                } catch (Throwable th2) {
                    th2.printStackTrace();
                }
                try {
                    strArr[0] = bufferedReader.readLine().split("\\s+")[2];
                    bufferedReader.close();
                    fileReader.close();
                } catch (Throwable unused2) {
                    bufferedReader2 = bufferedReader;
                    if (bufferedReader2 != null) {
                        bufferedReader2.close();
                    }
                    if (fileReader != null) {
                        fileReader.close();
                    }
                    strArr[1] = Build.VERSION.RELEASE;
                    strArr[2] = Build.MODEL;
                    strArr[3] = Build.DISPLAY;
                    mVersion = strArr;
                    return mVersion;
                }
            } catch (Throwable unused3) {
                fileReader = null;
            }
            strArr[1] = Build.VERSION.RELEASE;
            strArr[2] = Build.MODEL;
            strArr[3] = Build.DISPLAY;
            mVersion = strArr;
        }
        return mVersion;
    }
}
