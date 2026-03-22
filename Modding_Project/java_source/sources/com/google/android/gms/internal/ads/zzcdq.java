package com.google.android.gms.internal.ads;

import java.io.File;
import java.text.DecimalFormat;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzcdq extends zzcdn {
    public static final /* synthetic */ int zzd = 0;
    private static final Set zze = Collections.synchronizedSet(new HashSet());
    private static final DecimalFormat zzf = new DecimalFormat("#,###");
    private File zzg;
    private boolean zzh;

    public zzcdq(zzccb zzccbVar) {
        super(zzccbVar);
        File cacheDir = this.zza.getCacheDir();
        if (cacheDir == null) {
            int i10 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Context.getCacheDir() returned null");
            return;
        }
        File file = new File(zzfqt.zza(zzfqs.zza(), cacheDir, "admobVideoStreams"));
        this.zzg = file;
        if (!file.isDirectory() && !this.zzg.mkdirs()) {
            String valueOf = String.valueOf(this.zzg.getAbsolutePath());
            int i11 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Could not create preload cache directory at ".concat(valueOf));
            this.zzg = null;
        } else if (this.zzg.setReadable(true, false) && this.zzg.setExecutable(true, false)) {
        } else {
            String valueOf2 = String.valueOf(this.zzg.getAbsolutePath());
            int i12 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Could not set cache file permissions at ".concat(valueOf2));
            this.zzg = null;
        }
    }

    private final File zza(File file) {
        return new File(zzfqt.zza(zzfqs.zza(), this.zzg, String.valueOf(file.getName()).concat(".done")));
    }

    @Override // com.google.android.gms.internal.ads.zzcdn
    public final void zzf() {
        this.zzh = true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:135:0x0364, code lost:
        r28 = r14;
        r24 = r15;
        r14 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x0369, code lost:
        r19.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x0371, code lost:
        if (com.google.android.gms.ads.internal.util.client.zzo.zzm(3) == false) goto L165;
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x0373, code lost:
        com.google.android.gms.ads.internal.util.client.zzo.zze("Preloaded " + r14.format(r3) + " bytes from " + r31);
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x0394, code lost:
        r12.setReadable(true, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x039d, code lost:
        if (r13.isFile() == false) goto L177;
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x039f, code lost:
        r13.setLastModified(java.lang.System.currentTimeMillis());
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x03a7, code lost:
        r13.createNewFile();
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:165:0x03d9  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x03e9  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x0405  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x0426  */
    @Override // com.google.android.gms.internal.ads.zzcdn
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzt(final java.lang.String r31) {
        /*
            Method dump skipped, instructions count: 1108
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcdq.zzt(java.lang.String):boolean");
    }
}
