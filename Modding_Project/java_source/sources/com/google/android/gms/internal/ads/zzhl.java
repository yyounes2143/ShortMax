package com.google.android.gms.internal.ads;

import android.net.Uri;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.MulticastSocket;
import java.net.SocketTimeoutException;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzhl extends zzgc {
    private final byte[] zza;
    private final DatagramPacket zzb;
    @Nullable
    private Uri zzc;
    @Nullable
    private DatagramSocket zzd;
    @Nullable
    private MulticastSocket zze;
    @Nullable
    private InetAddress zzf;
    private boolean zzg;
    private int zzh;

    public zzhl() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzl
    public final int zza(byte[] bArr, int i10, int i11) throws zzhk {
        if (i11 == 0) {
            return 0;
        }
        if (this.zzh == 0) {
            try {
                DatagramSocket datagramSocket = this.zzd;
                if (datagramSocket != null) {
                    DatagramPacket datagramPacket = this.zzb;
                    datagramSocket.receive(datagramPacket);
                    int length = datagramPacket.getLength();
                    this.zzh = length;
                    zzg(length);
                } else {
                    throw null;
                }
            } catch (SocketTimeoutException e10) {
                throw new zzhk(e10, 2002);
            } catch (IOException e11) {
                throw new zzhk(e11, 2001);
            }
        }
        int length2 = this.zzb.getLength();
        int i12 = this.zzh;
        int min = Math.min(i12, i11);
        System.arraycopy(this.zza, length2 - i12, bArr, i10, min);
        this.zzh -= min;
        return min;
    }

    @Override // com.google.android.gms.internal.ads.zzgj
    public final long zzb(zzgo zzgoVar) throws zzhk {
        Uri uri = zzgoVar.zza;
        this.zzc = uri;
        String host = uri.getHost();
        host.getClass();
        int port = this.zzc.getPort();
        zzi(zzgoVar);
        try {
            this.zzf = InetAddress.getByName(host);
            InetSocketAddress inetSocketAddress = new InetSocketAddress(this.zzf, port);
            if (this.zzf.isMulticastAddress()) {
                MulticastSocket multicastSocket = new MulticastSocket(inetSocketAddress);
                this.zze = multicastSocket;
                multicastSocket.joinGroup(this.zzf);
                this.zzd = this.zze;
            } else {
                this.zzd = new DatagramSocket(inetSocketAddress);
            }
            this.zzd.setSoTimeout(8000);
            this.zzg = true;
            zzj(zzgoVar);
            return -1L;
        } catch (IOException e10) {
            throw new zzhk(e10, 2001);
        } catch (SecurityException e11) {
            throw new zzhk(e11, 2006);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgj
    @Nullable
    public final Uri zzc() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzgj
    public final void zzd() {
        InetAddress inetAddress;
        this.zzc = null;
        MulticastSocket multicastSocket = this.zze;
        if (multicastSocket != null) {
            try {
                inetAddress = this.zzf;
            } catch (IOException unused) {
            }
            if (inetAddress != null) {
                multicastSocket.leaveGroup(inetAddress);
                this.zze = null;
            } else {
                throw null;
            }
        }
        DatagramSocket datagramSocket = this.zzd;
        if (datagramSocket != null) {
            datagramSocket.close();
            this.zzd = null;
        }
        this.zzf = null;
        this.zzh = 0;
        if (this.zzg) {
            this.zzg = false;
            zzh();
        }
    }

    public zzhl(int i10) {
        super(true);
        byte[] bArr = new byte[2000];
        this.zza = bArr;
        this.zzb = new DatagramPacket(bArr, 0, 2000);
    }
}
