package com.mbridge.msdk.dycreator.utils;

import android.util.Log;
/* compiled from: Logger.java */
/* loaded from: classes5.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    public static boolean f26587a = false;

    public static void a(String str) {
        if (f26587a) {
            new SecurityManager();
            Log.e(new Throwable().getStackTrace()[1].getFileName(), str);
        }
    }
}
