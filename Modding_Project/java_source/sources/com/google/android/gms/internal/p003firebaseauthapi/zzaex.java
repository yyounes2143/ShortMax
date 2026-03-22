package com.google.android.gms.internal.p003firebaseauthapi;

import java.lang.reflect.Type;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzaex  reason: invalid package */
/* loaded from: classes4.dex */
public class zzaex {
    private zzaex() {
    }

    public static Object zza(String str, Type type) throws zzacn {
        if (type == String.class) {
            try {
                zzagt zzagtVar = (zzagt) new zzagt().zza(str);
                if (zzagtVar.zzb()) {
                    return zzagtVar.zza();
                }
                throw new zzacn("No error message: " + str);
            } catch (Exception e10) {
                String message = e10.getMessage();
                throw new zzacn("Json conversion failed! " + message, e10);
            }
        } else if (type == Void.class) {
            return null;
        } else {
            try {
                try {
                    return ((zzaez) ((Class) type).getConstructor(new Class[0]).newInstance(new Object[0])).zza(str);
                } catch (Exception e11) {
                    String message2 = e11.getMessage();
                    throw new zzacn("Json conversion failed! " + message2, e11);
                }
            } catch (Exception e12) {
                String valueOf = String.valueOf(type);
                throw new zzacn("Instantiation of JsonResponse failed! " + valueOf, e12);
            }
        }
    }
}
