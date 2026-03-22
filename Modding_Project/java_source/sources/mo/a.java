package mo;

import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import io.bidmachine.media3.common.a;
import java.util.Arrays;
import java.util.Objects;
import zm.t;
/* compiled from: EventMessage.java */
/* loaded from: classes8.dex */
public final class a implements t.a {

    /* renamed from: g  reason: collision with root package name */
    private static final io.bidmachine.media3.common.a f62562g = new a.b().u0(MimeTypes.APPLICATION_ID3).N();

    /* renamed from: h  reason: collision with root package name */
    private static final io.bidmachine.media3.common.a f62563h = new a.b().u0(MimeTypes.APPLICATION_SCTE35).N();

    /* renamed from: a  reason: collision with root package name */
    public final String f62564a;

    /* renamed from: b  reason: collision with root package name */
    public final String f62565b;

    /* renamed from: c  reason: collision with root package name */
    public final long f62566c;

    /* renamed from: d  reason: collision with root package name */
    public final long f62567d;

    /* renamed from: e  reason: collision with root package name */
    public final byte[] f62568e;

    /* renamed from: f  reason: collision with root package name */
    private int f62569f;

    public a(String str, String str2, long j10, long j11, byte[] bArr) {
        this.f62564a = str;
        this.f62565b = str2;
        this.f62566c = j10;
        this.f62567d = j11;
        this.f62568e = bArr;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        if (this.f62566c == aVar.f62566c && this.f62567d == aVar.f62567d && Objects.equals(this.f62564a, aVar.f62564a) && Objects.equals(this.f62565b, aVar.f62565b) && Arrays.equals(this.f62568e, aVar.f62568e)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i10;
        if (this.f62569f == 0) {
            String str = this.f62564a;
            int i11 = 0;
            if (str != null) {
                i10 = str.hashCode();
            } else {
                i10 = 0;
            }
            int i12 = (TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER + i10) * 31;
            String str2 = this.f62565b;
            if (str2 != null) {
                i11 = str2.hashCode();
            }
            long j10 = this.f62566c;
            long j11 = this.f62567d;
            this.f62569f = ((((((i12 + i11) * 31) + ((int) (j10 ^ (j10 >>> 32)))) * 31) + ((int) (j11 ^ (j11 >>> 32)))) * 31) + Arrays.hashCode(this.f62568e);
        }
        return this.f62569f;
    }

    @Override // zm.t.a
    @Nullable
    public byte[] q() {
        if (r() != null) {
            return this.f62568e;
        }
        return null;
    }

    @Override // zm.t.a
    @Nullable
    public io.bidmachine.media3.common.a r() {
        String str = this.f62564a;
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1468477611:
                if (str.equals("urn:scte:scte35:2014:bin")) {
                    c10 = 0;
                    break;
                }
                break;
            case -795945609:
                if (str.equals("https://aomedia.org/emsg/ID3")) {
                    c10 = 1;
                    break;
                }
                break;
            case 1303648457:
                if (str.equals("https://developer.apple.com/streaming/emsg-id3")) {
                    c10 = 2;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return f62563h;
            case 1:
            case 2:
                return f62562g;
            default:
                return null;
        }
    }

    public String toString() {
        return "EMSG: scheme=" + this.f62564a + ", id=" + this.f62567d + ", durationMs=" + this.f62566c + ", value=" + this.f62565b;
    }
}
