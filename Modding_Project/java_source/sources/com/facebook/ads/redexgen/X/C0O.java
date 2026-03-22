package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.graphics.Point;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Pair;
import android.view.Surface;
import com.facebook.ads.androidx.media3.common.ColorInfo;
import com.facebook.ads.androidx.media3.exoplayer.video.DummySurface;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomizations;
import com.ss.ttm.player.MediaPlayer;
import com.ss.ttvideoengine.DataLoaderHelper;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.ss.ttvideoengine.model.VideoRef;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import kotlin.jvm.internal.ByteCompanionObject;
/* renamed from: com.facebook.ads.redexgen.X.0O */
/* loaded from: assets/audience_network.dex */
public final class C0O extends AnonymousClass14 {
    public static boolean A0z;
    public static boolean A10;
    public static byte[] A11;
    public static String[] A12 = {"1NrdYD1", "e5CK9xPn181JbTmOtknpsRCTtEnfDjR7", "JOO2xDl09pGw2ctw4YX5NjUR9G0o3YSd", "78GGNN1Oy", "9AKZq2G4NCUeKdGegrXYJ0IAO08zLsd4", "iWBlsDv", "UMYjsOFgfK8VKq5PmkWlrwAU0Drwgr0y", "VHiTYYEOZZ1JgajrOOPlCJmFeSyZZTnO"};
    public static final int[] A13;
    public C2597la A00;
    public float A01;
    public float A02;
    public float A03;
    public int A04;
    public int A05;
    public int A06;
    public int A07;
    public int A08;
    public int A09;
    public int A0A;
    public int A0B;
    public int A0C;
    public int A0D;
    public int A0E;
    public int A0F;
    public int A0G;
    public int A0H;
    public long A0I;
    public long A0J;
    public long A0K;
    public long A0L;
    public long A0M;
    public long A0N;
    public long A0O;
    public long A0P;
    public long A0Q;
    public long A0R;
    public MediaFormat A0S;
    public Surface A0T;
    public Surface A0U;
    public C2749o4 A0V;
    public FA A0W;
    public FQ A0X;
    public Object A0Y;
    public boolean A0Z;
    public boolean A0a;
    public boolean A0b;
    public boolean A0c;
    public boolean A0d;
    public boolean A0e;
    public boolean A0f;
    public boolean A0g;
    @MetaExoPlayerCustomization(type = {"NEW_CLASS_ARG"}, value = "D69547806: Only become ready once we have a surface")
    public boolean A0h;
    public boolean A0i;
    public boolean A0j;
    public boolean A0k;
    public final int A0l;
    public final int A0m;
    public final int A0n;
    public final int A0o;
    public final long A0p;
    public final Context A0q;
    public final FC A0r;
    public final FV A0s;
    public final FY A0t;
    public final C1381Fn A0u;
    public final boolean A0v;
    public final boolean A0w;
    public final long[] A0x;
    public final long[] A0y;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 15 out of bounds for length 14
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.restartVar(DebugInfoParser.java:193)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:141)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:118)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:567)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:39)
     */
    public static Point A07(AR ar2, C2796or c2796or) throws C1261Av {
        int[] iArr;
        boolean z10 = c2796or.A0A > c2796or.A0L;
        int i10 = z10 ? c2796or.A0A : c2796or.A0L;
        int i11 = z10 ? c2796or.A0L : c2796or.A0A;
        float f10 = i11 / i10;
        for (int i12 : A13) {
            int i13 = (int) (i12 * f10);
            if (i12 <= i10 || i13 <= i11) {
                return null;
            }
            if (AbstractC10974a.A02 >= 21) {
                int i14 = z10 ? i13 : i12;
                if (!z10) {
                    i12 = i13;
                }
                Point A0N = ar2.A0N(i14, i12);
                if (ar2.A0R(A0N.x, A0N.y, c2796or.A01)) {
                    return A0N;
                }
            } else {
                int A05 = AbstractC10974a.A05(i12, 16) * 16;
                int A052 = AbstractC10974a.A05(i13, 16) * 16;
                if (A05 * A052 <= C1264Ay.A00()) {
                    int i15 = z10 ? A052 : A05;
                    if (!z10) {
                        A05 = A052;
                    }
                    return new Point(i15, A05);
                }
            }
        }
        return null;
    }

    public static String A0B(int i10, int i11, int i12) {
        byte[] copyOfRange = Arrays.copyOfRange(A11, i10, i10 + i11);
        for (int i13 = 0; i13 < copyOfRange.length; i13++) {
            copyOfRange[i13] = (byte) ((copyOfRange[i13] - i12) - 7);
        }
        return new String(copyOfRange);
    }

    public static void A0P() {
        A11 = new byte[]{96, 101, 95, 96, 96, 102, 96, 98, 92, 98, 92, 95, -64, -80, -81, -84, -74, -81, -59, -74, -90, -91, -94, -84, -91, -63, -106, -122, -117, -123, -122, 79, 64, 62, 63, 68, 111, 66, 62, 88, 78, 71, 71, 71, 68, 120, -113, -123, 126, 126, 126, -66, -70, -61, -63, -122, 124, 117, 118, 117, -90, 121, 125, 105, 95, 88, 90, 88, -119, 92, 96, -77, -72, -58, -77, 93, 98, 112, 106, -123, -105, -103, -105, -93, -100, 116, 116, -123, -120, 99, 117, 119, 117, -127, 122, 82, 82, 99, 102, 99, 95, 113, 115, 113, 125, 118, 78, 78, 95, 98, 97, 78, 96, 98, 96, 108, 101, 61, 61, 78, 81, 108, 63, -121, -76, -86, -72, -75, -77, -89, -66, 102, -121, 120, 124, -119, 122, -114, 78, 126, -126, 110, 93, 124, -124, 114, ByteCompanionObject.MAX_VALUE, 90, -71, -21, -19, -21, -41, -46, -70, -83, -88, -88, -61, -60, -76, -24, -27, -44, -46, -63, -30, -25, -40, -46, -91, -65, -55, -66, -64, -56, -86, -82, -43, -67, -51, -68, -47, -60, -68, -101, -81, -58, -101, -83, -85, -84, -80, ByteCompanionObject.MAX_VALUE, -113, 126, -109, -122, 126, -100, 126, -111, -109, 111, -108, -92, -109, -88, -101, -109, -79, -109, -90, -88, -123, -79, -122, -99, -89, -107, -123, -110, 122, 120, 121, 120, -95, -117, 114, 116, 118, -125, 123, 100, 105, 99, 108, 106, 119, ByteCompanionObject.MIN_VALUE, 95, 90, -122, 112, 87, 87, 85, -127, 118, 119, 117, 50, ByteCompanionObject.MAX_VALUE, 115, -118, 50, -124, 119, -123, -127, 126, -121, -122, 123, -127, ByteCompanionObject.MIN_VALUE, 50, 115, 118, 124, -121, -123, -122, 119, 118, 50, -122, -127, 76, 50, -71, -27, -29, -33, -27, -55, -89, -126, 114, 115, 113, 112, -103, -96, -87, -101, -107, -77, -107, -121, -77, -92, -58, -61, -59, -52, -43, -57, -63, -33, -50, -17, -12, -27, -54, -47, -38, -52, -58, -28, -43, -9, -18, -14, 77, 84, 93, 79, 73, 103, 90, 105, -127, 103, 96, -93, -44, -61, -48, -79, -46, -65, -48, -67, -79, -62, -81, -83, -83, -83, -76, -95, -97, -97, -95, 111, 92, 90, 90, 95, 90, 71, 70, 69, 69, 78, 59, 58, 57, 59, -106, -125, -126, -127, -123, 84, 65, 65, 63, 63, -107, -80, -69, -62, -76, -110, -73, -76, -78, -70, 111, -86, -69, -76, -74, -80, -78, -56, -107, -63, -80, -68, -76, -94, -72, -55, -76, 123, 111, 94, 96, 102, 101, 92, 92, 118, 94, 89, 99, 78, 74, 77, 71, -98, -96, -90, -91, -100, -100, -74, -86, -82, -82, -120, -115, -121, -112, -91, -89, -83, -84, -93, -93, -67, -79, -75, -75, -113, -108, -112, -107, 101, 103, 109, 108, 99, 99, 125, 113, 117, 117, 79, 84, 81, 79, -113, -111, -105, -106, -115, -115, -89, -97, -118, -108, 125, ByteCompanionObject.MAX_VALUE, 120, ByteCompanionObject.MIN_VALUE, 102, 104, 110, 109, 100, 100, 126, 118, 97, 107, 86, 82, 85, 84, -118, -116, -110, -111, -120, -120, -94, -102, -123, -113, 122, 120, 116, 124, -105, -71, -97, -98, -107, -107, -81, -109, -110, -100, -121, -123, -127, -125, -104, -70, -96, -97, -106, -106, -80, -104, -109, -99, -120, -124, -126, -118, 99, 112, 92, 114, 96, 100, 59, 105, 115, 111, 72, 103, 77, 84, 114, -127, 108, 118, 120, 87, 114, -125, -110, 126, 124, -120, 104, -125, 81, 96, 78, 86, 85, -97, -82, -83, -91, -86, -124, -97, -109, -94, -94, -116, -98, 120, -109, -89, -52, -60, -57, -52, -57, -42, -117, -74, -109, -107, -112, 93, 90, 109, -81, -72, -77, -110, -79, -105, -106, -70, -92, -97, -48, -93, -97, 103, 98, 72, 102, 79, 78, 75, 122, 117, 91, 123, 96, 99, 94, 99, 106, 68, 76, 71, 72, 78, -69, -44, -35, -34, -27, -34, -113, -80, -95, -97, -96, -91, -47, -94, -97, 125, -106, -97, -96, -89, -96, 81, 124, 98, 97, -110, 101, 97, -56, -31, -22, -21, -14, -21, -100, -57, -76, 117, 93, -117, 118, 110, 114, -125, 126, -120, 118, 94, 103, 114, 80, 84, 108, 107, 112, 104, 74, 118, 107, 108, 106, 93, 112, 107, 108, 118, 89, 108, 117, 107, 108, 121, 108, 121, -90, -56, -51, -56, -98, -117, -127, -115, -96, -122, -91, -83, -98, -126, 125, -97, -92, -97, 119, 99, -83, -75, -88, -93, -88, -96, 85, 95, 60, 59, 56, 81, -99, -89, -124, -122, -126, -103, -109, -111, -100, 114, -85, -77, -77, -85, -80, -87, -85, -54, -63, -84, -56, -47, -49, -111, -80, -51, -77, -75, -82, 126, 102, 99, 91, 77, 61, 56, 65, 66, 59, 88, 118, 109, 116, 91, 88, 94, -88, -97, -90, -114, -119, -120, -125, 122, -127, 105, 100, 100, -76, -80, -87, 121, 123, 120, 96, 124, -71, -47, -54, -41, -35, -40, -42, -97, -107, -82, -67, -86, -79, 101, -91, -66, -51, -66, -119, -126, -116, -76, -120, -100, -81, -56, -41, -56, -108, -116, -112, -113, -66, -109, -90, 123, 93, 95, 90, -69, -98, -100, -96, -102, -103, 124, 122, ByteCompanionObject.MAX_VALUE, 107, 78, 77, 75, 74, -126, 102, 124, 120, 92, 97, -125, 112, -118, ByteCompanionObject.MIN_VALUE, -123, -116, 101, -50, -31, -32, -23, -27, -100, -80, -44, -79, -60, -61, -52, -56, ByteCompanionObject.MAX_VALUE, -83, -50, -45, -60, ByteCompanionObject.MAX_VALUE, -111, 113, -124, -125, -116, -120, 63, 109, -114, -109, -124, 63, 82, -105, -86, -77, -87, -86, -73, 101, -76, -70, -71, -75, -70, -71, 101, -85, -90, -82, -79, -86, -87, -78, -59, -45, -49, -52, -43, -44, -55, -49, -50, -45, ByteCompanionObject.MIN_VALUE, -43, -50, -53, -50, -49, -41, -50, -114, ByteCompanionObject.MIN_VALUE, -93, -49, -60, -59, -61, ByteCompanionObject.MIN_VALUE, -51, -63, -40, ByteCompanionObject.MIN_VALUE, -46, -59, -45, -49, -52, -43, -44, -55, -49, -50, -102, ByteCompanionObject.MIN_VALUE, -119, -125, 99, 125, 111, 105, 107, 102, -90, -96, ByteCompanionObject.MIN_VALUE, -99, -123, -125, -125, -102, -88, -83, -89, -121, -92, -116, -118, -118, -89, -118, -124, 100, -123, 112, 104, 103, -119, 107, 126, ByteCompanionObject.MIN_VALUE, 
        114, 108, 125, 75, 126, 100, -62, -59, -65, -100, -77, -61, -59, -96, -92, 118, -113, -124, -105, -120, -126, 115, -107, -110, -42, -14, -15, -4, -93, -41, -28, -27, -17, -24, -9, -93, -42, 126, 108, 93, 87, 97, 93, 90, 112, 126, 108, 93, 87, 97, 93, 90, -126, -72, -90, -105, -111, -100, -103, -108, -86, -116, 122, 107, 101, 112, 109, 104, -123, -77, -50, -50, ByteCompanionObject.MAX_VALUE, -52, -64, -51, -40, ByteCompanionObject.MAX_VALUE, -46, -45, -47, -60, -64, -52, ByteCompanionObject.MAX_VALUE, -62, -57, -64, -51, -58, -60, -46, -117, ByteCompanionObject.MAX_VALUE, -46, -50, ByteCompanionObject.MAX_VALUE, -61, -47, -50, -49, -49, -56, -51, -58, ByteCompanionObject.MAX_VALUE, -50, -59, -59, -46, -60, -45, -103, ByteCompanionObject.MAX_VALUE, -89, -126, 107, 71, 72, 92, 87, 112, 79, 117, 114, 87, 87, 79, -73, -110, -66, -89, -86, 97, 78, 59, 97, -38, -42, -77, -72, -72, -75, -82, -123, -122, -77, -92, -90, -93, -90, -124, 124, -92, -83, 112, -85, -101, -81, -98, -93, -87, 103, -83, -97, -83, -83, -93, -87, -88, 103, -93, -98, 120, -116, -117, -122, 68, 125, -119, 122, -92, 115, 111, -94, -81, -91, -77, -80, -86, -91, 111, -94, -73, 114, 110, -91, -94, -73, 114, -91, 111, -91, -90, -92, -80, -91, -90, -77, -24, -9, -12, -11, -78, -25, -12, -7, -7, -12, -14, 108, 123, 120, 121, 54, 117, 110, 111, 125, -48, -33, -36, -35, -102, -33, -42, -44, -43, -31, -95, -80, -83, -82, 107, -78, -83, -82, -28, -9, -78, 110, -127, 62, -51, -54, -41, -48, -54, -43, -52, -51, -54, -23, -9, -12, -11, -37, -18, -23, -22, -12, -57, -6, -21, -21, -22, -9, 114, 120, 123, -60, -51, -47, -46, -61, -48, -38, -26, -43, -31, -39, -95, -26, -43, -24, -39, -53, -38, -52, -38, -55, -44, -53, -56, -56, -53, -48, -72, -75, -71, -73, -72, -60, -65, -53, -70, -74, -68, -116, -115, -60, -61, -74, -69, -53, -52, -61, -81, -66, -120, -109, -116, 116, -113, -94, 114, 105, 108, 106, 115, 108, 107, 118, 118, 66, 65, 61, 63, 105, 67, 66, 58, 64, -46, -37, -46, -36, -97, -103, -52, -41, -56, -49, -62, -74, -105, -108, -104, 96, -90, -102, -94, -109, -105, -100, -95, -95, -105, -86, -101, -101, 100, 99, 101, 95, 120, 113, 107, -124, 66, -65, -62, -54, ByteCompanionObject.MIN_VALUE, -65, -76, -57, -72, -63, -74, -52, -56, -115, 123, -55, -54, -49, -64, 125, 113, 126, 126, 121, 126, 119, -17, -29, -12, -21, -16, -15, -31, -24, -115, -127, -104, 77, -120, -123, -119, -121, -120, -108, -27, -39, -16, -91, -31, -26, -24, -19, -20, -91, -21, -31, -14, -35, 117, 105, ByteCompanionObject.MIN_VALUE, 53, ByteCompanionObject.MAX_VALUE, 113, 108, 124, 112, 124, 119, -75, -79, -84, -73, -57, -61, -57, -65, -102, -115, -103, -115, -96, -108, -110, -115, -121, -113, -112, -123, -103, -105, -125, -118, -89, 105, 104, 105, -113, ByteCompanionObject.MIN_VALUE, -115, -124, -117, -117, 126, -125, -74, -89, -76, -85, -78, -78, -91, -86, -78, -18, -33, -20, -29, -22, -22, -35, -30, -15, -91, -106, -93, -102, -95, -95, -108, -103, -87, -24, -22, -31, -25, -22, -31, -20, -15, -84, -97, -90, -97, -101, -83, -97, -119, -81, -82, -86, -81, -82, 124, -81, -96, -96, -97, -84, ByteCompanionObject.MIN_VALUE, 125, -126, 111, -126, 119, 125, 124, 59, 114, 115, 117, ByteCompanionObject.MIN_VALUE, 115, 115, -127, -107, 91, 82, 87, -102, 82, 83, 90, -58, -76, -63, -57, -62, -63, -68, -105, -113, -115, -108, 122, -115, -120, -119, -109, 102, -103, -118, -118, -119, -106, -14, -33, -25, -30, -19, -35, -16, -19, -11, -119, 120, -127, 116, 122, -118, -84, -83, -90, -90, -99, -92, -99, -100, 101, -88, -92, -103, -79, -102, -103, -101, -93, -90, -107, -94, -98, -107, -107, -113, 125, 101, -54, -67, -72, -71, -61, -125, -121, -69, -60, -60, -86, -99, -104, -103, -93, 99, -107, -86, 100, 101, -40, -53, -58, -57, -47, -111, -61, -40, -59, -124, 119, 114, 115, 125, 61, 114, 125, 122, 112, -121, 59, -124, 119, -127, 119, 125, 124, -37, -50, -55, -54, -44, -108, -51, -54, -37, -56, -109, -122, -127, -126, -116, 76, -118, -115, 81, -109, 74, -126, -112, -33, -46, -51, -50, -40, -104, -31, -106, -33, -41, -51, -105, -40, -41, -101, -105, -33, -39, -95, -22, -35, -40, -39, -29, -93, -20, -95, -22, -30, -40, -94, -29, -30, -90, -94, -22, -28, -83, -76, -98, -79, -80, -84, -85, -42, -57, -40, -47, -60, -61, -51, -65, -70, -54, -66, -88, -96, -96, -107, -92, -112, -105, -89, -97, -97, -108, -93, -113, -106, -98, -45};
    }

    static {
        A0P();
        A13 = new int[]{1920, 1600, 1440, TTVideoEngineInterface.PLAYER_OPTION_ENABLE_BOX_DEMUXER, 960, 854, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FRAME_DTS_CHECK, 540, 480};
    }

    @MetaExoPlayerCustomization(type = {"FEATURE_LOGIC"}, value = "D69547806: Only become ready once we have a surface")
    public C0O(Context context, C2389hv c2389hv, C2386hs c2386hs, InterfaceC1257Ar interfaceC1257Ar, long j10, C9U c9u, boolean z10, boolean z11, Handler handler, InterfaceC1382Fo interfaceC1382Fo, int i10, int i11, int i12, int i13, int i14) {
        super(2, c2389hv, c2386hs, interfaceC1257Ar, c9u, z10, z11, i12, i13);
        this.A0e = true;
        this.A0Z = true;
        boolean z12 = false;
        this.A0f = false;
        this.A0K = -9223372036854775807L;
        this.A0c = false;
        this.A0h = false;
        this.A0w = C2397i5.A03(EnumC2394i2.A1r);
        this.A0h = C2397i5.A03(EnumC2394i2.A0w);
        this.A0p = j10;
        this.A0l = i10;
        this.A0m = i11;
        this.A0q = context.getApplicationContext();
        this.A0n = i14;
        this.A0t = new FY(context);
        this.A0s = new FV(this.A0q);
        this.A0u = new C1381Fn(handler, interfaceC1382Fo);
        this.A0r = new FC(this.A0s, this, this.A0w);
        this.A0v = A0i();
        if (AbstractC10974a.A02 == 29 && AbstractC10974a.A06.startsWith(A0B(MediaPlayer.MEDIA_PLAYER_OPTION_LIVE_STREAM_SESSION_ID, 6, 62))) {
            z12 = true;
        }
        this.A0a = z12;
        this.A0x = new long[10];
        this.A0y = new long[10];
        this.A0R = -9223372036854775807L;
        this.A0O = -9223372036854775807L;
        this.A0M = -9223372036854775807L;
        this.A08 = -1;
        this.A06 = -1;
        this.A01 = -1.0f;
        this.A02 = -1.0f;
        this.A0H = 1;
        A0F();
    }

    private int A00(C2796or c2796or) {
        if (c2796or.A0B != -1) {
            int i10 = 0;
            int i11 = c2796or.A0X.size();
            for (int initializationDataCount = 0; initializationDataCount < i11; initializationDataCount++) {
                int totalInitializationDataSize = c2796or.A0X.get(initializationDataCount).length;
                i10 += totalInitializationDataSize;
            }
            int totalInitializationDataSize2 = c2796or.A0B;
            return totalInitializationDataSize2 + i10;
        }
        int i12 = c2796or.A0L;
        String str = c2796or.A0W;
        int width = c2796or.A0A;
        return A02(str, i12, width);
    }

    /* JADX WARN: Code restructure failed: missing block: B:120:0x00a8, code lost:
        if (r5 != false) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x00aa, code lost:
        r5 = 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x00c9, code lost:
        if (r4 != false) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x00cb, code lost:
        r3 = 32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x00cd, code lost:
        if (r6 == false) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x00cf, code lost:
        r0 = 4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x00d2, code lost:
        return (r5 | r3) | r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x00d3, code lost:
        r0 = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x00d5, code lost:
        if (r4 != false) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x00d8, code lost:
        if (r5 != false) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x00db, code lost:
        r5 = 8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x00fb, code lost:
        if (r6 <= r5) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x00fd, code lost:
        r6 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x00fe, code lost:
        if (r6 != false) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x0100, code lost:
        r5 = new java.lang.StringBuilder();
        r0 = A0B(com.ss.ttm.player.MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_STALL_COUNTER, 29, 72);
        r5 = r5.append(r0).append(r9.A0L);
        r0 = A0B(1775, 1, 84);
        r5 = r5.append(r0).append(r9.A0A);
        r0 = A0B(1154, 3, 73);
        r1 = r5.append(r0);
        r0 = com.facebook.ads.redexgen.X.AbstractC10974a.A04;
        r5 = r1.append(r0);
        r0 = A0B(1153, 1, 64);
        r5 = r5.append(r0).toString();
        r0 = A0B(682, 23, 0);
        com.facebook.ads.redexgen.X.AnonymousClass44.A04(r0, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x016a, code lost:
        if (r6 <= r5) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x016d, code lost:
        r7 = false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int A01(com.facebook.ads.redexgen.X.InterfaceC1257Ar r8, com.facebook.ads.redexgen.X.C2796or r9, boolean r10) throws com.facebook.ads.redexgen.X.C1261Av {
        /*
            Method dump skipped, instructions count: 373
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C0O.A01(com.facebook.ads.redexgen.X.Ar, com.facebook.ads.redexgen.X.or, boolean):int");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0098, code lost:
        if (r7.equals(A0B(1682, 10, 94)) != false) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x009a, code lost:
        r0 = 4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x00ac, code lost:
        if (r7.equals(A0B(1682, 10, 94)) != false) goto L39;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int A02(java.lang.String r7, int r8, int r9) {
        /*
            Method dump skipped, instructions count: 292
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C0O.A02(java.lang.String, int, int):int");
    }

    public long A03(long j10, long j11, long j12, long j13, boolean z10) {
        double playbackSpeed = A1f();
        long j14 = (long) ((j13 - j10) / playbackSpeed);
        if (z10) {
            return j14 - (j12 - j11);
        }
        return j14;
    }

    @MetaExoPlayerCustomization("D64704257: Adding a new param to control AI FRC")
    private final MediaFormat A08(C2796or c2796or, FA fa2, boolean z10, int i10) {
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString(A0B(1462, 4, 83), c2796or.A0W);
        mediaFormat.setInteger(A0B(1755, 5, 79), c2796or.A0L);
        mediaFormat.setInteger(A0B(1307, 6, 73), c2796or.A0A);
        AnonymousClass46.A06(mediaFormat, c2796or.A0X);
        AnonymousClass46.A03(mediaFormat, A0B(1286, 10, 109), c2796or.A01);
        AnonymousClass46.A04(mediaFormat, A0B(1548, 16, 7), c2796or.A0F);
        AnonymousClass46.A02(mediaFormat, c2796or.A0N);
        mediaFormat.setInteger(A0B(1447, 9, 1), fa2.A02);
        mediaFormat.setInteger(A0B(TTVideoEngineInterface.PLAYER_OPTION_OPEN_FAIL_TRY_AGAIN, 10, 25), fa2.A00);
        AnonymousClass46.A04(mediaFormat, A0B(1433, 14, 113), fa2.A01);
        if (AbstractC10974a.A02 >= 23) {
            String A0B = A0B(1521, 8, 113);
            String[] strArr = A12;
            if (strArr[4].charAt(23) == strArr[7].charAt(23)) {
                throw new RuntimeException();
            }
            A12[2] = "2RIBJj1oBKSBZdAo5SnKQdQzGU6CRjTj";
            mediaFormat.setInteger(A0B, 0);
        }
        if (z10) {
            mediaFormat.setInteger(A0B(DataLoaderHelper.DATALOADER_KEY_STR_SPEED_ENGINE_SETTING, 8, 16), 0);
        }
        AbstractC2366hY.A03(this.A11, mediaFormat);
        if (i10 != 0) {
            A0T(mediaFormat, i10);
        }
        return mediaFormat;
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x005b A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final com.facebook.ads.redexgen.X.FA A0A(com.facebook.ads.redexgen.X.AR r12, com.facebook.ads.redexgen.X.C2796or r13, com.facebook.ads.redexgen.X.C2796or[] r14) throws com.facebook.ads.redexgen.X.C1261Av {
        /*
            r11 = this;
            int r5 = r13.A0L
            int r4 = r13.A0A
            int r3 = r11.A00(r13)
            int r1 = r14.length
            r0 = 1
            if (r1 != r0) goto L12
            com.facebook.ads.redexgen.X.FA r0 = new com.facebook.ads.redexgen.X.FA
            r0.<init>(r5, r4, r3)
            return r0
        L12:
            r10 = 0
            int r7 = r14.length
            r6 = 0
        L15:
            if (r6 >= r7) goto L61
            r8 = r14[r6]
            boolean r0 = r12.A04
            boolean r0 = A0v(r0, r13, r8)
            if (r0 == 0) goto L56
            int r0 = r8.A0L
            r1 = -1
            if (r0 == r1) goto L2a
            int r0 = r8.A0A
            if (r0 != r1) goto L59
        L2a:
            r0 = 1
        L2b:
            r10 = r10 | r0
            int r9 = r8.A0L
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C0O.A12
            r0 = 6
            r1 = r1[r0]
            r0 = 29
            char r1 = r1.charAt(r0)
            r0 = 120(0x78, float:1.68E-43)
            if (r1 == r0) goto L5b
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C0O.A12
            java.lang.String r1 = "vHVCHU2tj4jzHHyhZwddXygsl3jVFph7"
            r0 = 2
            r2[r0] = r1
            int r5 = java.lang.Math.max(r5, r9)
            int r0 = r8.A0A
            int r4 = java.lang.Math.max(r4, r0)
            int r0 = r11.A00(r8)
            int r3 = java.lang.Math.max(r3, r0)
        L56:
            int r6 = r6 + 1
            goto L15
        L59:
            r0 = 0
            goto L2b
        L5b:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L61:
            if (r10 == 0) goto Ldd
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            r2 = 921(0x399, float:1.29E-42)
            r1 = 43
            r0 = 89
            java.lang.String r0 = A0B(r2, r1, r0)
            java.lang.StringBuilder r0 = r6.append(r0)
            java.lang.StringBuilder r6 = r0.append(r5)
            r2 = 1775(0x6ef, float:2.487E-42)
            r1 = 1
            r0 = 84
            java.lang.String r8 = A0B(r2, r1, r0)
            java.lang.StringBuilder r0 = r6.append(r8)
            java.lang.StringBuilder r0 = r0.append(r4)
            java.lang.String r7 = r0.toString()
            r2 = 682(0x2aa, float:9.56E-43)
            r1 = 23
            r0 = 0
            java.lang.String r6 = A0B(r2, r1, r0)
            com.facebook.ads.redexgen.X.AnonymousClass44.A07(r6, r7)
            android.graphics.Point r1 = A07(r12, r13)
            if (r1 == 0) goto Ldd
            int r0 = r1.x
            int r5 = java.lang.Math.max(r5, r0)
            int r0 = r1.y
            int r4 = java.lang.Math.max(r4, r0)
            java.lang.String r0 = r13.A0W
            int r0 = A02(r0, r5, r4)
            int r3 = java.lang.Math.max(r3, r0)
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            r2 = 246(0xf6, float:3.45E-43)
            r1 = 34
            r0 = 11
            java.lang.String r0 = A0B(r2, r1, r0)
            java.lang.StringBuilder r0 = r7.append(r0)
            java.lang.StringBuilder r0 = r0.append(r5)
            java.lang.StringBuilder r0 = r0.append(r8)
            java.lang.StringBuilder r0 = r0.append(r4)
            java.lang.String r0 = r0.toString()
            com.facebook.ads.redexgen.X.AnonymousClass44.A07(r6, r0)
        Ldd:
            com.facebook.ads.redexgen.X.FA r0 = new com.facebook.ads.redexgen.X.FA
            r0.<init>(r5, r4, r3)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C0O.A0A(com.facebook.ads.redexgen.X.AR, com.facebook.ads.redexgen.X.or, com.facebook.ads.redexgen.X.or[]):com.facebook.ads.redexgen.X.FA");
    }

    public static List<AR> A0C(InterfaceC1257Ar interfaceC1257Ar, C2796or c2796or) throws C1261Av {
        ArrayList arrayList = new ArrayList();
        String alternativeMimeType = C1264Ay.A0P(c2796or);
        if (alternativeMimeType != null) {
            List<AR> A7g = interfaceC1257Ar.A7g(alternativeMimeType, false, false);
            if (AbstractC10974a.A02 >= 26) {
                if (A0B(1664, 18, 7).equals(c2796or.A0W) && !A7g.isEmpty()) {
                    return A7g;
                }
                return arrayList;
            }
            return arrayList;
        }
        return arrayList;
    }

    public static List<AR> A0D(InterfaceC1257Ar interfaceC1257Ar, C2796or c2796or, boolean z10) throws C1261Av {
        String str = c2796or.A0W;
        if (str == null) {
            return Collections.emptyList();
        }
        return Collections.unmodifiableList(interfaceC1257Ar.A7g(str, z10, false));
    }

    private void A0E() {
        AO A1j;
        this.A0i = false;
        if (AbstractC10974a.A02 >= 23 && this.A0k && (A1j = A1j()) != null) {
            this.A00 = new C2597la(this, A1j);
        }
    }

    private void A0F() {
        this.A0G = -1;
        this.A0E = -1;
        this.A03 = -1.0f;
        this.A0F = -1;
    }

    @MetaExoPlayerCustomization("need for SR to release EGL context")
    private void A0G() {
        if (this.A0r.A0G() && C2397i5.A03(EnumC2394i2.A1p)) {
            this.A0r.A0A();
            throw null;
        }
    }

    private void A0H() {
        if (this.A0m > 0 && this.A05 > 0 && this.A05 >= this.A0m) {
            this.A0u.A00(this.A05, SystemClock.elapsedRealtime() - this.A0I);
        }
        this.A05 = 0;
        this.A0I = SystemClock.elapsedRealtime();
    }

    private void A0I() {
        AO A1j = A1j();
        if (A1j != null && !this.A0c && A1j.A9C() > 30) {
            A0V(super.A0i);
            this.A0c = true;
        }
    }

    private void A0J() {
        if (this.A09 > 0) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            long now = this.A0J;
            long elapsedMs = elapsedRealtime - now;
            this.A0u.A01(this.A09, elapsedMs);
            this.A09 = 0;
            this.A0J = elapsedRealtime;
        }
    }

    private void A0K() {
        if (this.A08 == -1 && this.A06 == -1) {
            return;
        }
        if (this.A0G != this.A08 || this.A0E != this.A06 || this.A0F != this.A07 || this.A03 != this.A01) {
            this.A0u.A07(new C2749o4(this.A08, this.A06, this.A07, this.A01));
            this.A0G = this.A08;
            this.A0E = this.A06;
            this.A0F = this.A07;
            this.A03 = this.A01;
        }
    }

    private void A0L() {
        if (this.A0i) {
            this.A0u.A0D(this.A0U);
        }
    }

    private void A0M() {
        if (this.A0G != -1 || this.A0E != -1) {
            this.A0u.A07(new C2749o4(this.A0G, this.A0E, this.A0F, this.A03));
        }
    }

    private void A0N() {
        long j10;
        if (this.A0p > 0) {
            j10 = SystemClock.elapsedRealtime() + this.A0p;
        } else {
            j10 = -9223372036854775807L;
        }
        this.A0M = j10;
    }

    @MetaExoPlayerCustomization("D36797879: Adding implementation for calculating avg render time")
    private void A0O() {
        super.A0j.A03(super.A0h);
    }

    private final void A0Q(int i10) {
        super.A0j.A04 += i10;
        this.A09 += i10;
        this.A05 += i10;
        super.A0j.A07 = Math.max(this.A05, super.A0j.A07);
        if (this.A09 >= this.A0l) {
            A0J();
        }
    }

    private final void A0R(long j10, long j11, float f10) {
        int A01 = (int) AbstractC10431w.A01(j10);
        int A012 = (int) AbstractC10431w.A01(j11);
        if (A012 > 1000 && A012 < 10000) {
            int i10 = A01 + A012;
            int positionMs = this.A0A;
            int presentationGapMs = this.A0B;
            if (i10 > positionMs + presentationGapMs + 1000) {
                int presentationGapMs2 = this.A0A;
                if (A01 > presentationGapMs2) {
                    int positionMs2 = this.A0A;
                    int presentationGapMs3 = this.A0B;
                    if (A01 < positionMs2 + presentationGapMs3) {
                        C11295g c11295g = super.A0j;
                        int i11 = c11295g.A0E;
                        int positionMs3 = this.A0A;
                        int presentationGapMs4 = this.A0B;
                        c11295g.A0E = i11 + ((int) ((((A01 + A012) - (positionMs3 + presentationGapMs4)) * f10) / 1000.0d));
                        this.A0A = A01;
                        this.A0B = A012;
                    }
                }
                int positionMs4 = this.A0A;
                int presentationGapMs5 = this.A0B;
                if (A01 > positionMs4 + presentationGapMs5) {
                    int presentationGapMs6 = (int) ((A012 * f10) / 1000.0d);
                    super.A0j.A0E += presentationGapMs6;
                }
                this.A0A = A01;
                this.A0B = A012;
            }
        }
    }

    public void A0S(long j10, long j11, C2796or c2796or, MediaFormat mediaFormat) {
        if (this.A0X != null) {
            this.A0X.AFi(j10, j11, c2796or, mediaFormat);
        }
    }

    public static void A0T(MediaFormat mediaFormat, int i10) {
        mediaFormat.setFeatureEnabled(A0B(1609, 17, 49), true);
        mediaFormat.setInteger(A0B(1157, 16, 51), i10);
    }

    private void A0U(Surface surface) throws C9Y {
        Pair pair;
        if (surface == null) {
            if (this.A0T != null) {
                surface = this.A0T;
            } else {
                AR A1k = A1k();
                if (A1k != null && A0r(A1k)) {
                    this.A0T = DummySurface.A01(this.A0q, A1k.A06);
                    surface = this.A0T;
                }
            }
        }
        boolean A03 = C2397i5.A03(EnumC2394i2.A0W);
        if (this.A0U != surface) {
            this.A0U = surface;
            this.A0Q = SystemClock.elapsedRealtime();
            if (A12[6].charAt(29) == 'x') {
                throw new RuntimeException();
            }
            A12[1] = "flDNbofxs3CTffCwMDp3s46Nt2jaxTe4";
            int A92 = A92();
            boolean shouldIgnoreUnknownSurfaceSize = false;
            boolean z10 = this.A0f && AAV();
            if (A92 == 1 || A92 == 2) {
                AO A1j = A1j();
                boolean shouldReInitCodecUponSurfaceSetFailure = this.A0r.A0G();
                if (!shouldReInitCodecUponSurfaceSetFailure) {
                    int state = AbstractC10974a.A02;
                    if (state >= 23 && A1j != null && surface != null) {
                        boolean shouldReInitCodecUponSurfaceSetFailure2 = this.A0b;
                        if (!shouldReInitCodecUponSurfaceSetFailure2) {
                            if (A03) {
                                try {
                                    A0d(A1j, surface);
                                } catch (IllegalStateException unused) {
                                    A1n();
                                    A1p();
                                }
                            } else {
                                A0d(A1j, surface);
                            }
                        }
                    }
                    A1n();
                    A1p();
                }
            }
            if (surface != null && surface != this.A0T) {
                A0M();
                A0E();
                if (A92 == 2 || z10) {
                    A0N();
                }
                if (this.A0r.A0G()) {
                    if (C2397i5.A03(EnumC2394i2.A0j)) {
                        pair = this.A0r.A06;
                        if (pair != null) {
                            shouldIgnoreUnknownSurfaceSize = true;
                        }
                    }
                    if (!shouldIgnoreUnknownSurfaceSize) {
                        this.A0r.A0C(surface, C4N.A03);
                        return;
                    }
                    return;
                }
                return;
            }
            A0F();
            A0E();
            if (!this.A0r.A0G()) {
                return;
            }
            this.A0r.A08();
            throw null;
        } else if (surface != null && surface != this.A0T) {
            A0M();
            if (A12[3].length() != 21) {
                A12[6] = "VhVyjLmIQ4bbJ9563iENK2u1xmxcLHgS";
                A0L();
                return;
            }
            A0L();
        }
    }

    private void A0V(C2796or c2796or) {
        AO codec = A1j();
        if (codec != null && c2796or != null) {
            Pair<Long, Integer> A8b = codec.A8b();
            if (((Long) A8b.first).longValue() > 0) {
                super.A0j.A04(A8b);
                C1381Fn c1381Fn = this.A0u;
                if (A12[2].charAt(6) == 'n') {
                    throw new RuntimeException();
                }
                A12[3] = "UGSzGWhN7NgjOmIm99IkQUILfPM9Cd";
                c1381Fn.A04(super.A0j.A00, c2796or);
            }
        }
    }

    private final void A0W(AO ao2, int i10, long j10) {
        C4S.A02(A0B(1262, 15, 126));
        ao2.AGy(i10, false);
        C4S.A00();
        A0Q(1);
    }

    @MetaExoPlayerCustomization("D36797879: Adding implementation for calculating avg render time")
    private final void A0X(AO ao2, int i10, long j10) {
        if (this.A0w) {
            A0Y(ao2, i10, j10);
            return;
        }
        A0K();
        try {
            C4S.A02(A0B(1529, 19, 51));
            long elapsedRealtime = SystemClock.elapsedRealtime();
            ao2.AGy(i10, true);
            long j11 = super.A0h;
            long startRenderTime = SystemClock.elapsedRealtime();
            super.A0h = j11 + (startRenderTime - elapsedRealtime);
            this.A0P = SystemClock.elapsedRealtime() * 1000;
            super.A0j.A09++;
            A0H();
            A27();
            A0O();
        } finally {
            C4S.A00();
        }
    }

    @MetaExoPlayerCustomization("D36797879: Adding implementation for calculating avg render time")
    private final void A0Y(AO ao2, int i10, long j10) {
        C4S.A02(A0B(1529, 19, 51));
        long elapsedRealtime = SystemClock.elapsedRealtime();
        ao2.AGy(i10, true);
        long j11 = super.A0h;
        long startRenderTime = SystemClock.elapsedRealtime();
        super.A0h = j11 + (startRenderTime - elapsedRealtime);
        C4S.A00();
        super.A0j.A09++;
        A0H();
        if (!this.A0r.A0G()) {
            this.A0P = SystemClock.elapsedRealtime() * 1000;
            A0K();
            A27();
        }
    }

    private final void A0Z(AO ao2, int i10, long j10) {
        C4S.A02(A0B(1579, 15, 29));
        ao2.AGy(i10, false);
        C4S.A00();
        super.A0j.A0B++;
    }

    @MetaExoPlayerCustomization("D36797879: Adding implementation for calculating avg render time")
    private final void A0a(AO ao2, int i10, long j10, long j11) {
        if (this.A0w) {
            A0c(ao2, i10, j10, j11, true);
            return;
        }
        A0K();
        A0S(j10, j11, super.A0i, this.A0S);
        try {
            C4S.A02(A0B(1529, 19, 51));
            long elapsedRealtime = SystemClock.elapsedRealtime();
            ao2.AGx(i10, j11);
            long j12 = super.A0h;
            long startRenderTime = SystemClock.elapsedRealtime();
            super.A0h = j12 + (startRenderTime - elapsedRealtime);
            this.A0P = SystemClock.elapsedRealtime() * 1000;
            super.A0j.A09++;
            A0H();
            A27();
            A0O();
        } finally {
            C4S.A00();
        }
    }

    private final void A0b(@MetaExoPlayerCustomization AO ao2, int i10, long j10, long j11, boolean z10) {
        if (this.A0w) {
            A0c(ao2, i10, j10, j11, z10);
            return;
        }
        A0K();
        A0S(j10, j11, super.A0i, this.A0S);
        try {
            C4S.A02(A0B(1529, 19, 51));
            long elapsedRealtime = SystemClock.elapsedRealtime();
            ao2.AGx(i10, j11);
            long j12 = super.A0h;
            long startRenderTime = SystemClock.elapsedRealtime();
            super.A0h = j12 + (startRenderTime - elapsedRealtime);
            this.A0P = SystemClock.elapsedRealtime() * 1000;
            super.A0j.A09++;
            A0H();
            A27();
            A0O();
        } finally {
            C4S.A00();
        }
    }

    @MetaExoPlayerCustomization("notifyFrameMetadataListener be removed once we take the Exo renderOutputBufferNow Function refactor")
    private final void A0c(AO ao2, int i10, long j10, long j11, boolean z10) {
        if (z10) {
            C2796or c2796or = super.A0i;
            MediaFormat mediaFormat = this.A0S;
            if (A12[3].length() != 21) {
                A12[6] = "fwcrFdVwexqT3olBri8BzspmWxCtZa94";
                A0S(j10, j11, c2796or, mediaFormat);
            }
            throw new RuntimeException();
        }
        C4S.A02(A0B(1529, 19, 51));
        long elapsedRealtime = SystemClock.elapsedRealtime();
        ao2.AGx(i10, j11);
        long j12 = super.A0h;
        long startRenderTime = SystemClock.elapsedRealtime();
        super.A0h = j12 + (startRenderTime - elapsedRealtime);
        if (A12[3].length() != 21) {
            String[] strArr = A12;
            strArr[5] = "NtBdNhJ";
            strArr[0] = "S1Pe4Cz";
            C4S.A00();
            super.A0j.A09++;
            A0H();
            if (!this.A0r.A0G()) {
                this.A0P = SystemClock.elapsedRealtime() * 1000;
                A0K();
                A27();
                A0O();
                return;
            }
            return;
        }
        throw new RuntimeException();
    }

    public static void A0d(AO ao2, Surface surface) {
        ao2.AIr(surface);
    }

    @MetaExoPlayerCustomization
    private void A0f(Object obj) {
        this.A0d = ((Boolean) obj).booleanValue();
        A1j();
    }

    private boolean A0g() {
        boolean z10 = false;
        if (this.A0n <= 0) {
            return false;
        }
        z10 = (this.A0K == -9223372036854775807L || System.currentTimeMillis() - this.A0K <= ((long) this.A0n)) ? true : true;
        if (this.A0K == -9223372036854775807L) {
            AnonymousClass44.A07(A0B(682, 23, 0), A0B(901, 20, 62));
            this.A0K = System.currentTimeMillis();
        }
        return z10;
    }

    public static boolean A0h() {
        return AbstractC10974a.A02 >= 21;
    }

    public static boolean A0i() {
        return AbstractC10974a.A02 <= 22 && A0B(TTVideoEngineInterface.PLAYER_OPTION_ENABLE_BOX_DEMUXER, 6, 87).equals(AbstractC10974a.A03) && A0B(725, 6, 88).equals(AbstractC10974a.A05);
    }

    public static boolean A0k(long j10) {
        return j10 < -30000;
    }

    public static boolean A0l(long j10) {
        return j10 < -500000;
    }

    public boolean A0m(long j10, long j11) {
        boolean z10;
        boolean z11 = A92() == 2;
        boolean isStarted = this.A0j;
        if (!isStarted) {
            if (!z11) {
                boolean isStarted2 = this.A0g;
                if (!isStarted2) {
                    z10 = false;
                }
            }
            z10 = true;
        } else {
            boolean isStarted3 = this.A0i;
            z10 = !isStarted3;
        }
        long elapsedRealtime = (SystemClock.elapsedRealtime() * 1000) - this.A0P;
        if (this.A0M == -9223372036854775807L && j10 >= A1i()) {
            if (z10) {
                return true;
            }
            if (z11) {
                boolean isStarted4 = A0p(j11, elapsedRealtime);
                if (isStarted4) {
                    return true;
                }
            }
        }
        return false;
    }

    private final boolean A0n(long j10, long j11) {
        return A0l(j10);
    }

    private final boolean A0o(long j10, long j11) {
        return A0k(j10);
    }

    private final boolean A0p(long j10, long j11) {
        return A0k(j10) && j11 > 100000;
    }

    private final boolean A0q(AO ao2, int i10, long j10, long j11) throws C9Y {
        int A1Q = A1Q(j11);
        if (A1Q == 0) {
            return false;
        }
        C11295g c11295g = super.A0j;
        int droppedSourceBufferCount = c11295g.A06;
        c11295g.A06 = droppedSourceBufferCount + 1;
        int droppedSourceBufferCount2 = this.A04;
        A0Q(droppedSourceBufferCount2 + A1Q);
        A1m();
        if (this.A0r.A0G()) {
            this.A0r.A09();
            throw null;
        }
        return true;
    }

    private boolean A0r(AR ar2) {
        return AbstractC10974a.A02 >= 23 && this.A0e && !this.A0k && !A0u(ar2.A03) && (!ar2.A06 || DummySurface.A05(this.A0q));
    }

    private final boolean A0u(String str) {
        char c10 = 0;
        if (str.startsWith(A0B(TTVideoEngineInterface.PLAYER_OPTION_FETCH_WITH_ABILITY_OPTION, 10, 61))) {
            return false;
        }
        synchronized (C0O.class) {
            if (!A10) {
                if (A0B(MediaPlayer.MEDIA_PLAYER_OPTION_CACHE_OPEN_END_TIME, 6, 98).equals(AbstractC10974a.A03)) {
                    A0z = true;
                } else {
                    char c11 = 27;
                    if (AbstractC10974a.A02 <= 27 && A0B(563, 5, 2).equals(AbstractC10974a.A03)) {
                        A0z = true;
                    } else if (AbstractC10974a.A02 < 27) {
                        String str2 = AbstractC10974a.A03;
                        switch (str2.hashCode()) {
                            case -2144781245:
                                if (str2.equals(A0B(423, 14, 80))) {
                                    c11 = '+';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case -2144781185:
                                if (str2.equals(A0B(437, 14, 87))) {
                                    c11 = ',';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case -2144781160:
                                if (str2.equals(A0B(MediaPlayer.MEDIA_PLAYER_OPTION_CMAF_MPD_PACKET_RECV_TIME, 14, 23))) {
                                    c11 = '-';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case -2097309513:
                                if (str2.equals(A0B(604, 6, 104))) {
                                    c11 = '?';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case -2022874474:
                                if (str2.equals(A0B(220, 10, 59))) {
                                    c11 = 19;
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case -1978993182:
                                if (str2.equals(A0B(TTVideoEngineInterface.PLAYER_OPTION_ENABLE_RECEIVE_BINARY_SEI, 6, 0))) {
                                    c11 = 'M';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case -1978990237:
                                if (str2.equals(A0B(TTVideoEngineInterface.PLAYER_OPTION_LAZY_LOAD_VIDEO_DEC, 6, 72))) {
                                    c11 = 'N';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case -1936688988:
                                if (str2.equals(A0B(777, 6, 31))) {
                                    c11 = 'X';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case -1936688066:
                                if (str2.equals(A0B(MediaPlayer.MEDIA_PLAYER_OPTION_SET_PCDN_AND_FLV_ADAPT_ENABLE, 6, 81))) {
                                    c11 = 'Y';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case -1936688065:
                                if (str2.equals(A0B(789, 6, 44))) {
                                    c11 = 'Z';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case -1931988508:
                                if (str2.equals(A0B(138, 10, 6))) {
                                    c11 = 11;
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case -1696512866:
                                if (str2.equals(A0B(1137, 6, 123))) {
                                    c11 = '{';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case -1680025915:
                                if (str2.equals(A0B(MediaPlayer.MEDIA_PLAYER_OPTION_VIDEOCODEC_PIXEL_ALIGN, 7, 111))) {
                                    c11 = 18;
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case -1615810839:
                                if (str2.equals(A0B(803, 8, 98))) {
                                    c11 = '[';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case -1554255044:
                                if (str2.equals(A0B(1626, 9, 41))) {
                                    c11 = 't';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case -1481772737:
                                if (str2.equals(A0B(1494, 9, 63))) {
                                    c11 = 'T';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case -1481772730:
                                if (str2.equals(A0B(1503, 9, 119))) {
                                    c11 = 'U';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case -1481772729:
                                if (str2.equals(A0B(DataLoaderHelper.DATALOADER_KEY_STRING_TTQUICHE_OPTS, 9, 46))) {
                                    c11 = 'V';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case -1320080169:
                                if (str2.equals(A0B(521, 14, 74))) {
                                    c11 = ')';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case -1217592143:
                                if (str2.equals(A0B(MediaPlayer.MEDIA_PLAYER_OPTION_LOOP_COUNT, 11, 54))) {
                                    c11 = 15;
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case -1180384755:
                                if (str2.equals(A0B(MediaPlayer.MEDIA_PLAYER_OPTION_DEQUEUE_OUTPUTBUFFER_COUNT, 6, 98))) {
                                    c11 = ';';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case -1139198265:
                                if (str2.equals(A0B(1015, 9, 28))) {
                                    c11 = 'h';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case -1052835013:
                                if (str2.equals(A0B(1466, 6, 37))) {
                                    c11 = 'K';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case -993250464:
                                if (str2.equals(A0B(12, 7, 120))) {
                                    c11 = 3;
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case -993250458:
                                if (str2.equals(A0B(19, 7, 110))) {
                                    c11 = 4;
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case -965403638:
                                if (str2.equals(A0B(1564, 8, 27))) {
                                    c11 = 'j';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case -958336948:
                                if (str2.equals(A0B(324, 11, 1))) {
                                    c11 = 29;
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case -879245230:
                                if (str2.equals(A0B(1603, 6, 14))) {
                                    c11 = 'p';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case -842500323:
                                if (str2.equals(A0B(1472, 10, 29))) {
                                    c11 = 'L';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case -821392978:
                                if (str2.equals(A0B(39, 7, 16))) {
                                    c11 = 7;
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case -797483286:
                                if (str2.equals(A0B(1006, 9, 104))) {
                                    c11 = 'i';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case -794946968:
                                if (str2.equals(A0B(MediaPlayer.MEDIA_PLAYER_OPTION_AUTO_AUDIO_DEVICE_DETECTION, 6, 54))) {
                                    c11 = 'u';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case -788334647:
                                if (str2.equals(A0B(1749, 6, 88))) {
                                    c11 = 'v';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case -782144577:
                                if (str2.equals(A0B(753, 9, 85))) {
                                    c11 = 'O';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case -575125681:
                                if (str2.equals(A0B(507, 14, 73))) {
                                    c11 = '(';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case -521118391:
                                if (str2.equals(A0B(409, 14, 16))) {
                                    c11 = '*';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case -430914369:
                                if (str2.equals(A0B(MediaPlayer.MEDIA_PLAYER_OPTION_RTC_PARAMS_JSON, 10, 78))) {
                                    c11 = '\\';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case -290434366:
                                if (str2.equals(A0B(1594, 9, 119))) {
                                    c11 = 'k';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case -282781963:
                                if (str2.equals(A0B(171, 8, 118))) {
                                    c11 = 14;
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case -277133239:
                                if (str2.equals(A0B(DataLoaderHelper.DATALOADER_KEY_INT_P2P_FIRSTRANGE_LOADER_TYPE, 7, 77))) {
                                    c11 = '|';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case -173639913:
                                if (str2.equals(A0B(MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_GET_CACHE_TIMESTAMP, 12, 77))) {
                                    c11 = 26;
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case -56598463:
                                if (str2.equals(A0B(1767, 8, 41))) {
                                    c11 = 'x';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 2126:
                                if (str2.equals(A0B(218, 2, 93))) {
                                    c11 = 17;
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 2564:
                                if (str2.equals(A0B(856, 2, 42))) {
                                    c11 = 'd';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 2715:
                                if (str2.equals(A0B(1114, 2, 74))) {
                                    c11 = 'q';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 2719:
                                if (str2.equals(A0B(1121, 2, 19))) {
                                    c11 = 's';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 3483:
                                if (str2.equals(A0B(1456, 2, 8))) {
                                    c11 = 'H';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 73405:
                                if (str2.equals(A0B(594, 3, 12))) {
                                    c11 = '>';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 75739:
                                if (str2.equals(A0B(668, 3, 33))) {
                                    c11 = 'D';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 76779:
                                if (str2.equals(A0B(679, 3, 19))) {
                                    c11 = 'J';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 78669:
                                if (str2.equals(A0B(766, 3, 39))) {
                                    c11 = 'R';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 79305:
                                if (str2.equals(A0B(795, 3, 93))) {
                                    c11 = '^';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 80618:
                                if (str2.equals(A0B(866, 3, 45))) {
                                    c11 = 'f';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 88274:
                                if (str2.equals(A0B(1150, 3, 69))) {
                                    c11 = '}';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 98846:
                                if (str2.equals(A0B(1247, 3, 122))) {
                                    c11 = 22;
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 98848:
                                if (str2.equals(A0B(MediaPlayer.MEDIA_PLAYER_OPTION_REAL_STREAM_FORMAT, 3, 4))) {
                                    c11 = 23;
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 99329:
                                if (str2.equals(A0B(1259, 3, 97))) {
                                    c11 = 24;
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 101481:
                                if (str2.equals(A0B(1277, 3, 5))) {
                                    c11 = '&';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 1513190:
                                if (str2.equals(A0B(0, 4, 40))) {
                                    c11 = 0;
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 1514184:
                                if (str2.equals(A0B(4, 4, 40))) {
                                    c11 = 1;
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 1514185:
                                if (str2.equals(A0B(8, 4, 36))) {
                                    c11 = 2;
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 2436959:
                                if (str2.equals(A0B(MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_OPTIMIZE_SEEK_CLK, 4, 118))) {
                                    c11 = 'Q';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 2463773:
                                if (str2.equals(A0B(MediaPlayer.MEDIA_PLAYER_OPTION_RTM_TLS_HANDSHAKE_TIME, 4, 35))) {
                                    c11 = '`';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 2464648:
                                if (str2.equals(A0B(MediaPlayer.MEDIA_PLAYER_OPTION_RTC_PLAY_TIMEINFO, 4, 65))) {
                                    c11 = 'b';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 2689555:
                                if (str2.equals(A0B(1133, 4, 2))) {
                                    c11 = 'z';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 3154429:
                                if (str2.equals(A0B(1296, 4, 94))) {
                                    c11 = '\'';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 3284551:
                                if (str2.equals(A0B(1376, 4, 47))) {
                                    c11 = '@';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 3351335:
                                if (str2.equals(A0B(1458, 4, 65))) {
                                    c11 = 'I';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 3386211:
                                if (str2.equals(A0B(1482, 4, 48))) {
                                    c11 = 'P';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 41325051:
                                if (str2.equals(A0B(671, 8, 34))) {
                                    c11 = 'G';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 55178625:
                                if (str2.equals(A0B(160, 11, 108))) {
                                    c11 = '\r';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 61542055:
                                if (str2.equals(A0B(26, 5, 78))) {
                                    c11 = 5;
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 65355429:
                                if (str2.equals(A0B(287, 5, 54))) {
                                    c11 = 25;
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 66214468:
                                if (str2.equals(A0B(345, 5, 117))) {
                                    c11 = 31;
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 66214470:
                                if (str2.equals(A0B(TTVideoEngineInterface.PLAYER_OPTION_AE_LU_RANG, 5, 103))) {
                                    c11 = ' ';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 66214473:
                                if (str2.equals(A0B(355, 5, 34))) {
                                    c11 = '!';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 66215429:
                                if (str2.equals(A0B(360, 5, 13))) {
                                    c11 = '\"';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 66215431:
                                if (str2.equals(A0B(MediaPlayer.MEDIA_PLAYER_OPTION_LAST_AUDIO_DEMUX_TIME, 5, 1))) {
                                    c11 = '#';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 66215433:
                                if (str2.equals(A0B(370, 5, 73))) {
                                    c11 = '$';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 66216390:
                                if (str2.equals(A0B(MediaPlayer.MEDIA_PLAYER_OPTION_SET_FORCE_RENDER_MS_GAPS, 5, 7))) {
                                    c11 = '%';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 76402249:
                                if (str2.equals(A0B(798, 5, 34))) {
                                    c11 = '_';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 76404105:
                                if (str2.equals(A0B(MediaPlayer.MEDIA_PLAYER_OPTION_AVUNSYNC_DURATION_MS, 5, 99))) {
                                    c11 = 'a';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 76404911:
                                if (str2.equals(A0B(851, 5, 19))) {
                                    c11 = 'c';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 80963634:
                                if (str2.equals(A0B(1116, 5, 14))) {
                                    c11 = 'r';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 82882791:
                                if (str2.equals(A0B(1128, 5, 88))) {
                                    c11 = 'y';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 98715550:
                                if (str2.equals(A0B(MediaPlayer.MEDIA_PLAYER_OPTION_FRAME_NUMS_IN_MEDIACODEC, 5, 50))) {
                                    c11 = '8';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 101370885:
                                if (str2.equals(A0B(1380, 5, 40))) {
                                    c11 = 'A';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 102844228:
                                if (str2.equals(A0B(1385, 5, 5))) {
                                    c11 = 'B';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 165221241:
                                if (str2.equals(A0B(31, 8, 7))) {
                                    c11 = 6;
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 182191441:
                                if (str2.equals(A0B(VideoRef.VALUE_VIDEO_REF_PALLAS_VID_LABELS, 9, 32))) {
                                    c11 = 21;
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 245388979:
                                if (str2.equals(A0B(1415, 8, 123))) {
                                    c11 = 'F';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 287431619:
                                if (str2.equals(A0B(1300, 7, 91))) {
                                    c11 = '1';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 307593612:
                                if (str2.equals(A0B(55, 8, 62))) {
                                    c11 = '\t';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 308517133:
                                if (str2.equals(A0B(63, 8, 33))) {
                                    c11 = '\n';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 316215098:
                                if (str2.equals(A0B(MediaPlayer.MEDIA_PLAYER_OPTION_SINGLE_MEDIA_CODEC, 8, 35))) {
                                    c11 = 'l';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 316215116:
                                if (str2.equals(A0B(MediaPlayer.MEDIA_PLAYER_OPTION_SET_SURFACE_RETRY_INTERVAL, 8, 35))) {
                                    c11 = 'm';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 316246811:
                                if (str2.equals(A0B(MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FILTER_RECYCLE, 8, 93))) {
                                    c11 = 'n';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 316246818:
                                if (str2.equals(A0B(MediaPlayer.MEDIA_PLAYER_OPTION_HURRY_ONCE_MAX, 8, 49))) {
                                    c11 = 'o';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 407160593:
                                if (str2.equals(A0B(MediaPlayer.MEDIA_PLAYER_OPTION_OPEN_VOICE_IN_PREPARE, 11, 88))) {
                                    c11 = ']';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 507412548:
                                if (str2.equals(A0B(TTVideoEngineInterface.PLAYER_OPTION_ENABLE_SUBTITLE_SENSE_BUFFERING, 8, 36))) {
                                    c11 = 'e';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 793982701:
                                if (str2.equals(A0B(MediaPlayer.MEDIA_PLAYER_OPTION_SOCKET_ERR_TYPE, 14, 65))) {
                                    c11 = '.';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 794038622:
                                if (str2.equals(A0B(479, 14, 24))) {
                                    c11 = '/';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 794040393:
                                if (str2.equals(A0B(TTVideoEngineInterface.PLAYER_OPTION_ENABLE_DIRECT_URL_BASH, 14, 60))) {
                                    c11 = '0';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 835649806:
                                if (str2.equals(A0B(1408, 7, 9))) {
                                    c11 = 'E';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 917340916:
                                if (str2.equals(A0B(46, 9, 71))) {
                                    c11 = '\b';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 958008161:
                                if (str2.equals(A0B(1367, 9, 39))) {
                                    c11 = '=';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 1060579533:
                                if (str2.equals(A0B(1486, 8, 24))) {
                                    c11 = 'S';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 1150207623:
                                if (str2.equals(A0B(MediaPlayer.MEDIA_PLAYER_OPTION_AVFORMAT_OPEN_TIME, 7, 16))) {
                                    c11 = 'C';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 1176899427:
                                if (str2.equals(A0B(MediaPlayer.MEDIA_PLAYER_OPTION_GS_AUDIOTRACK_POOL_SIZE, 8, 92))) {
                                    c11 = '<';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 1280332038:
                                if (str2.equals(A0B(MediaPlayer.MEDIA_PLAYER_OPTION_MEDIA_CODEC_DEATH_CHECK_INTERVAL_MS, 7, 64))) {
                                    c11 = '3';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 1306947716:
                                if (str2.equals(A0B(335, 10, 87))) {
                                    c11 = 30;
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 1349174697:
                                if (str2.equals(A0B(MediaPlayer.MEDIA_PLAYER_OPTION_QUERY_ADAPTIVE_PLAYBACK, 14, 80))) {
                                    c11 = '2';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 1522194893:
                                if (str2.equals(A0B(1760, 7, 42))) {
                                    c11 = 'w';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 1691543273:
                                if (str2.equals(A0B(230, 7, 44))) {
                                    c11 = 20;
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 1709443163:
                                if (str2.equals(A0B(MediaPlayer.MEDIA_PLAYER_OPTION_MAX_FRAME_NUMS_IN_MEDIACODEC, 14, 3))) {
                                    c11 = '9';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 1865889110:
                                if (str2.equals(A0B(1572, 7, 76))) {
                                    c11 = 'g';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 1906253259:
                                if (str2.equals(A0B(769, 8, 4))) {
                                    c11 = 'W';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 1977196784:
                                if (str2.equals(A0B(582, 12, 87))) {
                                    c11 = ':';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 2006372676:
                                if (str2.equals(A0B(204, 14, 75))) {
                                    c11 = 16;
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 2029784656:
                                if (str2.equals(A0B(549, 7, 35))) {
                                    c11 = '4';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 2030379515:
                                if (str2.equals(A0B(MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_DEBUG_UI_NOTIFY, 7, 52))) {
                                    c11 = '5';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 2033393791:
                                if (str2.equals(A0B(111, 12, 6))) {
                                    c11 = '\f';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 2047190025:
                                if (str2.equals(A0B(304, 10, 121))) {
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 2047252157:
                                if (str2.equals(A0B(314, 10, 126))) {
                                    c11 = 28;
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 2048319463:
                                if (str2.equals(A0B(568, 7, 80))) {
                                    c11 = '6';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            case 2048855701:
                                if (str2.equals(A0B(575, 7, 68))) {
                                    c11 = '7';
                                    break;
                                }
                                c11 = 65535;
                                break;
                            default:
                                c11 = 65535;
                                break;
                        }
                        switch (c11) {
                            case 0:
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                            case 5:
                            case 6:
                            case 7:
                            case '\b':
                            case '\t':
                            case '\n':
                            case 11:
                            case '\f':
                            case '\r':
                            case 14:
                            case 15:
                            case 16:
                            case 17:
                            case 18:
                            case 19:
                            case 20:
                            case 21:
                            case 22:
                            case 23:
                            case 24:
                            case 25:
                            case 26:
                            case 27:
                            case 28:
                            case 29:
                            case 30:
                            case 31:
                            case ' ':
                            case '!':
                            case '\"':
                            case '#':
                            case '$':
                            case '%':
                            case '&':
                            case '\'':
                            case '(':
                            case ')':
                            case '*':
                            case '+':
                            case ',':
                            case '-':
                            case '.':
                            case '/':
                            case '0':
                            case '1':
                            case '2':
                            case '3':
                            case '4':
                            case '5':
                            case '6':
                            case '7':
                            case '8':
                            case '9':
                            case ':':
                            case ';':
                            case '<':
                            case '=':
                            case '>':
                            case '?':
                            case '@':
                            case 'A':
                            case 'B':
                            case 'C':
                            case 'D':
                            case 'E':
                            case 'F':
                            case 'G':
                            case 'H':
                            case 'I':
                            case 'J':
                            case 'K':
                            case 'L':
                            case 'M':
                            case 'N':
                            case 'O':
                            case 'P':
                            case 'Q':
                            case 'R':
                            case 'S':
                            case 'T':
                            case 'U':
                            case 'V':
                            case 'W':
                            case 'X':
                            case 'Y':
                            case 'Z':
                            case '[':
                            case '\\':
                            case ']':
                            case '^':
                            case '_':
                            case '`':
                            case 'a':
                            case 'b':
                            case 'c':
                            case 'd':
                            case 'e':
                            case 'f':
                            case 'g':
                            case 'h':
                            case 'i':
                            case 'j':
                            case 'k':
                            case 'l':
                            case 'm':
                            case 'n':
                            case 'o':
                            case 'p':
                            case 'q':
                            case 'r':
                            case 's':
                            case 't':
                            case 'u':
                            case 'v':
                            case 'w':
                            case 'x':
                            case 'y':
                            case 'z':
                            case '{':
                            case '|':
                            case '}':
                                A0z = true;
                                break;
                        }
                        String str3 = AbstractC10974a.A06;
                        switch (str3.hashCode()) {
                            case -2038157993:
                                if (str3.equals(A0B(877, 12, 88))) {
                                    c10 = '\b';
                                    break;
                                }
                                c10 = 65535;
                                break;
                            case -2038157992:
                                if (str3.equals(A0B(889, 12, 24))) {
                                    c10 = 5;
                                    break;
                                }
                                c10 = 65535;
                                break;
                            case -1984447159:
                                if (str3.equals(A0B(719, 6, 41))) {
                                    c10 = 15;
                                    break;
                                }
                                c10 = 65535;
                                break;
                            case -1458559768:
                                if (str3.equals(A0B(705, 14, 82))) {
                                    c10 = 16;
                                    break;
                                }
                                c10 = 65535;
                                break;
                            case -1337484257:
                                if (str3.equals(A0B(148, 12, 113))) {
                                    c10 = 20;
                                    break;
                                }
                                c10 = 65535;
                                break;
                            case -1152053872:
                                if (str3.equals(A0B(998, 8, 36))) {
                                    c10 = 19;
                                    break;
                                }
                                c10 = 65535;
                                break;
                            case -1147076792:
                                if (str3.equals(A0B(MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_DECODER_START_TIME, 15, 104))) {
                                    c10 = 17;
                                    break;
                                }
                                c10 = 65535;
                                break;
                            case -708142633:
                                if (str3.equals(A0B(869, 8, 117))) {
                                    c10 = 18;
                                    break;
                                }
                                c10 = 65535;
                                break;
                            case -594534941:
                                if (str3.equals(A0B(597, 7, 94))) {
                                    c10 = 2;
                                    break;
                                }
                                c10 = 65535;
                                break;
                            case -581948979:
                                if (str3.equals(A0B(1401, 7, 84))) {
                                    c10 = 11;
                                    break;
                                }
                                c10 = 65535;
                                break;
                            case -401692983:
                                if (str3.equals(A0B(964, 8, 47))) {
                                    c10 = 23;
                                    break;
                                }
                                c10 = 65535;
                                break;
                            case -399133966:
                                if (str3.equals(A0B(981, 8, 83))) {
                                    c10 = 7;
                                    break;
                                }
                                c10 = 65535;
                                break;
                            case -154985182:
                                if (str3.equals(A0B(123, 15, 63))) {
                                    c10 = '\t';
                                    break;
                                }
                                c10 = 65535;
                                break;
                            case 2006354:
                                if (str3.equals(A0B(71, 4, 107))) {
                                    break;
                                }
                                c10 = 65535;
                                break;
                            case 2006367:
                                if (str3.equals(A0B(75, 4, 21))) {
                                    c10 = 1;
                                    break;
                                }
                                c10 = 65535;
                                break;
                            case 81951059:
                                if (str3.equals(A0B(1123, 5, 24))) {
                                    c10 = 24;
                                    break;
                                }
                                c10 = 65535;
                                break;
                            case 439365079:
                                if (str3.equals(A0B(535, 14, 20))) {
                                    c10 = 22;
                                    break;
                                }
                                c10 = 65535;
                                break;
                            case 511748841:
                                if (str3.equals(A0B(TTVideoEngineInterface.PLAYER_OPTION_GSKEY_CPU_NATIVE_REFRESH, 9, 76))) {
                                    c10 = '\f';
                                    break;
                                }
                                c10 = 65535;
                                break;
                            case 619782645:
                                if (str3.equals(A0B(89, 11, 27))) {
                                    c10 = 4;
                                    break;
                                }
                                c10 = 65535;
                                break;
                            case 619782647:
                                if (str3.equals(A0B(100, 11, 23))) {
                                    c10 = 21;
                                    break;
                                }
                                c10 = 65535;
                                break;
                            case 632760191:
                                if (str3.equals(A0B(989, 9, 48))) {
                                    c10 = 25;
                                    break;
                                }
                                c10 = 65535;
                                break;
                            case 807317112:
                                if (str3.equals(A0B(610, 7, 20))) {
                                    c10 = 14;
                                    break;
                                }
                                c10 = 65535;
                                break;
                            case 807374834:
                                if (str3.equals(A0B(617, 7, 39))) {
                                    c10 = 6;
                                    break;
                                }
                                c10 = 65535;
                                break;
                            case 1070811680:
                                if (str3.equals(A0B(MediaPlayer.MEDIA_PLAYER_OPTION_AE_SRC_PEAK, 13, 42))) {
                                    c10 = '\r';
                                    break;
                                }
                                c10 = 65535;
                                break;
                            case 1682560972:
                                if (str3.equals(A0B(79, 10, 61))) {
                                    c10 = 3;
                                    break;
                                }
                                c10 = 65535;
                                break;
                            case 1921424370:
                                if (str3.equals(A0B(1024, 13, 124))) {
                                    c10 = 26;
                                    break;
                                }
                                c10 = 65535;
                                break;
                            case 2133907258:
                                if (str3.equals(A0B(659, 9, 117))) {
                                    c10 = '\n';
                                    break;
                                }
                                c10 = 65535;
                                break;
                            default:
                                c10 = 65535;
                                break;
                        }
                        switch (c10) {
                            case 0:
                            case 1:
                            case 2:
                                A0z = true;
                                break;
                            case 3:
                            case 4:
                            case 5:
                            case 6:
                            case 7:
                            case '\b':
                            case '\t':
                            case '\n':
                            case 11:
                            case '\f':
                            case '\r':
                            case 14:
                            case 15:
                            case 16:
                            case 17:
                            case 18:
                            case 19:
                            case 20:
                            case 21:
                            case 22:
                            case 23:
                            case 24:
                            case 25:
                            case 26:
                                A0z = true;
                                break;
                        }
                    }
                }
                A10 = true;
            }
        }
        return A0z;
    }

    public static boolean A0v(boolean z10, C2796or c2796or, C2796or c2796or2) {
        return c2796or.A0W.equals(c2796or2.A0W) && c2796or.A0F == c2796or2.A0F && (z10 || (c2796or.A0L == c2796or2.A0L && c2796or.A0A == c2796or2.A0A)) && AbstractC10974a.A1E(c2796or.A0N, c2796or2.A0N);
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass14, com.facebook.ads.redexgen.X.C9Z
    public final void A1X() {
        super.A1X();
        this.A09 = 0;
        this.A0A = 0;
        this.A0B = 0;
        this.A0J = SystemClock.elapsedRealtime();
        this.A0P = SystemClock.elapsedRealtime() * 1000;
        if (this.A0w) {
            this.A0s.A0D();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass14, com.facebook.ads.redexgen.X.C9Z
    public final void A1Y() {
        this.A0M = -9223372036854775807L;
        A0J();
        A0H();
        if (this.A0w) {
            this.A0s.A0E();
        }
        super.A1Y();
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass14, com.facebook.ads.redexgen.X.C9Z
    public final void A1Z() {
        this.A08 = -1;
        this.A06 = -1;
        this.A01 = -1.0f;
        this.A02 = -1.0f;
        this.A0R = -9223372036854775807L;
        this.A0O = -9223372036854775807L;
        this.A0C = 0;
        A0F();
        A0E();
        this.A0t.A08();
        this.A00 = null;
        this.A0k = false;
        this.A0A = 0;
        this.A0B = 0;
        A0G();
        try {
            super.A1Z();
        } finally {
            super.A0j.A02();
            this.A0u.A09(super.A0j);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass14, com.facebook.ads.redexgen.X.C9Z
    public final void A1a(long j10, boolean z10) throws C9Y {
        super.A1a(j10, z10);
        if (this.A0r.A0G()) {
            this.A0r.A09();
            throw null;
        }
        A0E();
        if (this.A0w) {
            this.A0s.A0C();
        }
        this.A0N = -9223372036854775807L;
        this.A0L = -9223372036854775807L;
        this.A0O = -9223372036854775807L;
        this.A0A = 0;
        this.A0B = 0;
        if (this.A0C != 0) {
            this.A0R = this.A0x[this.A0C - 1];
            this.A0C = 0;
        }
        if (z10) {
            A0N();
        } else {
            this.A0M = -9223372036854775807L;
        }
        A0H();
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass14, com.facebook.ads.redexgen.X.C9Z
    public final void A1b(boolean z10, boolean z11) throws C9Y {
        super.A1b(z10, z11);
        this.A0k = A1V().A00;
        this.A0u.A0A(super.A0j);
        this.A0t.A09();
        this.A0g = z11;
        this.A0j = false;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass14, com.facebook.ads.redexgen.X.C9Z
    public final void A1c(C2796or[] c2796orArr, long j10, long j11) throws C9Y {
        if (this.A0R == -9223372036854775807L) {
            this.A0R = j11;
        } else {
            if (this.A0C == this.A0x.length) {
                AnonymousClass44.A07(A0B(682, 23, 0), A0B(MediaPlayer.MEDIA_PLAYER_OPTION_MAX_DROP_FRAME_COST, 45, 88) + this.A0x[this.A0C - 1]);
            } else {
                this.A0C++;
            }
            long[] jArr = this.A0x;
            int i10 = this.A0C - 1;
            if (A12[1].charAt(20) != 's') {
                throw new RuntimeException();
            }
            A12[2] = "SAUgnWkYDj4XEzprgfj9YLgtcmW5pkCR";
            jArr[i10] = j11;
            this.A0y[this.A0C - 1] = this.A0O;
        }
        super.A1c(c2796orArr, j10, j11);
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass14
    public final int A1g(AO ao2, AR ar2, C2796or c2796or, C2796or c2796or2) {
        if (AbstractC2366hY.A04(this.A11, c2796or.A0L, c2796or.A0A, c2796or2.A0L, c2796or2.A0A)) {
            return 0;
        }
        if (A21() && c2796or.A0W.equals(c2796or2.A0W) && c2796or.A0F == c2796or2.A0F) {
            return 1;
        }
        if (!A0v(ar2.A04, c2796or, c2796or2) || c2796or2.A0L > this.A0W.A02 || c2796or2.A0A > this.A0W.A00 || A00(c2796or2) > this.A0W.A01) {
            return 0;
        }
        boolean A0A = c2796or.A0A(c2796or2);
        if (A12[2].charAt(6) != 'n') {
            A12[2] = "4hDLfGBXu2jWhDFi4VyshDOfpKmyRTIF";
            return A0A ? 1 : 3;
        }
        throw new RuntimeException();
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass14
    public final int A1h(InterfaceC1257Ar interfaceC1257Ar, C9U c9u, C2796or c2796or) throws C1261Av {
        if (A24(c2796or)) {
            return 20;
        }
        return A01(interfaceC1257Ar, c2796or, super.A0l);
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass14
    public final List<AR> A1l(InterfaceC1257Ar interfaceC1257Ar, C2796or c2796or, boolean z10) throws C1261Av {
        return A0D(interfaceC1257Ar, c2796or, z10);
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass14
    public final void A1m() throws C9Y {
        super.A1m();
        this.A04 = 0;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass14
    public final void A1n() {
        try {
            super.A1n();
            this.A04 = 0;
            if (this.A0T != null) {
                if (this.A0U == this.A0T) {
                    this.A0U = null;
                }
                this.A0T.release();
                if (A12[3].length() == 21) {
                    throw new RuntimeException();
                }
                String[] strArr = A12;
                strArr[4] = "7lrYh0KktVrYvVNtOiQ9Yi2M4ixXH9PV";
                strArr[7] = "rg1WGkW3vr4OYC0nZllkbznbWLz7shBk";
                this.A0T = null;
            }
        } catch (Throwable th2) {
            this.A04 = 0;
            if (this.A0T != null) {
                if (this.A0U == this.A0T) {
                    this.A0U = null;
                }
                this.A0T.release();
                this.A0T = null;
            }
            throw th2;
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass14
    public final void A1q(long j10) {
        super.A1q(j10);
        this.A04--;
        while (this.A0C != 0 && j10 >= this.A0y[0]) {
            this.A0R = this.A0x[0];
            this.A0C--;
            System.arraycopy(this.A0x, 1, this.A0x, 0, this.A0C);
            System.arraycopy(this.A0y, 1, this.A0y, 0, this.A0C);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x0022  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0053  */
    @Override // com.facebook.ads.redexgen.X.AnonymousClass14
    @com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization("for SR video effects support of MCM")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void A1r(com.facebook.ads.redexgen.X.C2796or r6) {
        /*
            r5 = this;
            boolean r0 = r5.A24(r6)
            r3 = 0
            if (r0 == 0) goto L59
            com.facebook.ads.redexgen.X.or r0 = r5.A0i
            if (r0 == 0) goto L31
            com.facebook.ads.redexgen.X.or r0 = r5.A0i
            java.lang.String r4 = r0.A0W
            r2 = 1645(0x66d, float:2.305E-42)
            r1 = 10
            r0 = 45
            java.lang.String r0 = A0B(r2, r1, r0)
            boolean r0 = r0.equals(r4)
            if (r0 != 0) goto L31
            r0 = 1
        L20:
            if (r0 == 0) goto L33
            com.facebook.ads.redexgen.X.FC r0 = r5.A0r
            boolean r0 = r0.A0G()
            if (r0 == 0) goto L33
            com.facebook.ads.redexgen.X.FC r0 = r5.A0r
            r0.A0A()
            r0 = 0
            throw r0
        L31:
            r0 = 0
            goto L20
        L33:
            com.facebook.ads.redexgen.X.FC r0 = r5.A0r
            com.facebook.ads.redexgen.X.FC.A05(r0, r3)
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C0O.A12
            r0 = 2
            r1 = r1[r0]
            r0 = 6
            char r1 = r1.charAt(r0)
            r0 = 110(0x6e, float:1.54E-43)
            if (r1 == r0) goto L53
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.C0O.A12
            java.lang.String r1 = "sIGbpbi"
            r0 = 5
            r2[r0] = r1
            java.lang.String r1 = "eroBYPH"
            r0 = 0
            r2[r0] = r1
            return
        L53:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L59:
            com.facebook.ads.redexgen.X.i3 r0 = com.facebook.ads.redexgen.X.EnumC2395i3.A09
            int r1 = com.facebook.ads.redexgen.X.C2397i5.A00(r0)
            if (r1 <= 0) goto L6c
            if (r6 == 0) goto L6c
            int r0 = r6.A0L
            if (r0 <= r1) goto L6c
            com.facebook.ads.redexgen.X.FC r0 = r5.A0r
            com.facebook.ads.redexgen.X.FC.A05(r0, r3)
        L6c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C0O.A1r(com.facebook.ads.redexgen.X.or):void");
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass14
    public final void A1s(C2796or c2796or) throws C9Y {
        super.A1s(c2796or);
        this.A0u.A05(c2796or, null);
        this.A02 = c2796or.A02;
        this.A0D = c2796or.A0F;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass14
    public final void A1t(C2796or c2796or) throws C9Y {
        if (!this.A0r.A0G()) {
            this.A0r.A0J(c2796or, A1i());
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass14
    public final void A1u(C2718nY c2718nY) {
        this.A04++;
        this.A0O = Math.max(c2718nY.A01, this.A0O);
        if (AbstractC10974a.A02 < 23 && this.A0k) {
            A27();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass14
    public final void A1v(AO ao2, MediaFormat mediaFormat) {
        int integer;
        int integer2;
        this.A0S = mediaFormat;
        String A0B = A0B(1229, 10, 102);
        boolean containsKey = mediaFormat.containsKey(A0B);
        String A0B2 = A0B(1239, 8, 55);
        String A0B3 = A0B(1209, 11, 126);
        String A0B4 = A0B(TTVideoEngineInterface.PLAYER_OPTION_ENABLE_CACHE_INFO, 9, 2);
        boolean z10 = containsKey && mediaFormat.containsKey(A0B4) && mediaFormat.containsKey(A0B3) && mediaFormat.containsKey(A0B2);
        if (z10) {
            int integer3 = mediaFormat.getInteger(A0B);
            int unappliedRotationDegrees = mediaFormat.getInteger(A0B4);
            integer = (integer3 - unappliedRotationDegrees) + 1;
        } else {
            integer = mediaFormat.getInteger(A0B(1755, 5, 79));
        }
        this.A08 = integer;
        if (z10) {
            int integer4 = mediaFormat.getInteger(A0B3);
            int unappliedRotationDegrees2 = mediaFormat.getInteger(A0B2);
            integer2 = (integer4 - unappliedRotationDegrees2) + 1;
        } else {
            integer2 = mediaFormat.getInteger(A0B(1307, 6, 73));
        }
        this.A06 = integer2;
        this.A01 = this.A02;
        if (AbstractC10974a.A02 >= 21) {
            if (this.A0D == 90 || this.A0D == 270) {
                int rotatedHeight = this.A08;
                int unappliedRotationDegrees3 = this.A06;
                this.A08 = unappliedRotationDegrees3;
                this.A06 = rotatedHeight;
                this.A01 = 1.0f / this.A01;
            }
        } else if (!this.A0r.A0G()) {
            int unappliedRotationDegrees4 = this.A0D;
            this.A07 = unappliedRotationDegrees4;
        }
        int unappliedRotationDegrees5 = this.A0H;
        ao2.AJ8(unappliedRotationDegrees5);
        this.A0V = new C2749o4(this.A08, this.A06, this.A07, this.A01);
        this.A0s.A0F(super.A0i.A01);
        if (this.A0r.A0G()) {
            FC fc2 = this.A0r;
            C2D A07 = super.A0i.A07();
            int unappliedRotationDegrees6 = this.A08;
            C2D A0r = A07.A0r(unappliedRotationDegrees6);
            int unappliedRotationDegrees7 = this.A06;
            C2D A0f = A0r.A0f(unappliedRotationDegrees7);
            int unappliedRotationDegrees8 = this.A07;
            fc2.A0D(A0f.A0l(unappliedRotationDegrees8).A0Y(this.A01).A14());
            throw null;
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass14
    @MetaExoPlayerCustomizations({@MetaExoPlayerCustomization("D40834768: [FBLite][Video] Enable low latency decoding for older Android versions"), @MetaExoPlayerCustomization(type = {"TEMPORARY"}, value = "Google Platform Dav1d Testing with Low Latency Decoding D62649046")})
    public final void A1w(AR ar2, AO ao2, C2796or c2796or, MediaCrypto mediaCrypto) throws C1261Av {
        this.A0W = A0A(ar2, c2796or, A1e());
        MediaFormat A08 = A08(c2796or, this.A0W, this.A0v, this.A0o);
        if (this.A0U == null) {
            C3M.A08(A0r(ar2));
            if (this.A0T == null) {
                Context context = this.A0q;
                boolean z10 = ar2.A06;
                if (A12[3].length() != 21) {
                    A12[6] = "yiNR3QranPnEQfiPRrhMyH37rGbgy01y";
                    this.A0T = DummySurface.A01(context, z10);
                }
                throw new RuntimeException();
            }
            Surface surface = this.A0T;
            if (A12[2].charAt(6) != 'n') {
                String[] strArr = A12;
                strArr[5] = "LRboFGG";
                strArr[0] = "hwnKdFV";
                this.A0U = surface;
            }
            throw new RuntimeException();
        }
        boolean z11 = this.A11.A0H;
        boolean z12 = false;
        String A0B = A0B(1390, 11, 76);
        boolean z13 = z11 && ar2.A00 != null && ar2.A00.isFeatureSupported(A0B);
        if (ar2.A03.equals(A0B(1181, 28, 58)) && this.A11.A09) {
            z12 = true;
        }
        if ((AbstractC10974a.A02 >= 30 || this.A11.A0I) && z13 && !z12) {
            A08.setFeatureEnabled(A0B, true);
            String[] strArr2 = A12;
            if (strArr2[5].length() != strArr2[0].length()) {
                String[] strArr3 = A12;
                strArr3[5] = "hfJ3VMX";
                strArr3[0] = "92OmzWl";
                A08.setInteger(A0B, 1);
            } else {
                A12[3] = "U57WE1Icqa5Z";
                A08.setInteger(A0B, 1);
            }
        }
        if (this.A0r.A0G()) {
            A08 = this.A0r.A06(A08);
        }
        if (this.A0r.A0G()) {
            FC fc2 = this.A0r;
            String[] strArr4 = A12;
            if (strArr4[4].charAt(23) == strArr4[7].charAt(23)) {
                throw new RuntimeException();
            }
            String[] strArr5 = A12;
            strArr5[4] = "vjf6uovaHCWDHHkpYfphkXQkMzg9bbjD";
            strArr5[7] = "sOVWNDiAOc7Hvgm0kOVhLN9DKu4y3eSs";
            fc2.A07();
            throw null;
        }
        ao2.A50(A08, this.A0U, mediaCrypto, 0, this.A0Y);
        int i10 = AbstractC10974a.A02;
        if (A12[6].charAt(29) != 'x') {
            A12[1] = "mXryJuZr86dScF3AeNkyss5tnbfSKjka";
            if (i10 < 23) {
                return;
            }
        } else {
            A12[6] = "iNbmoOXFYL62OfUeH4JwG1appoAFSKUM";
            if (i10 < 21) {
                return;
            }
        }
        if (this.A0k) {
            this.A00 = new C2597la(this, ao2);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass14
    @MetaExoPlayerCustomization("D45988204: [FBLite][Video] Add Codec Hooks for Logging")
    public final void A1x(String str) {
        this.A0u.A0F(str);
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass14
    public final void A1y(String str, long j10, long j11) {
        this.A0u.A0G(str, j10, j11);
        this.A0b = A0u(str);
        if (this.A0w) {
            FC fc2 = this.A0r;
            if (A12[1].charAt(20) != 's') {
                throw new RuntimeException();
            }
            String[] strArr = A12;
            strArr[4] = "TMyTJm2xfuZjG3FrE9xxFPlKyVDcqwcD";
            strArr[7] = "gYDTbLVVgSlIu0qIAiA5ri17AONkCNH7";
            fc2.A0E(str);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass14
    @MetaExoPlayerCustomization(type = {"TEMPORARY"}, value = "D60404164: Merge init calls in the renderer")
    public final void A1z(String str, C2796or c2796or) throws C9Y {
        this.A0u.A0F(str);
        if (!this.A0r.A0G()) {
            this.A0r.A0J(c2796or, A1i());
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass14
    public final boolean A20() {
        return this.A0a && SystemClock.elapsedRealtime() - this.A0Q < 500;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass14
    public final boolean A22() {
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:248:0x01c5, code lost:
        if (A0q(r42, r44, r0, r38) != false) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:249:0x01c7, code lost:
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:251:0x01dd, code lost:
        if (A0q(r42, r44, r0, r38) != false) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:275:0x0261, code lost:
        if (r10 < 0) goto L111;
     */
    /* JADX WARN: Code restructure failed: missing block: B:277:0x0266, code lost:
        if (r10 < 0) goto L111;
     */
    /* JADX WARN: Code restructure failed: missing block: B:279:0x0269, code lost:
        A0a(r42, r44, r0, r28);
     */
    /* JADX WARN: Code restructure failed: missing block: B:280:0x0272, code lost:
        r37.A0K = -9223372036854775807L;
     */
    /* JADX WARN: Code restructure failed: missing block: B:281:0x027a, code lost:
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:282:0x027b, code lost:
        r1 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:284:0x0280, code lost:
        if (A0g() != false) goto L120;
     */
    /* JADX WARN: Code restructure failed: missing block: B:285:0x0282, code lost:
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:286:0x0283, code lost:
        throw r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:306:0x02d4, code lost:
        if (r7 != (-1.0f)) goto L126;
     */
    /* JADX WARN: Code restructure failed: missing block: B:307:0x02d6, code lost:
        r0 = r37.A0i.A01;
     */
    /* JADX WARN: Code restructure failed: missing block: B:311:0x02ec, code lost:
        if (r7 != (-1.0f)) goto L126;
     */
    /* JADX WARN: Code restructure failed: missing block: B:313:0x02ef, code lost:
        r0 = 30.0f;
     */
    @Override // com.facebook.ads.redexgen.X.AnonymousClass14
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean A23(long r38, long r40, com.facebook.ads.redexgen.X.AO r42, java.nio.ByteBuffer r43, int r44, int r45, long r46, boolean r48, boolean r49) throws com.facebook.ads.redexgen.X.C9Y {
        /*
            Method dump skipped, instructions count: 754
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C0O.A23(long, long, com.facebook.ads.redexgen.X.AO, java.nio.ByteBuffer, int, int, long, boolean, boolean):boolean");
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass14
    public final boolean A25(AR ar2) {
        return (this.A0U != null && (this.A0Z || this.A0U.isValid())) || A0r(ar2);
    }

    public final Pair<ColorInfo, ColorInfo> A26(ColorInfo colorInfo) {
        if (!ColorInfo.A09(colorInfo)) {
            return Pair.create(ColorInfo.A09, ColorInfo.A09);
        }
        if (colorInfo.A03 == 7) {
            return Pair.create(colorInfo, colorInfo.A0A().A02(6).A03());
        }
        return Pair.create(colorInfo, colorInfo);
    }

    public final void A27() {
        this.A0j = true;
        if (!this.A0i) {
            this.A0i = true;
            this.A0u.A0D(this.A0U);
        }
    }

    @MetaExoPlayerCustomization("Required for VideoProcessorManager migration")
    public final boolean A28(long j10, long j11, boolean z10) {
        return A0k(j10) && !z10;
    }

    @Override // com.facebook.ads.redexgen.X.C9Z, com.facebook.ads.redexgen.X.AnonymousClass70
    public final void A9a(int i10, Object obj) throws C9Y {
        if (i10 == 1) {
            A0U((Surface) obj);
        } else if (i10 == 4) {
            this.A0H = ((Integer) obj).intValue();
            AO A1j = A1j();
            if (A1j == null) {
                return;
            }
            A1j.AJ8(this.A0H);
        } else if (i10 == 7) {
            this.A0X = (FQ) obj;
        } else if (i10 == 10001) {
            A0f(obj);
        } else if (i10 == 13) {
            this.A0r.A0F((List) C3M.A01(obj));
        } else {
            if (A12[3].length() != 21) {
                A12[1] = "MccsEzjpf2F4QgbfkxLUs5z2ugRdHbCL";
                if (i10 == 14) {
                    C4N c4n = (C4N) C3M.A01(obj);
                    if (c4n.A03() == 0 || c4n.A02() == 0) {
                        return;
                    }
                    Surface surface = this.A0U;
                    String[] strArr = A12;
                    if (strArr[5].length() == strArr[0].length()) {
                        A12[1] = "OmulH2jEP4hpWDROHXWwsVVsUaMV65qL";
                        if (surface == null) {
                            return;
                        }
                        this.A0r.A0C(this.A0U, c4n);
                        return;
                    }
                } else {
                    super.A9a(i10, obj);
                    return;
                }
            }
            throw new RuntimeException();
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass14, com.facebook.ads.redexgen.X.InterfaceC2706nM
    public final boolean AAG() {
        boolean AAG = super.AAG();
        boolean isEnded = this.A0r.A0G();
        if (isEnded) {
            boolean isEnded2 = this.A0r.A0I();
            return AAG & isEnded2;
        }
        return AAG;
    }

    /* JADX WARN: Code restructure failed: missing block: B:77:0x0065, code lost:
        if (r5 != null) goto L29;
     */
    @Override // com.facebook.ads.redexgen.X.AnonymousClass14, com.facebook.ads.redexgen.X.InterfaceC2706nM
    @com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomizations({@com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization("D18870411: Adding start stall debug reason"), @com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization(type = {"FEATURE_LOGIC"}, value = "D69547806: Only become ready once we have a surface")})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean AAV() {
        /*
            r9 = this;
            boolean r0 = super.AAV()
            if (r0 == 0) goto L22
            boolean r0 = r9.A0i
            if (r0 != 0) goto L22
            android.view.Surface r0 = r9.A0T
            if (r0 == 0) goto L14
            android.view.Surface r1 = r9.A0U
            android.view.Surface r0 = r9.A0T
            if (r1 == r0) goto L22
        L14:
            com.facebook.ads.redexgen.X.AO r0 = r9.A1j()
            if (r0 == 0) goto L22
            boolean r0 = r9.A0k
            if (r0 != 0) goto L22
            com.facebook.ads.redexgen.X.hX r0 = com.facebook.ads.redexgen.X.EnumC2365hX.A08
            r9.A0B = r0
        L22:
            boolean r0 = super.AAV()
            r8 = 1
            r2 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            if (r0 == 0) goto L82
            com.facebook.ads.redexgen.X.FC r0 = r9.A0r
            boolean r0 = r0.A0G()
            if (r0 == 0) goto L3e
            com.facebook.ads.redexgen.X.FC r0 = r9.A0r
            boolean r0 = r0.A0H()
            if (r0 == 0) goto L82
        L3e:
            boolean r0 = r9.A0h
            if (r0 == 0) goto L67
            android.view.Surface r5 = r9.A0U
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.C0O.A12
            r0 = 1
            r1 = r1[r0]
            r0 = 20
            char r1 = r1.charAt(r0)
            r0 = 115(0x73, float:1.61E-43)
            if (r1 == r0) goto L59
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L59:
            java.lang.String[] r4 = com.facebook.ads.redexgen.X.C0O.A12
            java.lang.String r1 = "iOSBWWk"
            r0 = 5
            r4[r0] = r1
            java.lang.String r1 = "3hctIGW"
            r0 = 0
            r4[r0] = r1
            if (r5 == 0) goto L82
        L67:
            boolean r0 = r9.A0i
            if (r0 != 0) goto L7f
            android.view.Surface r0 = r9.A0T
            if (r0 == 0) goto L75
            android.view.Surface r1 = r9.A0U
            android.view.Surface r0 = r9.A0T
            if (r1 == r0) goto L7f
        L75:
            com.facebook.ads.redexgen.X.AO r0 = r9.A1j()
            if (r0 == 0) goto L7f
            boolean r0 = r9.A0k
            if (r0 == 0) goto L82
        L7f:
            r9.A0M = r2
            return r8
        L82:
            long r4 = r9.A0M
            r1 = 0
            int r0 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r0 != 0) goto L8a
            return r1
        L8a:
            long r6 = android.os.SystemClock.elapsedRealtime()
            long r4 = r9.A0M
            int r0 = (r6 > r4 ? 1 : (r6 == r4 ? 0 : -1))
            if (r0 >= 0) goto L95
            return r8
        L95:
            r9.A0M = r2
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C0O.AAV():boolean");
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass14, com.facebook.ads.redexgen.X.InterfaceC2706nM
    public final void AHn(long j10, long j11) throws C9Y {
        super.AHn(j10, j11);
        if (this.A0r.A0G()) {
            this.A0r.A0B(j10, j11);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2706nM, com.facebook.ads.redexgen.X.C7D
    public final String getName() {
        return A0B(682, 23, 0);
    }
}
