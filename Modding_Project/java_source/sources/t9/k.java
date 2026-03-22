package t9;

import com.google.zxing.datamatrix.encoder.SymbolShapeHint;
import com.ss.ttm.player.MediaPlayer;
import com.ss.ttvideoengine.TTVideoEngineInterface;
/* compiled from: SymbolInfo.java */
/* loaded from: classes5.dex */
public class k {

    /* renamed from: i  reason: collision with root package name */
    static final k[] f67236i;

    /* renamed from: j  reason: collision with root package name */
    private static k[] f67237j;

    /* renamed from: a  reason: collision with root package name */
    private final boolean f67238a;

    /* renamed from: b  reason: collision with root package name */
    private final int f67239b;

    /* renamed from: c  reason: collision with root package name */
    private final int f67240c;

    /* renamed from: d  reason: collision with root package name */
    public final int f67241d;

    /* renamed from: e  reason: collision with root package name */
    public final int f67242e;

    /* renamed from: f  reason: collision with root package name */
    private final int f67243f;

    /* renamed from: g  reason: collision with root package name */
    private final int f67244g;

    /* renamed from: h  reason: collision with root package name */
    private final int f67245h;

    static {
        k[] kVarArr = {new k(false, 3, 5, 8, 8, 1), new k(false, 5, 7, 10, 10, 1), new k(true, 5, 7, 16, 6, 1), new k(false, 8, 10, 12, 12, 1), new k(true, 10, 11, 14, 6, 2), new k(false, 12, 12, 14, 14, 1), new k(true, 16, 14, 24, 10, 1), new k(false, 18, 14, 16, 16, 1), new k(false, 22, 18, 18, 18, 1), new k(true, 22, 18, 16, 10, 2), new k(false, 30, 20, 20, 20, 1), new k(true, 32, 24, 16, 14, 2), new k(false, 36, 24, 22, 22, 1), new k(false, 44, 28, 24, 24, 1), new k(true, 49, 28, 22, 14, 2), new k(false, 62, 36, 14, 14, 4), new k(false, 86, 42, 16, 16, 4), new k(false, 114, 48, 18, 18, 4), new k(false, 144, 56, 20, 20, 4), new k(false, 174, 68, 22, 22, 4), new k(false, 204, 84, 24, 24, 4, 102, 42), new k(false, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEOCODEC_PIXEL_ALIGN, 112, 14, 14, 16, 140, 56), new k(false, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_PTS_SYNCED_SEI_NOTIFICATION, 144, 16, 16, 16, 92, 36), new k(false, MediaPlayer.MEDIA_PLAYER_OPTION_CMAF_HTTP_RES_FINISH_TIME, 192, 18, 18, 16, 114, 48), new k(false, 576, 224, 20, 20, 16, 144, 56), new k(false, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_FIRST_LIVE_PACKET_READ_TIME, MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_HTTP_REQ_FINSIH_TIME, 22, 22, 16, 174, 68), new k(false, MediaPlayer.MEDIA_PLAYER_OPTION_RTC_EARLY_INIT_RENDER, 336, 24, 24, 16, 136, 56), new k(false, MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FAST_STOP, 408, 18, 18, 36, 175, 68), new k(false, 1304, TTVideoEngineInterface.PLAYER_OPTION_ENABLE_OPEN_TIMEOUT, 20, 20, 36, 163, 62), new d()};
        f67236i = kVarArr;
        f67237j = kVarArr;
    }

    public k(boolean z10, int i10, int i11, int i12, int i13, int i14) {
        this(z10, i10, i11, i12, i13, i14, i10, i11);
    }

    private int e() {
        int i10 = this.f67243f;
        int i11 = 1;
        if (i10 != 1) {
            i11 = 2;
            if (i10 != 2 && i10 != 4) {
                if (i10 == 16) {
                    return 4;
                }
                if (i10 == 36) {
                    return 6;
                }
                throw new IllegalStateException("Cannot handle this number of data regions");
            }
        }
        return i11;
    }

    private int k() {
        int i10 = this.f67243f;
        if (i10 == 1 || i10 == 2) {
            return 1;
        }
        if (i10 == 4) {
            return 2;
        }
        if (i10 == 16) {
            return 4;
        }
        if (i10 == 36) {
            return 6;
        }
        throw new IllegalStateException("Cannot handle this number of data regions");
    }

    public static k l(int i10, SymbolShapeHint symbolShapeHint, com.google.zxing.a aVar, com.google.zxing.a aVar2, boolean z10) {
        k[] kVarArr;
        for (k kVar : f67237j) {
            if ((symbolShapeHint != SymbolShapeHint.FORCE_SQUARE || !kVar.f67238a) && ((symbolShapeHint != SymbolShapeHint.FORCE_RECTANGLE || kVar.f67238a) && ((aVar == null || (kVar.j() >= aVar.b() && kVar.i() >= aVar.a())) && ((aVar2 == null || (kVar.j() <= aVar2.b() && kVar.i() <= aVar2.a())) && i10 <= kVar.f67239b)))) {
                return kVar;
            }
        }
        if (!z10) {
            return null;
        }
        throw new IllegalArgumentException("Can't find a symbol arrangement that matches the message. Data codewords: ".concat(String.valueOf(i10)));
    }

    public final int a() {
        return this.f67239b;
    }

    public int b(int i10) {
        return this.f67244g;
    }

    public final int c() {
        return this.f67240c;
    }

    public final int d(int i10) {
        return this.f67245h;
    }

    public int f() {
        return this.f67239b / this.f67244g;
    }

    public final int g() {
        return k() * this.f67242e;
    }

    public final int h() {
        return e() * this.f67241d;
    }

    public final int i() {
        return g() + (k() << 1);
    }

    public final int j() {
        return h() + (e() << 1);
    }

    public final String toString() {
        String str;
        StringBuilder sb2 = new StringBuilder();
        if (this.f67238a) {
            str = "Rectangular Symbol:";
        } else {
            str = "Square Symbol:";
        }
        sb2.append(str);
        sb2.append(" data region ");
        sb2.append(this.f67241d);
        sb2.append('x');
        sb2.append(this.f67242e);
        sb2.append(", symbol size ");
        sb2.append(j());
        sb2.append('x');
        sb2.append(i());
        sb2.append(", symbol data size ");
        sb2.append(h());
        sb2.append('x');
        sb2.append(g());
        sb2.append(", codewords ");
        sb2.append(this.f67239b);
        sb2.append('+');
        sb2.append(this.f67240c);
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(boolean z10, int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
        this.f67238a = z10;
        this.f67239b = i10;
        this.f67240c = i11;
        this.f67241d = i12;
        this.f67242e = i13;
        this.f67243f = i14;
        this.f67244g = i15;
        this.f67245h = i16;
    }
}
