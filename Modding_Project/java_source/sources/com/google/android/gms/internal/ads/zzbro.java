package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* compiled from: com.google.android.gms:play-services-ads-api@@24.5.0 */
/* loaded from: classes4.dex */
public abstract class zzbro extends zzayu implements zzbrp {
    public zzbro() {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter");
    }

    public static zzbrp zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter");
        if (queryLocalInterface instanceof zzbrp) {
            return (zzbrp) queryLocalInterface;
        }
        return new zzbrn(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzayu
    protected final boolean zzde(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        zzbrs zzbrsVar = null;
        zzbra zzbqyVar = null;
        zzbrj zzbrhVar = null;
        zzbrd zzbrbVar = null;
        zzbrm zzbrkVar = null;
        zzbrj zzbrhVar2 = null;
        zzbrm zzbrkVar2 = null;
        zzbrg zzbreVar = null;
        zzbrd zzbrbVar2 = null;
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 != 5) {
                        if (i10 != 10) {
                            if (i10 != 11) {
                                switch (i10) {
                                    case 13:
                                        String readString = parcel.readString();
                                        String readString2 = parcel.readString();
                                        com.google.android.gms.ads.internal.client.zzm zzmVar = (com.google.android.gms.ads.internal.client.zzm) zzayv.zza(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                                        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                                        IBinder readStrongBinder = parcel.readStrongBinder();
                                        if (readStrongBinder != null) {
                                            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback");
                                            if (queryLocalInterface instanceof zzbrd) {
                                                zzbrbVar2 = (zzbrd) queryLocalInterface;
                                            } else {
                                                zzbrbVar2 = new zzbrb(readStrongBinder);
                                            }
                                        }
                                        zzbrd zzbrdVar = zzbrbVar2;
                                        zzayv.zzd(parcel);
                                        zzj(readString, readString2, zzmVar, asInterface, zzbrdVar, zzbpv.zzb(parcel.readStrongBinder()), (com.google.android.gms.ads.internal.client.zzr) zzayv.zza(parcel, com.google.android.gms.ads.internal.client.zzr.CREATOR));
                                        parcel2.writeNoException();
                                        break;
                                    case 14:
                                        String readString3 = parcel.readString();
                                        String readString4 = parcel.readString();
                                        com.google.android.gms.ads.internal.client.zzm zzmVar2 = (com.google.android.gms.ads.internal.client.zzm) zzayv.zza(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                                        IObjectWrapper asInterface2 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                                        IBinder readStrongBinder2 = parcel.readStrongBinder();
                                        if (readStrongBinder2 != null) {
                                            IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IInterstitialCallback");
                                            if (queryLocalInterface2 instanceof zzbrg) {
                                                zzbreVar = (zzbrg) queryLocalInterface2;
                                            } else {
                                                zzbreVar = new zzbre(readStrongBinder2);
                                            }
                                        }
                                        zzbrg zzbrgVar = zzbreVar;
                                        zzbpw zzb = zzbpv.zzb(parcel.readStrongBinder());
                                        zzayv.zzd(parcel);
                                        zzl(readString3, readString4, zzmVar2, asInterface2, zzbrgVar, zzb);
                                        parcel2.writeNoException();
                                        break;
                                    case 15:
                                        IObjectWrapper asInterface3 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                                        zzayv.zzd(parcel);
                                        boolean zzs = zzs(asInterface3);
                                        parcel2.writeNoException();
                                        parcel2.writeInt(zzs ? 1 : 0);
                                        break;
                                    case 16:
                                        String readString5 = parcel.readString();
                                        String readString6 = parcel.readString();
                                        com.google.android.gms.ads.internal.client.zzm zzmVar3 = (com.google.android.gms.ads.internal.client.zzm) zzayv.zza(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                                        IObjectWrapper asInterface4 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                                        IBinder readStrongBinder3 = parcel.readStrongBinder();
                                        if (readStrongBinder3 != null) {
                                            IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IRewardedCallback");
                                            if (queryLocalInterface3 instanceof zzbrm) {
                                                zzbrkVar2 = (zzbrm) queryLocalInterface3;
                                            } else {
                                                zzbrkVar2 = new zzbrk(readStrongBinder3);
                                            }
                                        }
                                        zzbrm zzbrmVar = zzbrkVar2;
                                        zzbpw zzb2 = zzbpv.zzb(parcel.readStrongBinder());
                                        zzayv.zzd(parcel);
                                        zzp(readString5, readString6, zzmVar3, asInterface4, zzbrmVar, zzb2);
                                        parcel2.writeNoException();
                                        break;
                                    case 17:
                                        IObjectWrapper asInterface5 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                                        zzayv.zzd(parcel);
                                        boolean zzt = zzt(asInterface5);
                                        parcel2.writeNoException();
                                        parcel2.writeInt(zzt ? 1 : 0);
                                        break;
                                    case 18:
                                        String readString7 = parcel.readString();
                                        String readString8 = parcel.readString();
                                        com.google.android.gms.ads.internal.client.zzm zzmVar4 = (com.google.android.gms.ads.internal.client.zzm) zzayv.zza(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                                        IObjectWrapper asInterface6 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                                        IBinder readStrongBinder4 = parcel.readStrongBinder();
                                        if (readStrongBinder4 != null) {
                                            IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.INativeCallback");
                                            if (queryLocalInterface4 instanceof zzbrj) {
                                                zzbrhVar2 = (zzbrj) queryLocalInterface4;
                                            } else {
                                                zzbrhVar2 = new zzbrh(readStrongBinder4);
                                            }
                                        }
                                        zzbrj zzbrjVar = zzbrhVar2;
                                        zzbpw zzb3 = zzbpv.zzb(parcel.readStrongBinder());
                                        zzayv.zzd(parcel);
                                        zzm(readString7, readString8, zzmVar4, asInterface6, zzbrjVar, zzb3);
                                        parcel2.writeNoException();
                                        break;
                                    case 19:
                                        String readString9 = parcel.readString();
                                        zzayv.zzd(parcel);
                                        zzq(readString9);
                                        parcel2.writeNoException();
                                        break;
                                    case 20:
                                        String readString10 = parcel.readString();
                                        String readString11 = parcel.readString();
                                        com.google.android.gms.ads.internal.client.zzm zzmVar5 = (com.google.android.gms.ads.internal.client.zzm) zzayv.zza(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                                        IObjectWrapper asInterface7 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                                        IBinder readStrongBinder5 = parcel.readStrongBinder();
                                        if (readStrongBinder5 != null) {
                                            IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IRewardedCallback");
                                            if (queryLocalInterface5 instanceof zzbrm) {
                                                zzbrkVar = (zzbrm) queryLocalInterface5;
                                            } else {
                                                zzbrkVar = new zzbrk(readStrongBinder5);
                                            }
                                        }
                                        zzbrm zzbrmVar2 = zzbrkVar;
                                        zzbpw zzb4 = zzbpv.zzb(parcel.readStrongBinder());
                                        zzayv.zzd(parcel);
                                        zzo(readString10, readString11, zzmVar5, asInterface7, zzbrmVar2, zzb4);
                                        parcel2.writeNoException();
                                        break;
                                    case 21:
                                        String readString12 = parcel.readString();
                                        String readString13 = parcel.readString();
                                        com.google.android.gms.ads.internal.client.zzm zzmVar6 = (com.google.android.gms.ads.internal.client.zzm) zzayv.zza(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                                        IObjectWrapper asInterface8 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                                        IBinder readStrongBinder6 = parcel.readStrongBinder();
                                        if (readStrongBinder6 != null) {
                                            IInterface queryLocalInterface6 = readStrongBinder6.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback");
                                            if (queryLocalInterface6 instanceof zzbrd) {
                                                zzbrbVar = (zzbrd) queryLocalInterface6;
                                            } else {
                                                zzbrbVar = new zzbrb(readStrongBinder6);
                                            }
                                        }
                                        zzbrd zzbrdVar2 = zzbrbVar;
                                        zzayv.zzd(parcel);
                                        zzk(readString12, readString13, zzmVar6, asInterface8, zzbrdVar2, zzbpv.zzb(parcel.readStrongBinder()), (com.google.android.gms.ads.internal.client.zzr) zzayv.zza(parcel, com.google.android.gms.ads.internal.client.zzr.CREATOR));
                                        parcel2.writeNoException();
                                        break;
                                    case 22:
                                        String readString14 = parcel.readString();
                                        String readString15 = parcel.readString();
                                        com.google.android.gms.ads.internal.client.zzm zzmVar7 = (com.google.android.gms.ads.internal.client.zzm) zzayv.zza(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                                        IObjectWrapper asInterface9 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                                        IBinder readStrongBinder7 = parcel.readStrongBinder();
                                        if (readStrongBinder7 != null) {
                                            IInterface queryLocalInterface7 = readStrongBinder7.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.INativeCallback");
                                            if (queryLocalInterface7 instanceof zzbrj) {
                                                zzbrhVar = (zzbrj) queryLocalInterface7;
                                            } else {
                                                zzbrhVar = new zzbrh(readStrongBinder7);
                                            }
                                        }
                                        zzbrj zzbrjVar2 = zzbrhVar;
                                        zzayv.zzd(parcel);
                                        zzn(readString14, readString15, zzmVar7, asInterface9, zzbrjVar2, zzbpv.zzb(parcel.readStrongBinder()), (zzbge) zzayv.zza(parcel, zzbge.CREATOR));
                                        parcel2.writeNoException();
                                        break;
                                    case 23:
                                        String readString16 = parcel.readString();
                                        String readString17 = parcel.readString();
                                        com.google.android.gms.ads.internal.client.zzm zzmVar8 = (com.google.android.gms.ads.internal.client.zzm) zzayv.zza(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                                        IObjectWrapper asInterface10 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                                        IBinder readStrongBinder8 = parcel.readStrongBinder();
                                        if (readStrongBinder8 != null) {
                                            IInterface queryLocalInterface8 = readStrongBinder8.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IAppOpenCallback");
                                            if (queryLocalInterface8 instanceof zzbra) {
                                                zzbqyVar = (zzbra) queryLocalInterface8;
                                            } else {
                                                zzbqyVar = new zzbqy(readStrongBinder8);
                                            }
                                        }
                                        zzbra zzbraVar = zzbqyVar;
                                        zzbpw zzb5 = zzbpv.zzb(parcel.readStrongBinder());
                                        zzayv.zzd(parcel);
                                        zzi(readString16, readString17, zzmVar8, asInterface10, zzbraVar, zzb5);
                                        parcel2.writeNoException();
                                        break;
                                    case 24:
                                        IObjectWrapper asInterface11 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                                        zzayv.zzd(parcel);
                                        boolean zzr = zzr(asInterface11);
                                        parcel2.writeNoException();
                                        parcel2.writeInt(zzr ? 1 : 0);
                                        break;
                                    default:
                                        return false;
                                }
                            } else {
                                parcel.createStringArray();
                                Bundle[] bundleArr = (Bundle[]) parcel.createTypedArray(Bundle.CREATOR);
                                zzayv.zzd(parcel);
                                parcel2.writeNoException();
                            }
                        } else {
                            IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                            zzayv.zzd(parcel);
                            parcel2.writeNoException();
                        }
                    } else {
                        com.google.android.gms.ads.internal.client.zzed zze = zze();
                        parcel2.writeNoException();
                        zzayv.zzg(parcel2, zze);
                    }
                } else {
                    zzbse zzg = zzg();
                    parcel2.writeNoException();
                    zzayv.zzf(parcel2, zzg);
                }
            } else {
                zzbse zzf = zzf();
                parcel2.writeNoException();
                zzayv.zzf(parcel2, zzf);
            }
        } else {
            IObjectWrapper asInterface12 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
            String readString18 = parcel.readString();
            Parcelable.Creator creator = Bundle.CREATOR;
            Bundle bundle = (Bundle) zzayv.zza(parcel, creator);
            Bundle bundle2 = (Bundle) zzayv.zza(parcel, creator);
            com.google.android.gms.ads.internal.client.zzr zzrVar = (com.google.android.gms.ads.internal.client.zzr) zzayv.zza(parcel, com.google.android.gms.ads.internal.client.zzr.CREATOR);
            IBinder readStrongBinder9 = parcel.readStrongBinder();
            if (readStrongBinder9 != null) {
                IInterface queryLocalInterface9 = readStrongBinder9.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.ISignalsCallback");
                if (queryLocalInterface9 instanceof zzbrs) {
                    zzbrsVar = (zzbrs) queryLocalInterface9;
                } else {
                    zzbrsVar = new zzbrq(readStrongBinder9);
                }
            }
            zzbrs zzbrsVar2 = zzbrsVar;
            zzayv.zzd(parcel);
            zzh(asInterface12, readString18, bundle, bundle2, zzrVar, zzbrsVar2);
            parcel2.writeNoException();
        }
        return true;
    }
}
