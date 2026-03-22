package r9;

import com.ss.ttm.player.MediaPlayer;
import com.ss.ttvideoengine.TTVideoEngineInterface;
/* compiled from: GenericGF.java */
/* loaded from: classes5.dex */
public final class a {

    /* renamed from: h  reason: collision with root package name */
    public static final a f65690h = new a(TTVideoEngineInterface.PLAYER_OPTION_ENABLE_SC_ABR_STRATEGY, 4096, 1);

    /* renamed from: i  reason: collision with root package name */
    public static final a f65691i = new a(1033, 1024, 1);

    /* renamed from: j  reason: collision with root package name */
    public static final a f65692j;

    /* renamed from: k  reason: collision with root package name */
    public static final a f65693k;

    /* renamed from: l  reason: collision with root package name */
    public static final a f65694l;

    /* renamed from: m  reason: collision with root package name */
    public static final a f65695m;

    /* renamed from: n  reason: collision with root package name */
    public static final a f65696n;

    /* renamed from: o  reason: collision with root package name */
    public static final a f65697o;

    /* renamed from: a  reason: collision with root package name */
    private final int[] f65698a;

    /* renamed from: b  reason: collision with root package name */
    private final int[] f65699b;

    /* renamed from: c  reason: collision with root package name */
    private final b f65700c;

    /* renamed from: d  reason: collision with root package name */
    private final b f65701d;

    /* renamed from: e  reason: collision with root package name */
    private final int f65702e;

    /* renamed from: f  reason: collision with root package name */
    private final int f65703f;

    /* renamed from: g  reason: collision with root package name */
    private final int f65704g;

    static {
        a aVar = new a(67, 64, 1);
        f65692j = aVar;
        f65693k = new a(19, 16, 1);
        f65694l = new a(MediaPlayer.MEDIA_PLAYER_OPTION_FRC_LEVEL, 256, 0);
        a aVar2 = new a(301, 256, 1);
        f65695m = aVar2;
        f65696n = aVar2;
        f65697o = aVar;
    }

    public a(int i10, int i11, int i12) {
        this.f65703f = i10;
        this.f65702e = i11;
        this.f65704g = i12;
        this.f65698a = new int[i11];
        this.f65699b = new int[i11];
        int i13 = 1;
        for (int i14 = 0; i14 < i11; i14++) {
            this.f65698a[i14] = i13;
            i13 <<= 1;
            if (i13 >= i11) {
                i13 = (i13 ^ i10) & (i11 - 1);
            }
        }
        for (int i15 = 0; i15 < i11 - 1; i15++) {
            this.f65699b[this.f65698a[i15]] = i15;
        }
        this.f65700c = new b(this, new int[]{0});
        this.f65701d = new b(this, new int[]{1});
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i10, int i11) {
        return i10 ^ i11;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b b(int i10, int i11) {
        if (i10 >= 0) {
            if (i11 == 0) {
                return this.f65700c;
            }
            int[] iArr = new int[i10 + 1];
            iArr[0] = i11;
            return new b(this, iArr);
        }
        throw new IllegalArgumentException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int c(int i10) {
        return this.f65698a[i10];
    }

    public int d() {
        return this.f65704g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b e() {
        return this.f65700c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int f(int i10) {
        if (i10 != 0) {
            return this.f65698a[(this.f65702e - this.f65699b[i10]) - 1];
        }
        throw new ArithmeticException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int g(int i10) {
        if (i10 != 0) {
            return this.f65699b[i10];
        }
        throw new IllegalArgumentException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int h(int i10, int i11) {
        if (i10 != 0 && i11 != 0) {
            int[] iArr = this.f65698a;
            int[] iArr2 = this.f65699b;
            return iArr[(iArr2[i10] + iArr2[i11]) % (this.f65702e - 1)];
        }
        return 0;
    }

    public String toString() {
        return "GF(0x" + Integer.toHexString(this.f65703f) + ',' + this.f65702e + ')';
    }
}
