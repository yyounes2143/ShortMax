package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public class zzha extends zzgk {
    public final int zzb;

    public zzha(zzgo zzgoVar, int i10, int i11) {
        super(zzb(2008, 1));
        this.zzb = 1;
    }

    public static zzha zza(IOException iOException, zzgo zzgoVar, int i10) {
        int i11;
        String message = iOException.getMessage();
        if (iOException instanceof SocketTimeoutException) {
            i11 = 2002;
        } else if (iOException instanceof InterruptedIOException) {
            i11 = 1004;
        } else if (message != null && zzfuv.zza(message).matches("cleartext.*not permitted.*")) {
            i11 = 2007;
        } else {
            i11 = 2001;
        }
        if (i11 == 2007) {
            return new zzgz(iOException, zzgoVar);
        }
        return new zzha(iOException, zzgoVar, i11, i10);
    }

    private static int zzb(int i10, int i11) {
        if (i10 == 2000) {
            if (i11 != 1) {
                return 2000;
            }
            return 2001;
        }
        return i10;
    }

    public zzha(IOException iOException, zzgo zzgoVar, int i10, int i11) {
        super(iOException, zzb(i10, i11));
        this.zzb = i11;
    }

    public zzha(String str, zzgo zzgoVar, int i10, int i11) {
        super(str, zzb(i10, i11));
        this.zzb = i11;
    }

    public zzha(String str, @Nullable IOException iOException, zzgo zzgoVar, int i10, int i11) {
        super(str, iOException, zzb(i10, i11));
        this.zzb = i11;
    }
}
