package com.facebook.soloader;

import android.content.Context;
/* loaded from: classes2.dex */
public class SoLoaderDSONotFoundError extends SoLoaderULError {
    public SoLoaderDSONotFoundError(String str, String str2) {
        super(str, str2);
    }

    public static SoLoaderDSONotFoundError d(String str, Context context, w[] wVarArr) {
        StringBuilder sb2 = new StringBuilder("couldn't find DSO to load: ");
        sb2.append(str);
        sb2.append("\n\texisting SO sources: ");
        for (int i10 = 0; i10 < wVarArr.length; i10++) {
            sb2.append("\n\t\tSoSource ");
            sb2.append(i10);
            sb2.append(": ");
            sb2.append(wVarArr[i10].toString());
        }
        if (context != null) {
            sb2.append("\n\tNative lib dir: ");
            sb2.append(context.getApplicationInfo().nativeLibraryDir);
            sb2.append("\n");
        }
        return new SoLoaderDSONotFoundError(str, sb2.toString());
    }
}
