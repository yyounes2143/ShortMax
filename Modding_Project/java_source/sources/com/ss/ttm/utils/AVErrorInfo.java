package com.ss.ttm.utils;

import android.content.Context;
import java.util.Locale;
/* loaded from: classes6.dex */
public class AVErrorInfo {
    public static final String CRASH = "crash";
    public static final String ERROR = "error";
    private static StringBuilder PHONE_INFO;

    public static void setupErrorInfo(Context context, StringBuilder sb2, String str, String str2, String str3) {
        if (PHONE_INFO == null) {
            StringBuilder sb3 = new StringBuilder();
            PHONE_INFO = sb3;
            setupPhoneInfo(context, sb3);
        }
        sb2.append((CharSequence) PHONE_INFO);
        sb2.append("\r\n");
        sb2.append(str);
        sb2.append(":");
        sb2.append(str2);
    }

    public static final void setupPhoneInfo(Context context, StringBuilder sb2) {
        String[] version = VersionInfo.getVersion();
        if (version != null) {
            sb2.append(String.format("version:%s,%s,%s\r\n", version[0], version[1], version[2]));
            sb2.append("\r\n");
        }
        long[] romMemroy = MemoryInfo.getRomMemroy();
        if (romMemroy != null) {
            sb2.append(String.format(Locale.US, "rom memory totle:%d,availe:%d\r\n", Long.valueOf(romMemroy[0]), Long.valueOf(romMemroy[1])));
            sb2.append("\r\n");
        }
        long availMemory = MemoryInfo.getAvailMemory(context);
        long tolalMemory = MemoryInfo.getTolalMemory();
        Locale locale = Locale.US;
        sb2.append(String.format(locale, "ram memory totle:%d,availe:%d\r\n", Long.valueOf(tolalMemory), Long.valueOf(availMemory)));
        sb2.append("\r\n");
        long[] sDCardSize = HardWareInfo.getSDCardSize(context);
        if (sDCardSize != null) {
            sb2.append(String.format(locale, "sdcard totle:%d,availe:%d\r\n", Long.valueOf(sDCardSize[0]), Long.valueOf(sDCardSize[1])));
            sb2.append("\r\n");
        }
    }
}
