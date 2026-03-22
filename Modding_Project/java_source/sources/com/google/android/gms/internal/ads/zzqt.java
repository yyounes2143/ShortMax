package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.ViewCompat;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
/* compiled from: com.google.android.gms:play-services-ads@@24.5.0 */
/* loaded from: classes4.dex */
public final class zzqt extends zzco {
    @Nullable
    private int[] zzd;
    @Nullable
    private int[] zze;

    @Override // com.google.android.gms.internal.ads.zzcn
    public final void zze(ByteBuffer byteBuffer) {
        int i10;
        boolean z10;
        int i11;
        int i12;
        int[] iArr = this.zze;
        iArr.getClass();
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        ByteBuffer zzj = zzj(((limit - position) / this.zzb.zze) * this.zzc.zze);
        while (position < limit) {
            for (int i13 : iArr) {
                int zzk = (zzex.zzk(this.zzb.zzd) * i13) + position;
                int i14 = this.zzb.zzd;
                if (i14 != 2) {
                    if (i14 != 3) {
                        if (i14 != 4) {
                            if (i14 != 21) {
                                if (i14 != 22) {
                                    if (i14 != 268435456) {
                                        if (i14 != 1342177280) {
                                            if (i14 != 1610612736) {
                                                throw new IllegalStateException("Unexpected encoding: " + i14);
                                            }
                                        }
                                    }
                                }
                                zzj.putInt(byteBuffer.getInt(zzk));
                            }
                            ByteOrder order = byteBuffer.order();
                            ByteOrder byteOrder = ByteOrder.BIG_ENDIAN;
                            if (order == byteOrder) {
                                i10 = zzk;
                            } else {
                                i10 = zzk + 2;
                            }
                            byte b10 = byteBuffer.get(i10);
                            byte b11 = byteBuffer.get(zzk + 1);
                            if (byteBuffer.order() == byteOrder) {
                                zzk += 2;
                            }
                            int i15 = ((b10 << 24) & ViewCompat.MEASURED_STATE_MASK) | ((b11 << 16) & 16711680) | ((byteBuffer.get(zzk) << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK);
                            int i16 = i15 >> 8;
                            boolean z11 = true;
                            if ((i16 & ViewCompat.MEASURED_STATE_MASK) == 0 || (i16 & (-8388608)) == -8388608) {
                                z10 = true;
                            } else {
                                z10 = false;
                            }
                            zzdd.zze(z10, "Value out of range of 24-bit integer: ".concat(String.valueOf(Integer.toHexString(i16))));
                            if (zzj.remaining() < 3) {
                                z11 = false;
                            }
                            zzdd.zzd(z11);
                            if (zzj.order() == byteOrder) {
                                i11 = (i15 >> 24) & 255;
                            } else {
                                i11 = i16 & 255;
                            }
                            byte b12 = (byte) i11;
                            int i17 = (i15 >> 16) & 255;
                            if (zzj.order() == byteOrder) {
                                i12 = i16 & 255;
                            } else {
                                i12 = (i15 >> 24) & 255;
                            }
                            zzj.put(b12).put((byte) i17).put((byte) i12);
                        } else {
                            zzj.putFloat(byteBuffer.getFloat(zzk));
                        }
                    } else {
                        zzj.put(byteBuffer.get(zzk));
                    }
                }
                zzj.putShort(byteBuffer.getShort(zzk));
            }
            position += this.zzb.zze;
        }
        byteBuffer.position(limit);
        zzj.flip();
    }

    @Override // com.google.android.gms.internal.ads.zzco
    public final zzcl zzi(zzcl zzclVar) throws zzcm {
        boolean z10;
        boolean z11;
        int[] iArr = this.zzd;
        if (iArr == null) {
            return zzcl.zza;
        }
        int i10 = zzclVar.zzd;
        if (zzex.zzK(i10)) {
            int i11 = zzclVar.zzc;
            if (i11 != iArr.length) {
                z10 = true;
            } else {
                z10 = false;
            }
            int i12 = 0;
            while (true) {
                int length = iArr.length;
                if (i12 < length) {
                    int i13 = iArr[i12];
                    if (i13 < i11) {
                        if (i13 != i12) {
                            z11 = true;
                        } else {
                            z11 = false;
                        }
                        z10 |= z11;
                        i12++;
                    } else {
                        throw new zzcm("Channel map (" + Arrays.toString(iArr) + ") trying to access non-existent input channel.", zzclVar);
                    }
                } else if (z10) {
                    return new zzcl(zzclVar.zzb, length, i10);
                } else {
                    return zzcl.zza;
                }
            }
        } else {
            throw new zzcm("Unhandled input format:", zzclVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzco
    protected final void zzk() {
        this.zze = this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzco
    protected final void zzm() {
        this.zze = null;
        this.zzd = null;
    }

    public final void zzo(@Nullable int[] iArr) {
        this.zzd = iArr;
    }
}
