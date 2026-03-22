package com.google.android.gms.internal.p003firebaseauthapi;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
/* renamed from: com.google.android.gms.internal.firebase-auth-api.zzanz  reason: invalid package */
/* loaded from: classes4.dex */
public final class zzanz {
    static final boolean zza;
    private static final Unsafe zzb;
    private static final Class<?> zzc;
    private static final boolean zzd;
    private static final boolean zze;
    private static final zzc zzf;
    private static final boolean zzg;
    private static final boolean zzh;
    private static final long zzi;

    /* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
    /* renamed from: com.google.android.gms.internal.firebase-auth-api.zzanz$zza */
    /* loaded from: classes4.dex */
    private static final class zza extends zzc {
        zza(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.p003firebaseauthapi.zzanz.zzc
        public final double zza(Object obj, long j10) {
            return Double.longBitsToDouble(zze(obj, j10));
        }

        @Override // com.google.android.gms.internal.p003firebaseauthapi.zzanz.zzc
        public final float zzb(Object obj, long j10) {
            return Float.intBitsToFloat(zzd(obj, j10));
        }

        @Override // com.google.android.gms.internal.p003firebaseauthapi.zzanz.zzc
        public final boolean zzc(Object obj, long j10) {
            if (zzanz.zza) {
                return zzanz.zzf(obj, j10);
            }
            return zzanz.zzg(obj, j10);
        }

        @Override // com.google.android.gms.internal.p003firebaseauthapi.zzanz.zzc
        public final void zza(Object obj, long j10, boolean z10) {
            if (zzanz.zza) {
                zzanz.zza(obj, j10, z10);
            } else {
                zzanz.zzb(obj, j10, z10);
            }
        }

        @Override // com.google.android.gms.internal.p003firebaseauthapi.zzanz.zzc
        public final void zza(Object obj, long j10, byte b10) {
            if (!zzanz.zza) {
                zzanz.zzd(obj, j10, b10);
            } else {
                zzanz.zzc(obj, j10, b10);
            }
        }

        @Override // com.google.android.gms.internal.p003firebaseauthapi.zzanz.zzc
        public final void zza(Object obj, long j10, double d10) {
            zza(obj, j10, Double.doubleToLongBits(d10));
        }

        @Override // com.google.android.gms.internal.p003firebaseauthapi.zzanz.zzc
        public final void zza(Object obj, long j10, float f10) {
            zza(obj, j10, Float.floatToIntBits(f10));
        }
    }

    /* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
    /* renamed from: com.google.android.gms.internal.firebase-auth-api.zzanz$zzb */
    /* loaded from: classes4.dex */
    private static final class zzb extends zzc {
        zzb(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.p003firebaseauthapi.zzanz.zzc
        public final double zza(Object obj, long j10) {
            return Double.longBitsToDouble(zze(obj, j10));
        }

        @Override // com.google.android.gms.internal.p003firebaseauthapi.zzanz.zzc
        public final float zzb(Object obj, long j10) {
            return Float.intBitsToFloat(zzd(obj, j10));
        }

        @Override // com.google.android.gms.internal.p003firebaseauthapi.zzanz.zzc
        public final boolean zzc(Object obj, long j10) {
            if (zzanz.zza) {
                return zzanz.zzf(obj, j10);
            }
            return zzanz.zzg(obj, j10);
        }

        @Override // com.google.android.gms.internal.p003firebaseauthapi.zzanz.zzc
        public final void zza(Object obj, long j10, boolean z10) {
            if (zzanz.zza) {
                zzanz.zza(obj, j10, z10);
            } else {
                zzanz.zzb(obj, j10, z10);
            }
        }

        @Override // com.google.android.gms.internal.p003firebaseauthapi.zzanz.zzc
        public final void zza(Object obj, long j10, byte b10) {
            if (!zzanz.zza) {
                zzanz.zzd(obj, j10, b10);
            } else {
                zzanz.zzc(obj, j10, b10);
            }
        }

        @Override // com.google.android.gms.internal.p003firebaseauthapi.zzanz.zzc
        public final void zza(Object obj, long j10, double d10) {
            zza(obj, j10, Double.doubleToLongBits(d10));
        }

        @Override // com.google.android.gms.internal.p003firebaseauthapi.zzanz.zzc
        public final void zza(Object obj, long j10, float f10) {
            zza(obj, j10, Float.floatToIntBits(f10));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: com.google.firebase:firebase-auth@@24.0.1 */
    /* renamed from: com.google.android.gms.internal.firebase-auth-api.zzanz$zzc */
    /* loaded from: classes4.dex */
    public static abstract class zzc {
        Unsafe zza;

        zzc(Unsafe unsafe) {
            this.zza = unsafe;
        }

        public abstract double zza(Object obj, long j10);

        public abstract void zza(Object obj, long j10, byte b10);

        public abstract void zza(Object obj, long j10, double d10);

        public abstract void zza(Object obj, long j10, float f10);

        public final void zza(Object obj, long j10, int i10) {
            this.zza.putInt(obj, j10, i10);
        }

        public abstract void zza(Object obj, long j10, boolean z10);

        public abstract float zzb(Object obj, long j10);

        public final boolean zzb() {
            Unsafe unsafe = this.zza;
            if (unsafe == null) {
                return false;
            }
            try {
                Class<?> cls = unsafe.getClass();
                cls.getMethod("objectFieldOffset", Field.class);
                cls.getMethod("getLong", Object.class, Long.TYPE);
                return zzanz.zza() != null;
            } catch (Throwable th2) {
                zzanz.zza(th2);
                return false;
            }
        }

        public abstract boolean zzc(Object obj, long j10);

        public final int zzd(Object obj, long j10) {
            return this.zza.getInt(obj, j10);
        }

        public final long zze(Object obj, long j10) {
            return this.zza.getLong(obj, j10);
        }

        public final void zza(Object obj, long j10, long j11) {
            this.zza.putLong(obj, j10, j11);
        }

        public final boolean zza() {
            Unsafe unsafe = this.zza;
            if (unsafe == null) {
                return false;
            }
            try {
                Class<?> cls = unsafe.getClass();
                cls.getMethod("objectFieldOffset", Field.class);
                cls.getMethod("arrayBaseOffset", Class.class);
                cls.getMethod("arrayIndexScale", Class.class);
                Class cls2 = Long.TYPE;
                cls.getMethod("getInt", Object.class, cls2);
                cls.getMethod("putInt", Object.class, cls2, Integer.TYPE);
                cls.getMethod("getLong", Object.class, cls2);
                cls.getMethod("putLong", Object.class, cls2, cls2);
                cls.getMethod("getObject", Object.class, cls2);
                cls.getMethod("putObject", Object.class, cls2, Object.class);
                return true;
            } catch (Throwable th2) {
                zzanz.zza(th2);
                return false;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0095  */
    static {
        /*
            sun.misc.Unsafe r0 = zzb()
            com.google.android.gms.internal.p003firebaseauthapi.zzanz.zzb = r0
            java.lang.Class r1 = com.google.android.gms.internal.p003firebaseauthapi.zzajs.zza()
            com.google.android.gms.internal.p003firebaseauthapi.zzanz.zzc = r1
            java.lang.Class r1 = java.lang.Long.TYPE
            boolean r1 = zzd(r1)
            com.google.android.gms.internal.p003firebaseauthapi.zzanz.zzd = r1
            java.lang.Class r2 = java.lang.Integer.TYPE
            boolean r2 = zzd(r2)
            com.google.android.gms.internal.p003firebaseauthapi.zzanz.zze = r2
            if (r0 == 0) goto L2e
            if (r1 == 0) goto L26
            com.google.android.gms.internal.firebase-auth-api.zzanz$zza r1 = new com.google.android.gms.internal.firebase-auth-api.zzanz$zza
            r1.<init>(r0)
            goto L2f
        L26:
            if (r2 == 0) goto L2e
            com.google.android.gms.internal.firebase-auth-api.zzanz$zzb r1 = new com.google.android.gms.internal.firebase-auth-api.zzanz$zzb
            r1.<init>(r0)
            goto L2f
        L2e:
            r1 = 0
        L2f:
            com.google.android.gms.internal.p003firebaseauthapi.zzanz.zzf = r1
            r0 = 0
            if (r1 != 0) goto L36
            r2 = r0
            goto L3a
        L36:
            boolean r2 = r1.zzb()
        L3a:
            com.google.android.gms.internal.p003firebaseauthapi.zzanz.zzg = r2
            if (r1 != 0) goto L40
            r2 = r0
            goto L44
        L40:
            boolean r2 = r1.zza()
        L44:
            com.google.android.gms.internal.p003firebaseauthapi.zzanz.zzh = r2
            java.lang.Class<byte[]> r2 = byte[].class
            int r2 = zzb(r2)
            long r2 = (long) r2
            com.google.android.gms.internal.p003firebaseauthapi.zzanz.zzi = r2
            java.lang.Class<boolean[]> r2 = boolean[].class
            zzb(r2)
            zzc(r2)
            java.lang.Class<int[]> r2 = int[].class
            zzb(r2)
            zzc(r2)
            java.lang.Class<long[]> r2 = long[].class
            zzb(r2)
            zzc(r2)
            java.lang.Class<float[]> r2 = float[].class
            zzb(r2)
            zzc(r2)
            java.lang.Class<double[]> r2 = double[].class
            zzb(r2)
            zzc(r2)
            java.lang.Class<java.lang.Object[]> r2 = java.lang.Object[].class
            zzb(r2)
            zzc(r2)
            java.lang.reflect.Field r2 = zze()
            if (r2 == 0) goto L8d
            if (r1 != 0) goto L88
            goto L8d
        L88:
            sun.misc.Unsafe r1 = r1.zza
            r1.objectFieldOffset(r2)
        L8d:
            java.nio.ByteOrder r1 = java.nio.ByteOrder.nativeOrder()
            java.nio.ByteOrder r2 = java.nio.ByteOrder.BIG_ENDIAN
            if (r1 != r2) goto L96
            r0 = 1
        L96:
            com.google.android.gms.internal.p003firebaseauthapi.zzanz.zza = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.p003firebaseauthapi.zzanz.<clinit>():void");
    }

    private zzanz() {
    }

    static /* synthetic */ Field zza() {
        return zze();
    }

    private static int zzc(Class<?> cls) {
        if (zzh) {
            return zzf.zza.arrayIndexScale(cls);
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long zzd(Object obj, long j10) {
        return zzf.zze(obj, j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object zze(Object obj, long j10) {
        return zzf.zza.getObject(obj, j10);
    }

    static /* synthetic */ boolean zzf(Object obj, long j10) {
        if (((byte) (zzc(obj, (-4) & j10) >>> ((int) (((~j10) & 3) << 3)))) != 0) {
            return true;
        }
        return false;
    }

    static /* synthetic */ boolean zzg(Object obj, long j10) {
        if (((byte) (zzc(obj, (-4) & j10) >>> ((int) ((j10 & 3) << 3)))) != 0) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zzh(Object obj, long j10) {
        return zzf.zzc(obj, j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float zzb(Object obj, long j10) {
        return zzf.zzb(obj, j10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zzd(Object obj, long j10, byte b10) {
        long j11 = (-4) & j10;
        int i10 = (((int) j10) & 3) << 3;
        zza(obj, j11, ((255 & b10) << i10) | (zzc(obj, j11) & (~(255 << i10))));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static double zza(Object obj, long j10) {
        return zzf.zza(obj, j10);
    }

    private static int zzb(Class<?> cls) {
        if (zzh) {
            return zzf.zza.arrayBaseOffset(cls);
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzc(Object obj, long j10) {
        return zzf.zzd(obj, j10);
    }

    private static Field zze() {
        Field zza2 = zza(Buffer.class, "effectiveDirectAddress");
        if (zza2 != null) {
            return zza2;
        }
        Field zza3 = zza(Buffer.class, "address");
        if (zza3 == null || zza3.getType() != Long.TYPE) {
            return null;
        }
        return zza3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> T zza(Class<T> cls) {
        try {
            return (T) zzb.allocateInstance(cls);
        } catch (InstantiationException e10) {
            throw new IllegalStateException(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zzc(Object obj, long j10, boolean z10) {
        zzf.zza(obj, j10, z10);
    }

    private static boolean zzd(Class<?> cls) {
        try {
            Class<?> cls2 = zzc;
            Class cls3 = Boolean.TYPE;
            cls2.getMethod("peekLong", cls, cls3);
            cls2.getMethod("pokeLong", cls, Long.TYPE, cls3);
            Class cls4 = Integer.TYPE;
            cls2.getMethod("pokeInt", cls, cls4, cls3);
            cls2.getMethod("peekInt", cls, cls3);
            cls2.getMethod("pokeByte", cls, Byte.TYPE);
            cls2.getMethod("peekByte", cls);
            cls2.getMethod("pokeByteArray", cls, byte[].class, cls4, cls4);
            cls2.getMethod("peekByteArray", cls, byte[].class, cls4, cls4);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Unsafe zzb() {
        try {
            return (Unsafe) AccessController.doPrivileged(new zzany());
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zzc(Object obj, long j10, byte b10) {
        long j11 = (-4) & j10;
        int zzc2 = zzc(obj, j11);
        int i10 = ((~((int) j10)) & 3) << 3;
        zza(obj, j11, ((255 & b10) << i10) | (zzc2 & (~(255 << i10))));
    }

    private static Field zza(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    static /* synthetic */ void zza(Throwable th2) {
        Logger logger = Logger.getLogger(zzanz.class.getName());
        Level level = Level.WARNING;
        String valueOf = String.valueOf(th2);
        logger.logp(level, "com.google.protobuf.UnsafeUtil", "logMissingMethod", "platform method missing - proto runtime falling back to safer methods: " + valueOf);
    }

    static /* synthetic */ void zzb(Object obj, long j10, boolean z10) {
        zzd(obj, j10, z10 ? (byte) 1 : (byte) 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zzc() {
        return zzh;
    }

    static /* synthetic */ void zza(Object obj, long j10, boolean z10) {
        zzc(obj, j10, z10 ? (byte) 1 : (byte) 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(byte[] bArr, long j10, byte b10) {
        zzf.zza((Object) bArr, zzi + j10, b10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(Object obj, long j10, double d10) {
        zzf.zza(obj, j10, d10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(Object obj, long j10, float f10) {
        zzf.zza(obj, j10, f10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(Object obj, long j10, int i10) {
        zzf.zza(obj, j10, i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zzd() {
        return zzg;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(Object obj, long j10, long j11) {
        zzf.zza(obj, j10, j11);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(Object obj, long j10, Object obj2) {
        zzf.zza.putObject(obj, j10, obj2);
    }
}
