package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.VisibleForTesting;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzaqz implements zzapn {
    private final zzaqy zzc;
    private final Map zza = new LinkedHashMap(16, 0.75f, true);
    private long zzb = 0;
    private final int zzd = 5242880;

    public zzaqz(zzaqy zzaqyVar, int i10) {
        this.zzc = zzaqyVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zze(InputStream inputStream) throws IOException {
        return (zzn(inputStream) << 24) | zzn(inputStream) | (zzn(inputStream) << 8) | (zzn(inputStream) << 16);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long zzf(InputStream inputStream) throws IOException {
        return (zzn(inputStream) & 255) | ((zzn(inputStream) & 255) << 8) | ((zzn(inputStream) & 255) << 16) | ((zzn(inputStream) & 255) << 24) | ((zzn(inputStream) & 255) << 32) | ((zzn(inputStream) & 255) << 40) | ((zzn(inputStream) & 255) << 48) | ((zzn(inputStream) & 255) << 56);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String zzh(zzaqx zzaqxVar) throws IOException {
        return new String(zzm(zzaqxVar, zzf(zzaqxVar)), "UTF-8");
    }

    static void zzj(OutputStream outputStream, int i10) throws IOException {
        outputStream.write(i10 & 255);
        outputStream.write((i10 >> 8) & 255);
        outputStream.write((i10 >> 16) & 255);
        outputStream.write((i10 >> 24) & 255);
    }

    static void zzk(OutputStream outputStream, long j10) throws IOException {
        outputStream.write((byte) j10);
        outputStream.write((byte) (j10 >>> 8));
        outputStream.write((byte) (j10 >>> 16));
        outputStream.write((byte) (j10 >>> 24));
        outputStream.write((byte) (j10 >>> 32));
        outputStream.write((byte) (j10 >>> 40));
        outputStream.write((byte) (j10 >>> 48));
        outputStream.write((byte) (j10 >>> 56));
    }

    static void zzl(OutputStream outputStream, String str) throws IOException {
        byte[] bytes = str.getBytes("UTF-8");
        int length = bytes.length;
        zzk(outputStream, length);
        outputStream.write(bytes, 0, length);
    }

    @VisibleForTesting
    static byte[] zzm(zzaqx zzaqxVar, long j10) throws IOException {
        int i10 = (j10 > 0L ? 1 : (j10 == 0L ? 0 : -1));
        long zza = zzaqxVar.zza();
        if (i10 >= 0 && j10 <= zza) {
            int i11 = (int) j10;
            if (i11 == j10) {
                byte[] bArr = new byte[i11];
                new DataInputStream(zzaqxVar).readFully(bArr);
                return bArr;
            }
        }
        throw new IOException("streamToBytes length=" + j10 + ", maxLength=" + zza);
    }

    private static int zzn(InputStream inputStream) throws IOException {
        int read = inputStream.read();
        if (read != -1) {
            return read;
        }
        throw new EOFException();
    }

    private final void zzo(String str, zzaqw zzaqwVar) {
        Map map = this.zza;
        if (!map.containsKey(str)) {
            this.zzb += zzaqwVar.zza;
        } else {
            this.zzb += zzaqwVar.zza - ((zzaqw) map.get(str)).zza;
        }
        map.put(str, zzaqwVar);
    }

    private final void zzp(String str) {
        zzaqw zzaqwVar = (zzaqw) this.zza.remove(str);
        if (zzaqwVar != null) {
            this.zzb -= zzaqwVar.zza;
        }
    }

    private static final String zzq(String str) {
        int length = str.length() / 2;
        return String.valueOf(String.valueOf(str.substring(0, length).hashCode())).concat(String.valueOf(String.valueOf(str.substring(length).hashCode())));
    }

    @Override // com.google.android.gms.internal.ads.zzapn
    public final synchronized zzapm zza(String str) {
        zzaqw zzaqwVar = (zzaqw) this.zza.get(str);
        if (zzaqwVar == null) {
            return null;
        }
        File zzg = zzg(str);
        try {
            zzaqx zzaqxVar = new zzaqx(new BufferedInputStream(new FileInputStream(zzg)), zzg.length());
            try {
                String str2 = zzaqw.zza(zzaqxVar).zzb;
                if (!TextUtils.equals(str, str2)) {
                    zzaqp.zza("%s: key=%s, found=%s", zzg.getAbsolutePath(), str, str2);
                    zzp(str);
                    return null;
                }
                byte[] zzm = zzm(zzaqxVar, zzaqxVar.zza());
                zzapm zzapmVar = new zzapm();
                zzapmVar.zza = zzm;
                zzapmVar.zzb = zzaqwVar.zzc;
                zzapmVar.zzc = zzaqwVar.zzd;
                zzapmVar.zzd = zzaqwVar.zze;
                zzapmVar.zze = zzaqwVar.zzf;
                zzapmVar.zzf = zzaqwVar.zzg;
                List<zzapv> list = zzaqwVar.zzh;
                TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
                for (zzapv zzapvVar : list) {
                    treeMap.put(zzapvVar.zza(), zzapvVar.zzb());
                }
                zzapmVar.zzg = treeMap;
                zzapmVar.zzh = Collections.unmodifiableList(list);
                return zzapmVar;
            } finally {
                zzaqxVar.close();
            }
        } catch (IOException e10) {
            zzaqp.zza("%s: %s", zzg.getAbsolutePath(), e10.toString());
            zzi(str);
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzapn
    public final synchronized void zzb() {
        File zza = this.zzc.zza();
        if (!zza.exists()) {
            if (!zza.mkdirs()) {
                zzaqp.zzb("Unable to create cache dir %s", zza.getAbsolutePath());
            }
        } else {
            File[] listFiles = zza.listFiles();
            if (listFiles != null) {
                for (File file : listFiles) {
                    try {
                        long length = file.length();
                        zzaqx zzaqxVar = new zzaqx(new BufferedInputStream(new FileInputStream(file)), length);
                        try {
                            zzaqw zza2 = zzaqw.zza(zzaqxVar);
                            zza2.zza = length;
                            zzo(zza2.zzb, zza2);
                            zzaqxVar.close();
                        } catch (Throwable th2) {
                            zzaqxVar.close();
                            throw th2;
                            break;
                        }
                    } catch (IOException unused) {
                        file.delete();
                    }
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzapn
    public final synchronized void zzc(String str, boolean z10) {
        zzapm zza = zza(str);
        if (zza != null) {
            zza.zzf = 0L;
            zza.zze = 0L;
            zzd(str, zza);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzapn
    public final synchronized void zzd(String str, zzapm zzapmVar) {
        long j10;
        try {
            long j11 = this.zzb;
            int length = zzapmVar.zza.length;
            long j12 = j11 + length;
            int i10 = this.zzd;
            if (j12 <= i10 || length <= i10 * 0.9f) {
                File zzg = zzg(str);
                try {
                    BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(zzg));
                    zzaqw zzaqwVar = new zzaqw(str, zzapmVar);
                    try {
                        zzj(bufferedOutputStream, 538247942);
                        zzl(bufferedOutputStream, zzaqwVar.zzb);
                        String str2 = zzaqwVar.zzc;
                        if (str2 == null) {
                            str2 = "";
                        }
                        zzl(bufferedOutputStream, str2);
                        zzk(bufferedOutputStream, zzaqwVar.zzd);
                        zzk(bufferedOutputStream, zzaqwVar.zze);
                        zzk(bufferedOutputStream, zzaqwVar.zzf);
                        zzk(bufferedOutputStream, zzaqwVar.zzg);
                        List<zzapv> list = zzaqwVar.zzh;
                        if (list != null) {
                            zzj(bufferedOutputStream, list.size());
                            for (zzapv zzapvVar : list) {
                                zzl(bufferedOutputStream, zzapvVar.zza());
                                zzl(bufferedOutputStream, zzapvVar.zzb());
                            }
                        } else {
                            zzj(bufferedOutputStream, 0);
                        }
                        bufferedOutputStream.flush();
                        bufferedOutputStream.write(zzapmVar.zza);
                        bufferedOutputStream.close();
                        zzaqwVar.zza = zzg.length();
                        zzo(str, zzaqwVar);
                        long j13 = this.zzb;
                        int i11 = this.zzd;
                        if (j13 >= i11) {
                            boolean z10 = zzaqp.zzb;
                            if (z10) {
                                zzaqp.zzd("Pruning old cache entries.", new Object[0]);
                            }
                            long j14 = this.zzb;
                            long elapsedRealtime = SystemClock.elapsedRealtime();
                            Iterator it = this.zza.entrySet().iterator();
                            int i12 = 0;
                            while (true) {
                                if (it.hasNext()) {
                                    zzaqw zzaqwVar2 = (zzaqw) ((Map.Entry) it.next()).getValue();
                                    String str3 = zzaqwVar2.zzb;
                                    if (zzg(str3).delete()) {
                                        j10 = j14;
                                        this.zzb -= zzaqwVar2.zza;
                                    } else {
                                        j10 = j14;
                                        zzaqp.zza("Could not delete cache entry for key=%s, filename=%s", str3, zzq(str3));
                                    }
                                    it.remove();
                                    i12++;
                                    if (((float) this.zzb) < i11 * 0.9f) {
                                        break;
                                    }
                                    j14 = j10;
                                } else {
                                    j10 = j14;
                                    break;
                                }
                            }
                            if (z10) {
                                zzaqp.zzd("pruned %d files, %d bytes, %d ms", Integer.valueOf(i12), Long.valueOf(this.zzb - j10), Long.valueOf(SystemClock.elapsedRealtime() - elapsedRealtime));
                            }
                        }
                    } catch (IOException e10) {
                        zzaqp.zza("%s", e10.toString());
                        bufferedOutputStream.close();
                        zzaqp.zza("Failed to write header for %s", zzg.getAbsolutePath());
                        throw new IOException();
                    }
                } catch (IOException unused) {
                    if (!zzg.delete()) {
                        zzaqp.zza("Could not clean up file %s", zzg.getAbsolutePath());
                    }
                    if (!this.zzc.zza().exists()) {
                        zzaqp.zza("Re-initializing cache after external clearing.", new Object[0]);
                        this.zza.clear();
                        this.zzb = 0L;
                        zzb();
                    }
                }
            }
        } finally {
        }
    }

    public final File zzg(String str) {
        return new File(this.zzc.zza(), zzq(str));
    }

    public final synchronized void zzi(String str) {
        boolean delete = zzg(str).delete();
        zzp(str);
        if (!delete) {
            zzaqp.zza("Could not delete cache entry for key=%s, filename=%s", str, zzq(str));
        }
    }

    public zzaqz(File file, int i10) {
        this.zzc = new zzaqv(this, file);
    }
}
