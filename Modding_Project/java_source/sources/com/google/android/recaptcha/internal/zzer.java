package com.google.android.recaptcha.internal;

import android.content.ContentValues;
import com.applovin.sdk.AppLovinErrorCodes;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import gt.g0;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* compiled from: com.google.android.recaptcha:recaptcha@@18.6.1 */
/* loaded from: classes5.dex */
final class zzer extends SuspendLambda implements Function2 {
    final /* synthetic */ zzes zza;
    final /* synthetic */ zztx zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzer(zzes zzesVar, zztx zztxVar, c cVar) {
        super(2, cVar);
        this.zza = zzesVar;
        this.zzb = zztxVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c create(Object obj, c cVar) {
        return new zzer(this.zza, this.zzb, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return ((zzer) create((g0) obj, (c) obj2)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        zzei zzeiVar;
        zzei zzeiVar2;
        zzei zzeiVar3;
        zzei zzeiVar4;
        zzei zzeiVar5;
        zzei zzeiVar6;
        kotlin.coroutines.intrinsics.a.f();
        f.b(obj);
        zztx zztxVar = this.zzb;
        zzes zzesVar = this.zza;
        synchronized (zzeo.class) {
            try {
                zzeiVar = zzesVar.zze;
                if (zzeiVar != null) {
                    byte[] zzd = zztxVar.zzd();
                    zzej zzejVar = new zzej(zzkh.zzg().zzi(zzd, 0, zzd.length), System.currentTimeMillis(), 0);
                    zzeiVar2 = zzesVar.zze;
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("ss", zzejVar.zzc());
                    contentValues.put(CampaignEx.JSON_KEY_ST_TS, Long.valueOf(zzejVar.zzb()));
                    zzeiVar2.getWritableDatabase().insert("ce", null, contentValues);
                    zzeiVar3 = zzesVar.zze;
                    int zzb = zzeiVar3.zzb() + AppLovinErrorCodes.INCENTIVIZED_SERVER_TIMEOUT;
                    if (zzb > 0) {
                        zzeiVar5 = zzesVar.zze;
                        List V0 = CollectionsKt.V0(zzeiVar5.zzd(), zzb);
                        zzeiVar6 = zzesVar.zze;
                        zzeiVar6.zza(V0);
                    }
                    zzeiVar4 = zzesVar.zze;
                    if (zzeiVar4.zzb() >= 20) {
                        zzesVar.zzg();
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return Unit.f60915a;
    }
}
