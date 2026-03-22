package com.inmobi.media;

import android.content.Context;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.inmobi.media.wa  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public abstract class AbstractC3226wa {
    public static final boolean a(Context context, String permission) {
        Intrinsics.checkNotNullParameter(permission, "permission");
        if (context == null) {
            return false;
        }
        try {
            if (context.checkCallingOrSelfPermission(permission) != 0) {
                return false;
            }
            return true;
        } catch (Exception unused) {
            return false;
        }
    }
}
