package com.facebook.ads.redexgen.X;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.Log;
import com.ss.ttm.player.MediaPlayer;
import com.ss.ttvideoengine.model.VideoRef;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import kotlin.jvm.internal.ByteCompanionObject;
/* loaded from: assets/audience_network.dex */
public final class SG {
    public static byte[] A03;
    public static String[] A04 = {"hUOGynEtmSUNsKdJkghkOGNAWtryygzy", "wzPRxUupX2XKUl6NSNI9kT750batbohw", "Jhw1FAiFO5yEDnp58HFyVFkAnHcYvwe5", "TOMeOtqGrF4uQ0cY9hasq1ESWlFY5vR9", "yYpnUvpVzVqKhRvrciBHRtLUwNGFzaUs", "hHaB", "31TBXmQRr4tlfWcucEg5Ko3P35yO7", "Q2"};
    public static final String A05;
    public static volatile SG A06;
    public final C2085cu A00;
    public final Map<String, SD> A02 = Collections.synchronizedMap(new HashMap());
    public final Map<String, Float> A01 = Collections.synchronizedMap(new HashMap());

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    private Bitmap A02(SQ sq2, SD sd2, String str) {
        Bitmap A01;
        String str2 = sd2.A08;
        int i10 = sd2.A04;
        int i11 = sd2.A05;
        long currentTimeMillis = System.currentTimeMillis();
        IOException e10 = null;
        String A08 = A08(223, 9, 68);
        boolean startsWith = str2.startsWith(A08);
        String A082 = A08(VideoRef.VALUE_VIDEO_REF_SUBTITLE_POSITION_X, 22, 119);
        if (startsWith || str2.startsWith(A082)) {
            String substring = str2.startsWith(A08) ? str2.substring(A08.length()) : str2.substring(A082.length());
            InputStream inputStream = null;
            try {
                try {
                    inputStream = this.A00.getAssets().open(substring);
                    if (A0D(i10, i11)) {
                        try {
                            A01 = SK.A01(inputStream, i10, i11);
                        } catch (IOException e11) {
                            e = e11;
                            A0C(e);
                            if (inputStream != null) {
                                A0A(inputStream);
                            }
                            return null;
                        } catch (OutOfMemoryError e12) {
                            e = e12;
                            A0C(e);
                            if (inputStream != null) {
                                A0A(inputStream);
                            }
                            return null;
                        } catch (Throwable th2) {
                            th = th2;
                            if (inputStream != null) {
                                A0A(inputStream);
                            }
                            throw th;
                        }
                    } else {
                        A01 = BitmapFactory.decodeStream(inputStream);
                    }
                    if (inputStream != null) {
                        A0A(inputStream);
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (IOException e13) {
                e = e13;
            } catch (OutOfMemoryError e14) {
                e = e14;
            } catch (Throwable th4) {
                th = th4;
            }
        } else if (A0D(i10, i11)) {
            try {
                A01 = A05(str2, i10, i11);
            } catch (IOException e15) {
                e10 = e15;
                A0C(e10);
                A01 = A03(str2);
            }
        } else {
            A01 = A03(str2);
        }
        String th5 = e10 != null ? e10.toString() : null;
        if (A01 == null) {
            SI.A03(sq2, sd2, str, SI.A03, th5, null, null);
            return null;
        }
        long A00 = A00(str2, A01);
        long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
        if (A00 > 0) {
            SI.A03(sq2, sd2, str, SI.A02, th5, Long.valueOf(A00), Long.valueOf(currentTimeMillis2));
            return A01;
        }
        SI.A03(sq2, sd2, str, SI.A01, th5, null, null);
        if (U7.A11(sq2)) {
            return null;
        }
        return A01;
    }

    public static String A08(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A03, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] ^ i12) ^ 67);
        }
        return new String(copyOfRange);
    }

    public static void A09() {
        A03 = new byte[]{3, 4, 119, 41, 55, 62, 58, 25, 28, 88, 23, 13, 12, 8, 13, 12, 88, 28, 29, 11, 12, 17, 22, 25, 12, 17, 23, 22, 88, 80, 30, 17, 20, 29, 69, 122, 81, 76, 85, 89, 72, 24, 75, 81, 66, 93, 24, 93, 64, 91, 93, 93, 92, 75, 24, 85, 89, 64, 24, 75, 81, 66, 93, 24, 94, 87, 74, 24, 75, 76, 87, 74, 89, 95, 93, 2, 24, 18, 48, 50, 57, 52, 113, 52, 35, 35, 62, 35, ByteCompanionObject.MAX_VALUE, 113, 19, 56, 37, 60, 48, 33, 113, 56, 34, 113, 63, 36, 61, 61, ByteCompanionObject.MAX_VALUE, 125, 90, 82, 87, 94, 95, 27, 79, 84, 27, 88, 84, 75, 66, 27, 87, 84, 88, 90, 87, 27, 82, 86, 90, 92, 94, 27, 82, 85, 79, 84, 27, 88, 90, 88, 83, 94, 27, 19, 78, 73, 87, 6, 38, 29, 18, 17, 31, 22, 83, 7, 28, 83, 4, 1, 26, 7, 22, 83, 17, 26, 7, 30, 18, 3, 83, 7, 28, 83, 21, 26, 31, 22, 83, 91, 6, 1, 31, 78, 70, 125, 114, 113, ByteCompanionObject.MAX_VALUE, 118, 51, 103, 124, 51, 100, 97, 122, 103, 118, 51, 113, 122, 103, 126, 114, 99, 51, 103, 124, 51, 124, 102, 103, 99, 102, 103, 51, 96, 103, 97, 118, 114, 126, 102, 116, 116, 98, 115, 61, 40, 40, 40, 85, 90, 95, 86, 9, 28, 28, 82, 93, 88, 81, 14, 27, 27, 27, 85, 90, 80, 70, 91, 93, 80, 107, 85, 71, 71, 81, 64, 27, 115, 119, 123, 125, ByteCompanionObject.MAX_VALUE, 10, 9, 7, 2, 42, 49, 52, 49, 48, 40, 49};
    }

    static {
        A09();
        A05 = SG.class.getSimpleName();
    }

    public SG(C2085cu c2085cu) {
        this.A00 = c2085cu;
    }

    private int A00(String str, Bitmap bitmap) {
        String A08 = A08(0, 2, 105);
        if (bitmap == null) {
            A0C(null);
            return 0;
        }
        File file = new File(A07(this.A00), str.hashCode() + A08(2, 4, 26));
        ByteArrayOutputStream bOut = null;
        FileOutputStream fileOutputStream = null;
        try {
            bOut = new ByteArrayOutputStream();
            bitmap.compress(Bitmap.CompressFormat.PNG, 100, bOut);
            int size = bOut.size();
            if (size >= U7.A0H(this.A00)) {
                A0C(new Throwable(A08(35, 42, 123) + size));
                return 0;
            }
            fileOutputStream = new FileOutputStream(file);
            bOut.writeTo(fileOutputStream);
            fileOutputStream.flush();
            return size;
        } catch (OutOfMemoryError e10) {
            A0C(e10);
            Log.e(A05, A08(184, 39, 80), e10);
            return 0;
        } catch (FileNotFoundException e11) {
            Log.e(A05, A08(6, 29, 59) + file.getPath() + A08, e11);
            A0C(e11);
            return 0;
        } catch (IOException e12) {
            A0C(e12);
            Log.e(A05, A08(148, 36, 48) + str + A08, e12);
            return 0;
        } finally {
            A0A(bOut);
            A0A(fileOutputStream);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00bd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final android.graphics.Bitmap A01(com.facebook.ads.redexgen.X.SQ r12, com.facebook.ads.redexgen.X.SD r13, int r14, int r15, java.lang.String r16) {
        /*
            Method dump skipped, instructions count: 248
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.SG.A01(com.facebook.ads.redexgen.X.SQ, com.facebook.ads.redexgen.X.SD, int, int, java.lang.String):android.graphics.Bitmap");
    }

    private Bitmap A03(String str) {
        byte[] A6u;
        InterfaceC2189ec AGC = C2208ev.A00(this.A00).AGC(str, new C2204er());
        if (AGC == null || (A6u = AGC.A6u()) == null) {
            return null;
        }
        int length = A6u.length;
        if (A04[4].charAt(22) != 'U') {
            A04[2] = "99IwdndnBnCK07hgvsXqxjXsnHcettbD";
            return BitmapFactory.decodeByteArray(A6u, 0, length);
        }
        throw new RuntimeException();
    }

    private Bitmap A04(String str, int i10, int i11) {
        Bitmap decodeStream;
        int A00;
        try {
            boolean A0D = A0D(i10, i11);
            String A08 = A08(VideoRef.VALUE_VIDEO_REF_CATEGORY, 7, 112);
            if (A0D) {
                decodeStream = SK.A02(str.substring(A08.length()), i10, i11, this.A00);
            } else {
                decodeStream = BitmapFactory.decodeStream(new FileInputStream(str.substring(A08.length())), null, null);
            }
            A00 = A00(str, decodeStream);
        } catch (IOException e10) {
            Log.e(A05, A08(105, 43, 120) + str + A08(0, 2, 105), e10);
        }
        if (U7.A11(this.A00)) {
            if (A00 <= 0) {
                return null;
            }
            return decodeStream;
        }
        return decodeStream;
    }

    private Bitmap A05(String str, int i10, int i11) throws IOException {
        URL urlObj = new URL(str);
        HttpURLConnection connection = (HttpURLConnection) urlObj.openConnection();
        connection.setDoInput(true);
        connection.connect();
        InputStream inputStream = connection.getInputStream();
        Bitmap A01 = SK.A01(inputStream, i10, i11);
        A0A(inputStream);
        return A01;
    }

    public static SG A06(C2085cu c2085cu) {
        if (A06 == null) {
            synchronized (SG.class) {
                if (A06 == null) {
                    A06 = new SG(c2085cu);
                }
            }
        }
        return A06;
    }

    public static File A07(SQ sq2) {
        return sq2.getCacheDir();
    }

    public static void A0A(Closeable closeable) {
        if (closeable == null) {
            return;
        }
        try {
            closeable.close();
        } catch (IOException unused) {
        }
    }

    private void A0B(String str, Bitmap bitmap) {
        if (!this.A01.containsKey(str) && bitmap != null && bitmap.getHeight() > 0) {
            float width = bitmap.getWidth() / bitmap.getHeight();
            if (width > 0.0f) {
                this.A01.put(str, Float.valueOf(width));
            }
        }
    }

    private void A0C(Throwable th2) {
        String A08 = A08(MediaPlayer.MEDIA_PLAYER_OPTION_SET_RADIO_MODE, 5, 89);
        if (th2 != null) {
            this.A00.A08().AAy(A08, AbstractC1722Sv.A1f, new C1723Sw(th2));
        } else {
            this.A00.A08().AAy(A08, AbstractC1722Sv.A1f, new C1723Sw(A08(77, 28, 18)));
        }
    }

    private boolean A0D(int i10, int i11) {
        return i10 > 0 && i11 > 0;
    }

    public final float A0E(String str) {
        if (!this.A01.containsKey(str) || this.A01.get(str) == null) {
            if (A04[6].length() != 28) {
                A04[6] = "EtgkjkQAQYyyMgrrXA05VcKpExUV0Ywa";
                return -1.0f;
            }
            throw new RuntimeException();
        }
        return this.A01.get(str).floatValue();
    }

    public final Bitmap A0F(SD sd2) {
        return A01(this.A00, sd2, sd2.A05, sd2.A04, sd2.A02);
    }

    public final Bitmap A0G(SQ sq2, String str, int i10, int i11, String str2) {
        SD sd2 = this.A02.get(str);
        return (!SI.A06(sq2) || sd2 == null) ? A01(sq2, new SD(str, i10, i11, A08(270, 7, 28), A08(270, 7, 28)), i11, i10, str2) : A01(sq2, sd2, i11, i10, str2);
    }

    public final File A0H(String str) {
        File file = new File(A07(this.A00), str.hashCode() + A08(2, 4, 26));
        if (file.exists()) {
            return file;
        }
        return null;
    }

    public final String A0I(String str) {
        File file = new File(A07(this.A00), str.hashCode() + A08(2, 4, 26));
        return file.exists() ? file.getPath() : str;
    }
}
