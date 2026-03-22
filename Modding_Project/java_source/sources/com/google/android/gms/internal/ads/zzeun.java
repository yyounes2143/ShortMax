package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import androidx.annotation.Nullable;
import com.huawei.hms.support.api.entity.common.CommonConstant;
import java.util.concurrent.Callable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzeun implements zzeuc {
    private final zzgdy zza;
    private final Context zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzeun(zzgdy zzgdyVar, Context context) {
        this.zza = zzgdyVar;
        this.zzb = context;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(27:1|(2:4|2)|5|6|(3:70|71|(22:73|9|10|11|(17:13|14|(2:16|(2:18|(1:20))(1:21))|22|23|(2:53|(3:56|(3:59|(2:62|63)(1:61)|57)|64))|25|26|(2:28|(8:30|31|(8:43|44|(1:48)|50|(1:36)(1:42)|(1:38)|39|40)(1:33)|34|(0)(0)|(0)|39|40))|52|31|(0)(0)|34|(0)(0)|(0)|39|40)|66|14|(0)|22|23|(0)|25|26|(0)|52|31|(0)(0)|34|(0)(0)|(0)|39|40))|8|9|10|11|(0)|66|14|(0)|22|23|(0)|25|26|(0)|52|31|(0)(0)|34|(0)(0)|(0)|39|40) */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0096 A[Catch: Exception -> 0x00ad, TRY_LEAVE, TryCatch #0 {Exception -> 0x00ad, blocks: (B:16:0x008a, B:18:0x0096), top: B:70:0x008a }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0184  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01c6  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01cb  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x01cd  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01d1  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01a4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ com.google.android.gms.internal.ads.zzeul zzc(com.google.android.gms.internal.ads.zzeun r27) {
        /*
            Method dump skipped, instructions count: 485
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzeun.zzc(com.google.android.gms.internal.ads.zzeun):com.google.android.gms.internal.ads.zzeul");
    }

    @Nullable
    private static ResolveInfo zzd(PackageManager packageManager, String str) {
        return packageManager.resolveActivity(new Intent(CommonConstant.ACTION.HWID_SCHEME_URL, Uri.parse(str)), 65536);
    }

    @Override // com.google.android.gms.internal.ads.zzeuc
    public final int zza() {
        return 38;
    }

    @Override // com.google.android.gms.internal.ads.zzeuc
    public final com.google.common.util.concurrent.e zzb() {
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzeum
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzeun.zzc(zzeun.this);
            }
        });
    }
}
