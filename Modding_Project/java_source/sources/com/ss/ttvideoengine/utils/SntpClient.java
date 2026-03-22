package com.ss.ttvideoengine.utils;

import android.os.SystemClock;
import com.inmobi.commons.core.configs.AdConfig;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.util.Arrays;
/* loaded from: classes6.dex */
public class SntpClient {
    private static final int NTP_LEAP_NOSYNC = 3;
    private static final int NTP_MODE_BROADCAST = 5;
    private static final int NTP_MODE_CLIENT = 3;
    private static final int NTP_MODE_SERVER = 4;
    private static final int NTP_PACKET_SIZE = 48;
    private static final int NTP_PORT = 123;
    private static final int NTP_STRATUM_DEATH = 0;
    private static final int NTP_STRATUM_MAX = 15;
    private static final int NTP_VERSION = 3;
    private static final long OFFSET_1900_TO_1970 = 2208988800L;
    private static final int ORIGINATE_TIME_OFFSET = 24;
    private static final int RECEIVE_TIME_OFFSET = 32;
    private static final String TAG = "SntpClient";
    private static final int TRANSMIT_TIME_OFFSET = 40;
    private long mNtpTime;
    private long mNtpTimeReference;
    private long mRoundTripTime;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes6.dex */
    public static class InvalidServerReplyException extends Exception {
        public InvalidServerReplyException(String str) {
            super(str);
        }
    }

    private static void checkValidServerReply(byte b10, byte b11, int i10, long j10) throws InvalidServerReplyException {
        if (b10 != 3) {
            if (b11 != 4 && b11 != 5) {
                throw new InvalidServerReplyException("untrusted mode: " + ((int) b11));
            } else if (i10 != 0 && i10 <= 15) {
                if (j10 != 0) {
                    return;
                }
                throw new InvalidServerReplyException("zero transmitTime");
            } else {
                throw new InvalidServerReplyException("untrusted stratum: " + i10);
            }
        }
        throw new InvalidServerReplyException("unsynchronized server");
    }

    private long read32(byte[] bArr, int i10) {
        int i11 = bArr[i10];
        int i12 = bArr[i10 + 1];
        int i13 = bArr[i10 + 2];
        int i14 = bArr[i10 + 3];
        if ((i11 & 128) == 128) {
            i11 = (i11 & 127) + 128;
        }
        if ((i12 & 128) == 128) {
            i12 = (i12 & 127) + 128;
        }
        if ((i13 & 128) == 128) {
            i13 = (i13 & 127) + 128;
        }
        if ((i14 & 128) == 128) {
            i14 = (i14 & 127) + 128;
        }
        return (i11 << 24) + (i12 << 16) + (i13 << 8) + i14;
    }

    private long readTimeStamp(byte[] bArr, int i10) {
        long read32 = read32(bArr, i10);
        long read322 = read32(bArr, i10 + 4);
        if (read32 == 0 && read322 == 0) {
            return 0L;
        }
        return ((read32 - OFFSET_1900_TO_1970) * 1000) + ((read322 * 1000) / 4294967296L);
    }

    private void writeTimeStamp(byte[] bArr, int i10, long j10) {
        if (j10 == 0) {
            Arrays.fill(bArr, i10, i10 + 8, (byte) 0);
            return;
        }
        long j11 = j10 / 1000;
        long j12 = j10 - (j11 * 1000);
        long j13 = j11 + OFFSET_1900_TO_1970;
        bArr[i10] = (byte) (j13 >> 24);
        bArr[i10 + 1] = (byte) (j13 >> 16);
        bArr[i10 + 2] = (byte) (j13 >> 8);
        bArr[i10 + 3] = (byte) j13;
        long j14 = (j12 * 4294967296L) / 1000;
        bArr[i10 + 4] = (byte) (j14 >> 24);
        bArr[i10 + 5] = (byte) (j14 >> 16);
        bArr[i10 + 6] = (byte) (j14 >> 8);
        bArr[i10 + 7] = (byte) (Math.random() * 255.0d);
    }

    public long getNtpTime() {
        return this.mNtpTime;
    }

    public long getNtpTimeReference() {
        return this.mNtpTimeReference;
    }

    public long getRoundTripTime() {
        return this.mRoundTripTime;
    }

    public boolean requestTime(String str, int i10) {
        try {
            return requestTime(InetAddress.getByName(str), 123, i10);
        } catch (Exception e10) {
            TTVideoEngineLog.d(e10);
            return false;
        }
    }

    public boolean requestTime(InetAddress inetAddress, int i10, int i11) {
        DatagramSocket datagramSocket;
        DatagramSocket datagramSocket2 = null;
        try {
            try {
                datagramSocket = new DatagramSocket();
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e10) {
            e = e10;
        }
        try {
            datagramSocket.setSoTimeout(i11);
            byte[] bArr = new byte[48];
            DatagramPacket datagramPacket = new DatagramPacket(bArr, 48, inetAddress, i10);
            bArr[0] = 27;
            long currentTimeMillis = System.currentTimeMillis();
            long elapsedRealtime = SystemClock.elapsedRealtime();
            writeTimeStamp(bArr, 40, currentTimeMillis);
            datagramSocket.send(datagramPacket);
            datagramSocket.receive(new DatagramPacket(bArr, 48));
            long elapsedRealtime2 = SystemClock.elapsedRealtime();
            long j10 = elapsedRealtime2 - elapsedRealtime;
            long j11 = currentTimeMillis + j10;
            byte b10 = bArr[0];
            int i12 = bArr[1] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
            long readTimeStamp = readTimeStamp(bArr, 24);
            long readTimeStamp2 = readTimeStamp(bArr, 32);
            long readTimeStamp3 = readTimeStamp(bArr, 40);
            checkValidServerReply((byte) ((b10 >> 6) & 3), (byte) (b10 & 7), i12, readTimeStamp3);
            long j12 = j10 - (readTimeStamp3 - readTimeStamp2);
            long j13 = ((readTimeStamp2 - readTimeStamp) + (readTimeStamp3 - j11)) / 2;
            TTVideoEngineLog.d(TAG, "requestTime round trip: " + j12 + "ms, clock offset: " + j13 + "ms");
            this.mNtpTime = j11 + j13;
            this.mNtpTimeReference = elapsedRealtime2;
            this.mRoundTripTime = j12;
            datagramSocket.close();
            return true;
        } catch (Exception e11) {
            e = e11;
            datagramSocket2 = datagramSocket;
            TTVideoEngineLog.d(e);
            if (datagramSocket2 != null) {
                datagramSocket2.close();
                return false;
            }
            return false;
        } catch (Throwable th3) {
            th = th3;
            datagramSocket2 = datagramSocket;
            if (datagramSocket2 != null) {
                datagramSocket2.close();
            }
            throw th;
        }
    }
}
