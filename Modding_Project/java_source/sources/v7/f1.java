package v7;

import com.google.android.gms.internal.p003firebaseauthapi.zzaif;
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* loaded from: classes5.dex */
public final class f1 {

    /* renamed from: a  reason: collision with root package name */
    private final int f68761a;

    /* renamed from: b  reason: collision with root package name */
    private final String f68762b;

    /* renamed from: c  reason: collision with root package name */
    private final String f68763c;

    /* renamed from: d  reason: collision with root package name */
    private final com.google.firebase.auth.b f68764d;

    public f1(zzaif zzaifVar) {
        String zzb;
        int i10 = 5;
        if (zzaifVar.zzg()) {
            zzb = zzaifVar.zzc();
        } else {
            zzb = zzaifVar.zzb();
        }
        this.f68762b = zzb;
        this.f68763c = zzaifVar.zzb();
        com.google.firebase.auth.b bVar = null;
        if (!zzaifVar.zzh()) {
            this.f68761a = 3;
            this.f68764d = null;
            return;
        }
        String zzd = zzaifVar.zzd();
        zzd.hashCode();
        char c10 = 65535;
        switch (zzd.hashCode()) {
            case -1874510116:
                if (zzd.equals("REVERT_SECOND_FACTOR_ADDITION")) {
                    c10 = 0;
                    break;
                }
                break;
            case -1452371317:
                if (zzd.equals("PASSWORD_RESET")) {
                    c10 = 1;
                    break;
                }
                break;
            case -1341836234:
                if (zzd.equals("VERIFY_EMAIL")) {
                    c10 = 2;
                    break;
                }
                break;
            case -1099157829:
                if (zzd.equals("VERIFY_AND_CHANGE_EMAIL")) {
                    c10 = 3;
                    break;
                }
                break;
            case 870738373:
                if (zzd.equals("EMAIL_SIGNIN")) {
                    c10 = 4;
                    break;
                }
                break;
            case 970484929:
                if (zzd.equals("RECOVER_EMAIL")) {
                    c10 = 5;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                i10 = 6;
                break;
            case 1:
                i10 = 0;
                break;
            case 2:
                i10 = 1;
                break;
            case 3:
                break;
            case 4:
                i10 = 4;
                break;
            case 5:
                i10 = 2;
                break;
            default:
                i10 = 3;
                break;
        }
        this.f68761a = i10;
        if (i10 != 4 && i10 != 3) {
            if (zzaifVar.zzf()) {
                bVar = new g1(zzaifVar.zzb(), u.a(zzaifVar.zza()));
            } else if (zzaifVar.zzg()) {
                bVar = new e1(zzaifVar.zzc(), zzaifVar.zzb());
            } else if (zzaifVar.zze()) {
                bVar = new d1(zzaifVar.zzb());
            }
            this.f68764d = bVar;
            return;
        }
        this.f68764d = null;
    }

    public final int a() {
        return this.f68761a;
    }
}
