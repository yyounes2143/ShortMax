package com.google.android.recaptcha.internal;

import java.net.ConnectException;
import java.net.Socket;
import java.util.ArrayList;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
public final class zzic implements zzih {
    private static final boolean zzb(int i10) {
        try {
            new Socket("localhost", i10).close();
            return true;
        } catch (ConnectException unused) {
            return false;
        }
    }

    @Override // com.google.android.recaptcha.internal.zzih
    public final /* synthetic */ Object cs(Object[] objArr) {
        return zzie.zza(this, objArr);
    }

    @Override // com.google.android.recaptcha.internal.zzih
    @Nullable
    public final Object zza(@NotNull Object... objArr) {
        ArrayList<Number> arrayList = new ArrayList(objArr.length);
        for (Object obj : objArr) {
            if (true != (obj instanceof Integer)) {
                obj = null;
            }
            Integer num = (Integer) obj;
            if (num != null) {
                arrayList.add(Integer.valueOf(num.intValue()));
            } else {
                throw new zzce(4, 5, null);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Number number : arrayList) {
            int intValue = number.intValue();
            if (zzb(intValue)) {
                arrayList2.add(Integer.valueOf(intValue));
            }
        }
        return arrayList2;
    }
}
